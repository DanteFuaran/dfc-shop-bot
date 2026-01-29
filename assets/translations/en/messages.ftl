# Database Management
db-management =
    🗄 &lt;b&gt;Database Management&lt;/b&gt;

    Select an action:

db-save-confirm =
    &lt;b&gt;💾 Save Database&lt;/b&gt;

    A copy of the database will be saved.
    
    ⚡️ Continue?

db-load-select =
    &lt;b&gt;📦 Load Database&lt;/b&gt;

    Select a file for uploading:

db-load-confirm = 
    &lt;b&gt;📦 Load Database&lt;/b&gt;

    The current database will be replaced with the one you selected. All current data will be deleted, a backup will not be saved.

    Selected file: &lt;code&gt;{ $file }&lt;/code&gt;
    Last modified: &lt;code&gt;{ $last_modified }&lt;/code&gt;
    
    ⚡️ Continue?

db-convert-confirm =
    &lt;b&gt;🔄 Convert Database&lt;/b&gt;

    This feature converts the database from the original project format to a new version compatible with RemnaShop.

    ⚠️ The operation is irreversible!

    Convert?

db-sync-confirm =
    &lt;b&gt;🔄 Synchronize Data&lt;/b&gt;

    This feature allows you to synchronize user data from Remnawave to the local Telegram database.

    &lt;blockquote expandable&gt;
    • &lt;b&gt;Traffic&lt;/b&gt; — Will update the traffic used to values ​​from Remnawave.
    • &lt;b&gt;Devices&lt;/b&gt; — Will update the user's device information.
    • &lt;b&gt;Expiration date&lt;/b&gt; — Will update the subscription end time.
    • &lt;b&gt;Online&lt;/b&gt; — Will update the last online time.
    &lt;/blockquote&gt;

db-sync-from-bot-confirm =
    &lt;b&gt;🔄 Import from Telegram to Remnawave&lt;/b&gt;

    This feature allows you to import users from Telegram to the Remnawave panel.

    ⚠️ &lt;b&gt;Please note:&lt;/b&gt;
    &lt;blockquote expandable&gt;
    • &lt;b&gt;Import creates new users on the panel&lt;/b&gt; — if they don't already exist.
    • &lt;b&gt;Subscription settings&lt;/b&gt; — will be taken from your tariff plans.
    • &lt;b&gt;Users with active subscription&lt;/b&gt; — will be imported according to the current bot settings.
    &lt;/blockquote&gt;

    ⚡️ Continue?

db-sync-to-bot-confirm =
    &lt;b&gt;🔄 Import from Remnawave to Telegram&lt;/b&gt;

    This feature allows you to import users from the Remnawave panel to the Telegram database.

    ⚠️ &lt;b&gt;Please note:&lt;/b&gt;
    &lt;blockquote expandable&gt;
    • &lt;b&gt;Import does not synchronize existing users&lt;/b&gt; — they will be skipped.
    • &lt;b&gt;Subscription settings&lt;/b&gt; — will be taken from the panel.
    • &lt;b&gt;Some parameters&lt;/b&gt; — such as balance or bonus points will not be imported because they are not stored on the panel.
    &lt;/blockquote&gt;

    ⚡️ Continue?

db-clear-all-confirm =
    &lt;b&gt;🗑 Clear All Data&lt;/b&gt;

    All data will be deleted: users, subscriptions, promo codes, plans, settings.

    ⚠️ The operation is irreversible!

    Continue?

db-clear-users-confirm =
    &lt;b&gt;🗑 Clear Users&lt;/b&gt;

    All users will be deleted: users, subscriptions.

    ⚠️ The operation is irreversible!

    Continue?


# Database import section
db-import-title =
    📥 &lt;b&gt;Database Import&lt;/b&gt;

    Upload an exported database file in &lt;code&gt;.sql&lt;/code&gt; format.

    📁 Maximum file size: 50 MB

db-import-confirm =
    &lt;b&gt;📥 Database Import Confirmation&lt;/b&gt;

    File: &lt;code&gt;{ $file }&lt;/code&gt;
    Size: &lt;code&gt;{ $size }&lt;/code&gt;

    ⚠️ This will completely replace the current database!

    Continue?

db-import-processing =
    ⏳ Importing database...

    &lt;i&gt;This may take a few minutes.&lt;/i&gt;

db-import-success =
    ✅ Database successfully imported!

    All data has been updated.

db-import-error =
    ❌ Error importing database

    { $error }

db-import-invalid-file =
    ❌ Invalid file format

    Please upload an &lt;code&gt;.sql&lt;/code&gt; file.


# Settings
settings = 
    ⚙️ &lt;b&gt;Settings&lt;/b&gt;

    Select a category:

# Balance Settings
settings-balance =
    💰 &lt;b&gt;Balance Settings&lt;/b&gt;

    &lt;blockquote&gt;
    • &lt;b&gt;Main Balance&lt;/b&gt; — standard balance for purchases and subscriptions.
    • &lt;b&gt;Bonus Balance&lt;/b&gt; — additional balance, awarded for completed tasks.
    &lt;/blockquote&gt;

    Balance display mode:

    &lt;blockquote&gt;
    • &lt;b&gt;Combined&lt;/b&gt; — main and bonus balances are displayed as one total.
    • &lt;b&gt;Separate&lt;/b&gt; — each balance is displayed separately.
    &lt;/blockquote&gt;

settings-extra-devices = 
    📱 &lt;b&gt;Extra Devices&lt;/b&gt;

    This section allows configuring additional devices for users.

    • &lt;b&gt;Price&lt;/b&gt; — cost of renting a device (per month)
    • &lt;b&gt;Payment type&lt;/b&gt; — one-time or monthly
    • &lt;b&gt;Min days&lt;/b&gt; — the minimum number of days remaining on the subscription to purchase a device

settings-transfers = 
    💸 &lt;b&gt;Transfer Settings&lt;/b&gt;

    This section allows configuring balance transfers between users.

    • &lt;b&gt;Enable/Disable&lt;/b&gt; — enable or disable transfers
    • &lt;b&gt;Commission type&lt;/b&gt; — percentage of transfer or fixed amount
    • &lt;b&gt;Commission&lt;/b&gt; — transfer commission value
    • &lt;b&gt;Min. amount&lt;/b&gt; — minimum transfer amount
    • &lt;b&gt;Max. amount&lt;/b&gt; — maximum transfer amount

