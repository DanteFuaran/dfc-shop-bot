# Dashboard
btn-dashboard-broadcast = 📢 Розсилка
btn-dashboard-statistics = 📊 Статистика
btn-dashboard-users = 👥 Користувачі
btn-dashboard-plans = 📦 Тарифні плани
btn-dashboard-promocodes = 🎟 Промокоди
btn-dashboard-remnawave = 🌊 Панель
btn-dashboard-remnashop = 🛍 Телеграм
btn-dashboard-access = 🔓 Режим доступу
btn-dashboard-features = ⚙️ Функції
btn-dashboard-importer = 📥 Імпорт X-UI

# Database Management
btn-dashboard-db = 🗄 Управління базою
btn-db-save = 💾 Зберегти
btn-db-load = 📦 Завантажити
btn-db-sync-from-panel = 📥 Імпорт Remnawave
btn-db-sync-remnawave-to-bot = 📥 Імпорт з Remnawave в бота
btn-db-sync-bot-to-remnawave = 📤 Імпорт з бота в Remnawave
btn-db-clear-all = 🗑 Очистити все
btn-db-clear-users = 👥 Очистити користувачів
btn-db-imports = 📥 Імпорти

# Settings
btn-dashboard-settings = ⚙️ Налаштування
btn-settings-extra-devices = 📱 Додаткові пристрої
btn-settings-balance = 💰 Баланс
btn-settings-transfers = 💸 Перекази
btn-settings-notifications = 🔔 Сповіщення
btn-settings-access = 🔓 Режим доступу
btn-settings-referral = 👥 Реферальна система
btn-settings-promocodes = 🏷️ Промокоди
btn-settings-community = 👥 Спільнота
btn-settings-community-set-url = 📝 Встановити групу
btn-settings-tos = 📜 Угода
btn-tos-set-url = Встановити джерело
btn-settings-global-discount = 🏷️ Глобальна знижка
btn-settings-finances = 💰 Фінанси
btn-settings-currency-rates = 💱 Курси валют
btn-settings-language = 🌐 Мова
btn-language-ru = 🇷🇺 Російська
btn-language-uk = 🇺🇦 Українська
btn-language-en = 🇬🇧 English
btn-language-de = 🇩🇪 Deutsch
btn-language-cancel = Скасувати
btn-language-apply = Прийняти
btn-finances-sync = { $enabled ->
    [1] 🟢 Синхронізація курсів
    *[0] 🔴 Синхронізація курсів
    }
btn-finances-currency-rates = 💱 Курси валют
btn-finances-gateways = 🌐 Платіжні системи
btn-balance-mode-combined = { $selected ->
    [1] 🔘 Об'єднаний
    *[0] ⚪ Об'єднаний
    }
btn-balance-mode-separate = { $selected ->
    [1] 🔘 Роздільний
    *[0] ⚪ Роздільний
    }
btn-currency-auto-toggle = { $enabled ->
    [1] 🟢 Автоматично
    *[0] 🔴 Автоматично
    }
btn-settings-toggle = { $enabled ->
    [1] 🟢
    *[0] 🔴
    }
btn-toggle-setting = { $name }: { $enabled ->
    [1] ✅ Увімкнено
    *[0] 🔴 Вимкнено
    }
btn-setting-value = { $name }: { $value }
btn-commission-type-percent = 
    { $selected ->
    [1] 🔘 Відсоток
    *[0] ⚪ Відсоток
    }
btn-commission-type-fixed = 
    { $selected ->
    [1] 🔘 Фіксована
    *[0] ⚪ Фіксована
    }
btn-commission-value = 💵 Комісія: { $value } { $unit }

unit-percent-or-rub = { $commission_type ->
    [percent] %
    *[fixed] ₽
    }

# Global Discount
btn-discount-type-percent = 
    { $selected ->
    [1] 🔘 Відсоток
    *[0] ⚪ Відсоток
    }
btn-discount-type-fixed = 
    { $selected ->
    [1] 🔘 Фіксована
    *[0] ⚪ Фіксована
    }
btn-discount-value = 🏷️ Знижка: { $value } { $unit }

unit-discount-percent-or-rub = { $discount_type ->
    [percent] %
    *[fixed] ₽
    }

# Discount Stacking Mode
btn-global-discount-mode = ⚙️ Режим
btn-global-discount-apply-to = 📌 Застосовується до

# Mode submenu (radio buttons)
btn-discount-mode-max = { $selected ->
    [1] 🔘 Максимальна
    *[0] ⚪ Максимальна
    }
btn-discount-mode-stack = { $selected ->
    [1] 🔘 Накладається
    *[0] ⚪ Накладається
    }

# What the discount applies to (checkboxes)
btn-apply-to-subscription = { $enabled ->
    [1] ✅ Підписка
    *[0] ⬜ Підписка
    }
btn-apply-to-extra-devices = { $enabled ->
    [1] ✅ Додаткові пристрої
    *[0] ⬜ Додаткові пристрої
    }
btn-apply-to-transfer-commission = { $enabled ->
    [1] ✅ Комісія переказу
    *[0] ⬜ Комісія переказу
    }

btn-discount-free = { $selected ->
    [1] [🚫 Без знижки]
    *[0] 🚫 Без знижки
    }

# Discount - Percentage Values
btn-discount-5 = { $selected ->
    [1] [5%]
    *[0] 5%
    }
btn-discount-10 = { $selected ->
    [1] [10%]
    *[0] 10%
    }
btn-discount-15 = { $selected ->
    [1] [15%]
    *[0] 15%
    }
btn-discount-20 = { $selected ->
    [1] [20%]
    *[0] 20%
    }
btn-discount-25 = { $selected ->
    [1] [25%]
    *[0] 25%
    }
btn-discount-30 = { $selected ->
    [1] [30%]
    *[0] 30%
    }
btn-discount-35 = { $selected ->
    [1] [35%]
    *[0] 35%
    }
btn-discount-40 = { $selected ->
    [1] [40%]
    *[0] 40%
    }
btn-discount-45 = { $selected ->
    [1] [45%]
    *[0] 45%
    }
btn-discount-50-percent = { $selected ->
    [1] [50%]
    *[0] 50%
    }
btn-discount-55 = { $selected ->
    [1] [55%]
    *[0] 55%
    }
