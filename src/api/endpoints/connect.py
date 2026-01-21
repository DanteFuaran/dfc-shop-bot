from fastapi import APIRouter, Request
from fastapi.responses import RedirectResponse
from aiogram import Bot
from src.core.config import AppConfig

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
        devices = await remnawave_service.get_devices(user=user)
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
    Отправляет уведомление пользователю в Telegram об успешном подключении устройства.
    """
    from fastapi.responses import JSONResponse
    from src.services.user import UserService
    from src.services.notification import NotificationService
    from src.core.utils.message_payload import MessagePayload
    
    try:
        # Получаем Dishka контейнер из приложения
        container = request.app.state.dishka_container
        
        user_service = await container.get(UserService)
        notification_service = await container.get(NotificationService)
        
        # Получаем пользователя по subscription_url
        user = await user_service.get_by_subscription_url(subscription_url)
        
        if not user:
            return JSONResponse({"success": False, "error": "User not found"})
        
        # Отправляем уведомление об успешном подключении
        await notification_service.notify_user(
            user=user,
            payload=MessagePayload(i18n_key="ntf-device-connected")
        )
        
        return JSONResponse({"success": True})
    except Exception as e:
        from loguru import logger
        logger.error(f"Error sending device connected notification: {e}")
        return JSONResponse({"success": False, "error": str(e)})


@router.get("/connect/{subscription_url:path}")
async def connect_to_happ(subscription_url: str, request: Request):
    """
    Страница для подключения к Happ.
    Использует HTML с JavaScript для надежного открытия приложения.
    После открытия HAPP показывает кнопки для возврата в бот или связи с поддержкой.
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
    
    # Кодируем URL для использования в fetch запросах
    from urllib.parse import quote
    subscription_url_encoded = quote(subscription_url, safe='')
    
    html_content = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Подключение...</title>
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
            .spinner-container {{
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 15px;
            }}
            .spinner {{
                width: 50px;
                height: 50px;
                border: 4px solid rgba(0, 168, 232, 0.2);
                border-radius: 50%;
                border-top-color: #00a8e8;
                animation: spin 1s ease-in-out infinite;
            }}
            .loading-text {{
                font-size: 16px;
                color: #a0a0a0;
            }}
            @keyframes spin {{
                to {{ transform: rotate(360deg); }}
            }}
            .result-container {{
                display: none;
                flex-direction: column;
                align-items: center;
                gap: 20px;
                text-align: center;
                max-width: 320px;
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
            .buttons {{
                display: flex;
                flex-direction: column;
                gap: 12px;
                width: 100%;
                margin-top: 10px;
            }}
            .btn {{
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 8px;
                padding: 14px 24px;
                border-radius: 12px;
                font-size: 16px;
                font-weight: 500;
                text-decoration: none;
                transition: all 0.2s ease;
            }}
            .btn-primary {{
                background: #00a8e8;
                color: white;
            }}
            .btn-primary:hover {{
                background: #0095cc;
            }}
            .btn-secondary {{
                background: rgba(255, 255, 255, 0.1);
                color: #e8e8e8;
            }}
            .btn-secondary:hover {{
                background: rgba(255, 255, 255, 0.15);
            }}
        </style>
    </head>
    <body>
        <div class="spinner-container" id="loading">
            <div class="spinner"></div>
            <p class="loading-text">Открываем приложение...</p>
        </div>
        
        <div class="result-container" id="checking" style="display: none;">
            <div class="spinner"></div>
            <p class="loading-text">Проверяем подключение...</p>
        </div>
        
        <div class="result-container" id="success" style="display: none;">
            <div class="result-icon">✅</div>
            <h1 class="result-title">Успешно!</h1>
            <p class="result-description">
                Устройство было успешно добавлено в список.
                Можете вернуться в бот.
            </p>
            <div class="buttons">
                <a href="{bot_url}" class="btn btn-primary">
                    Готово
                </a>
            </div>
        </div>
        
        <div class="result-container" id="error" style="display: none;">
            <div class="result-icon">❌</div>
            <h1 class="result-title">Ошибка подключения</h1>
            <p class="result-description">
                Устройство не было добавлено в список.
                Обратитесь в поддержку для помощи.
            </p>
            <div class="buttons">
                <a href="{support_url}" class="btn btn-primary">
                    💬 Поддержка
                </a>
                <a href="{bot_url}" class="btn btn-secondary">
                    Главное меню
                </a>
            </div>
        </div>
        
        <script>
            var initialDeviceCount = 0;
            var checkAttempts = 0;
            var maxAttempts = 15; // 15 попыток по 2 секунды = 30 секунд
            
            // Получаем начальное количество устройств
            fetch('/api/v1/user-devices/{subscription_url_encoded}')
                .then(response => response.json())
                .then(data => {{
                    initialDeviceCount = data.device_count || 0;
                    console.log('Initial device count:', initialDeviceCount);
                }})
                .catch(err => {{
                    console.error('Error getting initial device count:', err);
                }});
            
            // Немедленно открываем приложение
            window.location.href = '{happ_url}';
            
            // Через 3 секунды начинаем проверку
            setTimeout(function() {{
                document.getElementById('loading').style.display = 'none';
                document.getElementById('checking').style.display = 'flex';
                
                // Начинаем периодическую проверку количества устройств
                var checkInterval = setInterval(function() {{
                    checkAttempts++;
                    
                    fetch('/api/v1/user-devices/{subscription_url_encoded}')
                        .then(response => response.json())
                        .then(data => {{
                            var currentDeviceCount = data.device_count || 0;
                            console.log('Check attempt', checkAttempts, 'Current device count:', currentDeviceCount);
                            
                            // Если количество устройств увеличилось - успех
                            if (currentDeviceCount > initialDeviceCount) {{
                                clearInterval(checkInterval);
                                
                                // Отправляем уведомление в Telegram
                                fetch('/api/v1/notify-device-connected/{subscription_url_encoded}', {{
                                    method: 'POST'
                                }})
                                .then(response => response.json())
                                .then(data => {{
                                    console.log('Notification sent:', data);
                                }})
                                .catch(err => {{
                                    console.error('Error sending notification:', err);
                                }});
                                
                                // Закрываем окно/вкладку
                                window.close();
                                
                                // Если window.close() не сработало (некоторые браузеры блокируют),
                                // показываем сообщение о том, что окно можно закрыть
                                setTimeout(function() {{
                                    document.getElementById('checking').style.display = 'none';
                                    document.getElementById('success').innerHTML = `
                                        <div class="result-icon">✅</div>
                                        <h2 class="result-title">Устройство подключено!</h2>
                                        <p class="result-description">Уведомление отправлено в бот. Вы можете закрыть эту вкладку.</p>
                                    `;
                                    document.getElementById('success').style.display = 'flex';
                                }}, 500);
                            }}
                            // Если достигли максимального количества попыток - ошибка
                            else if (checkAttempts >= maxAttempts) {{
                                clearInterval(checkInterval);
                                document.getElementById('checking').style.display = 'none';
                                document.getElementById('error').style.display = 'flex';
                            }}
                        }})
                        .catch(err => {{
                            console.error('Error checking device count:', err);
                            // При ошибке API продолжаем попытки
                            if (checkAttempts >= maxAttempts) {{
                                clearInterval(checkInterval);
                                document.getElementById('checking').style.display = 'none';
                                document.getElementById('error').style.display = 'flex';
                            }}
                        }});
                }}, 2000); // Проверяем каждые 2 секунды
            }}, 3000); // Начинаем проверку через 3 секунды
        </script>
    </body>
    </html>
    """
    
    # Заменяем subscription_url в JavaScript (нужно для корректной работы fetch)
    html_content = html_content.replace("{subscription_url_encoded}", subscription_url)
    
    return HTMLResponse(content=html_content)


@router.get("/subscription/{subscription_url:path}")
async def subscription_page(subscription_url: str) -> RedirectResponse:
    """
    Открыть страницу подписки пользователя.
    Редиректит на URL подписки напрямую.
    """
    # Проверяем что URL не пустой и имеет корректный формат
    if not subscription_url or not subscription_url.strip():
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Subscription URL is empty")
    
    # Убеждаемся что URL начинается с http:// или https://
    if not subscription_url.startswith(("http://", "https://")):
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Invalid subscription URL format")
    
    return RedirectResponse(url=subscription_url, status_code=302)
