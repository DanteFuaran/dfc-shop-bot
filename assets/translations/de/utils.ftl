# Headers
hdr-dashboard = 🛠 Control Panel
hdr-settings = ⚙️ Settings
hdr-users = 👥 Users
hdr-user = 👤 User
hdr-plans = 📦 Pricing Plans
hdr-plan = 📦 Plan
hdr-promocodes = 🎟 Promo Codes
hdr-promocode = 🎟 Promo Code
hdr-broadcast = 📢 Broadcast
hdr-statistics = 📊 Statistics
hdr-notifications = 🔔 Notifications
hdr-referral = 👥 Referral System
hdr-finances = 💰 Finances
hdr-gateways = 🌐 Payment Systems
hdr-gateway = 🌐 Payment System
hdr-balance = 💰 Balance
hdr-subscription = 💳 Subscription
hdr-connect = 🚀 Connect
hdr-devices = 📱 Devices
hdr-invite = 👥 Invite
hdr-support = 🆘 Support
hdr-trial = 🎁 Trial
hdr-importer = 📥 Import
hdr-access = 🔓 Access
hdr-features = ⚙️ Features
hdr-remnawave = 🌊 Remnawave
hdr-remnashop = 🛍 Telegram
hdr-transfers = 💸 Transfers
hdr-community = 👥 Community
hdr-tos = 📜 Terms of Service
hdr-global-discount = 🏷️ Global Discount
hdr-extra-devices = 📱 Extra Devices
hdr-bonus = 💸 Bonuses


# Fragments
frg-enabled = ✅ Enabled
frg-disabled = 🔴 Disabled
frg-active = 🟢 Active
frg-inactive = 🔴 Inactive
frg-yes = Yes
frg-no = No
frg-none = None
frg-not-set = Not set
frg-unlimited = ♾️ Unlimited
frg-unknown = Unknown
frg-loading = Loading...
frg-empty = Empty
frg-error = Error
frg-success = Success
frg-pending = Pending
frg-processing = Processing...
frg-canceled = Canceled
frg-completed = Completed
frg-failed = Failed
frg-refunded = Refunded
frg-expired = Expired
frg-limited = Limited
frg-blocked = Blocked
frg-online = Online
frg-offline = Offline
frg-connected = Connected
frg-disconnected = Disconnected
frg-never = Never
frg-today = Today
frg-yesterday = Yesterday
frg-now = Now
frg-ago = ago
frg-in = in
frg-from = from
frg-to = to
frg-or = or
frg-and = and
frg-free = Free
frg-paid = Paid
frg-one-time = One-time
frg-monthly = Monthly
frg-auto-renewal = Auto-renewal


# Units
unit-day =
    { $value ->
    [one] { $value } day
    [few] { $value } days
    *[many] { $value } days
    }

unit-hour =
    { $value ->
    [one] { $value } hour
    [few] { $value } hours
    *[many] { $value } hours
    }

unit-minute =
    { $value ->
    [one] { $value } minute
    [few] { $value } minutes
    *[many] { $value } minutes
    }

unit-second =
    { $value ->
    [one] { $value } second
    [few] { $value } seconds
    *[many] { $value } seconds
    }

unit-gb =
    { $value ->
    [one] { $value } GB
    *[other] { $value } GB
    }

unit-mb =
    { $value ->
    [one] { $value } MB
    *[other] { $value } MB
    }

unit-device =
    { $value ->
    [one] { $value } device
    [few] { $value } devices
    *[many] { $value } devices
    }

unit-user =
    { $value ->
    [one] { $value } user
    [few] { $value } users
    *[many] { $value } users
    }

unit-activation =
    { $value ->
    [one] { $value } activation
    [few] { $value } activations
    *[many] { $value } activations
    }

unit-rub = ₽
unit-usd = $
unit-eur = €
unit-uah = ₴
unit-percent = %

unlimited = unlimited


# Types
type-subscription = Subscription
type-balance = Balance
type-bonus = Bonus
type-referral = Referral
type-promocode = Promo code
type-trial = Trial
type-transfer = Transfer


# Plan Types
plan-type-traffic = 🌐 Traffic
plan-type-devices = 📱 Devices
plan-type-both = 🔗 Traffic + Devices
plan-type-unlimited = ♾️ Unlimited


# Plan Availability
plan-availability-all = 🌍 For Everyone
plan-availability-new = 🌱 For New Users
plan-availability-existing = 👥 For Existing Customers
plan-availability-invited = ✉️ For Invited Users
plan-availability-allowed = 🔐 For Allowed Users
plan-availability-trial = 🎁 For Trial


# Promocode Types
promocode-type-subscription = 📋 Subscription
promocode-type-discount = 💸 Discount
promocode-type-bonus = 🎁 Bonus
promocode-type-trial = 🎁 Trial
promocode-type-extra-days = ⏳ Extra Days
promocode-type-traffic = 🌐 Traffic
promocode-type-balance = 💰 Balance


# Roles
role-user = 👤 User
role-admin = 👮‍♂️ Administrator
role-moderator = 🛡️ Moderator
role-support = 📩 Support
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
    [BALANCE] 💰 Balance
    *[OTHER] 💳 { $type }
    }


# Transaction Statuses
transaction-status =
    { $status ->
    [PENDING] 🕓 Pending
    [COMPLETED] ✅ Completed
    [CANCELED] ❌ Canceled
    [REFUNDED] 💸 Refunded
    [FAILED] ⚠️ Failed
    *[OTHER] { $status }
    }


# Broadcast Statuses
broadcast-status =
    { $status ->
    [PROCESSING] ⏳ Processing
    [COMPLETED] ✅ Completed
    [CANCELED] ⛔ Canceled
    [DELETED] ❌ Deleted
    [ERROR] ⚠️ Error
    *[OTHER] { $status }
    }


