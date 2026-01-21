--
-- PostgreSQL database dump
--

\restrict NeP8SLcQElwUovvoHxGgMGaeQYF28l51uurZQdQK7RNYPTIg084NO7YEg64rWEw

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.transactions DROP CONSTRAINT IF EXISTS transactions_user_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.subscriptions DROP CONSTRAINT IF EXISTS subscriptions_user_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.referrals DROP CONSTRAINT IF EXISTS referrals_referrer_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.referrals DROP CONSTRAINT IF EXISTS referrals_referred_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.referral_rewards DROP CONSTRAINT IF EXISTS referral_rewards_user_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.referral_rewards DROP CONSTRAINT IF EXISTS referral_rewards_referral_id_fkey;
ALTER TABLE IF EXISTS ONLY public.promocode_activations DROP CONSTRAINT IF EXISTS promocode_activations_user_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.promocode_activations DROP CONSTRAINT IF EXISTS promocode_activations_promocode_id_fkey;
ALTER TABLE IF EXISTS ONLY public.plan_prices DROP CONSTRAINT IF EXISTS plan_prices_plan_duration_id_fkey;
ALTER TABLE IF EXISTS ONLY public.plan_durations DROP CONSTRAINT IF EXISTS plan_durations_plan_id_fkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS fk_users_current_subscription_id;
ALTER TABLE IF EXISTS ONLY public.extra_device_purchases DROP CONSTRAINT IF EXISTS extra_device_purchases_user_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.extra_device_purchases DROP CONSTRAINT IF EXISTS extra_device_purchases_subscription_id_fkey;
ALTER TABLE IF EXISTS ONLY public.broadcast_messages DROP CONSTRAINT IF EXISTS broadcast_messages_broadcast_id_fkey;
ALTER TABLE IF EXISTS ONLY public.balance_transfers DROP CONSTRAINT IF EXISTS balance_transfers_sender_telegram_id_fkey;
ALTER TABLE IF EXISTS ONLY public.balance_transfers DROP CONSTRAINT IF EXISTS balance_transfers_recipient_telegram_id_fkey;
DROP INDEX IF EXISTS public.ix_subscriptions_user_telegram_id;
DROP INDEX IF EXISTS public.ix_extra_device_purchases_user_telegram_id;
DROP INDEX IF EXISTS public.ix_extra_device_purchases_subscription_id;
DROP INDEX IF EXISTS public.ix_extra_device_purchases_expires_at;
DROP INDEX IF EXISTS public.ix_balance_transfers_sender_telegram_id;
DROP INDEX IF EXISTS public.ix_balance_transfers_recipient_telegram_id;
DROP INDEX IF EXISTS public.ix_balance_transfers_created_at;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_telegram_id_key;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS uq_users_referral_code;
ALTER TABLE IF EXISTS ONLY public.transactions DROP CONSTRAINT IF EXISTS transactions_pkey;
ALTER TABLE IF EXISTS ONLY public.transactions DROP CONSTRAINT IF EXISTS transactions_payment_id_key;
ALTER TABLE IF EXISTS ONLY public.subscriptions DROP CONSTRAINT IF EXISTS subscriptions_pkey;
ALTER TABLE IF EXISTS ONLY public.settings DROP CONSTRAINT IF EXISTS settings_pkey;
ALTER TABLE IF EXISTS ONLY public.referrals DROP CONSTRAINT IF EXISTS referrals_pkey;
ALTER TABLE IF EXISTS ONLY public.referral_rewards DROP CONSTRAINT IF EXISTS referral_rewards_pkey;
ALTER TABLE IF EXISTS ONLY public.promocodes DROP CONSTRAINT IF EXISTS promocodes_pkey;
ALTER TABLE IF EXISTS ONLY public.promocodes DROP CONSTRAINT IF EXISTS promocodes_code_key;
ALTER TABLE IF EXISTS ONLY public.promocode_activations DROP CONSTRAINT IF EXISTS promocode_activations_pkey;
ALTER TABLE IF EXISTS ONLY public.plans DROP CONSTRAINT IF EXISTS plans_pkey;
ALTER TABLE IF EXISTS ONLY public.plans DROP CONSTRAINT IF EXISTS plans_name_key;
ALTER TABLE IF EXISTS ONLY public.plan_prices DROP CONSTRAINT IF EXISTS plan_prices_pkey;
ALTER TABLE IF EXISTS ONLY public.plan_durations DROP CONSTRAINT IF EXISTS plan_durations_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_gateways DROP CONSTRAINT IF EXISTS payment_gateways_type_key;
ALTER TABLE IF EXISTS ONLY public.payment_gateways DROP CONSTRAINT IF EXISTS payment_gateways_pkey;
ALTER TABLE IF EXISTS ONLY public.extra_device_purchases DROP CONSTRAINT IF EXISTS extra_device_purchases_pkey;
ALTER TABLE IF EXISTS ONLY public.broadcasts DROP CONSTRAINT IF EXISTS broadcasts_task_id_key;
ALTER TABLE IF EXISTS ONLY public.broadcasts DROP CONSTRAINT IF EXISTS broadcasts_pkey;
ALTER TABLE IF EXISTS ONLY public.broadcast_messages DROP CONSTRAINT IF EXISTS broadcast_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.balance_transfers DROP CONSTRAINT IF EXISTS balance_transfers_pkey;
ALTER TABLE IF EXISTS ONLY public.alembic_version DROP CONSTRAINT IF EXISTS alembic_version_pkc;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.subscriptions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.referrals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.referral_rewards ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.promocodes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.promocode_activations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.plans ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.plan_prices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.plan_durations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payment_gateways ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.extra_device_purchases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.broadcasts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.broadcast_messages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.balance_transfers ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.transactions_id_seq;
DROP TABLE IF EXISTS public.transactions;
DROP SEQUENCE IF EXISTS public.subscriptions_id_seq;
DROP TABLE IF EXISTS public.subscriptions;
DROP SEQUENCE IF EXISTS public.settings_id_seq;
DROP TABLE IF EXISTS public.settings;
DROP SEQUENCE IF EXISTS public.referrals_id_seq;
DROP TABLE IF EXISTS public.referrals;
DROP SEQUENCE IF EXISTS public.referral_rewards_id_seq;
DROP TABLE IF EXISTS public.referral_rewards;
DROP SEQUENCE IF EXISTS public.promocodes_id_seq;
DROP TABLE IF EXISTS public.promocodes;
DROP SEQUENCE IF EXISTS public.promocode_activations_id_seq;
DROP TABLE IF EXISTS public.promocode_activations;
DROP SEQUENCE IF EXISTS public.plans_id_seq;
DROP TABLE IF EXISTS public.plans;
DROP SEQUENCE IF EXISTS public.plan_prices_id_seq;
DROP TABLE IF EXISTS public.plan_prices;
DROP SEQUENCE IF EXISTS public.plan_durations_id_seq;
DROP TABLE IF EXISTS public.plan_durations;
DROP SEQUENCE IF EXISTS public.payment_gateways_id_seq;
DROP TABLE IF EXISTS public.payment_gateways;
DROP SEQUENCE IF EXISTS public.extra_device_purchases_id_seq;
DROP TABLE IF EXISTS public.extra_device_purchases;
DROP SEQUENCE IF EXISTS public.broadcasts_id_seq;
DROP TABLE IF EXISTS public.broadcasts;
DROP SEQUENCE IF EXISTS public.broadcast_messages_id_seq;
DROP TABLE IF EXISTS public.broadcast_messages;
DROP SEQUENCE IF EXISTS public.balance_transfers_id_seq;
DROP TABLE IF EXISTS public.balance_transfers;
DROP TABLE IF EXISTS public.alembic_version;
DROP TYPE IF EXISTS public.user_role;
DROP TYPE IF EXISTS public.transaction_status;
DROP TYPE IF EXISTS public.traffic_limit_strategy;
DROP TYPE IF EXISTS public.subscription_status;
DROP TYPE IF EXISTS public.referral_reward_type;
DROP TYPE IF EXISTS public.referral_level;
DROP TYPE IF EXISTS public.purchasetype;
DROP TYPE IF EXISTS public.promocode_reward_type;
DROP TYPE IF EXISTS public.plan_type;
DROP TYPE IF EXISTS public.plan_traffic_limit_strategy;
DROP TYPE IF EXISTS public.plan_availability;
DROP TYPE IF EXISTS public.payment_gateway_type;
DROP TYPE IF EXISTS public.locale;
DROP TYPE IF EXISTS public.currency;
DROP TYPE IF EXISTS public.broadcast_status;
DROP TYPE IF EXISTS public.broadcast_message_status;
DROP TYPE IF EXISTS public.broadcast_audience;
DROP TYPE IF EXISTS public.access_mode;
--
-- Name: access_mode; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.access_mode AS ENUM (
    'PUBLIC',
    'INVITED',
    'RESTRICTED'
);