btn-discount-60 = { $selected ->
    [1] [60%]
    *[0] 60%
    }
btn-discount-65 = { $selected ->
    [1] [65%]
    *[0] 65%
    }
btn-discount-70 = { $selected ->
    [1] [70%]
    *[0] 70%
    }
btn-discount-75 = { $selected ->
    [1] [75%]
    *[0] 75%
    }
btn-discount-80 = { $selected ->
    [1] [80%]
    *[0] 80%
    }
btn-discount-85 = { $selected ->
    [1] [85%]
    *[0] 85%
    }
btn-discount-90 = { $selected ->
    [1] [90%]
    *[0] 90%
    }
btn-discount-95 = { $selected ->
    [1] [95%]
    *[0] 95%
    }
btn-discount-100 = { $selected ->
    [1] [100%]
    *[0] 100%
    }

# Discount - Fixed Values (rubles)
btn-discount-50-rub = { $selected ->
    [1] [50 ₽]
    *[0] 50 ₽
    }
btn-discount-100-rub = { $selected ->
    [1] [100 ₽]
    *[0] 100 ₽
    }
btn-discount-150-rub = { $selected ->
    [1] [150 ₽]
    *[0] 150 ₽
    }
btn-discount-200-rub = { $selected ->
    [1] [200 ₽]
    *[0] 200 ₽
    }
btn-discount-250-rub = { $selected ->
    [1] [250 ₽]
    *[0] 250 ₽
    }
btn-discount-300-rub = { $selected ->
    [1] [300 ₽]
    *[0] 300 ₽
    }
btn-discount-350-rub = { $selected ->
    [1] [350 ₽]
    *[0] 350 ₽
    }
btn-discount-400-rub = { $selected ->
    [1] [400 ₽]
    *[0] 400 ₽
    }
btn-discount-450-rub = { $selected ->
    [1] [450 ₽]
    *[0] 450 ₽
    }
btn-discount-500-rub = { $selected ->
    [1] [500 ₽]
    *[0] 500 ₽
    }
btn-discount-600-rub = { $selected ->
    [1] [600 ₽]
    *[0] 600 ₽
    }
btn-discount-700-rub = { $selected ->
    [1] [700 ₽]
    *[0] 700 ₽
    }
btn-discount-800-rub = { $selected ->
    [1] [800 ₽]
    *[0] 800 ₽
    }
btn-discount-900-rub = { $selected ->
    [1] [900 ₽]
    *[0] 900 ₽
    }
btn-discount-1000-rub = { $selected ->
    [1] [1000 ₽]
    *[0] 1000 ₽
    }

# Back
btn-back = ⬅️ Назад
btn-main-menu = 🏠 Головне меню
btn-back-main-menu = 🏠 Головне меню
btn-back-dashboard = ⚙️ Панель керування
btn-back-users = 👥 Користувачі
btn-done = ✅ Готово


# Telegram
btn-remnashop-release-latest = 👀 Переглянути
btn-remnashop-how-upgrade = ❓ Як оновити
btn-remnashop-github = ⭐ GitHub
btn-remnashop-telegram = 👪 Telegram
btn-remnashop-donate = 💰 Підтримати розробника
btn-remnashop-guide = ❓ Інструкція


# Other
btn-rules-accept = ✅ Прийняти правила
btn-channel-join = ❤️ Перейти до каналу
btn-channel-confirm = ✅ Підтвердити
btn-notification-close = ❌ Закрити
btn-goto-main-menu = 🏠 До головного меню
btn-contact-support = 📩 Перейти в підтримку
btn-cancel = ❌ Скасувати
btn-accept = ✅ Прийняти
btn-confirm = ✅ Підтвердити
btn-confirm-payment = ✅ Підтвердити оплату
btn-select-all = 📋 Усі підписки
btn-select-all-toggle =
    { $all_selected ->
    [1] ✅ Усі підписки
    *[0] ⬜ Усі підписки
    }

btn-squad-choice = { $selected -> 
    [1] 🔘
    *[0] ⚪
    } { $name }

btn-role-choice = { $selected -> 
    [1] 🔘
    *[0] ⚪
    } { $name }


# Menu
btn-menu-connect = 🚀 Підключитися
btn-menu-connect-open = 🔗 Підключення
btn-menu-connect-subscribe = 📄 Сторінка підписки
btn-menu-connect-qr = 📱 QR-код
btn-menu-connect-key = 🔑 Показати ключ
btn-menu-download = 📥 Завантажити додаток
btn-menu-download-android = 📱 Android
btn-menu-download-windows = 🖥 Windows
btn-menu-download-iphone = 🍎 iPhone
btn-menu-download-macos = 💻 macOS

btn-menu-connect-not-available =
    ⚠️ { $status -> 
    [LIMITED] Ліміт трафіку вичерпано
    [EXPIRED] Підписка закінчилася
    *[OTHER] Немає підписки
    }

btn-menu-trial = { $is_referral_trial ->
    [1] 📢 Реферальна підписка
    *[0] 🎁 Пробна підписка
    }
btn-menu-devices = 📱 Мої пристрої
btn-menu-devices-empty = ⚠️ Немає прив'язаних пристроїв
btn-menu-add-device = ➕ Додати пристрій
btn-menu-extra-devices = 📱 Управління додатковими пристроями
btn-extra-device-item = { $device_count } шт. • { $price } ₽/міс • { $expires_at }
btn-extra-device-disable-auto-renew = ❌ Вимкнути автопродовження
btn-extra-device-delete = 🗑 Видалити зараз
btn-menu-try-free = 🎁 Спробувати безкоштовно
btn-menu-balance = 💰 Баланс: { $balance }
btn-menu-subscription = 💳 Підписка
btn-menu-connect-subscribe = 🔗 Підключитися
btn-menu-topup = ➕ Поповнити
btn-menu-invite = 👥 Запросити
btn-menu-invite-about = ❓ Детальніше про нагороди
btn-menu-invite-copy = 🔗 Посилання для запрошення
btn-menu-invite-send = 📩 Запросити
btn-menu-invite-qr = 🧾 QR-код
btn-menu-invite-withdraw-points = 💰 Вивести баланс
btn-menu-invite-withdraw-balance = 💸 Активувати бонуси
btn-menu-promocode = 🎟 Промокод
btn-menu-support = 🆘 Допомога
btn-menu-tos = 📋 Угода
btn-menu-community = 👥 Спільнота
btn-menu-dashboard = 🛠 Панель керування

