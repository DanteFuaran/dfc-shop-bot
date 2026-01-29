# Headers
hdr-dashboard = 🛠 Панель керування

# Payment Labels
lbl-payment-yoomoney = 💳 Банківська картка
lbl-payment-cryptomus = ₿ Cryptomus
lbl-payment-telegram-stars = ⭐ Telegram
hdr-settings = ⚙️ Налаштування
hdr-users = 👥 Користувачі
hdr-user = 👤 Користувач
hdr-plans = 📦 Тарифні плани
hdr-plan = 📦 План
hdr-promocodes = 🎟 Промокоди
hdr-promocode = 🎟 Промокод
hdr-broadcast = 📢 Розсилка
hdr-statistics = 📊 Статистика
hdr-notifications = 🔔 Сповіщення
hdr-referral = 👥 Реферальна система
hdr-finances = 💰 Фінанси
hdr-gateways = 🌐 Платіжні системи
hdr-gateway = 🌐 Платіжна система
hdr-balance = 💰 Баланс
hdr-subscription = <b>💳 Підписка</b>
hdr-connect = 🚀 Підключення
hdr-devices = 📱 Пристрої
hdr-invite = 👥 Запросити
hdr-support = 🆘 Підтримка
hdr-trial = 🎁 Пробний період
hdr-importer = 📥 Імпорт
hdr-access = 🔓 Доступ
hdr-features = ⚙️ Функції
hdr-remnawave = 🌊 Remnawave
hdr-remnashop = 🛍 Телеграм
hdr-transfers = 💸 Перекази
hdr-community = 👥 Спільнота
hdr-tos = 📜 Умови використання
hdr-global-discount = 🏷️ Глобальна знижка
hdr-extra-devices = 📱 Додаткові пристрої
hdr-bonus = 💸 Бонуси


# Fragments
frg-enabled = ✅ Увімкнено
frg-disabled = 🔴 Вимкнено
frg-active = 🟢 Активний
frg-inactive = 🔴 Неактивний
frg-yes = Так
frg-no = Ні
frg-none = Немає
frg-not-set = Не встановлено
frg-unlimited = ♾️ Безлімітно
frg-unknown = Невідомо
frg-loading = Завантаження...
frg-empty = Порожньо
frg-error = Помилка
frg-success = Успішно
frg-pending = Очікується
frg-processing = Обробка...
frg-canceled = Скасовано
frg-completed = Завершено
frg-failed = Невдало
frg-refunded = Повернено
frg-expired = Закінчився
frg-limited = Обмежено
frg-blocked = Заблоковано
frg-online = Онлайн
frg-offline = Офлайн
frg-connected = Підключено
frg-disconnected = Відключено
frg-never = Ніколи
frg-today = Сьогодні
frg-yesterday = Вчора
frg-now = Зараз
frg-ago = тому
frg-in = через
frg-from = від
frg-to = до
frg-or = або
frg-and = та
frg-free = Безкоштовно
frg-paid = Платно
frg-one-time = Одноразово
frg-monthly = Щомісяця
frg-auto-renewal = Автопродовження


# Units
unit-day =
    { $value ->
    [one] { $value } день
    [few] { $value } дні
    *[many] { $value } днів
    }

unit-hour =
    { $value ->
    [one] { $value } година
    [few] { $value } години
    *[many] { $value } годин
    }

unit-minute =
    { $value ->
    [one] { $value } хвилина
    [few] { $value } хвилини
    *[many] { $value } хвилин
    }

unit-second =
    { $value ->
    [one] { $value } секунда
    [few] { $value } секунди
    *[many] { $value } секунд
    }

unit-gb =
    { $value ->
    [one] { $value } ГБ
    *[other] { $value } ГБ
    }

unit-mb =
    { $value ->
    [one] { $value } МБ
    *[other] { $value } МБ
    }

unit-device =
    { $value ->
    [one] { $value } пристрій
    [few] { $value } пристрої
    *[many] { $value } пристроїв
    }

unit-user =
    { $value ->
    [one] { $value } користувач
    [few] { $value } користувачі
    *[many] { $value } користувачів
    }

unit-activation =
    { $value ->
    [one] { $value } активація
    [few] { $value } активації
    *[many] { $value } активацій
    }

unit-rub = ₽
unit-usd = $
unit-eur = €
unit-uah = ₴
unit-percent = %

