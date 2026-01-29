from fastapi import APIRouter, Request
from fastapi.responses import RedirectResponse
from aiogram import Bot
from fluentogram import TranslatorHub
from src.core.config import AppConfig
from src.services.user import UserService

router = APIRouter(prefix="/api/v1", tags=["connect"])

# Кэш для username бота
_bot_username_cache: str = ""

# Ссылки для скачивания приложений по платформам
DOWNLOAD_URLS = {
    "android": "https://play.google.com/store/apps/details?id=com.happproxy",
    "windows": "https://github.com/Happ-proxy/happ-desktop/releases/latest/download/setup-Happ.x64.exe",
    "ios": "https://apps.apple.com/ru/app/happ-proxy-utility-plus/id6746188973",
    "macos": "https://github.com/Happ-proxy/happ-desktop/releases/",
}

# Дефолтная ссылка (Android как самая популярная платформа)
DEFAULT_DOWNLOAD_URL = DOWNLOAD_URLS["android"]


def detect_platform(user_agent: str) -> str:
    """Определяет платформу по User-Agent."""
    ua_lower = user_agent.lower()
    
    # Проверяем в порядке специфичности
    if "iphone" in ua_lower or "ipad" in ua_lower:
        return "ios"
    if "android" in ua_lower:
        return "android"
    if "macintosh" in ua_lower or "mac os" in ua_lower:
        return "macos"
    if "windows" in ua_lower:
        return "windows"
    
    return "unknown"


@router.get("/download")
async def download_app(request: Request) -> RedirectResponse:
    """
    Автоматически определяет ОС пользователя и редиректит на соответствующую ссылку для скачивания.
    """
    user_agent = request.headers.get("user-agent", "")
    platform = detect_platform(user_agent)
    
    download_url = DOWNLOAD_URLS.get(platform, DEFAULT_DOWNLOAD_URL)
    return RedirectResponse(url=download_url, status_code=302)


@router.get("/user-devices/{subscription_url:path}")
async def get_user_devices_count(
    subscription_url: str,
    request: Request,
):
    """
    Получить количество устройств пользователя по subscription_url.
    Возвращает JSON с количеством устройств.
    """
    from fastapi.responses import JSONResponse
    from src.services.user import UserService
    from src.services.remnawave import RemnawaveService
    
    try:
        # Получаем Dishka контейнер из приложения
        container = request.app.state.dishka_container
        
        user_service = await container.get(UserService)
        remnawave_service = await container.get(RemnawaveService)
        
        # Получаем пользователя по subscription_url
        user = await user_service.get_by_subscription_url(subscription_url)
        
        if not user or not user.current_subscription:
            return JSONResponse({"device_count": 0})
        
        # Получаем список устройств из Remnawave
        devices = await remnawave_service.get_devices_user(user=user)
        device_count = len(devices) if devices else 0
        
        return JSONResponse({"device_count": device_count})
    except Exception as e:
        from loguru import logger
        logger.error(f"Error getting device count: {e}")
        return JSONResponse({"device_count": 0})


@router.post("/notify-device-connected/{subscription_url:path}")
async def notify_device_connected(
    subscription_url: str,
    request: Request,
):
    """
    Отправляет уведомление пользователю и разработчикам в Telegram об успешном подключении устройства.
    Уведомление разработчикам отправляется при добавлении нового устройства.
    """
    from fastapi.responses import JSONResponse
    from src.services.user import UserService
    from src.services.notification import NotificationService
    from src.services.remnawave import RemnawaveService
    from src.core.utils.message_payload import MessagePayload
    from src.core.enums import SystemNotificationType
    from src.bot.keyboards import get_user_keyboard
    from redis.asyncio import Redis
    from loguru import logger
    import json
    
    try:
        # Получаем Dishka контейнер из приложения
        container = request.app.state.dishka_container
        
        user_service = await container.get(UserService)
        notification_service = await container.get(NotificationService)
        remnawave_service = await container.get(RemnawaveService)
        redis_client = await container.get(Redis)
        
        # Получаем пользователя по subscription_url
        user = await user_service.get_by_subscription_url(subscription_url)
        
        if not user:
            return JSONResponse({"success": False, "error": "User not found"})
        
        # Отправляем уведомление пользователю об успешном подключении
        await notification_service.notify_user(
            user=user,
            payload=MessagePayload(i18n_key="ntf-device-connected")
        )
        
        # Получаем список устройств пользователя
        devices = await remnawave_service.get_devices_user(user)
        
        if not devices:
            return JSONResponse({"success": True})
        
        # Ключ для хранения списка известных HWID в Redis
        redis_key = f"known_hwids:{user.telegram_id}"
        
        # Получаем список известных HWID из Redis
        known_hwids_str = await redis_client.get(redis_key)
        known_hwids: set[str] = set(json.loads(known_hwids_str)) if known_hwids_str else set()
        
        # Текущие HWID устройств
        current_hwids = {device.hwid for device in devices}
        
        # Находим новые устройства (которых не было раньше)
        new_hwids = current_hwids - known_hwids
        
        # Сохраняем текущий список HWID в Redis (с TTL 30 дней)
        await redis_client.set(redis_key, json.dumps(list(current_hwids)), ex=30 * 24 * 3600)
        
        # Если есть новые устройства - отправляем уведомление
        if new_hwids:
            # Находим данные нового устройства
            for device in devices:
                if device.hwid in new_hwids:
                    logger.info(f"New device detected for user {user.telegram_id}: {device.hwid}")
                    
                    # Отправляем уведомление разработчикам о добавлении устройства
                    await notification_service.system_notify(
                        ntf_type=SystemNotificationType.USER_HWID,
                        payload=MessagePayload.not_deleted(
                            i18n_key="ntf-event-user-hwid-added",
                            i18n_kwargs={
                                "user_id": str(user.telegram_id),
                                "user_name": user.name,
                                "username": user.username or False,
                                "hwid": device.hwid,
                                "platform": device.platform,
                                "device_model": device.device_model,
                                "os_version": device.os_version,
                                "user_agent": device.user_agent,
                            },
                            reply_markup=get_user_keyboard(user.telegram_id),
                        ),
                    )
                    break  # Отправляем уведомление только для одного нового устройства
            
            return JSONResponse({"status": "success", "new_devices": len(new_hwids)})
        
        return JSONResponse({"status": "checked", "new_devices": 0})
    except Exception as e:
        from loguru import logger
        logger.error(f"Error sending device connected notification: {e}")
        return JSONResponse({"status": "error", "error": str(e)})