settings-transfers-commission = 
    💸 &lt;b&gt;Commission Settings&lt;/b&gt;

    Select the commission type and value.

settings-transfers-min-amount = 
    💸 &lt;b&gt;Minimum Amount Settings&lt;/b&gt;

    Select the minimum transfer amount.

settings-transfers-max-amount = 
    💸 &lt;b&gt;Maximum Amount Settings&lt;/b&gt;

    Select the maximum transfer amount.


# Global Discount Settings
settings-global-discount =
    🏷️ &lt;b&gt;Global Discount Settings&lt;/b&gt;

    In this section, you can set up a global discount for all users.

    &lt;blockquote&gt;
    • &lt;b&gt;Enabled/Disabled&lt;/b&gt; — enable or disable global discount
    • &lt;b&gt;Mode&lt;/b&gt; — "Maximum" or "Stacked" with personal discount
    • &lt;b&gt;Discount type&lt;/b&gt; — percentage or fixed
    • &lt;b&gt;Applies to&lt;/b&gt; — what the discount applies to
    &lt;/blockquote&gt;

settings-discount-value =
    💵 &lt;b&gt;Discount Value Settings&lt;/b&gt;

    Select or enter the discount value:

settings-discount-mode =
    ⚙️ &lt;b&gt;Discount Stacking Mode&lt;/b&gt;

    &lt;blockquote&gt;
    • &lt;b&gt;Maximum&lt;/b&gt; — the higher discount wins (global or personal)
    • &lt;b&gt;Stacked&lt;/b&gt; — discounts stack (e.g. 10% + 10% = 19% compound discount)
    &lt;/blockquote&gt;

settings-discount-apply-to =
    📌 &lt;b&gt;Discount Application Targets&lt;/b&gt;

    Select what the global discount applies to:

    &lt;blockquote&gt;
    • &lt;b&gt;Subscription&lt;/b&gt; — discount on subscription purchase/renewal
    • &lt;b&gt;Extra Devices&lt;/b&gt; — discount on purchasing extra devices
    • &lt;b&gt;Transfer Commission&lt;/b&gt; — discount on balance transfer commission
    &lt;/blockquote&gt;

settings-finances =
    💰 &lt;b&gt;Financial Settings&lt;/b&gt;

    Select a category:

settings-finances-gateways =
    🌐 &lt;b&gt;Payment Systems&lt;/b&gt;

    Select a payment system to configure:

settings-finances-gateways-item =
    🌐 &lt;b&gt;Payment System Settings - { $gateway_type }&lt;/b&gt;

    { $gateway_type -> 
    [YOOMONEY] Provider: &lt;code&gt;YooMoney&lt;/code&gt;
    [YOOKASSA] Provider: &lt;code&gt;YooKassa&lt;/code&gt;
    [CRYPTOMUS] Provider: &lt;code&gt;Cryptomus&lt;/code&gt;
    [HELEKET] Provider: &lt;code&gt;Heleket&lt;/code&gt;
    [TELEGRAM_STARS] Provider: &lt;code&gt;Telegram Stars&lt;/code&gt;
    [ROBOKASSA] Provider: &lt;code&gt;Robokassa&lt;/code&gt;
    [CRYPTOPAY] Provider: &lt;code&gt;CryptoPay&lt;/code&gt;
    *[OTHER] Provider: &lt;code&gt;{ $gateway_type }&lt;/code&gt;
    }

settings-finances-gateways-item-default-currency =
    💸 &lt;b&gt;Default Currency&lt;/b&gt;

    Select the default currency for payments:

settings-gateway-test-title =
    🧪 &lt;b&gt;Test Payment - { $gateway_type }&lt;/b&gt;

    A test invoice for 10 ₽ ({ $currency }) has been created.

    Payment link:
    &lt;code&gt;{ $payment_url }&lt;/code&gt;

settings-gateway-test-error =
    ❌ &lt;b&gt;Error creating invoice&lt;/b&gt;

    { $error }

settings-currency-rates =
    💱 &lt;b&gt;Exchange Rates&lt;/b&gt;

    { $rates }

    Press to update manually.
    Rates update frequency: &lt;b&gt;{ $update_interval }&lt;/b&gt; minutes

    &lt;i&gt;Updated: { $updated_at }&lt;/i&gt;

settings-language =
    🌐 &lt;b&gt;Language&lt;/b&gt;

    Select bot language:


# Access
access =
    🔓 &lt;b&gt;Access Mode&lt;/b&gt;

    Current status:
    
    • &lt;b&gt;Purchases&lt;/b&gt;: { $purchases_status }
    • &lt;b&gt;Registration&lt;/b&gt;: { $registration_status }

access-conditions =
    ⚙️ &lt;b&gt;Access Conditions&lt;/b&gt;

    &lt;blockquote expandable&gt;
    • &lt;b&gt;Rules&lt;/b&gt; — you can set up rules that the user must accept to access the bot.
    • &lt;b&gt;Channel subscription&lt;/b&gt; — you can set up a channel that the user must subscribe to for access to the bot.
    &lt;/blockquote&gt;

access-rules =
    ✳️ &lt;b&gt;Rules&lt;/b&gt;

    { $status }

    If enabled, users must accept the rules before using the bot.

    Rules text will be displayed from the &lt;b&gt;Terms of Service&lt;/b&gt;.

access-channel =
    ❇️ &lt;b&gt;Channel Subscription&lt;/b&gt;

    { $status }

    If enabled, users must subscribe to the channel before using the bot.

    Current channel: { $channel_link }

access-channel-set =
    ❇️ &lt;b&gt;Channel Settings&lt;/b&gt;

    Enter the link to the Telegram channel:

    Example: &lt;code&gt;https://t.me/channel_name&lt;/code&gt;

    ⚠️ &lt;b&gt;Important&lt;/b&gt;: the bot must be an administrator in the channel!


# Community
community =
    👥 &lt;b&gt;Community&lt;/b&gt;

    { $status }

    If enabled, users will be able to see a community button in the main menu, which will redirect them to the specified group or channel.

    Current link: { $community_link }

community-set =
    👥 &lt;b&gt;Community Settings&lt;/b&gt;

    Enter the link to the Telegram group or channel:

    Example: &lt;code&gt;https://t.me/channel_name&lt;/code&gt;


# Terms of service
tos =
    📜 &lt;b&gt;Terms of Service&lt;/b&gt;

    { $status }

    If enabled, users will be able to see a Terms of Service button in the main menu, which will redirect them to the specified link.

    Current source: { $tos_link }