unlimited = ∞


# Types
type-subscription = Підписка
type-balance = Баланс
type-bonus = Бонус
type-referral = Реферал
type-promocode = Промокод
type-trial = Пробний період
type-transfer = Переказ


# Plan Types
plan-type-traffic = 🌐 Трафік
plan-type-devices = 📱 Пристрої
plan-type-both = 🔗 Трафік + Пристрої
plan-type-unlimited = ♾️ Безлімітний


# Plan Availability
plan-availability-all = 🌍 Для всіх
plan-availability-new = 🌱 Для нових користувачів
plan-availability-existing = 👥 Для існуючих клієнтів
plan-availability-invited = ✉️ Для запрошених користувачів
plan-availability-allowed = 🔐 Для дозволених користувачів
plan-availability-trial = 🎁 Для пробного періоду


# Promocode Types
promocode-type-subscription = 📋 Підписка
promocode-type-discount = 💸 Знижка
promocode-type-bonus = 🎁 Бонус
promocode-type-trial = 🎁 Пробний період
promocode-type-extra-days = ⏳ Додаткові дні
promocode-type-traffic = 🌐 Трафік
promocode-type-balance = 💰 Баланс


# Roles
role-user = 👤 Користувач
role-admin = 👮‍♂️ Адміністратор
role-moderator = 🛡️ Модератор
role-support = 📩 Підтримка
role-vip = ⭐ VIP


# Gateway Types
gateway-type =
    { $type ->
    [YOOMONEY] 💳 YooMoney
    [YOOKASSA] 💳 YooKassa
    [CRYPTOMUS] 🔐 Cryptomus
    [HELEKET] 💎 Heleket
    [TELEGRAM_STARS] ⭐ Telegram Stars
    [ROBOKASSA] 💳 Robokassa
    [CRYPTOPAY] 🪙 CryptoPay
    [BALANCE] 💰 Баланс
    *[OTHER] 💳 { $type }
    }


# Transaction Statuses
transaction-status =
    { $status ->
    [PENDING] 🕓 Очікується
    [COMPLETED] ✅ Завершено
    [CANCELED] ❌ Скасовано
    [REFUNDED] 💸 Повернено
    [FAILED] ⚠️ Невдало
    *[OTHER] { $status }
    }


# Broadcast Statuses
broadcast-status =
    { $status ->
    [PROCESSING] ⏳ Обробка
    [COMPLETED] ✅ Завершено
    [CANCELED] ⛔ Скасовано
    [DELETED] ❌ Видалено
    [ERROR] ⚠️ Помилка
    *[OTHER] { $status }
    }


# Subscription Statuses
subscription-status =
    { $status ->
    [ACTIVE] 🟢 Активна
    [EXPIRED] 🔴 Закінчилася
    [LIMITED] 🚫 Обмежена
    [DISABLED] ⚫ Вимкнена
    *[OTHER] { $status }
    }


# Access Mode
access-mode =
    { $mode ->
    [OPEN] 🟢 Відкритий
    [CLOSED] 🔴 Закритий
    [INVITE_ONLY] 📩 За запрошенням
    *[OTHER] { $mode }
    }


# Traffic Reset Strategy
traffic-strategy =
    { $strategy ->
    [NO_RESET] Без скидання
    [DAY] Щоденно
    [WEEK] Щотижня
    [MONTH] Щомісяця
    [YEAR] Щороку
    *[OTHER] { $strategy }
    }


# Referral Reward Types
referral-reward-type =
    { $type ->
    [MONEY] 💰 Гроші
    [DAYS] ⏳ Дні
    [POINTS] 💎 Бали
    *[OTHER] { $type }
    }


# Referral Accrual Strategies
referral-accrual-strategy =
    { $strategy ->
    [ON_FIRST_PAYMENT] 💳 Перший платіж
    [ON_EACH_PAYMENT] 💸 Кожен платіж
    *[OTHER] { $strategy }
    }


# Referral Reward Strategies
referral-reward-strategy =
    { $strategy ->
    [AMOUNT] 🔸 Фіксована
    [PERCENT] 🔹 Відсоток
    *[OTHER] { $strategy }
    }


# Date and Time Formatting
datetime-format = { $date } о { $time }
date-format = { $day }.{ $month }.{ $year }
time-format = { $hour }:{ $minute }