--
-- Name: broadcast_audience; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.broadcast_audience AS ENUM (
    'ALL',
    'PLAN',
    'SUBSCRIBED',
    'UNSUBSCRIBED',
    'EXPIRED',
    'TRIAL'
);


--
-- Name: broadcast_message_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.broadcast_message_status AS ENUM (
    'SENT',
    'FAILED',
    'EDITED',
    'DELETED',
    'PENDING'
);


--
-- Name: broadcast_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.broadcast_status AS ENUM (
    'PROCESSING',
    'COMPLETED',
    'CANCELED',
    'DELETED',
    'ERROR'
);


--
-- Name: currency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.currency AS ENUM (
    'USD',
    'XTR',
    'RUB',
    'EUR'
);


--
-- Name: locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.locale AS ENUM (
    'AR',
    'AZ',
    'BE',
    'CS',
    'DE',
    'EN',
    'ES',
    'FA',
    'FR',
    'HE',
    'HI',
    'ID',
    'IT',
    'JA',
    'KK',
    'KO',
    'MS',
    'NL',
    'PL',
    'PT',
    'RO',
    'RU',
    'SR',
    'TR',
    'UK',
    'UZ',
    'VI'
);


--
-- Name: payment_gateway_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.payment_gateway_type AS ENUM (
    'TELEGRAM_STARS',
    'YOOKASSA',
    'YOOMONEY',
    'CRYPTOMUS',
    'HELEKET',
    'URLPAY',
    'CRYPTOPAY',
    'ROBOKASSA',
    'WATAPAY',
    'FREEKASSA',
    'TRIBUTE',
    'MULENPAY',
    'KASSAI',
    'BALANCE'
);