# Balance
btn-balance-topup = ➕ Поповнити
btn-balance-withdraw = ➖ Вивести
btn-balance-transfer = 💸 Переказати
btn-balance-gateway = 
    { $gateway_type ->
    [YOOMONEY] 💳 Банківська картка
    [YOOKASSA] 💳 YooKassa
    [CRYPTOMUS] 🔐 Cryptomus
    [HELEKET] 💎 Heleket
    [TELEGRAM_STARS] ⭐ Telegram
    *[OTHER] 💳 { $gateway_type }
    }
btn-balance-custom-amount = ✏️ Своя сума
btn-balance-pay = ✅ Сплатити
btn-balance-transfer-recipient = 👤 Отримувач
btn-balance-transfer-amount = 💵 Сума: { $amount } ₽
btn-balance-transfer-message = 💬 Повідомлення
btn-balance-transfer-send = ✅ Надіслати
btn-balance-transfer-history = 📜 Історія користувача
btn-transfer-amount-100 = { $selected ->
    [1] [100 ₽]
    *[0] 100 ₽
    }
btn-transfer-amount-250 = { $selected ->
    [1] [250 ₽]
    *[0] 250 ₽
    }
btn-transfer-amount-500 = { $selected ->
    [1] [500 ₽]
    *[0] 500 ₽
    }
btn-transfer-amount-1000 = { $selected ->
    [1] [1000 ₽]
    *[0] 1000 ₽
    }
btn-transfer-amount-2000 = { $selected ->
    [1] [2000 ₽]
    *[0] 2000 ₽
    }
btn-transfer-amount-5000 = { $selected ->
    [1] [5000 ₽]
    *[0] 5000 ₽
    }

# Bonus Activation
btn-bonus-custom-amount = ✏️ Своя сума

# Dashboard
btn-dashboard-statistics = 📊 Статистика
btn-dashboard-users = 👥 Користувачі
btn-dashboard-broadcast = 📢 Розсилка
btn-dashboard-promocodes = 🎟 Промокоди
btn-dashboard-access = 🔓 Режим доступу
btn-dashboard-features = ⚙️ Функції
btn-dashboard-remnawave = 🌊 Панель
btn-dashboard-remnashop = 🛍 Телеграм
btn-dashboard-importer = 📥 Імпорт користувачів
btn-dashboard-save-db = 💾 Зберегти БД
btn-db-export = 📤 Експорт
btn-db-import = 📥 Імпорт

# Features
btn-feature-toggle =
    { $enabled ->
    [1] ✅ { $name }
    *[0] ⬜ { $name }
    }

btn-extra-devices-menu = 📱 Додаткові пристрої
btn-extra-devices-price = 💰 Вартість: { $price } ₽
btn-extra-devices-min-days = ⏳ Мін. днів: { $days }
btn-extra-devices-one-time = 
    { $selected ->
    [1] 🔘 Одноразово
    *[0] ⚪ Одноразово
    }
btn-extra-devices-monthly = 
    { $selected ->
    [1] 🔘 Щомісяця
    *[0] ⚪ Щомісяця
    }

# Days for minimum period
btn-days-1 = { $selected ->
    [1] [1 день]
    *[0] 1 день
}
btn-days-3 = { $selected ->
    [1] [3 дні]
    *[0] 3 дні
}
btn-days-5 = { $selected ->
    [1] [5 днів]
    *[0] 5 днів
}
btn-days-7 = { $selected ->
    [1] [7 днів]
    *[0] 7 днів
}
btn-days-10 = { $selected ->
    [1] [10 днів]
    *[0] 10 днів
}
btn-days-14 = { $selected ->
    [1] [14 днів]
    *[0] 14 днів
}
btn-days-30 = { $selected ->
    [1] [30 днів]
    *[0] 30 днів
}

# Extra device prices
btn-price-free = { $selected ->
    [1] [Безкоштовно]
    *[0] Безкоштовно
    }
btn-price-100 = { $selected ->
    [1] [100 ₽]
    *[0] 100 ₽
    }
btn-price-200 = { $selected ->
    [1] [200 ₽]
    *[0] 200 ₽
    }
btn-price-300 = { $selected ->
    [1] [300 ₽]
    *[0] 300 ₽
    }
btn-price-400 = { $selected ->
    [1] [400 ₽]
    *[0] 400 ₽
    }
btn-price-500 = { $selected ->
    [1] [500 ₽]
    *[0] 500 ₽
    }
btn-price-600 = { $selected ->
    [1] [600 ₽]
    *[0] 600 ₽
    }
btn-price-700 = { $selected ->
    [1] [700 ₽]
    *[0] 700 ₽
    }
btn-price-800 = { $selected ->
    [1] [800 ₽]
    *[0] 800 ₽
    }
btn-price-900 = { $selected ->
    [1] [900 ₽]
    *[0] 900 ₽
    }
btn-price-1000 = { $selected ->
    [1] [1000 ₽]
    *[0] 1000 ₽
    }
btn-manual-input = ✏️ Ручне введення
btn-commission-free = { $selected ->
    [1] [🆓 Безкоштовно]
    *[0] 🆓 Безкоштовно
    }
btn-commission-cancel = ❌ Скасувати
btn-commission-accept = ✅ Прийняти

# Transfer commission - Percentage values
btn-commission-1 = { $selected ->
    [1] [1%]
    *[0] 1%
    }
btn-commission-2 = { $selected ->
    [1] [2%]
    *[0] 2%
    }
btn-commission-3 = { $selected ->
    [1] [3%]
    *[0] 3%
    }
btn-commission-4 = { $selected ->
    [1] [4%]
    *[0] 4%
    }
btn-commission-5 = { $selected ->
    [1] [5%]
    *[0] 5%
    }
btn-commission-6 = { $selected ->
    [1] [6%]
    *[0] 6%
    }
btn-commission-7 = { $selected ->
    [1] [7%]
    *[0] 7%
    }
btn-commission-8 = { $selected ->
    [1] [8%]
    *[0] 8%
    }
btn-commission-9 = { $selected ->
    [1] [9%]
    *[0] 9%
    }