# Error Messages
error-unknown = Сталася невідома помилка
error-try-again = Будь ласка, спробуйте пізніше
error-contact-support = Якщо проблема не зникає, зверніться до підтримки


# Success Messages
success-saved = Успішно збережено
success-deleted = Успішно видалено
success-created = Успішно створено
success-updated = Успішно оновлено


# Confirmation Messages
confirm-delete = Ви впевнені, що хочете видалити?
confirm-cancel = Ви впевнені, що хочете скасувати?
confirm-continue = Продовжити?


# Pagination
pagination-page = Сторінка { $current } з { $total }
pagination-prev = ◀️ Попередня
pagination-next = Наступна ▶️
pagination-first = ⏮ Перша
pagination-last = Остання ⏭


# Search
search-no-results = Результатів не знайдено
search-enter-query = Введіть пошуковий запит


# List Empty States
list-empty-users = Немає користувачів
list-empty-plans = Немає тарифних планів
list-empty-promocodes = Немає промокодів
list-empty-broadcasts = Немає розсилок
list-empty-transactions = Немає транзакцій
list-empty-devices = Немає пристроїв
list-empty-squads = Немає сквадів


# Formatting Helpers
format-price = { $price } { $currency }
format-discount = -{ $discount }%
format-traffic = { $used } / { $limit }
format-devices = { $used } / { $limit }
format-duration = { $days } днів
format-expires = Закінчується: { $date }
format-created = Створено: { $date }
format-updated = Оновлено: { $date }


# ===== User Profile Fragments =====
hdr-user-profile = <b>👤 Ваш профіль:</b>

frg-user =
    <blockquote>
    • <b>ID</b>: <code>{ $user_id }</code>
    • <b>Ім'я</b>: { $user_name }
    { $is_referral_enable ->
        [1] • <b>Реферальний код</b>: <code>{ $referral_code }</code>
        *[0] {""}
    }
    • <b>Знижка</b>: { $discount_value }%{ $discount_value ->
    [0] {""}
    *[other] { $discount_is_permanent ->
        [1] {" "}(Постійна)
        *[0] { $discount_remaining ->
            [0] {" "}(Одноразова)
            *[other] {" "}(Залишилось { $discount_remaining } { $discount_remaining ->
                [1] день
                [2] дні
                [3] дні
                [4] дні
                *[other] днів
            })
        }
    }
    }
    { $is_balance_enabled ->
        [1] • <b>Баланс</b>: { $balance }
        *[0] {""}
    }
    { $is_balance_separate ->
        [1] { $is_referral_enable ->
            [1] • <b>Бонуси</b>: { $referral_balance }
            *[0] {""}
        }
        *[0] {""}
    }
    </blockquote>

frg-subscription =
    <blockquote>
    • <b>Тариф:</b> { $plan_name }
    • <b>Ліміт трафіку</b>: { $traffic_limit }
    • <b>Ліміт пристроїв</b>: { $device_limit_number }{ $device_limit_bonus ->
        [0] {""}
        *[other] +{ $device_limit_bonus }
    }{ $extra_devices ->
        [0] {""}
        *[other] {" "}(+{ $extra_devices } дод.)
    }
    • <b>Залишилось</b>: { $expire_time }
    </blockquote>

frg-subscription-status-full =
    { $status ->
    [ACTIVE] { frg-subscription }
    [DISABLED] 
    <blockquote>
    • <b>Статус:</b> Вимкнено
    </blockquote>
    [EXPIRED] 
    <blockquote>
    • <b>Статус:</b> Закінчилась
    </blockquote>
    [LIMITED] 
    <blockquote>
    • <b>Статус:</b> Ліміт трафіку вичерпано
    </blockquote>
    *[NO_SUBSCRIPTION]
    <blockquote>
    • <b>Статус:</b> Немає підписки
    </blockquote>
    }

# Hardcoded strings - UI elements
frg-empty-slot = Порожній слот
frg-not-assigned = Не призначено
frg-import-name = Імпорт
frg-extra-devices-name = Додаткові пристрої (x{ $count })
frg-day-plural = { $value ->
    [one] день
    [few] дні
    *[many] днів
}


# ===== Web Connect Page =====
msg-connect-page-title = Підключення...
msg-connect-loading = Відкриваємо додаток...
msg-connect-success-title = Підписка була успішно додана
msg-connect-success-desc = Сторінка закриється автоматично...