tos-set =
    📜 &lt;b&gt;Agreement Settings&lt;/b&gt;

    Enter the link to the agreement text:

    Examples: 
    &lt;code&gt;https://telegra.ph/...&lt;/code&gt;
    &lt;code&gt;https://example.com/tos&lt;/code&gt;


# Menu
menu = 
    👋 Hello, { $mention }!

    { $subscription_info }

menu-promo-input =
    🎟 &lt;b&gt;Promo Code Activation&lt;/b&gt;

    Enter the promo code:


# Menu - Invite
menu-invite =
    👥 &lt;b&gt;Referral Program&lt;/b&gt;

    👤 Invited users: &lt;b&gt;{ $invited_count }&lt;/b&gt;
    { $referral_balance }

    &lt;b&gt;Your referral link:&lt;/b&gt;
    { $referral_link }

menu-invite-about =
    &lt;b&gt;How to earn from referrals?&lt;/b&gt;

    Invite friends to our service and get bonuses for every invited user!

    1️⃣ Share your referral link with friends
    2️⃣ When a friend registers and pays for a subscription, you get a reward
    3️⃣ Rewards are credited to your bonus balance

    &lt;b&gt;Reward terms:&lt;/b&gt;
    &lt;blockquote expandable&gt;{ $reward_conditions }&lt;/blockquote&gt;


# Menu - Balance
menu-balance =
    💰 &lt;b&gt;Balance&lt;/b&gt;

    💳 Balance: &lt;b&gt;{ $balance } ₽&lt;/b&gt;

menu-balance-topup =
    💰 &lt;b&gt;Balance Top Up&lt;/b&gt;

    Select payment amount:

menu-balance-topup-custom =
    💰 &lt;b&gt;Balance Top Up&lt;/b&gt;

    Enter top up amount (in rubles):

menu-balance-topup-gateway =
    💰 &lt;b&gt;Balance Top Up&lt;/b&gt;

    Amount: &lt;b&gt;{ $amount }&lt;/b&gt;

    Select payment method:

menu-balance-topup-confirm =
    💰 &lt;b&gt;Payment Confirmation&lt;/b&gt;

    Amount: &lt;b&gt;{ $amount }&lt;/b&gt;
    Payment method: &lt;b&gt;{ $gateway }&lt;/b&gt;

    After clicking the &lt;b&gt;Confirm payment&lt;/b&gt; button, you will be redirected to the payment page.

menu-balance-transfer =
    💸 &lt;b&gt;Balance Transfer&lt;/b&gt;

    Current balance: &lt;b&gt;{ $balance } ₽&lt;/b&gt;
    Commission: &lt;b&gt;{ $commission }&lt;/b&gt;

    { $limits }

menu-balance-transfer-recipient =
    💸 &lt;b&gt;Balance Transfer&lt;/b&gt;

    Enter the user ID or username for the transfer:

menu-balance-transfer-amount =
    💸 &lt;b&gt;Balance Transfer&lt;/b&gt;

    Recipient: { $recipient }

    Select the transfer amount:

menu-balance-transfer-amount-custom =
    💸 &lt;b&gt;Balance Transfer&lt;/b&gt;

    Recipient: { $recipient }

    Enter the transfer amount (in rubles):

menu-balance-transfer-message =
    💸 &lt;b&gt;Balance Transfer&lt;/b&gt;

    Recipient: { $recipient }
    Amount: &lt;b&gt;{ $amount } ₽&lt;/b&gt;

    Enter a message for the recipient (optional):

menu-balance-transfer-confirm =
    💸 &lt;b&gt;Transfer Confirmation&lt;/b&gt;

    Recipient: { $recipient }
    Amount: &lt;b&gt;{ $amount } ₽&lt;/b&gt;
    Commission: &lt;b&gt;{ $commission }&lt;/b&gt;
    Total: &lt;b&gt;{ $total } ₽&lt;/b&gt;
    { $message_preview }

    Confirm transfer?

menu-balance-transfer-history =
    📜 &lt;b&gt;Transfer History&lt;/b&gt;

    { $history }


# Menu - Subscription
menu-subscription =
    💳 &lt;b&gt;Subscription&lt;/b&gt;

    Select a pricing plan:

menu-subscription-plan =
    💳 &lt;b&gt;Subscription - { $plan_name }&lt;/b&gt;

    { $plan_description }

    &lt;b&gt;Features:&lt;/b&gt;
    { $plan_features }
    
    Select subscription duration:

menu-subscription-pay =
    💳 &lt;b&gt;Subscription - { $plan_name }&lt;/b&gt;

    Duration: &lt;b&gt;{ $duration }&lt;/b&gt;
    Price: { $price }
    { $balance }

    Select payment method:

menu-subscription-pay-confirm =
    💳 &lt;b&gt;Payment Confirmation&lt;/b&gt;

    Plan: &lt;b&gt;{ $plan_name }&lt;/b&gt;
    Duration: &lt;b&gt;{ $duration }&lt;/b&gt;
    Price: { $price }
    Payment method: &lt;b&gt;{ $gateway }&lt;/b&gt;

    After clicking the &lt;b&gt;Confirm payment&lt;/b&gt; button, you will be redirected to the payment page.

menu-subscription-balance-confirm =
    💳 &lt;b&gt;Payment Confirmation&lt;/b&gt;

    Plan: &lt;b&gt;{ $plan_name }&lt;/b&gt;
    Duration: &lt;b&gt;{ $duration }&lt;/b&gt;
    Price: { $price }
    
    Current balance: &lt;b&gt;{ $balance }&lt;/b&gt;
    Remaining balance: &lt;b&gt;{ $balance_after }&lt;/b&gt;

    Confirm payment?


# Menu - Connect
menu-connect =
    🚀 &lt;b&gt;Connect&lt;/b&gt;

    Select connection method:

menu-connect-key =
    🔑 &lt;b&gt;Connection Key&lt;/b&gt;

    Your key:

    &lt;code&gt;{ $key }&lt;/code&gt;

    Copy the key and paste it in the application.

menu-connect-qr =
    📱 &lt;b&gt;QR Code&lt;/b&gt;

    Scan the QR code with the application.


# Menu - Devices
menu-devices =
    📱 &lt;b&gt;My Devices&lt;/b&gt;

    Device limit: &lt;b&gt;{ $device_limit }&lt;/b&gt;
    { $extra_devices }

    &lt;b&gt;Device List:&lt;/b&gt;

    { $devices }