# Subscription Statuses
subscription-status =
    { $status ->
    [ACTIVE] 🟢 Active
    [EXPIRED] 🔴 Expired
    [LIMITED] 🚫 Limited
    [DISABLED] ⚫ Disabled
    *[OTHER] { $status }
    }


# Access Mode
access-mode =
    { $mode ->
    [OPEN] 🟢 Open
    [CLOSED] 🔴 Closed
    [INVITE_ONLY] 📩 By Invitation
    *[OTHER] { $mode }
    }


# Traffic Reset Strategy
traffic-strategy =
    { $strategy ->
    [NO_RESET] No Reset
    [DAY] Daily
    [WEEK] Weekly
    [MONTH] Monthly
    [YEAR] Yearly
    *[OTHER] { $strategy }
    }


# Referral Reward Types
referral-reward-type =
    { $type ->
    [MONEY] 💰 Money
    [DAYS] ⏳ Days
    [POINTS] 💎 Points
    *[OTHER] { $type }
    }


# Referral Accrual Strategies
referral-accrual-strategy =
    { $strategy ->
    [ON_FIRST_PAYMENT] 💳 First Payment
    [ON_EACH_PAYMENT] 💸 Each Payment
    *[OTHER] { $strategy }
    }


# Referral Reward Strategies
referral-reward-strategy =
    { $strategy ->
    [AMOUNT] 🔸 Fixed
    [PERCENT] 🔹 Percentage
    *[OTHER] { $strategy }
    }


# Date and Time Formatting
datetime-format = { $date } at { $time }
date-format = { $day }.{ $month }.{ $year }
time-format = { $hour }:{ $minute }


# Error Messages
error-unknown = An unknown error occurred
error-try-again = Please try again later
error-contact-support = If the problem persists, contact support


# Success Messages
success-saved = Successfully saved
success-deleted = Successfully deleted
success-created = Successfully created
success-updated = Successfully updated


# Confirmation Messages
confirm-delete = Are you sure you want to delete?
confirm-cancel = Are you sure you want to cancel?
confirm-continue = Continue?


# Pagination
pagination-page = Page { $current } of { $total }
pagination-prev = ◀️ Previous
pagination-next = Next ▶️
pagination-first = ⏮ First
pagination-last = Last ⏭


# Search
search-no-results = No results found
search-enter-query = Enter search query


# List Empty States
list-empty-users = No users
list-empty-plans = No pricing plans
list-empty-promocodes = No promo codes
list-empty-broadcasts = No broadcasts
list-empty-transactions = No transactions
list-empty-devices = No devices
list-empty-squads = No squads


# Formatting Helpers
format-price = { $price } { $currency }
format-discount = -{ $discount }%
format-traffic = { $used } / { $limit }
format-devices = { $used } / { $limit }
format-duration = { $days } days
format-expires = Expires: { $date }
format-created = Created: { $date }
format-updated = Updated: { $date }


# ===== User Profile Fragments =====
hdr-user-profile = <b>👤 Ihr Profil:</b>

frg-user =
    <blockquote>
    • <b>ID</b>: <code>{ $user_id }</code>
    • <b>Name</b>: { $user_name }
    { $is_referral_enable ->
        [1] • <b>Empfehlungscode</b>: <code>{ $referral_code }</code>
        *[0] {""}
    }
    • <b>Rabatt</b>: { $discount_value }%{ $discount_value ->
    [0] {""}
    *[other] { $discount_is_permanent ->
        [1] {" "}(Dauerhaft)
        *[0] { $discount_remaining ->
            [0] {" "}(Einmalig)
            *[other] {" "}(Noch { $discount_remaining } { $discount_remaining ->
                [1] Tag
                *[other] Tage
            })
        }
    }
    }
    { $is_balance_enabled ->
        [1] • <b>Guthaben</b>: { $balance }
        *[0] {""}
    }
    { $is_balance_separate ->
        [1] { $is_referral_enable ->
            [1] • <b>Boni</b>: { $referral_balance }
            *[0] {""}
        }
        *[0] {""}
    }
    </blockquote>

frg-subscription =
    <blockquote>
    • <b>Tarif:</b> { $plan_name }
    • <b>Traffic-Limit</b>: { $traffic_limit }
    • <b>Geräte-Limit</b>: { $device_limit_number }{ $device_limit_bonus ->
        [0] {""}
        *[other] +{ $device_limit_bonus }
    }{ $extra_devices ->
        [0] {""}
        *[other] {" "}(+{ $extra_devices } extra)
    }
    • <b>Läuft ab</b>: { $expire_time }
    </blockquote>

frg-subscription-status-full =
    { $status ->
    [ACTIVE] { frg-subscription }
    [DISABLED] 
    <blockquote>
    • <b>Status:</b> Deaktiviert
    </blockquote>
    [EXPIRED] 
    <blockquote>
    • <b>Status:</b> Abgelaufen
    </blockquote>
    [LIMITED] 
    <blockquote>
    • <b>Status:</b> Traffic-Limit erreicht
    </blockquote>
    *[NO_SUBSCRIPTION]
    <blockquote>
    • <b>Status:</b> Kein Abonnement
    </blockquote>
    }

# Hardcoded strings - UI elements
frg-empty-slot = Leerer Slot
frg-not-assigned = Nicht zugewiesen
frg-import-name = Import
frg-extra-devices-name = Zusätzliche Geräte (x{ $count })
frg-day-plural = { $value ->
    [one] Tag
    [few] Tage
    *[many] Tage
}