btn-commission-10 = { $selected ->
    [1] [10%]
    *[0] 10%
    }
btn-commission-11 = { $selected ->
    [1] [11%]
    *[0] 11%
    }
btn-commission-12 = { $selected ->
    [1] [12%]
    *[0] 12%
    }
btn-commission-13 = { $selected ->
    [1] [13%]
    *[0] 13%
    }
btn-commission-14 = { $selected ->
    [1] [14%]
    *[0] 14%
    }
btn-commission-15 = { $selected ->
    [1] [15%]
    *[0] 15%
    }
btn-commission-16 = { $selected ->
    [1] [16%]
    *[0] 16%
    }
btn-commission-17 = { $selected ->
    [1] [17%]
    *[0] 17%
    }
btn-commission-18 = { $selected ->
    [1] [18%]
    *[0] 18%
    }
btn-commission-19 = { $selected ->
    [1] [19%]
    *[0] 19%
    }
btn-commission-20 = { $selected ->
    [1] [20%]
    *[0] 20%
    }
btn-commission-25 = { $selected ->
    [1] [25%]
    *[0] 25%
    }
btn-commission-30 = { $selected ->
    [1] [30%]
    *[0] 30%
    }
btn-commission-35 = { $selected ->
    [1] [35%]
    *[0] 35%
    }
btn-commission-40 = { $selected ->
    [1] [40%]
    *[0] 40%
    }
btn-commission-45 = { $selected ->
    [1] [45%]
    *[0] 45%
    }
btn-commission-50-percent = { $selected ->
    [1] [50%]
    *[0] 50%
    }
btn-commission-55 = { $selected ->
    [1] [55%]
    *[0] 55%
    }
btn-commission-60 = { $selected ->
    [1] [60%]
    *[0] 60%
    }
btn-commission-65 = { $selected ->
    [1] [65%]
    *[0] 65%
    }
btn-commission-70 = { $selected ->
    [1] [70%]
    *[0] 70%
    }
btn-commission-75 = { $selected ->
    [1] [75%]
    *[0] 75%
    }
btn-commission-80 = { $selected ->
    [1] [80%]
    *[0] 80%
    }
btn-commission-85 = { $selected ->
    [1] [85%]
    *[0] 85%
    }
btn-commission-90 = { $selected ->
    [1] [90%]
    *[0] 90%
    }
btn-commission-95 = { $selected ->
    [1] [95%]
    *[0] 95%
    }
btn-commission-100 = { $selected ->
    [1] [100%]
    *[0] 100%
    }

# Transfer commission - Fixed values
btn-commission-50-rub = { $selected ->
    [1] [50 ₽]
    *[0] 50 ₽
    }
btn-commission-100-rub = { $selected ->
    [1] [100 ₽]
    *[0] 100 ₽
    }
btn-commission-150-rub = { $selected ->
    [1] [150 ₽]
    *[0] 150 ₽
    }
btn-commission-200-rub = { $selected ->
    [1] [200 ₽]
    *[0] 200 ₽
    }
btn-commission-250-rub = { $selected ->
    [1] [250 ₽]
    *[0] 250 ₽
    }
btn-commission-300-rub = { $selected ->
    [1] [300 ₽]
    *[0] 300 ₽
    }
btn-commission-350-rub = { $selected ->
    [1] [350 ₽]
    *[0] 350 ₽
    }
btn-commission-400-rub = { $selected ->
    [1] [400 ₽]
    *[0] 400 ₽
    }
btn-commission-450-rub = { $selected ->
    [1] [450 ₽]
    *[0] 450 ₽
    }
btn-commission-500-rub = { $selected ->
    [1] [500 ₽]
    *[0] 500 ₽
    }
btn-commission-550-rub = { $selected ->
    [1] [550 ₽]
    *[0] 550 ₽
    }
btn-commission-600-rub = { $selected ->
    [1] [600 ₽]
    *[0] 600 ₽
    }
btn-commission-650-rub = { $selected ->
    [1] [650 ₽]
    *[0] 650 ₽
    }
btn-commission-700-rub = { $selected ->
    [1] [700 ₽]
    *[0] 700 ₽
    }
btn-commission-750-rub = { $selected ->
    [1] [750 ₽]
    *[0] 750 ₽
    }
btn-commission-800-rub = { $selected ->
    [1] [800 ₽]
    *[0] 800 ₽
    }
btn-commission-850-rub = { $selected ->
    [1] [850 ₽]
    *[0] 850 ₽
    }
btn-commission-900-rub = { $selected ->
    [1] [900 ₽]
    *[0] 900 ₽
    }
btn-commission-950-rub = { $selected ->
    [1] [950 ₽]
    *[0] 950 ₽
    }
btn-commission-1000-rub = { $selected ->
    [1] [1000 ₽]
    *[0] 1000 ₽
    }

# Transfer min and max amounts
btn-amount-no-limit = { $selected ->
    [1] [🔓 Без обмежень]
    *[0] 🔓 Без обмежень
    }
btn-amount-10 = { $selected ->
    [1] [10 ₽]
    *[0] 10 ₽
    }
btn-amount-50 = { $selected ->
    [1] [50 ₽]
    *[0] 50 ₽
    }
btn-amount-100 = { $selected ->
    [1] [100 ₽]
    *[0] 100 ₽
    }
btn-amount-500 = { $selected ->
    [1] [500 ₽]
    *[0] 500 ₽
    }
btn-amount-1000 = { $selected ->
    [1] [1000 ₽]
    *[0] 1000 ₽
    }
btn-amount-5000 = { $selected ->
    [1] [5000 ₽]
    *[0] 5000 ₽
    }
btn-amount-10000 = { $selected ->
    [1] [10000 ₽]
    *[0] 10000 ₽
    }
btn-amount-50000 = { $selected ->
    [1] [50000 ₽]
    *[0] 50000 ₽
    }
btn-amount-100000 = { $selected ->
    [1] [100000 ₽]
    *[0] 100000 ₽
    }
btn-amount-500000 = { $selected ->
    [1] [500000 ₽]
    *[0] 500000 ₽
    }
btn-amount-cancel = ❌ Скасувати
btn-amount-accept = ✅ Прийняти