menu-extra-devices =
    📱 &lt;b&gt;Extra Devices&lt;/b&gt;

    &lt;b&gt;Your extra devices:&lt;/b&gt;

    { $extra_devices }

menu-add-device =
    ➕ &lt;b&gt;Add Extra Device&lt;/b&gt;

    Cost: &lt;b&gt;{ $price } ₽&lt;/b&gt;
    Pricing: { $pricing_type }

    { $duration_info }

    Select duration:

menu-add-device-confirm =
    ➕ &lt;b&gt;Confirm Purchase&lt;/b&gt;

    Extra device: &lt;b&gt;1 pc.&lt;/b&gt;
    Duration: &lt;b&gt;{ $duration }&lt;/b&gt;
    Price: &lt;b&gt;{ $price } ₽&lt;/b&gt;
    
    Current balance: &lt;b&gt;{ $balance } ₽&lt;/b&gt;
    Balance after: &lt;b&gt;{ $balance_after } ₽&lt;/b&gt;

    Confirm purchase?

menu-extra-device-view =
    📱 &lt;b&gt;Extra Device&lt;/b&gt;

    Created: &lt;b&gt;{ $created_at }&lt;/b&gt;
    Expires: &lt;b&gt;{ $expires_at }&lt;/b&gt;
    Auto-renewal: &lt;b&gt;{ $auto_renewal }&lt;/b&gt;
    
    Status: { $status }

menu-extra-device-auto-renew-disabled =
    ✅ Auto-renewal disabled successfully.

menu-extra-device-deleted =
    ✅ Extra device deleted successfully.


# Menu - Trial
menu-trial =
    🎁 &lt;b&gt;Trial Subscription&lt;/b&gt;

    You can try our service for free!

    &lt;b&gt;Trial period:&lt;/b&gt; { $trial_days }
    &lt;b&gt;Traffic:&lt;/b&gt; { $traffic_limit }
    &lt;b&gt;Devices:&lt;/b&gt; { $device_limit }

    To activate, click the button below:

menu-trial-used =
    ⚠️ &lt;b&gt;Trial Period&lt;/b&gt;

    You have already used the trial period.


# Menu - Referral Trial
menu-referral-trial =
    📢 &lt;b&gt;Referral Subscription&lt;/b&gt;

    Invite &lt;b&gt;{ $required_invites }&lt;/b&gt; friends and get a free subscription!

    👤 Invited: &lt;b&gt;{ $invited_count }/{ $required_invites }&lt;/b&gt;

    { $status }

menu-referral-trial-progress =
    Invite &lt;b&gt;{ $remaining }&lt;/b&gt; more users.

menu-referral-trial-ready =
    ✅ You have invited enough users!

    Click the button to get your subscription.


# Menu - Support
menu-support =
    🆘 &lt;b&gt;Support&lt;/b&gt;

    If you have any questions, contact support:

    { $support_link }


# User Bonuses
menu-bonus-activation =
    💸 &lt;b&gt;Bonus Activation&lt;/b&gt;

    Bonus balance: &lt;b&gt;{ $referral_balance } ₽&lt;/b&gt;

    Select the amount to transfer to main balance:

menu-bonus-activation-custom =
    💸 &lt;b&gt;Bonus Activation&lt;/b&gt;

    Bonus balance: &lt;b&gt;{ $referral_balance } ₽&lt;/b&gt;

    Enter the amount to transfer (in rubles):


# Download
menu-download-android =
    📥 &lt;b&gt;Download for Android&lt;/b&gt;

    Select the application to download:

menu-download-ios =
    📥 &lt;b&gt;Download for iPhone&lt;/b&gt;

    Select the application to download:

menu-download-windows =
    📥 &lt;b&gt;Download for Windows&lt;/b&gt;

    Select the application to download:

menu-download-macos =
    📥 &lt;b&gt;Download for macOS&lt;/b&gt;

    Select the application to download:


# Dashboard
dashboard =
    🛠 &lt;b&gt;Control Panel&lt;/b&gt;

    Welcome to the admin panel.


# Dashboard - Statistics
dashboard-statistics =
    📊 &lt;b&gt;Statistics&lt;/b&gt;

    { $stats_content }


# Dashboard - Users
dashboard-users =
    👥 &lt;b&gt;Users&lt;/b&gt;

    Total: &lt;b&gt;{ $total }&lt;/b&gt;

    Select an action:

dashboard-users-search =
    🔍 &lt;b&gt;User Search&lt;/b&gt;

    Enter user ID or username:

dashboard-users-recent-registered =
    🆕 &lt;b&gt;Recently Registered&lt;/b&gt;

    { $users }

dashboard-users-recent-activity =
    📝 &lt;b&gt;Recently Active&lt;/b&gt;

    { $users }

dashboard-users-all =
    👥 &lt;b&gt;All Users&lt;/b&gt;

    { $users }

dashboard-users-blacklist =
    🚫 &lt;b&gt;Blacklist&lt;/b&gt;

    { $users }

dashboard-users-unblock-all =
    🔓 &lt;b&gt;Unblock All&lt;/b&gt;

    All users will be unblocked.

    Continue?


# Dashboard - User
dashboard-user =
    👤 &lt;b&gt;User — { $name }&lt;/b&gt;

    { $user_info }

dashboard-user-discount =
    💸 &lt;b&gt;Permanent Discount&lt;/b&gt;

    Current discount: &lt;b&gt;{ $discount }&lt;/b&gt;

    Select discount value:

dashboard-user-discount-input =
    💸 &lt;b&gt;Permanent Discount&lt;/b&gt;

    Enter discount percentage (0-100):

dashboard-user-balance =
    💳 &lt;b&gt;User Finances&lt;/b&gt;

    Main balance: &lt;b&gt;{ $balance } ₽&lt;/b&gt;
    Bonus balance: &lt;b&gt;{ $referral_balance } ₽&lt;/b&gt;

dashboard-user-points-main =
    💰 &lt;b&gt;Main Balance&lt;/b&gt;

    Current balance: &lt;b&gt;{ $balance } ₽&lt;/b&gt;

    Enter the change amount (positive or negative number):

dashboard-user-points-referral =
    🎁 &lt;b&gt;Bonus Balance&lt;/b&gt;

    Current bonus balance: &lt;b&gt;{ $referral_balance } ₽&lt;/b&gt;

    Enter the change amount (positive or negative number):