--
-- Name: plan_availability; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.plan_availability AS ENUM (
    'ALL',
    'NEW',
    'EXISTING',
    'INVITED',
    'ALLOWED',
    'TRIAL'
);


--
-- Name: plan_traffic_limit_strategy; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.plan_traffic_limit_strategy AS ENUM (
    'NO_RESET',
    'DAY',
    'WEEK',
    'MONTH'
);


--
-- Name: plan_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.plan_type AS ENUM (
    'TRAFFIC',
    'DEVICES',
    'BOTH',
    'UNLIMITED'
);


--
-- Name: promocode_reward_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.promocode_reward_type AS ENUM (
    'DURATION',
    'TRAFFIC',
    'SUBSCRIPTION',
    'PERSONAL_DISCOUNT',
    'PURCHASE_DISCOUNT'
);


--
-- Name: purchasetype; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.purchasetype AS ENUM (
    'NEW',
    'RENEW',
    'CHANGE',
    'TOPUP',
    'EXTRA_DEVICES'
);


--
-- Name: referral_level; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.referral_level AS ENUM (
    'FIRST',
    'SECOND'
);


--
-- Name: referral_reward_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.referral_reward_type AS ENUM (
    'MONEY',
    'EXTRA_DAYS'
);


--
-- Name: subscription_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.subscription_status AS ENUM (
    'ACTIVE',
    'DISABLED',
    'LIMITED',
    'EXPIRED',
    'DELETED'
);


--
-- Name: traffic_limit_strategy; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.traffic_limit_strategy AS ENUM (
    'NO_RESET',
    'DAY',
    'WEEK',
    'MONTH'
);


--
-- Name: transaction_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.transaction_status AS ENUM (
    'PENDING',
    'COMPLETED',
    'CANCELED',
    'REFUNDED',
    'FAILED'
);