# Bonus activation
btn-bonus-activate-all = { $selected ->
    [true] [Активувати все ({ $referral_balance } ₽)]
    *[other] Активувати все ({ $referral_balance } ₽)
}
btn-bonus-amount-100 = { $selected ->
    [true] [100 ₽]
    *[other] 100 ₽
}
btn-bonus-amount-200 = { $selected ->
    [true] [200 ₽]
    *[other] 200 ₽
}
btn-bonus-amount-300 = { $selected ->
    [true] [300 ₽]
    *[other] 300 ₽
}
btn-bonus-amount-500 = { $selected ->
    [true] [500 ₽]
    *[other] 500 ₽
}
btn-bonus-amount-750 = { $selected ->
    [true] [750 ₽]
    *[other] 750 ₽
}
btn-bonus-amount-1000 = { $selected ->
    [true] [1000 ₽]
    *[other] 1000 ₽
}
btn-bonus-amount-1500 = { $selected ->
    [true] [1500 ₽]
    *[other] 1500 ₽
}
btn-bonus-amount-2000 = { $selected ->
    [true] [2000 ₽]
    *[other] 2000 ₽
}
btn-bonus-amount-2500 = { $selected ->
    [true] [2500 ₽]
    *[other] 2500 ₽
}


# Statistics
btn-statistics-page =
    { $target_page1 ->
    [1] 👥
    [2] 🧾
    [3] 💳
    [4] 📦
    [5] 🎁
    [6] 👪
    *[OTHER] сторінка
    }

btn-statistics-current-page =
    { $current_page1 ->
    [1] [👥]
    [2] [🧾]
    [3] [💳]
    [4] [📦]
    [5] [🎁]
    [6] [👪]
    *[OTHER] [сторінка]
    }


# Users
btn-users-search = 🔍 Пошук користувача
btn-users-recent-registered = 🆕 Нещодавно зареєстровані
btn-users-recent-activity = 📝 Нещодавно активні
btn-users-all = 👥 Усі користувачі
btn-users-blacklist = 🚫 Чорний список
btn-users-unblock-all = 🔓 Розблокувати всіх


# User
btn-user-discount = 💸 Постійна знижка
btn-user-points = 💰 Змінити баланс
btn-user-main-balance = 💰 Основний баланс
btn-user-referral-balance = 🎁 Бонусний баланс
btn-user-balance = 💳 Фінанси
btn-user-subscription = 📋 Підписка
btn-user-statistics = 📊 Статистика
btn-user-message = 📩 Надіслати повідомлення
btn-user-role = 👮‍♂️ Змінити роль
btn-user-transactions = 🧾 Платежі
btn-user-give-access = 🔑 Доступ до планів
btn-user-current-subscription = 💳 Поточна підписка
btn-user-change-subscription = 🎁 Змінити підписку
btn-user-subscription-traffic-limit = 🌐 Ліміт трафіку
btn-user-subscription-device-limit = 📱 Додати пристрої
btn-user-subscription-expire-time = ⏳ Час закінчення
btn-user-subscription-squads = 🔗 Сквади
btn-user-subscription-traffic-reset = 🔄 Скинути трафік
btn-user-subscription-devices = 🧾 Список пристроїв
btn-user-subscription-url = 📋 Скопіювати посилання
btn-user-subscription-set = ✅ Встановити підписку
btn-user-subscription-delete = ❌ Видалити
btn-user-message-preview = 👀 Попередній перегляд
btn-user-message-confirm = ✅ Надіслати
btn-user-sync = 🌀 Синхронізувати
btn-user-sync-remnawave = 🌊 Використати дані Remnawave
btn-user-sync-remnashop = 🛍 Використати дані Remnashop
btn-user-give-subscription = 🎁 Видати підписку
btn-user-subscription-internal-squads = ⏺️ Внутрішні сквади
btn-user-subscription-external-squads = ⏹️ Зовнішній сквад

btn-user-allowed-plan-choice = { $selected ->
    [1] 🔘
    *[0] ⚪
    } { $plan_name }

btn-user-subscription-active-toggle = { $is_active ->
    [1] 🔴 Вимкнути
    *[0] 🟢 Увімкнути
    }

btn-user-transaction = { $status ->
    [PENDING] 🕓
    [COMPLETED] ✅
    [CANCELED] ❌
    [REFUNDED] 💸
    [FAILED] ⚠️
    *[OTHER] { $status }
} { $created_at }

btn-user-block = { $is_blocked ->
    [1] 🔓 Розблокувати
    *[0] 🔒 Заблокувати
    }


# Broadcast
btn-broadcast-list = 📄 Список усіх розсилок
btn-broadcast-all = 👥 Усім
btn-broadcast-plan = 📦 За планом
btn-broadcast-subscribed = ✅ З підпискою
btn-broadcast-unsubscribed = ❌ Без підписки
btn-broadcast-expired = ⌛ Із закінченою
btn-broadcast-trial = ✳️ З пробною
btn-broadcast-content = ✉️ Редагувати контент
btn-broadcast-buttons = ✳️ Редагувати кнопки
btn-broadcast-preview = 👀 Попередній перегляд
btn-broadcast-confirm = ✅ Почати розсилку
btn-broadcast-refresh = 🔄 Оновити дані
btn-broadcast-viewing = 👀 Переглянути
btn-broadcast-cancel = ⛔ Зупинити розсилку
btn-broadcast-delete = ❌ Видалити надіслані

btn-broadcast-button-choice = { $selected ->
    [1] 🔘
    *[0] ⚪
    }

btn-broadcast =  { $status ->
    [PROCESSING] ⏳
    [COMPLETED] ✅
    [CANCELED] ⛔
    [DELETED] ❌
    [ERROR] ⚠️
    *[OTHER] { $status }
} { $created_at }


# Go to
btn-goto-subscription = 💳 Купити підписку
btn-goto-promocode = 🎟 Активувати промокод
btn-goto-invite = 👥 Запросити
btn-goto-subscription-renew = 🔄 Продовжити підписку
btn-goto-user-profile = 👤 Перейти до користувача


# Promocodes
btn-promocodes-list = 📃 Список промокодів
btn-promocodes-search = 🔍 Пошук промокоду
btn-promocodes-create = 🆕 Створити
btn-promocodes-delete = 🗑️ Видалити
btn-promocodes-edit = ✏️ Редагувати


