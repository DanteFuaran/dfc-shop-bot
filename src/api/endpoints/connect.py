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
    Открывает Happ и добавляет подписку через custom URL scheme.
    Использует HTML с мета-тегом и JavaScript для надёжного редиректа.
    Использует happ://add/ для добавления подписки.
    """
    # Проверяем что URL не пустой и имеет корректный формат
    if not subscription_url or not subscription_url.strip():
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Subscription URL is empty")
    
    # Убеждаемся что URL начинается с http:// или https://
    if not subscription_url.startswith(("http://", "https://")):
        from fastapi import HTTPException
        raise HTTPException(status_code=400, detail="Invalid subscription URL format")
    
    happ_url = f"happ://add/{subscription_url}"
    
    # HTML с мета-тегом для редиректа и JavaScript для надёжности
    html_content = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0;url={happ_url}">
    <title>Подключение к Happ</title>
</head>
<body>
    <script>
        window.location.href = "{happ_url}";
    </script>
</body>
</html>"""
    
    return HTMLResponse(content=html_content, status_code=200)
