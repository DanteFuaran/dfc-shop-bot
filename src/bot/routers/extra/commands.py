from aiogram import Router
from aiogram.filters import Command as FilterCommand
from aiogram.types import Message
from dishka import FromDishka
from dishka.integrations.aiogram_dialog import inject
from fluentogram import TranslatorRunner
from loguru import logger
import asyncio

from src.core.config.app import AppConfig
from src.core.enums import Command
from src.core.utils.formatters import format_user_log as log, format_username_to_url
from src.infrastructure.database.models.dto import UserDto

router = Router(name=__name__)


@inject
@router.message(FilterCommand(Command.SUPPORT.value.command))
async def on_support_command(
    message: Message,
    user: UserDto,
    config: AppConfig,
    i18n: FromDishka[TranslatorRunner],
) -> None:
    logger.info(f"{log(user)} Call 'support' command")

    text = i18n.get("contact-support-help")
    support_username = config.bot.support_username.get_secret_value()
    support_url = format_username_to_url(support_username, text)

    # Send clickable link and delete immediately
    response = await message.answer(support_url)
    
    # Delete both the command message and the response after short delay
    try:
        await asyncio.sleep(0.5)
        await response.delete()
    except Exception:
        pass
    
    try:
        await message.delete()
    except Exception:
        pass