# Access
btn-access-mode = { access-mode }

btn-access-purchases-toggle = { $enabled ->
    [1] 🔘
    *[0] ⚪
    } Покупки

btn-access-registration-toggle = { $enabled ->
    [1] 🔘
    *[0] ⚪
    } Реєстрація

btn-access-conditions = ⚙️ Умови доступу
btn-access-rules = ✳️ Прийняття правил
btn-access-channel = ❇️ Підписка на канал

btn-access-condition-toggle = { $enabled ->
    [1] 🔘 Увімкнено
    *[0] ⚪ Вимкнено
    }


# RemnaShop
btn-remnashop-admins = 👮‍♂️ Адміністратори
btn-remnashop-gateways = 🌐 Платіжні системи
btn-remnashop-referral = 👥 Реферальна система
btn-remnashop-advertising = 🎯 Реклама
btn-remnashop-plans = 📦 Плани
btn-remnashop-notifications = 🔔 Сповіщення
btn-remnashop-logs = 📄 Логи
btn-remnashop-audit = 🔍 Аудит
btn-remnashop-extra-devices = 📱 Додаткові пристрої


# Gateways
btn-gateway-title = { gateway-type }
btn-gateways-setting = { $field }
btn-gateways-webhook-copy = 📋 Скопіювати Webhook

btn-gateway-active = { $is_active ->
    [1] 🟢 Увімкнено
    *[0] 🔴 Вимкнено
    }

btn-gateway-test = 🐞 Тест
btn-gateways-default-currency = 💸 Валюта за замовчуванням
btn-gateways-placement = 🔢 Змінити розташування

btn-gateways-default-currency-choice = { $enabled -> 
    [1] 🔘
    *[0] ⚪
    } { $symbol } { $currency }


# Referral
btn-referral-level = 🔢 Рівень
btn-referral-reward-type = 🎀 Тип нагороди
btn-referral-accrual-strategy = 📍 Умова нарахування
btn-referral-reward-strategy = ⚖️ Метод нарахування
btn-referral-reward = 🎁 Нагорода
btn-referral-invite-message = ✉️ Налаштування запрошення
btn-reset-default = 🔄 Скинути за замовчуванням
btn-invite-edit = ✏️ Редагувати контент
btn-invite-preview = 👁 Попередній перегляд
btn-invite-close-preview = ❌ Закрити

btn-referral-enable = { $is_enable -> 
    [1] 🟢 Увімкнено
    *[0] 🔴 Вимкнено
    }

# Level buttons with radio toggle
btn-referral-level-one = { $selected ->
    [1] 🔘 Один рівень
    *[0] ⚪ Один рівень
    }

btn-referral-level-two = { $selected ->
    [1] 🔘 Два рівні
    *[0] ⚪ Два рівні
    }

# Editable level toggle buttons in reward menu
btn-reward-level-one = { $selected ->
    [1] 🔘 Перший рівень
    *[0] ⚪ Перший рівень
    }

btn-reward-level-two = { $selected ->
    [1] 🔘 Другий рівень
    *[0] ⚪ Другий рівень
    }

# Reward type buttons with radio toggle
btn-referral-type-money = { $selected ->
    [1] 🔘 Гроші
    *[0] ⚪ Гроші
    }

btn-referral-type-days = { $selected ->
    [1] 🔘 Дні
    *[0] ⚪ Дні
    }

# Accrual condition buttons with radio toggle
btn-referral-accrual-first = { $selected ->
    [1] 🔘 Перший платіж
    *[0] ⚪ Перший платіж
    }

btn-referral-accrual-each = { $selected ->
    [1] 🔘 Кожен платіж
    *[0] ⚪ Кожен платіж
    }

# Accrual method buttons with radio toggle
btn-referral-strategy-fixed = { $selected ->
    [1] 🔘 Фіксована
    *[0] ⚪ Фіксована
    }

btn-referral-strategy-percent = { $selected ->
    [1] 🔘 Відсоток
    *[0] ⚪ Відсоток
    }

# "No Reward" button
btn-reward-free = { $selected ->
    [1] [ Без нагороди ]
    *[0] Без нагороди
    }

# Reward buttons for percentage (commission style)
btn-reward-5 = { $selected ->
    [1] [ 5% ]
    *[0] 5%
    }
btn-reward-10 = { $selected ->
    [1] [ 10% ]
    *[0] 10%
    }
btn-reward-15 = { $selected ->
    [1] [ 15% ]
    *[0] 15%
    }
btn-reward-20 = { $selected ->
    [1] [ 20% ]
    *[0] 20%
    }
btn-reward-25 = { $selected ->
    [1] [ 25% ]
    *[0] 25%
    }
btn-reward-30 = { $selected ->
    [1] [ 30% ]
    *[0] 30%
    }
btn-reward-35 = { $selected ->
    [1] [ 35% ]
    *[0] 35%
    }
btn-reward-40 = { $selected ->
    [1] [ 40% ]
    *[0] 40%
    }
btn-reward-45 = { $selected ->
    [1] [ 45% ]
    *[0] 45%
    }
btn-reward-50 = { $selected ->
    [1] [ 50% ]
    *[0] 50%
    }

# Reward buttons for fixed amounts (commission style)
btn-reward-fixed-10 = { $selected ->
    [1] [ 10{ $suffix } ]
    *[0] 10{ $suffix }
    }
btn-reward-fixed-20 = { $selected ->
    [1] [ 20{ $suffix } ]
    *[0] 20{ $suffix }
    }
btn-reward-fixed-30 = { $selected ->
    [1] [ 30{ $suffix } ]
    *[0] 30{ $suffix }
    }
btn-reward-fixed-50 = { $selected ->
    [1] [ 50{ $suffix } ]
    *[0] 50{ $suffix }
    }
btn-reward-fixed-100 = { $selected ->
    [1] [ 100{ $suffix } ]
    *[0] 100{ $suffix }
    }
btn-reward-fixed-150 = { $selected ->
    [1] [ 150{ $suffix } ]
    *[0] 150{ $suffix }
    }
btn-reward-fixed-200 = { $selected ->
    [1] [ 200{ $suffix } ]
    *[0] 200{ $suffix }
    }
btn-reward-fixed-250 = { $selected ->
    [1] [ 250{ $suffix } ]
    *[0] 250{ $suffix }
    }