@router.get("/connect/{subscription_url:path}")
async def connect_to_happ(subscription_url: str, request: Request):
    """
    Страница для подключения к Happ.
    Использует HTML с JavaScript для надежного открытия приложения.
    """
    global _bot_username_cache
    from fastapi import HTTPException
    from fastapi.responses import HTMLResponse
    from src.services.user import UserService
    from src.services.remnawave import RemnawaveService
    
    # Получаем зависимости из контейнера
    container = request.app.state.dishka_container
    config = await container.get(AppConfig)
    bot = await container.get(Bot)
    
    # Проверяем что URL не пустой и имеет корректный формат
    if not subscription_url or not subscription_url.strip():
        raise HTTPException(status_code=400, detail="Subscription URL is empty")
    
    # Убеждаемся что URL начинается с http:// или https://
    if not subscription_url.startswith(("http://", "https://")):
        raise HTTPException(status_code=400, detail="Invalid subscription URL format")
    
    happ_url = f"happ://add/{subscription_url}"
    
    # Получаем username бота (кэшируем для производительности)
    if not _bot_username_cache:
        bot_me = await bot.get_me()
        _bot_username_cache = bot_me.username or ""
    
    bot_username = _bot_username_cache
    support_username = config.bot.support_username.get_secret_value()
    
    # Формируем ссылки на бот и поддержку
    bot_url = f"https://t.me/{bot_username}" if bot_username else ""
    support_url = f"https://t.me/{support_username}"
    
    # Get user's language for translations
    user_service = await container.get(UserService)
    user = await user_service.get_by_subscription_url(subscription_url)
    
    # Get translator for user's language or default
    translator_hub = await container.get(TranslatorHub)
    from src.core.enums import Locale
    locale = user.language if user else Locale.RU
    i18n = translator_hub.get_translator_by_locale(locale=locale)
    
    html_content = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{i18n.get("msg-connect-page-title")}</title>
        <style>
            * {{
                box-sizing: border-box;
            }}
            body {{
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                padding: 20px;
                background: #0a0e27;
                color: #e8e8e8;
            }}
            .container {{
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 20px;
                text-align: center;
                max-width: 320px;
            }}
            .spinner {{
                width: 50px;
                height: 50px;
                border: 4px solid rgba(0, 168, 232, 0.2);
                border-radius: 50%;
                border-top-color: #00a8e8;
                animation: spin 1s ease-in-out infinite;
            }}
            .result-icon {{
                font-size: 48px;
            }}
            .result-title {{
                font-size: 20px;
                font-weight: 600;
                margin: 0;
            }}
            .result-description {{
                font-size: 14px;
                color: #a0a0a0;
                margin: 0;
                line-height: 1.5;
            }}
            .loading-text {{
                font-size: 16px;
                color: #a0a0a0;
            }}

            @keyframes spin {{
                to {{ transform: rotate(360deg); }}
            }}
        </style>
    </head>
    <body>
        <div class="container" id="content">
            <div class="spinner"></div>
            <p class="loading-text">{i18n.get("msg-connect-loading")}</p>
        </div>
        
        <script>
            // Немедленно открываем приложение через dedicate frame
            var happ_iframe = document.createElement('iframe');
            happ_iframe.src = '{happ_url}';
            happ_iframe.style.display = 'none';
            document.body.appendChild(happ_iframe);
            
            // Через 3 секунды показываем сообщение об успехе
            setTimeout(function() {{
                document.getElementById('content').innerHTML = `
                    <div class="result-icon">✅</div>
                    <h1 class="result-title">{i18n.get("msg-connect-success-title")}</h1>
                    <p class="result-description">{i18n.get("msg-connect-success-desc")}</p>
                `;
                
                // Через 5 секунд закрываем страницу
                setTimeout(function() {{
                    window.close();
                }}, 5000);
            }}, 3000);
        </script>
    </body>
    </html>
    """
    
    return HTMLResponse(content=html_content)


@router.get("/subscription/{subscription_url:path}")
async def subscription_page(subscription_url: str, request: Request):
    """
    Открыть страницу подписки пользователя.
    Работает точно так же как /connect/ - с отслеживанием новых устройств.
    """
    # Используем ту же логику что и connect_to_happ
    return await connect_to_happ(subscription_url, request)