dashboard-user-subscription =
    📋 &lt;b&gt;User Subscription&lt;/b&gt;

    { $subscription_info }

dashboard-user-subscription-traffic-limit =
    🌐 &lt;b&gt;Traffic Limit&lt;/b&gt;

    Current limit: &lt;b&gt;{ $traffic_limit }&lt;/b&gt;

    Enter new value in GB:

dashboard-user-subscription-device-limit =
    📱 &lt;b&gt;Device Limit&lt;/b&gt;

    Current limit: &lt;b&gt;{ $device_limit }&lt;/b&gt;

    Enter new value:

dashboard-user-subscription-expire-time =
    ⏳ &lt;b&gt;Expiration Time&lt;/b&gt;

    Current time: &lt;b&gt;{ $expire_time }&lt;/b&gt;

    Enter new value in days (positive or negative number):

dashboard-user-subscription-squads =
    🔗 &lt;b&gt;User Squads&lt;/b&gt;

    { $squads_info }

    Select squad to add/remove:

dashboard-user-subscription-devices =
    🧾 &lt;b&gt;User Devices&lt;/b&gt;

    { $devices_info }

dashboard-user-give-subscription =
    🎁 &lt;b&gt;Give Subscription&lt;/b&gt;

    Select plan for the user:

dashboard-user-give-subscription-duration =
    🎁 &lt;b&gt;Give Subscription - { $plan_name }&lt;/b&gt;

    Select duration:

dashboard-user-give-subscription-confirm =
    🎁 &lt;b&gt;Subscription Confirmation&lt;/b&gt;

    Plan: &lt;b&gt;{ $plan_name }&lt;/b&gt;
    Duration: &lt;b&gt;{ $duration }&lt;/b&gt;

    Grant to user?

dashboard-user-change-subscription =
    🔃 &lt;b&gt;Change Subscription&lt;/b&gt;

    Current plan: &lt;b&gt;{ $current_plan }&lt;/b&gt;

    Select new plan:

dashboard-user-change-subscription-confirm =
    🔃 &lt;b&gt;Subscription Change Confirmation&lt;/b&gt;

    Current plan: &lt;b&gt;{ $current_plan }&lt;/b&gt;
    New plan: &lt;b&gt;{ $new_plan }&lt;/b&gt;

    Change plan?

dashboard-user-statistics =
    📊 &lt;b&gt;User Statistics&lt;/b&gt;

    { $stats_info }

dashboard-user-message =
    📩 &lt;b&gt;Send Message&lt;/b&gt;

    Send a message to the user. You can use text, photos, videos or any other content.

    Just send the message:

dashboard-user-message-preview =
    👀 &lt;b&gt;Preview&lt;/b&gt;

    The message will be sent to the user. Confirm sending?

dashboard-user-role =
    👮‍♂️ &lt;b&gt;User Role&lt;/b&gt;

    Current role: &lt;b&gt;{ $role }&lt;/b&gt;

    Select new role:

dashboard-user-transactions =
    🧾 &lt;b&gt;User Payments&lt;/b&gt;

    { $transactions }

dashboard-user-transaction =
    🧾 &lt;b&gt;Transaction&lt;/b&gt;

    { $transaction_info }

dashboard-user-give-access =
    🔑 &lt;b&gt;Plan Access&lt;/b&gt;

    { $current_access }

    Select plan to grant/revoke access:

dashboard-user-sync =
    🌀 &lt;b&gt;User Synchronization&lt;/b&gt;

    A mismatch was detected between the local database and the Remnawave panel.

    &lt;blockquote&gt;
    &lt;b&gt;Remnawave&lt;/b&gt;
    { $remnawave_info }
    &lt;/blockquote&gt;

    &lt;blockquote&gt;
    &lt;b&gt;Remnashop&lt;/b&gt;
    { $remnashop_info }
    &lt;/blockquote&gt;

    Select data source:


# Dashboard - Broadcast
dashboard-broadcast =
    📢 &lt;b&gt;Broadcast&lt;/b&gt;

    { $broadcast_status }

    Select broadcast type:

dashboard-broadcast-list =
    📄 &lt;b&gt;All Broadcasts&lt;/b&gt;

    { $broadcast_list }

dashboard-broadcast-view =
    👀 &lt;b&gt;Broadcast { $broadcast_id }&lt;/b&gt;

    { $broadcast_info }

dashboard-broadcast-plan =
    📦 &lt;b&gt;Broadcast by Plan&lt;/b&gt;

    Select plan:

dashboard-broadcast-content =
    ✉️ &lt;b&gt;Broadcast Content&lt;/b&gt;

    Send the content you want to broadcast:

dashboard-broadcast-buttons =
    ✳️ &lt;b&gt;Broadcast Buttons&lt;/b&gt;

    Select buttons to add to the broadcast:

dashboard-broadcast-preview =
    👀 &lt;b&gt;Broadcast Preview&lt;/b&gt;

    Recipients: &lt;b&gt;{ $recipients }&lt;/b&gt;
    { $filter }

    Confirm sending?

dashboard-broadcast-sent =
    ✅ Broadcast started!

    ID: &lt;code&gt;{ $broadcast_id }&lt;/code&gt;

dashboard-broadcast-canceled =
    ⛔ Broadcast canceled.

dashboard-broadcast-deleted =
    ❌ Sent messages deleted.


# Dashboard - Promocodes
dashboard-promocodes =
    🎟 &lt;b&gt;Promo Codes&lt;/b&gt;

    Total: &lt;b&gt;{ $total }&lt;/b&gt;

    Select an action:

dashboard-promocodes-list =
    📃 &lt;b&gt;Promo Code List&lt;/b&gt;

    { $promocodes }

dashboard-promocodes-search =
    🔍 &lt;b&gt;Promo Code Search&lt;/b&gt;

    Enter promo code:

dashboard-promocode =
    🎟 &lt;b&gt;Promo Code — { $code }&lt;/b&gt;

    { $promocode_info }

dashboard-promocode-create =
    🆕 &lt;b&gt;Create Promo Code&lt;/b&gt;

    Select promo code parameters:

dashboard-promocode-create-code =
    🏷️ &lt;b&gt;Promo Code&lt;/b&gt;

    Enter promo code (or generate random):

dashboard-promocode-create-name =
    📝 &lt;b&gt;Name&lt;/b&gt;

    Enter promo code name (optional):

