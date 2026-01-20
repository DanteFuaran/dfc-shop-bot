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
        <title>Подключение к Happ</title>
        <style>
            body {{
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                background: #0a0e27;
                color: #e8e8e8;
                text-align: center;
                padding: 20px;
            }}
            .container {{
                max-width: 400px;
                background: #1a1f3a;
                border: 1px solid #2a2f4a;
                border-radius: 12px;
                padding: 40px;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            }}
            h1 {{
                font-size: 24px;
                margin-bottom: 20px;
                color: #00a8e8;
            }}
            .btn {{
                display: inline-block;
                background: #00a8e8;
                color: #0a0e27;
                padding: 15px 30px;
                border-radius: 8px;
                text-decoration: none;
                font-weight: bold;
                font-size: 16px;
                margin: 10px 0;
                transition: all 0.2s;
                cursor: pointer;
                border: none;
            }}
            .btn:hover {{
                background: #00c8f8;
                transform: translateY(-2px);
                box-shadow: 0 4px 12px rgba(0, 168, 232, 0.3);
            }}
            .info {{
                font-size: 14px;
                margin-top: 20px;
                opacity: 0.85;
                color: #b0b0b0;
            }}
            .spinner {{
                display: inline-block;
                width: 20px;
                height: 20px;
                border: 3px solid rgba(0, 168, 232, 0.3);
                border-radius: 50%;
                border-top-color: #00a8e8;
                animation: spin 1s ease-in-out infinite;
                margin-right: 10px;
            }}
            @keyframes spin {{
                to {{ transform: rotate(360deg); }}
            }}
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🚀 Подключение к Happ</h1>
            <p class="info">Нажмите кнопку ниже для добавления профиля в приложение Happ</p>
            <button class="btn" onclick="openHapp()">
                Открыть в Happ
            </button>
            <p class="info" id="status"></p>
        </div>
        
        <script>
            function openHapp() {{
                const btn = document.querySelector('.btn');
                const status = document.getElementById('status');
                
                btn.innerHTML = '<span class="spinner"></span>Открытие...';
                btn.disabled = true;
                
                // Пытаемся открыть приложение
                window.location.href = '{happ_url}';
                
                // Через 2 секунды показываем сообщение и восстанавливаем кнопку
                setTimeout(() => {{
                    status.textContent = 'Если приложение не открылось, убедитесь что Happ установлен';
                    btn.innerHTML = 'Попробовать снова';
                    btn.disabled = false;
                }}, 2000);
            }}
            
            // Автоматически пытаемся открыть при загрузке страницы
            window.addEventListener('load', () => {{
                setTimeout(openHapp, 500);
            }});
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