btn-reward-fixed-300 = { $selected ->
    [1] [ 300{ $suffix } ]
    *[0] 300{ $suffix }
    }
btn-reward-fixed-500 = { $selected ->
    [1] [ 500{ $suffix } ]
    *[0] 500{ $suffix }
    }

# Reward buttons for days (Extra days)
btn-reward-days-1 = { $selected ->
    [1] [ 1 ]
    *[0] 1
    }
btn-reward-days-2 = { $selected ->
    [1] [ 2 ]
    *[0] 2
    }
btn-reward-days-3 = { $selected ->
    [1] [ 3 ]
    *[0] 3
    }
btn-reward-days-4 = { $selected ->
    [1] [ 4 ]
    *[0] 4
    }
btn-reward-days-5 = { $selected ->
    [1] [ 5 ]
    *[0] 5
    }
btn-reward-days-6 = { $selected ->
    [1] [ 6 ]
    *[0] 6
    }
btn-reward-days-7 = { $selected ->
    [1] [ 7 ]
    *[0] 7
    }
btn-reward-days-8 = { $selected ->
    [1] [ 8 ]
    *[0] 8
    }
btn-reward-days-9 = { $selected ->
    [1] [ 9 ]
    *[0] 9
    }
btn-reward-days-10 = { $selected ->
    [1] [ 10 ]
    *[0] 10
    }
btn-reward-days-11 = { $selected ->
    [1] [ 11 ]
    *[0] 11
    }
btn-reward-days-12 = { $selected ->
    [1] [ 12 ]
    *[0] 12
    }
btn-reward-days-13 = { $selected ->
    [1] [ 13 ]
    *[0] 13
    }
btn-reward-days-14 = { $selected ->
    [1] [ 14 ]
    *[0] 14
    }
btn-reward-days-15 = { $selected ->
    [1] [ 15 ]
    *[0] 15
    }

# Old buttons (kept for compatibility)
btn-referral-level-choice = { $type -> 
    [1] 1️⃣
    [2] 2️⃣
    [3] 3️⃣
    *[OTHER] { $type }
    }

btn-referral-reward-choice = { $type -> 
    [POINTS] 💎 Бали
    [EXTRA_DAYS] ⏳ Дні
    [MONEY] 💰 Гроші
    *[OTHER] { $type }
    }

btn-referral-accrual-strategy-choice = { $type -> 
    [ON_FIRST_PAYMENT] 💳 Перший платіж
    [ON_EACH_PAYMENT] 💸 Кожен платіж
    *[OTHER] { $type }
    }

btn-referral-reward-strategy-choice = { $type -> 
    [AMOUNT] 🔸 Фіксована
    [PERCENT] 🔹 Відсоток
    *[OTHER] { $type }
    }


# Notifications
btn-notifications-user = 👥 Сповіщення користувачів

btn-notifications-user-choice = { $enabled ->
    [1] 🔘
    *[0] ⚪
    } { $type ->
    [EXPIRES_IN_3_DAYS] Підписка закінчується (3 дні)
    [EXPIRES_IN_2_DAYS] Підписка закінчується (2 дні)
    [EXPIRES_IN_1_DAYS] Підписка закінчується (1 день)
    [EXPIRED] Підписка закінчилася
    [LIMITED] Трафік вичерпано
    [EXPIRED_1_DAY_AGO] Підписка закінчилася (1 день)
    [REFERRAL_ATTACHED] Реферал прив'язаний
    [REFERRAL_REWARD] Нагорода отримана
    *[OTHER] { $type }
    }

btn-notifications-system = ⚙️ Системні сповіщення

btn-notifications-system-choice = { $enabled -> 
    [1] 🔘
    *[0] ⚪
    } { $type ->
    [BOT_LIFETIME] Життєвий цикл бота
    [BOT_UPDATE] Оновлення бота
    [USER_REGISTERED] Реєстрація користувача
    [SUBSCRIPTION] Покупка підписки
    [PROMOCODE_ACTIVATED] Активація промокоду
    [TRIAL_GETTED] Отримано пробний період
    [NODE_STATUS] Статус вузла
    [USER_FIRST_CONNECTED] Перше підключення
    [USER_HWID] Пристрої користувача
    [BILLING] Фінансові операції
    [BALANCE_TRANSFER] Фінансові перекази
    *[OTHER] { $type }
    }


# Plans
btn-plans-statistics = 📊 Статистика
btn-plans-create = 🆕 Створити
btn-plan-save = ✅ Зберегти
btn-plan-create = ✅ Створити план
btn-plan-delete = ❌ Видалити
btn-plan-name = 🏷️ Назва
btn-plan-description = 💬 Опис
btn-plan-description-remove = ❌ Видалити поточний опис
btn-plan-tag = 📌 Тег
btn-plan-tag-remove = ❌ Видалити поточний тег
btn-plan-type = 🔖 Тип
btn-plan-availability = ✴️ Доступ
btn-plan-durations-prices = 💰 Тарифи
btn-plan-traffic = 🌐 Трафік
btn-plan-devices = 📱 Пристрої
btn-plan-allowed = 👥 Дозволені користувачі
btn-plan-squads = 🔗 Сквади
btn-plan-internal-squads = ⏺️ Внутрішні сквади
btn-plan-external-squads = ⏹️ Зовнішній сквад
btn-allowed-user = { $id }
btn-plan-duration-add = 🆕 Додати
btn-plan-price-choice = 💸 { $price } { $currency }

btn-plan = { $is_active ->
    [1] 🟢
    *[0] 🔴 
    } { $name }

btn-plan-active = { $is_active -> 
    [1] 🟢 Увімкнено
    *[0] 🔴 Вимкнено
    }

btn-plan-type-choice = { $type -> 
    [TRAFFIC] 🌐 Трафік
    [DEVICES] 📱 Пристрої
    [BOTH] 🔗 Трафік + Пристрої
    [UNLIMITED] ♾️ Безлімітний
    *[OTHER] { $type }
    }