dashboard-promocode-create-type =
    🔖 &lt;b&gt;Promo Code Type&lt;/b&gt;

    Select promo code type:

dashboard-promocode-create-availability =
    ✴️ &lt;b&gt;Promo Code Access&lt;/b&gt;

    Select who can use the promo code:

dashboard-promocode-create-reward =
    🎁 &lt;b&gt;Promo Code Reward&lt;/b&gt;

    { $reward_type }

    Select reward value:

dashboard-promocode-create-lifetime =
    ⌛ &lt;b&gt;Promo Code Lifetime&lt;/b&gt;

    Select the number of activations or unlimited:

dashboard-promocode-create-access =
    📦 &lt;b&gt;Plan Access&lt;/b&gt;

    Select plans where the promo code can be used:

dashboard-promocode-create-allowed =
    👥 &lt;b&gt;Allowed Users&lt;/b&gt;

    Enter user IDs (comma-separated):

dashboard-promocode-edit =
    ✏️ &lt;b&gt;Edit Promo Code&lt;/b&gt;

    Select parameter to edit:

dashboard-promocode-edit-code =
    🏷️ &lt;b&gt;Promo Code&lt;/b&gt;

    Current code: &lt;code&gt;{ $code }&lt;/code&gt;

    Enter new promo code:

dashboard-promocode-edit-name =
    📝 &lt;b&gt;Name&lt;/b&gt;

    Current name: { $name }

    Enter new name:

dashboard-promocode-edit-type =
    🔖 &lt;b&gt;Promo Code Type&lt;/b&gt;

    Current type: { $type }

    Select new type:

dashboard-promocode-edit-availability =
    ✴️ &lt;b&gt;Promo Code Access&lt;/b&gt;

    Current access: { $availability }

    Select new access:

dashboard-promocode-edit-reward =
    🎁 &lt;b&gt;Promo Code Reward&lt;/b&gt;

    Current reward: { $reward }

    Select new reward:

dashboard-promocode-edit-lifetime =
    ⌛ &lt;b&gt;Promo Code Lifetime&lt;/b&gt;

    Current lifetime: { $lifetime }

    Select new lifetime:

dashboard-promocode-edit-access =
    📦 &lt;b&gt;Plan Access&lt;/b&gt;

    Current plans: { $access }

    Select plans:

dashboard-promocode-edit-quantity =
    🔢 &lt;b&gt;Quantity&lt;/b&gt;

    Current quantity: { $quantity }

    Enter new quantity:

dashboard-promocode-delete-confirm =
    🗑️ &lt;b&gt;Delete Promo Code&lt;/b&gt;

    Delete promo code &lt;code&gt;{ $code }&lt;/code&gt;?


# Dashboard - Features
dashboard-features =
    ⚙️ &lt;b&gt;Features&lt;/b&gt;

    Enable or disable various bot functions:

    { $features_list }


# Dashboard - Remnawave
dashboard-remnawave =
    🌊 &lt;b&gt;Remnawave Panel&lt;/b&gt;

    Connection status: { $status }

    { $panel_info }

dashboard-remnawave-users =
    👥 &lt;b&gt;Panel Users&lt;/b&gt;

    { $users }

dashboard-remnawave-hosts =
    🌐 &lt;b&gt;Hosts&lt;/b&gt;

    { $hosts }

dashboard-remnawave-nodes =
    🖥️ &lt;b&gt;Nodes&lt;/b&gt;

    { $nodes }

dashboard-remnawave-inbounds =
    🔌 &lt;b&gt;Inbounds&lt;/b&gt;

    { $inbounds }


# Dashboard - Remnashop
dashboard-remnashop =
    🛍 &lt;b&gt;Telegram&lt;/b&gt;

    Bot version: &lt;code&gt;{ $version }&lt;/code&gt;
    { $update_info }


# Dashboard - Importer
dashboard-importer =
    📥 &lt;b&gt;Import&lt;/b&gt;

    Select data source for import:

dashboard-importer-xui =
    💩 &lt;b&gt;3X-UI Panel Import&lt;/b&gt;

    Instructions for import:
    
    1. Open 3X-UI panel
    2. Go to Panel Settings → Backup
    3. Export the database
    4. Upload the file here

dashboard-importer-xui-shop =
    🛒 &lt;b&gt;3xui-shop Bot Import&lt;/b&gt;

    Instructions for import:

    1. In the 3xui-shop bot, run the &lt;code&gt;/dump&lt;/code&gt; command
    2. Upload the received file here

dashboard-importer-sync =
    🌀 &lt;b&gt;Synchronization&lt;/b&gt;

    Select synchronization direction:

dashboard-importer-squads =
    🔗 &lt;b&gt;Internal Squads&lt;/b&gt;

    Select squad for import:


# Dashboard - Plans
dashboard-plans =
    📦 &lt;b&gt;Pricing Plans&lt;/b&gt;

    Total: &lt;b&gt;{ $total }&lt;/b&gt;

    Select plan to edit or create a new one:

dashboard-plan =
    📦 &lt;b&gt;Plan — { $name }&lt;/b&gt;

    { $plan_info }

dashboard-plan-create =
    🆕 &lt;b&gt;Create Plan&lt;/b&gt;

    Select plan parameters:

dashboard-plan-create-name =
    🏷️ &lt;b&gt;Plan Name&lt;/b&gt;

    Enter plan name:

dashboard-plan-create-description =
    💬 &lt;b&gt;Plan Description&lt;/b&gt;

    Enter plan description (optional):

dashboard-plan-create-tag =
    📌 &lt;b&gt;Plan Tag&lt;/b&gt;

    Enter tag for the plan (optional):
    
    Example: "Popular", "New"

dashboard-plan-create-type =
    🔖 &lt;b&gt;Plan Type&lt;/b&gt;

    Select plan type:

dashboard-plan-create-availability =
    ✴️ &lt;b&gt;Plan Access&lt;/b&gt;

    Select who can purchase the plan:

dashboard-plan-create-traffic =
    🌐 &lt;b&gt;Traffic&lt;/b&gt;

    Enter traffic limit in GB:
    
    Enter &lt;code&gt;0&lt;/code&gt; for unlimited traffic.

dashboard-plan-traffic-reset-strategy =
    🔄 &lt;b&gt;Traffic Reset Strategy&lt;/b&gt;

    Select traffic reset strategy:

dashboard-plan-create-devices =
    📱 &lt;b&gt;Devices&lt;/b&gt;

    Enter device limit:

dashboard-plan-create-squads =
    🔗 &lt;b&gt;Plan Squads&lt;/b&gt;

    Select squads for the plan:

dashboard-plan-create-allowed =
    👥 &lt;b&gt;Allowed Users&lt;/b&gt;

    Enter user IDs (comma-separated):

dashboard-plan-create-durations-prices =
    💰 &lt;b&gt;Pricing&lt;/b&gt;

    Set durations and prices:

    { $durations }

dashboard-plan-create-duration =
    ⌛ &lt;b&gt;Duration&lt;/b&gt;

    Enter duration in days:

dashboard-plan-create-price =
    💰 &lt;b&gt;Price&lt;/b&gt;

    Duration: { $duration }

    Enter the price in rubles:

dashboard-plan-edit =
    ✏️ &lt;b&gt;Edit Plan&lt;/b&gt;

    Select parameter to edit:

dashboard-plan-edit-name =
    🏷️ &lt;b&gt;Plan Name&lt;/b&gt;

    Current name: &lt;code&gt;{ $name }&lt;/code&gt;

    Enter new name:

dashboard-plan-edit-description =
    💬 &lt;b&gt;Plan Description&lt;/b&gt;

    Current description: { $description }

    Enter new description:

dashboard-plan-edit-tag =
    📌 &lt;b&gt;Plan Tag&lt;/b&gt;

    Current tag: { $tag }

    Enter new tag:

dashboard-plan-edit-type =
    🔖 &lt;b&gt;Plan Type&lt;/b&gt;

    Current type: { $type }

    Select new type:

dashboard-plan-edit-availability =
    ✴️ &lt;b&gt;Plan Access&lt;/b&gt;

    Current access: { $availability }

    Select new access:

dashboard-plan-edit-traffic =
    🌐 &lt;b&gt;Traffic&lt;/b&gt;

    Current limit: &lt;b&gt;{ $traffic }&lt;/b&gt;

    Enter new value in GB:

dashboard-plan-edit-devices =
    📱 &lt;b&gt;Devices&lt;/b&gt;

    Current limit: &lt;b&gt;{ $devices }&lt;/b&gt;

    Enter new value:

dashboard-plan-edit-squads =
    🔗 &lt;b&gt;Plan Squads&lt;/b&gt;

    Current squads: { $squads }

    Select squads:

dashboard-plan-edit-allowed =
    👥 &lt;b&gt;Allowed Users&lt;/b&gt;

    Current users: { $allowed }

    Enter user IDs (comma-separated):

dashboard-plan-delete-confirm =
    ❌ &lt;b&gt;Delete Plan&lt;/b&gt;

    Delete plan &lt;code&gt;{ $name }&lt;/code&gt;?

    ⚠️ This action cannot be undone!


# Dashboard - Referral
dashboard-referral =
    👥 &lt;b&gt;Referral System&lt;/b&gt;

    { $status }

    Configure the referral system:

dashboard-referral-level =
    🔢 &lt;b&gt;Referral Levels&lt;/b&gt;

    Current levels: &lt;b&gt;{ $levels }&lt;/b&gt;

    Select number of levels:

dashboard-referral-reward-type =
    🎀 &lt;b&gt;Reward Type&lt;/b&gt;

    Select reward type:

dashboard-referral-accrual-strategy =
    📍 &lt;b&gt;Accrual Condition&lt;/b&gt;

    Select when rewards are accrued:

dashboard-referral-reward-strategy =
    ⚖️ &lt;b&gt;Accrual Method&lt;/b&gt;

    Select how rewards are calculated:

dashboard-referral-reward =
    🎁 &lt;b&gt;Reward&lt;/b&gt;

    Current reward: { $reward }

    Select new reward value:

dashboard-referral-invite-message =
    ✉️ &lt;b&gt;Invitation Message&lt;/b&gt;

    Configure the message sent when inviting:


# Notifications
dashboard-notifications =
    🔔 &lt;b&gt;Notifications&lt;/b&gt;

    Configure notifications:

dashboard-notifications-user =
    👥 &lt;b&gt;User Notifications&lt;/b&gt;

    Enable or disable user notifications:

dashboard-notifications-system =
    ⚙️ &lt;b&gt;System Notifications&lt;/b&gt;

    Enable or disable system notifications:


# Trial settings
trial-settings =
    🎁 &lt;b&gt;Trial Settings&lt;/b&gt;

    { $status }

    Configure trial parameters:

trial-settings-days =
    📅 &lt;b&gt;Trial Duration&lt;/b&gt;

    Current duration: &lt;b&gt;{ $days }&lt;/b&gt;

    Enter the number of days:

trial-settings-traffic =
    🌐 &lt;b&gt;Trial Traffic&lt;/b&gt;

    Current limit: &lt;b&gt;{ $traffic }&lt;/b&gt;

    Enter traffic limit in GB:

trial-settings-devices =
    📱 &lt;b&gt;Trial Devices&lt;/b&gt;

    Current limit: &lt;b&gt;{ $devices }&lt;/b&gt;

    Enter device limit:

trial-settings-plan =
    📦 &lt;b&gt;Trial Plan&lt;/b&gt;

    Current plan: { $plan }

    Select plan for trial:


# Referral trial settings
referral-trial-settings =
    📢 &lt;b&gt;Referral Subscription Settings&lt;/b&gt;

    { $status }

    Configure referral subscription parameters:

referral-trial-settings-invites =
    👥 &lt;b&gt;Required Invites&lt;/b&gt;

    Current requirement: &lt;b&gt;{ $invites }&lt;/b&gt;

    Enter the number of invites:


# Gateways positioning
gateways-positioning =
    🔢 &lt;b&gt;Payment System Positioning&lt;/b&gt;

    Drag and drop to change order:

    { $gateways }


# Plan statistics
plan-statistics =
    📊 &lt;b&gt;Plan Statistics&lt;/b&gt;

    { $plan_stats }


# ===== Main Menu =====
msg-main-menu =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }{ frg-subscription-status-full }

msg-menu-connect =
    <b>📝 Instructions:</b>
    <blockquote>
    • Download and install the app.
    • Click 🔗 Connect.
    • Enable it in the app.
    </blockquote>

msg-menu-devices =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }
    { frg-subscription }

    📱 <b>Device Management:</b>