--
-- Name: user_role; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.user_role AS ENUM (
    'DEV',
    'ADMIN',
    'USER'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


--
-- Name: balance_transfers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.balance_transfers (
    id integer NOT NULL,
    sender_telegram_id bigint NOT NULL,
    recipient_telegram_id bigint NOT NULL,
    amount integer NOT NULL,
    commission integer DEFAULT 0 NOT NULL,
    message character varying(200),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: balance_transfers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.balance_transfers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: balance_transfers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.balance_transfers_id_seq OWNED BY public.balance_transfers.id;


--
-- Name: broadcast_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.broadcast_messages (
    id integer NOT NULL,
    broadcast_id integer NOT NULL,
    user_id bigint NOT NULL,
    message_id bigint,
    status public.broadcast_message_status NOT NULL
);


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.broadcast_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.broadcast_messages_id_seq OWNED BY public.broadcast_messages.id;


--
-- Name: broadcasts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.broadcasts (
    id integer NOT NULL,
    task_id uuid NOT NULL,
    status public.broadcast_status NOT NULL,
    audience public.broadcast_audience NOT NULL,
    total_count integer NOT NULL,
    success_count integer NOT NULL,
    failed_count integer NOT NULL,
    payload json NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL
);


--
-- Name: broadcasts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.broadcasts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: broadcasts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.broadcasts_id_seq OWNED BY public.broadcasts.id;


--
-- Name: extra_device_purchases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.extra_device_purchases (
    id integer NOT NULL,
    subscription_id integer NOT NULL,
    user_telegram_id bigint NOT NULL,
    device_count integer NOT NULL,
    price integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    auto_renew boolean DEFAULT true NOT NULL,
    purchased_at timestamp with time zone NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: extra_device_purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.extra_device_purchases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: extra_device_purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.extra_device_purchases_id_seq OWNED BY public.extra_device_purchases.id;


--
-- Name: payment_gateways; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_gateways (
    id integer NOT NULL,
    order_index integer NOT NULL,
    type public.payment_gateway_type NOT NULL,
    currency public.currency NOT NULL,
    is_active boolean NOT NULL,
    settings json
);


--
-- Name: payment_gateways_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_gateways_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_gateways_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_gateways_id_seq OWNED BY public.payment_gateways.id;


--
-- Name: plan_durations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plan_durations (
    id integer NOT NULL,
    days integer NOT NULL,
    plan_id integer NOT NULL
);


--
-- Name: plan_durations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plan_durations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plan_durations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plan_durations_id_seq OWNED BY public.plan_durations.id;


--
-- Name: plan_prices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plan_prices (
    id integer NOT NULL,
    currency public.currency NOT NULL,
    price numeric(10,2) NOT NULL,
    plan_duration_id integer NOT NULL
);


--
-- Name: plan_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plan_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plan_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plan_prices_id_seq OWNED BY public.plan_prices.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plans (
    id integer NOT NULL,
    order_index integer NOT NULL,
    is_active boolean NOT NULL,
    type public.plan_type NOT NULL,
    availability public.plan_availability NOT NULL,
    name character varying NOT NULL,
    traffic_limit integer NOT NULL,
    device_limit integer NOT NULL,
    allowed_user_ids bigint[],
    internal_squads uuid[] NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    description character varying,
    tag character varying,
    traffic_limit_strategy public.plan_traffic_limit_strategy DEFAULT 'NO_RESET'::public.plan_traffic_limit_strategy NOT NULL,
    external_squad uuid[]
);


--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;


--
-- Name: promocode_activations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promocode_activations (
    id integer NOT NULL,
    promocode_id integer NOT NULL,
    user_telegram_id bigint NOT NULL,
    activated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    previous_discount integer DEFAULT 0 NOT NULL,
    previous_discount_expires_at timestamp with time zone
);


--
-- Name: promocode_activations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.promocode_activations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: promocode_activations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.promocode_activations_id_seq OWNED BY public.promocode_activations.id;


--
-- Name: promocodes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promocodes (
    id integer NOT NULL,
    code character varying NOT NULL,
    is_active boolean NOT NULL,
    reward_type public.promocode_reward_type NOT NULL,
    reward integer,
    plan json,
    lifetime integer,
    max_activations integer,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    name character varying NOT NULL,
    allowed_plan_ids json
);


--
-- Name: promocodes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.promocodes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: promocodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.promocodes_id_seq OWNED BY public.promocodes.id;


--
-- Name: referral_rewards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.referral_rewards (
    id integer NOT NULL,
    referral_id integer,
    user_telegram_id bigint NOT NULL,
    type public.referral_reward_type NOT NULL,
    amount integer NOT NULL,
    is_issued boolean NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL
);


--
-- Name: referral_rewards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.referral_rewards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: referral_rewards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.referral_rewards_id_seq OWNED BY public.referral_rewards.id;


--
-- Name: referrals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.referrals (
    id integer NOT NULL,
    referrer_telegram_id bigint NOT NULL,
    referred_telegram_id bigint NOT NULL,
    level public.referral_level NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL
);


--
-- Name: referrals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.referrals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: referrals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.referrals_id_seq OWNED BY public.referrals.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.settings (
    id integer NOT NULL,
    rules_required boolean NOT NULL,
    channel_required boolean NOT NULL,
    rules_link character varying NOT NULL,
    channel_link character varying NOT NULL,
    access_mode public.access_mode DEFAULT 'PUBLIC'::public.access_mode NOT NULL,
    default_currency public.currency NOT NULL,
    user_notifications json NOT NULL,
    system_notifications json NOT NULL,
    channel_id bigint,
    referral json DEFAULT '{"enable": true, "level": 1, "accrual_strategy": "ON_FIRST_PAYMENT", "reward": {"type": "EXTRA_DAYS", "strategy": "AMOUNT", "config": {"1": 5}}}'::json NOT NULL,
    purchases_allowed boolean DEFAULT true NOT NULL,
    registration_allowed boolean DEFAULT true NOT NULL,
    features json DEFAULT '{"community_enabled": false, "tos_enabled": false, "balance_enabled": true}'::json NOT NULL
);


--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    user_remna_id uuid NOT NULL,
    user_telegram_id bigint NOT NULL,
    status public.subscription_status NOT NULL,
    is_trial boolean NOT NULL,
    traffic_limit integer NOT NULL,
    device_limit integer NOT NULL,
    internal_squads uuid[] NOT NULL,
    expire_at timestamp with time zone NOT NULL,
    url character varying NOT NULL,
    plan json NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    traffic_limit_strategy public.traffic_limit_strategy NOT NULL,
    tag character varying,
    external_squad uuid[],
    extra_devices integer DEFAULT 0 NOT NULL
);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    payment_id uuid NOT NULL,
    user_telegram_id bigint NOT NULL,
    status public.transaction_status NOT NULL,
    is_test boolean NOT NULL,
    purchase_type public.purchasetype NOT NULL,
    gateway_type public.payment_gateway_type NOT NULL,
    pricing json NOT NULL,
    currency public.currency NOT NULL,
    plan json NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL
);


--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    telegram_id bigint NOT NULL,
    username character varying,
    name character varying NOT NULL,
    role public.user_role NOT NULL,
    language public.locale NOT NULL,
    personal_discount integer NOT NULL,
    purchase_discount integer NOT NULL,
    is_blocked boolean NOT NULL,
    is_bot_blocked boolean NOT NULL,
    current_subscription_id integer,
    created_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    updated_at timestamp with time zone DEFAULT timezone('UTC'::text, now()) NOT NULL,
    referral_code character varying NOT NULL,
    is_rules_accepted boolean NOT NULL,
    balance integer DEFAULT '0'::bigint NOT NULL,
    purchase_discount_expires_at timestamp with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: balance_transfers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.balance_transfers ALTER COLUMN id SET DEFAULT nextval('public.balance_transfers_id_seq'::regclass);


--
-- Name: broadcast_messages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcast_messages ALTER COLUMN id SET DEFAULT nextval('public.broadcast_messages_id_seq'::regclass);


--
-- Name: broadcasts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcasts ALTER COLUMN id SET DEFAULT nextval('public.broadcasts_id_seq'::regclass);


--
-- Name: extra_device_purchases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extra_device_purchases ALTER COLUMN id SET DEFAULT nextval('public.extra_device_purchases_id_seq'::regclass);


--
-- Name: payment_gateways id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_gateways ALTER COLUMN id SET DEFAULT nextval('public.payment_gateways_id_seq'::regclass);


--
-- Name: plan_durations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_durations ALTER COLUMN id SET DEFAULT nextval('public.plan_durations_id_seq'::regclass);


--
-- Name: plan_prices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_prices ALTER COLUMN id SET DEFAULT nextval('public.plan_prices_id_seq'::regclass);


--
-- Name: plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);


