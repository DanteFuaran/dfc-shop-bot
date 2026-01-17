from fastapi import APIRouter, Request
from fastapi.responses import RedirectResponse, HTMLResponse

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
async def connect_to_happ(subscription_url: str) -> HTMLResponse:
    """
    Открывает Happ через HTML страницу с JavaScript.
    Используется для обхода ограничения Telegram на кастомные URL схемы.
    HTML подход более надёжен чем 302 redirect для custom URL schemes,
    особенно когда приложение уже открыто.
    Использует happ://import/ вместо happ://add/ для сохранения предыдущих подписок.
    """
    # Проверяем что URL не пустой и имеет корректный формат
    if not subscription_url or not subscription_url.strip():
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Subscription URL is empty")
    
    # Убеждаемся что URL начинается с http:// или https://
    if not subscription_url.startswith(("http://", "https://")):
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Invalid subscription URL format")
    
    happ_url = f"happ://import/{subscription_url}"
    
    # HTML страница с JavaScript для открытия приложения
    # Используем window.location.replace вместо redirect для более надёжного поведения
    html_content = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подключение к Happ</title>
    <style>
        body {{
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
        }}
        .container {{
            padding: 20px;
        }}
        .spinner {{
            width: 50px;
            height: 50px;
            border: 4px solid rgba(255,255,255,0.3);
            border-top: 4px solid white;
            border-radius: 50%;
            animation: spin 1s linear infinite;
            margin: 0 auto 20px;
        }}
        @keyframes spin {{
            0% {{ transform: rotate(0deg); }}
            100% {{ transform: rotate(360deg); }}
        }}
        h2 {{
            margin: 0 0 10px;
            font-weight: 500;
        }}
        p {{
            margin: 0;
            opacity: 0.8;
            font-size: 14px;
        }}
    </style>
</head>
<body>
    <div class="container">
        <div class="spinner"></div>
        <h2>Открываем Happ...</h2>
        <p>Подписка будет добавлена автоматически</p>
    </div>
    <script>
        // Небольшая задержка для отображения страницы
        setTimeout(function() {{
            window.location.href = "{happ_url}";
        }}, 100);
    </script>
</body>
</html>"""
    
    return HTMLResponse(content=html_content, status_code=200)