btn-plan-type-radio = { $selected ->
    [1] 🔘 { $type ->
        [TRAFFIC] 🌐 Трафік
        [DEVICES] 📱 Пристрої
        [BOTH] 🔗 Трафік + Пристрої
        [UNLIMITED] ♾️ Безлімітний
        *[OTHER] { $type }
        }
    *[0] ⚪ { $type ->
        [TRAFFIC] 🌐 Трафік
        [DEVICES] 📱 Пристрої
        [BOTH] 🔗 Трафік + Пристрої
        [UNLIMITED] ♾️ Безлімітний
        *[OTHER] { $type }
        }
    }

btn-plan-availability-choice = { $type -> 
    [ALL] 🌍 Для всіх
    [NEW] 🌱 Для нових користувачів
    [EXISTING] 👥 Для існуючих клієнтів
    [INVITED] ✉️ Для запрошених користувачів
    [ALLOWED] 🔐 Для дозволених користувачів
    [TRIAL] 🎁 Для пробного періоду
    *[OTHER] { $type }
    }

btn-plan-availability-radio = { $selected ->
    [1] 🔘 { $type ->
        [ALL] 🌍 Для всіх
        [NEW] 🌱 Для нових користувачів
        [EXISTING] 👥 Для існуючих клієнтів
        [INVITED] ✉️ Для запрошених користувачів
        [ALLOWED] 🔐 Для дозволених користувачів
        [TRIAL] 🎁 Для пробного періоду
        *[OTHER] { $type }
        }
    *[0] ⚪ { $type ->
        [ALL] 🌍 Для всіх
        [NEW] 🌱 Для нових користувачів
        [EXISTING] 👥 Для існуючих клієнтів
        [INVITED] ✉️ Для запрошених користувачів
        [ALLOWED] 🔐 Для дозволених користувачів
        [TRIAL] 🎁 Для пробного періоду
        *[OTHER] { $type }
        }
    }

btn-plan-traffic-strategy-choice = { $selected ->
    [1] 🔘 { traffic-strategy }
    *[0] ⚪ { traffic-strategy }
    }

btn-plan-duration = ⌛ { $value ->
    [-1] { unlimited }
    *[other] { unit-day }
    }

btn-keep-current-duration = ⏸️ Залишити тривалість ({ $remaining })


# RemnaWave
btn-remnawave-users = 👥 Користувачі
btn-remnawave-hosts = 🌐 Хости
btn-remnawave-nodes = 🖥️ Вузли
btn-remnawave-inbounds = 🔌 Inbounds


# Importer
btn-importer-from-xui = 💩 Імпорт з 3X-UI панелі
btn-importer-from-xui-shop = 🛒 3xui-shop бот
btn-importer-sync = 🌀 З панелі в бота
btn-importer-sync-bot-to-panel = 📤 З телеграма в панель
btn-importer-squads = 🔗 Внутрішні сквади
btn-importer-import-all = ✅ Імпортувати всіх
btn-importer-import-active = ❇️ Імпортувати активних


# Subscription
btn-subscription-new = 💸 Купити підписку
btn-subscription-buy = 🛒 Купити підписку
btn-subscription-renew = 🔄 Продовжити
btn-subscription-change = 🔃 Змінити
btn-subscription-referral = 📢 Реферальна підписка
btn-subscription-upgrade-referral = 📢 Оновити до реферальної
btn-subscription-promocode = 🎟 Активувати промокод
btn-subscription-payment-method = 
    { $gateway_type ->
    [BALANCE] 💰 З балансу
    [YOOMONEY] 💳 Банківська картка
    [YOOKASSA] 💳 YooKassa
    [TELEGRAM_STARS] ⭐ Telegram Stars
    [CRYPTOMUS] 🔐 Cryptomus
    [HELEKET] 💎 Heleket
    [CRYPTOPAY] 🪙 Cryptopay
    [ROBOKASSA] 💳 Robokassa
    *[OTHER] { $gateway_type }
    } | { $has_discount ->
        [1] { $price } ({ $original_price })
        *[0] { $price }
    }
btn-subscription-pay = ✅ Підтвердити оплату
btn-subscription-confirm-balance = ✅ Підтвердити оплату
btn-subscription-get = 🎁 Отримати безкоштовно
btn-subscription-back-plans = ⬅️ Назад до вибору плану
btn-subscription-back-duration = ⬅️ Назад
btn-subscription-back-payment-method = ⬅️ Змінити спосіб оплати
btn-subscription-connect = 🚀 Підключитися
btn-subscription-duration = { $final_amount -> 
    [0] { $period } | 🎁
    *[HAS] { $has_discount ->
        [1] { $period } | { $final_amount } ({ $original_amount })
        *[0] { $period } | { $final_amount }
        }
    }

# Extra device duration buttons
btn-add-device-duration-full = До кінця підписки ({ $days } д.) | { $price } ₽
btn-add-device-duration-full-month = Повний місяць (30 д.) | { $price } ₽
btn-add-device-duration-month = До кінця циклу ({ $days } д.) | { $price } ₽
btn-add-device-duration-months-1 = 1 місяць (30 д.) | { $price } ₽
btn-add-device-duration-months-3 = 3 місяці (90 д.) | { $price } ₽
btn-add-device-duration-months-6 = 6 місяців (180 д.) | { $price } ₽
btn-add-device-duration-months-12 = 12 місяців (365 д.) | { $price } ₽


# Promocodes
btn-promocode-code = 🏷️ Код
btn-promocode-name = 📝 Назва
btn-promocode-type = 🔖 Тип
btn-promocode-availability = ✴️ Доступ

btn-promocode-active = { $is_active -> 
    [1] ✅ Вимкнути
    *[0] 🔴 Увімкнути
    }

btn-promocode-reward = 🎁 Нагорода
btn-promocode-lifetime = ⌛ Час життя
btn-promocode-allowed = 👥 Дозволені користувачі
btn-promocode-access = 📦 Доступ до планів
btn-promocode-confirm = ✅ Зберегти
btn-promocode-quantity = 🔢 Кількість
btn-promocode-generate = 🎲 Випадковий код
btn-lifetime-infinite = Безкінечний
btn-quantity-infinite = Безкінечно
btn-manual-input = ✏️ Ручне введення

btn-promocode-type-choice = { $selected -> 
    [1] 🔘
    *[0] ⚪
    } { $name }

btn-plan-access-choice = { $selected -> 
    [1] 🔘 { $plan_name }
    *[0] ⚪ { $plan_name }
    }

btn-pay = 💳 Сплатити
