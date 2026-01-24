"""Утилиты для работы с балансом пользователя."""


def get_display_balance(user_balance: int, referral_balance: int, is_combined: bool) -> int:
    """
    Вычисляет отображаемый баланс пользователя.
    
    Args:
        user_balance: Основной баланс пользователя
        referral_balance: Реферальный баланс (накопленные бонусы)
        is_combined: True если балансы объединены в один
        
    Returns:
        Итоговый баланс для отображения
    """
    return user_balance + referral_balance if is_combined else user_balance
