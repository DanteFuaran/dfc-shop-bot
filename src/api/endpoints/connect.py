from fastapi import APIRouter, Request
from fastapi.responses import RedirectResponse

router = APIRouter(prefix="/api/v1", tags=["connect"])

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


@router.get("/connect/{subscription_url:path}")
async def connect_to_happ(subscription_url: str):
    """
    Страница для подключения к Happ.
    Использует HTML с JavaScript для надежного открытия приложения.
    """
    from fastapi import HTTPException
    from fastapi.responses import HTMLResponse
    
    # Проверяем что URL не пустой и имеет корректный формат
    if not subscription_url or not subscription_url.strip():
        raise HTTPException(status_code=400, detail="Subscription URL is empty")
    
    # Убеждаемся что URL начинается с http:// или https://
    if not subscription_url.startswith(("http://", "https://")):
        raise HTTPException(status_code=400, detail="Invalid subscription URL format")
    
    happ_url = f"happ://add/{subscription_url}"
    
    html_content = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Подключение...</title>
        <style>
            body {{
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                background: #0a0e27;
                color: #e8e8e8;
            }}
            .spinner {{
                width: 50px;
                height: 50px;
                border: 4px solid rgba(0, 168, 232, 0.2);
                border-radius: 50%;
                border-top-color: #00a8e8;
                animation: spin 1s ease-in-out infinite;
            }}
            @keyframes spin {{
                to {{ transform: rotate(360deg); }}
            }}
        </style>
    </head>
    <body>
        <div class="spinner"></div>
        <script>
            // Немедленно открываем приложение
            window.location.href = '{happ_url}';
            
            // Закрываем страницу через 5 секунд
            setTimeout(function() {{
                // Пытаемся закрыть окно
                window.close();
                // Если не получилось закрыть (ограничения браузера), 
                // показываем пустую страницу
                document.body.innerHTML = '';
            }}, 5000);
        </script>
    </body>
    </html>
    """
    
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