--
-- Name: promocode_activations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocode_activations ALTER COLUMN id SET DEFAULT nextval('public.promocode_activations_id_seq'::regclass);


--
-- Name: promocodes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocodes ALTER COLUMN id SET DEFAULT nextval('public.promocodes_id_seq'::regclass);


--
-- Name: referral_rewards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referral_rewards ALTER COLUMN id SET DEFAULT nextval('public.referral_rewards_id_seq'::regclass);


--
-- Name: referrals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals ALTER COLUMN id SET DEFAULT nextval('public.referrals_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.alembic_version (version_num) FROM stdin;
0040
\.


--
-- Data for Name: balance_transfers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.balance_transfers (id, sender_telegram_id, recipient_telegram_id, amount, commission, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: broadcast_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.broadcast_messages (id, broadcast_id, user_id, message_id, status) FROM stdin;
\.


--
-- Data for Name: broadcasts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.broadcasts (id, task_id, status, audience, total_count, success_count, failed_count, payload, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: extra_device_purchases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.extra_device_purchases (id, subscription_id, user_telegram_id, device_count, price, is_active, auto_renew, purchased_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: payment_gateways; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_gateways (id, order_index, type, currency, is_active, settings) FROM stdin;
1	1	TELEGRAM_STARS	XTR	t	null
2	2	YOOKASSA	RUB	f	{"type": "YOOKASSA", "shop_id": null, "api_key": null, "customer": null, "vat_code": null}
3	3	YOOMONEY	RUB	f	{"type": "YOOMONEY", "wallet_id": null, "secret_key": null}
4	4	CRYPTOMUS	USD	f	{"type": "CRYPTOMUS", "merchant_id": null, "api_key": null}
5	5	HELEKET	USD	f	{"type": "HELEKET", "merchant_id": null, "api_key": null}
\.


--
-- Data for Name: plan_durations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plan_durations (id, days, plan_id) FROM stdin;
1	3	1
\.


--
-- Data for Name: plan_prices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plan_prices (id, currency, price, plan_duration_id) FROM stdin;
1	USD	0.00	1
2	EUR	0.00	1
3	XTR	0.00	1
4	RUB	0.00	1
\.


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plans (id, order_index, is_active, type, availability, name, traffic_limit, device_limit, allowed_user_ids, internal_squads, created_at, updated_at, description, tag, traffic_limit_strategy, external_squad) FROM stdin;
1	1	t	BOTH	TRIAL	Пробный	100	2	{}	{e4c1d7c2-a862-4fe1-8ef2-6cde70114440}	2026-01-21 21:36:37.449547+00	2026-01-21 21:36:37.449547+00	\N	TRIAL	NO_RESET	{dd81891c-45f5-42a8-9ff2-520760c50d3d}
\.


--
-- Data for Name: promocode_activations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promocode_activations (id, promocode_id, user_telegram_id, activated_at, previous_discount, previous_discount_expires_at) FROM stdin;
\.


--
-- Data for Name: promocodes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promocodes (id, code, is_active, reward_type, reward, plan, lifetime, max_activations, created_at, updated_at, name, allowed_plan_ids) FROM stdin;
\.


--
-- Data for Name: referral_rewards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.referral_rewards (id, referral_id, user_telegram_id, type, amount, is_issued, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: referrals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.referrals (id, referrer_telegram_id, referred_telegram_id, level, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.settings (id, rules_required, channel_required, rules_link, channel_link, access_mode, default_currency, user_notifications, system_notifications, channel_id, referral, purchases_allowed, registration_allowed, features) FROM stdin;
1	f	f	https://telegram.org/tos/	@remna_shop	PUBLIC	XTR	{"expires_in_3_days": true, "expires_in_2_days": true, "expires_in_1_days": true, "expired": true, "limited": true, "expired_1_day_ago": true, "referral_attached": true, "referral_reward": true}	{"bot_lifetime": true, "bot_update": true, "user_registered": true, "subscription": true, "extra_devices": true, "promocode_activated": true, "trial_getted": true, "node_status": true, "user_first_connected": true, "user_hwid": true, "billing": true, "balance_transfer": true}	0	{"enable": true, "level": 1, "accrual_strategy": "ON_EACH_PAYMENT", "reward": {"type": "MONEY", "strategy": "PERCENT", "config": {"1": 10}}, "invite_message": "\\u0414\\u043e\\u0431\\u0440\\u043e \\u043f\\u043e\\u0436\\u0430\\u043b\\u043e\\u0432\\u0430\\u0442\\u044c!\\n\\n\\u2b07\\ufe0f \\u041f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u0439\\u0441\\u044f \\u2b07\\ufe0f\\n{url}"}	t	t	{"community_enabled": false, "community_url": null, "tos_enabled": false, "balance_enabled": true, "balance_mode": "COMBINED", "balance_min_amount": 10, "balance_max_amount": 100000, "notifications_enabled": true, "access_enabled": true, "referral_enabled": true, "promocodes_enabled": false, "extra_devices": {"enabled": true, "price_per_device": 100, "is_one_time": false, "min_days": 10}, "transfers": {"enabled": true, "commission_type": "percent", "commission_value": 5, "min_amount": 10, "max_amount": 100000}, "inactive_notifications": {"enabled": false, "hours_threshold": 24}, "global_discount": {"enabled": false, "discount_type": "percent", "discount_value": 0, "stack_discounts": false, "apply_to_subscription": true, "apply_to_extra_devices": false, "apply_to_transfer_commission": false}, "currency_rates": {"auto_update": true, "usd_rate": 77.52, "eur_rate": 90.72, "stars_rate": 1.5}}
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subscriptions (id, user_remna_id, user_telegram_id, status, is_trial, traffic_limit, device_limit, internal_squads, expire_at, url, plan, created_at, updated_at, traffic_limit_strategy, tag, external_squad, extra_devices) FROM stdin;
1	22bcffab-24aa-453d-8026-13a3b941447d	855511342	ACTIVE	f	-1	3	{e4c1d7c2-a862-4fe1-8ef2-6cde70114440}	2026-05-22 15:00:00+00	https://test-s.dfc-online.com/TByJHFU7T9JHeS3A	{"id": 0, "name": "\\u0418\\u043c\\u043f\\u043e\\u0440\\u0442", "tag": "IMPORT(STANDART)", "type": "DEVICES", "traffic_limit": -1, "device_limit": 3, "duration": 120, "traffic_limit_strategy": "NO_RESET", "internal_squads": [], "external_squad": null}	2026-01-21 20:31:25.851422+00	2026-01-21 20:31:26.183717+00	NO_RESET	IMPORT_STANDART	{dd81891c-45f5-42a8-9ff2-520760c50d3d}	0
2	c95c7948-d40a-43ef-9ab5-3c952836e9a5	352009570	ACTIVE	t	100	2	{e4c1d7c2-a862-4fe1-8ef2-6cde70114440}	2026-01-24 21:36:54.018+00	https://test-s.dfc-online.com/UCdPp2k9K5cH8a5P	{"id": 1, "name": "\\u041f\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439", "tag": "TRIAL", "type": "BOTH", "traffic_limit": 100, "device_limit": 2, "duration": 3, "traffic_limit_strategy": "NO_RESET", "internal_squads": ["e4c1d7c2-a862-4fe1-8ef2-6cde70114440"], "external_squad": ["dd81891c-45f5-42a8-9ff2-520760c50d3d"]}	2026-01-21 21:36:53.971884+00	2026-01-21 21:36:53.971884+00	NO_RESET	TRIAL	{dd81891c-45f5-42a8-9ff2-520760c50d3d}	0
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transactions (id, payment_id, user_telegram_id, status, is_test, purchase_type, gateway_type, pricing, currency, plan, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, telegram_id, username, name, role, language, personal_discount, purchase_discount, is_blocked, is_bot_blocked, current_subscription_id, created_at, updated_at, referral_code, is_rules_accepted, balance, purchase_discount_expires_at) FROM stdin;
1	855511342	StaySaved	Hello	DEV	RU	0	0	f	f	1	2026-01-21 20:31:25.702784+00	2026-01-21 20:31:25.851422+00	qFIsKv	f	0	\N
2	352009570	imaxxer	Milad Arbabian	DEV	RU	0	0	f	f	2	2026-01-21 21:32:02.795173+00	2026-01-21 22:03:44.130643+00	blc0Rf	f	0	\N
\.


--
-- Name: balance_transfers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.balance_transfers_id_seq', 1, false);


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.broadcast_messages_id_seq', 1, false);


--
-- Name: broadcasts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.broadcasts_id_seq', 1, false);


--
-- Name: extra_device_purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.extra_device_purchases_id_seq', 1, false);


--
-- Name: payment_gateways_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payment_gateways_id_seq', 5, true);


--
-- Name: plan_durations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plan_durations_id_seq', 1, true);


--
-- Name: plan_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plan_prices_id_seq', 4, true);


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plans_id_seq', 1, true);


--
-- Name: promocode_activations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.promocode_activations_id_seq', 1, false);


--
-- Name: promocodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.promocodes_id_seq', 1, false);


--
-- Name: referral_rewards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.referral_rewards_id_seq', 1, false);


--
-- Name: referrals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.referrals_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, true);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 2, true);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: balance_transfers balance_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.balance_transfers
    ADD CONSTRAINT balance_transfers_pkey PRIMARY KEY (id);


--
-- Name: broadcast_messages broadcast_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcast_messages
    ADD CONSTRAINT broadcast_messages_pkey PRIMARY KEY (id);


--
-- Name: broadcasts broadcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcasts
    ADD CONSTRAINT broadcasts_pkey PRIMARY KEY (id);


--
-- Name: broadcasts broadcasts_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcasts
    ADD CONSTRAINT broadcasts_task_id_key UNIQUE (task_id);


--
-- Name: extra_device_purchases extra_device_purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extra_device_purchases
    ADD CONSTRAINT extra_device_purchases_pkey PRIMARY KEY (id);


--
-- Name: payment_gateways payment_gateways_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_gateways
    ADD CONSTRAINT payment_gateways_pkey PRIMARY KEY (id);


--
-- Name: payment_gateways payment_gateways_type_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_gateways
    ADD CONSTRAINT payment_gateways_type_key UNIQUE (type);


--
-- Name: plan_durations plan_durations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_durations
    ADD CONSTRAINT plan_durations_pkey PRIMARY KEY (id);


--
-- Name: plan_prices plan_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_prices
    ADD CONSTRAINT plan_prices_pkey PRIMARY KEY (id);


--
-- Name: plans plans_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_name_key UNIQUE (name);


--
-- Name: plans plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: promocode_activations promocode_activations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocode_activations
    ADD CONSTRAINT promocode_activations_pkey PRIMARY KEY (id);


--
-- Name: promocodes promocodes_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocodes
    ADD CONSTRAINT promocodes_code_key UNIQUE (code);


--
-- Name: promocodes promocodes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocodes
    ADD CONSTRAINT promocodes_pkey PRIMARY KEY (id);


--
-- Name: referral_rewards referral_rewards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referral_rewards
    ADD CONSTRAINT referral_rewards_pkey PRIMARY KEY (id);


--
-- Name: referrals referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_payment_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_payment_id_key UNIQUE (payment_id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: users uq_users_referral_code; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uq_users_referral_code UNIQUE (referral_code);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_telegram_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_telegram_id_key UNIQUE (telegram_id);


--
-- Name: ix_balance_transfers_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_balance_transfers_created_at ON public.balance_transfers USING btree (created_at);


--
-- Name: ix_balance_transfers_recipient_telegram_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_balance_transfers_recipient_telegram_id ON public.balance_transfers USING btree (recipient_telegram_id);


--
-- Name: ix_balance_transfers_sender_telegram_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_balance_transfers_sender_telegram_id ON public.balance_transfers USING btree (sender_telegram_id);


--
-- Name: ix_extra_device_purchases_expires_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_extra_device_purchases_expires_at ON public.extra_device_purchases USING btree (expires_at);


--
-- Name: ix_extra_device_purchases_subscription_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_extra_device_purchases_subscription_id ON public.extra_device_purchases USING btree (subscription_id);


--
-- Name: ix_extra_device_purchases_user_telegram_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_extra_device_purchases_user_telegram_id ON public.extra_device_purchases USING btree (user_telegram_id);


--
-- Name: ix_subscriptions_user_telegram_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_subscriptions_user_telegram_id ON public.subscriptions USING btree (user_telegram_id);


--
-- Name: balance_transfers balance_transfers_recipient_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.balance_transfers
    ADD CONSTRAINT balance_transfers_recipient_telegram_id_fkey FOREIGN KEY (recipient_telegram_id) REFERENCES public.users(telegram_id) ON DELETE CASCADE;


--
-- Name: balance_transfers balance_transfers_sender_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.balance_transfers
    ADD CONSTRAINT balance_transfers_sender_telegram_id_fkey FOREIGN KEY (sender_telegram_id) REFERENCES public.users(telegram_id) ON DELETE CASCADE;


--
-- Name: broadcast_messages broadcast_messages_broadcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcast_messages
    ADD CONSTRAINT broadcast_messages_broadcast_id_fkey FOREIGN KEY (broadcast_id) REFERENCES public.broadcasts(id);


--
-- Name: extra_device_purchases extra_device_purchases_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extra_device_purchases
    ADD CONSTRAINT extra_device_purchases_subscription_id_fkey FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON DELETE CASCADE;


--
-- Name: extra_device_purchases extra_device_purchases_user_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extra_device_purchases
    ADD CONSTRAINT extra_device_purchases_user_telegram_id_fkey FOREIGN KEY (user_telegram_id) REFERENCES public.users(telegram_id) ON DELETE CASCADE;


--
-- Name: users fk_users_current_subscription_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_current_subscription_id FOREIGN KEY (current_subscription_id) REFERENCES public.subscriptions(id) ON DELETE SET NULL;


--
-- Name: plan_durations plan_durations_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_durations
    ADD CONSTRAINT plan_durations_plan_id_fkey FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;


--
-- Name: plan_prices plan_prices_plan_duration_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plan_prices
    ADD CONSTRAINT plan_prices_plan_duration_id_fkey FOREIGN KEY (plan_duration_id) REFERENCES public.plan_durations(id) ON DELETE CASCADE;


--
-- Name: promocode_activations promocode_activations_promocode_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocode_activations
    ADD CONSTRAINT promocode_activations_promocode_id_fkey FOREIGN KEY (promocode_id) REFERENCES public.promocodes(id) ON DELETE CASCADE;


--
-- Name: promocode_activations promocode_activations_user_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promocode_activations
    ADD CONSTRAINT promocode_activations_user_telegram_id_fkey FOREIGN KEY (user_telegram_id) REFERENCES public.users(telegram_id);


--
-- Name: referral_rewards referral_rewards_referral_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referral_rewards
    ADD CONSTRAINT referral_rewards_referral_id_fkey FOREIGN KEY (referral_id) REFERENCES public.referrals(id);


--
-- Name: referral_rewards referral_rewards_user_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referral_rewards
    ADD CONSTRAINT referral_rewards_user_telegram_id_fkey FOREIGN KEY (user_telegram_id) REFERENCES public.users(telegram_id);


--
-- Name: referrals referrals_referred_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_referred_telegram_id_fkey FOREIGN KEY (referred_telegram_id) REFERENCES public.users(telegram_id);


--
-- Name: referrals referrals_referrer_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_referrer_telegram_id_fkey FOREIGN KEY (referrer_telegram_id) REFERENCES public.users(telegram_id);


--
-- Name: subscriptions subscriptions_user_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_user_telegram_id_fkey FOREIGN KEY (user_telegram_id) REFERENCES public.users(telegram_id) ON DELETE CASCADE;


--
-- Name: transactions transactions_user_telegram_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_user_telegram_id_fkey FOREIGN KEY (user_telegram_id) REFERENCES public.users(telegram_id);


--
-- PostgreSQL database dump complete
--

\unrestrict NeP8SLcQElwUovvoHxGgMGaeQYF28l51uurZQdQK7RNYPTIg084NO7YEg64rWEw