# Subscription Key Message
msg-subscription-key-title = <b>🔑 Subscription Key:</b>
# ===== Balance Section =====
msg-balance-menu =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }
    { frg-subscription-status-full }

    <b>💰 Balance Management:</b>

msg-balance-select-gateway =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }
    { frg-subscription-conditional }

    <b>💰 Select Payment Method:</b>

msg-balance-select-amount =
    <b>💰 Top Up Balance</b>

    Payment method: <b>{ $selected_gateway }</b>

    Select top-up amount:

msg-balance-enter-amount =
    <b>💰 Top Up Balance</b>

    Payment method: <b>{ $selected_gateway }</b>

    Enter top-up amount (from { $min_amount } to { $max_amount } { $currency }):

msg-balance-confirm =
    <b>💰 Confirm Top Up</b>

    Payment method: <b>{ $selected_gateway }</b>
    Amount: <b>{ $topup_amount } { $currency }</b>

    Click the button below to pay.

msg-balance-success =
    <b>✅ Balance successfully topped up!</b>
    
    <blockquote>
    <b>{ $amount }{ $currency }</b> has been credited to your account
    </blockquote>

msg-balance-transfer =
    <b>💸 Balance Transfer</b>

    { hdr-user-profile }
    <blockquote>
    { lbl-your-balance } <b>{ $balance }</b>
    { lbl-commission } { $commission_display }
    </blockquote>

    { hdr-transfer }
    <blockquote>
    { lbl-recipient } { $recipient_display }
    { lbl-transfer-amount } <b>{ $amount_display } ₽</b>
    { lbl-commission } <b>{ $transfer_commission } ₽</b>
    </blockquote>

    { hdr-message }
    <blockquote>
    { $message_display }
    </blockquote>

    { msg-fill-data-and-send }

msg-balance-transfer-recipient =
    <b>💸 Recipient</b>

    <blockquote>
    Enter the recipient's <b>Telegram ID</b>:
    </blockquote>

msg-balance-transfer-recipient-history =
    <b>📜 User History</b>

    Select a recipient from the list of users you have previously sent transfers to:

msg-balance-transfer-no-history = <i>You don't have any transfer history yet.</i>

msg-balance-transfer-amount-value =
    <b>💸 Transfer Amount</b>

    <blockquote>
    • Current amount: { $current_display }
    • Change to: { $selected_display }
    </blockquote>

    Select amount or enter your own:

msg-balance-transfer-amount-manual =
    <b>✏️ Manual Input</b>

    <blockquote>
    Enter transfer amount (from { $min_amount } to { $max_amount } ₽):
    </blockquote>

msg-balance-transfer-message =
    <b>💬 Message</b>

    <blockquote>
    { $message_display }
    </blockquote>

    <i>Enter a message for the transfer (max 200 characters):</i>

msg-balance-transfer-confirm =
    <b>💸 Confirm Transfer</b>

    <blockquote>
    Recipient: <b>{ $recipient_name }</b> (<code>{ $recipient_id }</code>)
    Transfer amount: <b>{ $amount } ₽</b>
    Commission: <b>{ $commission } ₽</b>
    Total to be debited: <b>{ $total } ₽</b>
    </blockquote>

    ⚠️ <b>Warning:</b> This operation is irreversible!

msg-balance-transfer-success =
    <b>✅ Transfer completed successfully!</b>

    <blockquote>
    Recipient: <b>{ $recipient_name }</b>
    Amount: <b>{ $amount } ₽</b>
    Commission: <b>{ $commission } ₽</b>
    </blockquote>

msg-balance-transfer-error =
    <b>❌ Transfer Error</b>

    { $error }

# ===== Invite Section =====
msg-menu-invite =
    <b>👥 Invite Friends</b>

    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }{ frg-subscription-status-full }

    <b>🏆 Reward:</b>
    <blockquote>
    { $ref_reward_type ->
        [EXTRA_DAYS] • { $ref_reward_level_1_value } days for every 100 ₽ top-up by invitee
        [MONEY] • { $ref_reward_level_1_value }% of invitee's top-up amount
        *[OTHER] • { $ref_reward_level_1_value } ₽
    }{ $ref_max_level ->
        [2] {""}
    
    { $ref_reward_type ->
        [EXTRA_DAYS] • { $ref_reward_level_2_value } days for every 100 ₽ top-up by invitee's invitees
        [MONEY] • { $ref_reward_level_2_value }% of top-up amount by invitee's invitees
        *[OTHER] • { $ref_reward_level_2_value } ₽
    }
        *[1] {""}
    }
    </blockquote>

    <b>📊 Statistics:</b>
    <blockquote>
    👥 Total invited: { $referrals }
    💳 Payments via your link: { $payments }
    💳 Total received: { $total_bonus }{ $ref_reward_type ->
        [EXTRA_DAYS] { " " }days
        *[OTHER] { " " }₽
    }
    </blockquote>

    <i>ℹ️ Rewards are credited when users you invited make payments.</i>

msg-menu-invite-about =
    <b>🎁 More About Rewards</b>

    <b>✨ How to get rewards:</b>
    <blockquote>
    { $accrual_strategy ->
    [ON_FIRST_PAYMENT] Reward is credited for the first subscription purchase by an invited user.
    [ON_EACH_PAYMENT] Reward is credited for each purchase or subscription renewal by an invited user.
    *[OTHER] { $accrual_strategy }
    }
    </blockquote>

    <b>💎 What you get:</b>

# ===== Dashboard Settings =====
msg-dashboard-settings-balance =
    <b>💰 Balance Settings</b>

    <blockquote>
    { lbl-status } { $enabled ->
        [1] { lbl-enabled }
        *[0] { lbl-disabled }
    }
    { lbl-min-topup-amount } { $balance_min_amount }
    { lbl-max-topup-amount } { $balance_max_amount }
    </blockquote>

    { hdr-balance-mode }
    <blockquote>
    { lbl-balance-mode-combined }
    { lbl-balance-mode-separate }
    </blockquote>

msg-dashboard-settings-balance-min-amount =
    <b>📉 Minimum Balance Top-Up Amount</b>

    <blockquote>
    • Current minimum amount: { $balance_min_current_display }
    • Change to: { $balance_min_selected_display }
    </blockquote>

    Select amount:

msg-dashboard-settings-balance-max-amount =
    <b>📈 Maximum Balance Top-Up Amount</b>

    <blockquote>
    • Current maximum amount: { $balance_max_current_display }
    • Change to: { $balance_max_selected_display }
    </blockquote>

    Select amount: