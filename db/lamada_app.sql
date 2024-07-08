-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 09:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamada_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":\"1\",\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":\"1\",\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'live', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":null,\"client_secret\":null}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":null,\"client_secret\":null}', 'payment_config', 'live', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":null,\"auth_key\":null}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":null,\"auth_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":0,\"api_key\":null,\"api_secret\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":0,\"api_key\":null,\"api_secret\":null,\"token\":null,\"from\":null,\"otp_template\":null}', 'sms_config', 'live', 1, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"1\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"1\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', 'payment_config', 'live', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:18:55', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:47:00', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'live', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":0,\"callback_url\":\"https:\\/\\/accept.paymobsolutions.com\\/api\\/acceptance\\/post_pay\",\"api_key\":\"ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SndjbTltYVd4bFgzQnJJam94TkRRMk5UVXNJbU5zWVhOeklqb2lUV1Z5WTJoaGJuUWlMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuQkNxcEozZlJqTFJaZmFyTFpwMlZJbFpiNWxpTjN6QmM2eV9VZVdRaUs4VHpqbGdOVmt4LU5INFFaUmdIcW94OEVwMFV0dGt0bmZWM0pVQ0NlbUl0bkE=\",\"iframe_id\":\"323420\",\"integration_id\":\"00000\",\"hmac\":\"97D6FD19BEC05E471A6B79EB19D334B9\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":0,\"callback_url\":\"https:\\/\\/accept.paymobsolutions.com\\/api\\/acceptance\\/post_pay\",\"api_key\":\"ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SndjbTltYVd4bFgzQnJJam94TkRRMk5UVXNJbU5zWVhOeklqb2lUV1Z5WTJoaGJuUWlMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuQkNxcEozZlJqTFJaZmFyTFpwMlZJbFpiNWxpTjN6QmM2eV9VZVdRaUs4VHpqbGdOVmt4LU5INFFaUmdIcW94OEVwMFV0dGt0bmZWM0pVQ0NlbUl0bkE=\",\"iframe_id\":\"323420\",\"integration_id\":\"00000\",\"hmac\":\"97D6FD19BEC05E471A6B79EB19D334B9\"}', 'payment_config', 'live', 0, NULL, '2024-07-04 13:10:39', '{\"gateway_title\":\"Visa \\/ master card\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":\"1\",\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":\"1\",\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:20:45', '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":null,\"store_password\":null}', 'payment_config', 'live', 0, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`id`, `name`, `price`, `tax`, `created_at`, `updated_at`) VALUES
(1, 'كومبو ليمون', 30.00, 0.00, '2024-06-03 10:36:40', '2024-06-03 10:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `identity_number` varchar(30) NOT NULL,
  `identity_type` varchar(30) NOT NULL,
  `identity_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`, `admin_role_id`, `status`, `identity_number`, `identity_type`, `identity_image`) VALUES
(2, 'Ramy', 'Ragab', '200120008090', 'wegostore@gmail.com', NULL, '$2y$10$uMN4jA9U/FXgrXTRLx3KUuVkaewjWgAgO07TJZdPBvosynPj1VWFa', 'BXoqWtPVmfPrfZyf7ONtfcwup0zGl21LFoxuRGoFhPAaQZ0vkeMGK4iuUGvQ', '2024-05-28 23:42:00', '2024-05-28 23:42:00', NULL, 1, 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module_access` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, '2022-06-07 10:59:59', '2022-06-07 10:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'rizooo', '2024-06-04-665ef2d63d462.png', 61, 1, '2024-05-29 08:12:33', '2024-06-04 11:56:22', NULL),
(3, 'Haidy', '2024-06-04-665ef26a4ebeb.png', NULL, 1, '2024-06-04 11:54:34', '2024-06-04 11:54:34', 5);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_promotion_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `phone` varchar(25) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `branch_promotion_status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`, `phone`, `cover_image`, `preparation_time`) VALUES
(1, NULL, 'Miami', 'lamadafood@gmail.com', '$2y$10$IZokAzB.ZVNwVdZIOndgfe3gBeK/KnbZkRbMd8y8NOACZZdaLqpES', '31.2670021', '29.9998055', 'Miami 45', 1, 1, '2021-02-24 09:45:49', '2024-07-02 09:12:06', 15, NULL, '2024-06-30-66819e729e9b9.png', '035559288', '2023-09-06-64f83ba9c1a17.png', 75),
(10, NULL, 'smouha', 'wegostore@gmail.com', '$2y$10$OMcGu1onat.899fm42msueC.ESsMqorNx.8jLbnwwP0ty6jfVpGMW', '31.213734590075205', '29.946097346167786', 'ابراج القطن خلف مسجد حاتم', 1, 1, '2024-06-25 18:58:31', '2024-07-02 09:12:06', 20, NULL, '2024-06-25-667b1356dec4f.png', '035559288', 'def.png', 75);

-- --------------------------------------------------------

--
-- Table structure for table `branch_promotions`
--

CREATE TABLE `branch_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `promotion_type` varchar(255) DEFAULT NULL,
  `promotion_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'restaurant_open_time', NULL, '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
(2, 'restaurant_close_time', NULL, NULL, NULL),
(3, 'restaurant_name', 'Lamada', NULL, NULL),
(4, 'currency', 'EGP', NULL, NULL),
(5, 'logo', '2024-05-29-665647a8d670c.png', NULL, NULL),
(6, 'mail_config', '{\"status\":0,\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}', NULL, '2024-07-02 09:12:05'),
(7, 'delivery_charge', '0', NULL, NULL),
(8, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', NULL, '2021-07-25 14:38:25'),
(9, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', NULL, '2021-07-25 14:38:48'),
(10, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', NULL, '2021-07-25 14:38:57'),
(11, 'phone', '035559288', NULL, NULL),
(13, 'footer_text', 'copyright received Lamada Food', NULL, NULL),
(14, 'address', 'فرع ميامي : ميامى شارع جمال عبد الناصر أسفل كوبرى ٤٥\r\n📍فرع سموحة : أبراج القطن أمام مسجد حاتم', NULL, NULL),
(15, 'email_address', 'order@lamadafood.com', NULL, NULL),
(16, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2021-02-11 18:39:36'),
(17, 'email_verification', NULL, NULL, NULL),
(18, 'digital_payment', '{\"status\":\"1\"}', '2021-01-30 19:38:54', '2021-01-30 19:38:58'),
(19, 'terms_and_conditions', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\"><h1>Terms and Condition</h1><p><br></p><ol><li>Hello, terms and conditions.......</li><li>Hello</li></ol></div><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-02-11 18:31:50'),
(20, 'fcm_topic', '', NULL, NULL),
(21, 'fcm_project_id', '3f34f34', NULL, NULL),
(22, 'push_notification_key', 'AAAAzxUctKE:APA91bHSwGl5dk3wcT0C0Fr3AGbaXyQ4W1fe8ouUgvZML1DblXnoKbWWsx3hyjy_fosTFdEeKMnEFZvKKOyDdlWUChDbYJnFD8zVRXa9891aE1ns_AIk3gqXr_ftbs_5SqbrdiZaR6W4', NULL, NULL),
(24, 'order_pending_message', '{\"status\":1,\"message\":\"Your order has been placed successfully.\"}', NULL, NULL),
(25, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is going to the cook\"}', NULL, NULL),
(26, 'out_for_delivery_message', '{\"status\":0,\"message\":\"Order out for delivery.\"}', NULL, NULL),
(27, 'order_delivered_message', '{\"status\":1,\"message\":\"delivered\"}', NULL, NULL),
(28, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"boy assigned\"}', NULL, NULL),
(29, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"start delivery\"}', NULL, NULL),
(30, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"boy delivered\"}', NULL, NULL),
(32, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order has been confirmed.\"}', NULL, NULL),
(33, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-02-14 10:15:12', '2021-07-25 14:38:34'),
(34, 'location_coverage', '{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}', NULL, NULL),
(35, 'minimum_order_value', '50', NULL, NULL),
(36, 'point_per_currency', NULL, NULL, NULL),
(37, 'internal_point', '{\"status\":null}', '2021-04-24 01:50:19', '2021-04-24 01:50:19'),
(38, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', '2021-04-24 01:58:21', '2021-07-25 14:39:23'),
(39, 'privacy_policy', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p>privacy policy</p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-04-28 03:36:02'),
(40, 'about_us', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p><strong><em>hello world </em></strong></p><p><strong><em>nice </em></strong></p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"mix-blend-mode: darken; position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-05-23 18:29:52'),
(42, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', '2021-05-04 14:38:35', '2021-07-25 14:39:12'),
(43, 'time_zone', 'Africa/Cairo', NULL, NULL),
(44, 'maintenance_mode', '0', NULL, NULL),
(45, 'currency_symbol_position', 'right', NULL, NULL),
(46, 'language', '[{\"id\":1,\"name\":\"en\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":false},{\"id\":2,\"name\":\"Ar\",\"direction\":\"ltr\",\"code\":\"ar\",\"status\":1,\"default\":true}]', NULL, '2024-06-02 10:51:35'),
(47, 'self_pickup', '1', NULL, NULL),
(48, 'delivery', '1', NULL, NULL),
(49, 'phone_verification', '0', NULL, NULL),
(50, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', NULL, NULL),
(51, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', NULL, NULL),
(52, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}', NULL, NULL),
(53, 'twilio_sms', '{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', NULL, NULL),
(54, 'pagination_limit', '10', NULL, NULL),
(55, 'map_api_key', '', NULL, NULL),
(56, 'delivery_management', '{\"status\":\"1\",\"min_shipping_charge\":\"15\",\"shipping_per_km\":\"6\"}', NULL, NULL),
(57, 'bkash', '{\"status\":\"1\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, NULL),
(58, 'paymob', '{\"status\":\"1\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(59, 'flutterwave', '{\"status\":\"1\",\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(60, 'mercadopago', '{\"status\":\"1\",\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(61, 'returned_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(62, 'failed_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(63, 'canceled_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(64, 'recaptcha', '{\"status\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}', NULL, NULL),
(65, 'firestore_db', '{\"apiKey\":\"\",\"authDomain\":\"\",\"projectId\":\"\",\"storageBucket\":\"\",\"messagingSenderId\":\"\",\"appId\":\"\"}', NULL, NULL),
(66, 'play_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(67, 'app_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(68, 'default_preparation_time', '75', NULL, NULL),
(69, 'decimal_point_settings', '2', NULL, NULL),
(70, 'schedule_order_slot_duration', '30', NULL, NULL),
(71, 'time_format', '12', NULL, NULL),
(72, 'wallet_status', '0', NULL, NULL),
(73, 'loyalty_point_status', '0', NULL, NULL),
(74, 'ref_earning_status', '0', NULL, NULL),
(75, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(76, 'ref_earning_exchange_rate', '0', NULL, NULL),
(77, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(78, 'loyalty_point_minimum_point', '0', NULL, NULL),
(79, 'whatsapp', '{\"status\":0,\"number\":\"\"}', NULL, NULL),
(80, 'fav_icon', '2024-05-29-665647a8df932.png', NULL, NULL),
(81, 'cookies', '{\"status\":\"1\",\"text\":\"Allow Cookies for this site\"}', NULL, NULL),
(82, 'maximum_otp_hit', '5', NULL, NULL),
(83, 'otp_resend_time', '60', NULL, NULL),
(84, 'temporary_block_time', '600', NULL, NULL),
(85, 'dm_self_registration', NULL, NULL, NULL),
(86, 'toggle_veg_non_veg', NULL, NULL, NULL),
(87, 'maximum_login_hit', '5', NULL, NULL),
(88, 'temporary_login_block_time', '600', NULL, NULL),
(89, 'return_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(90, 'refund_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(91, 'cancellation_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(92, 'offline_payment', '{\"status\":\"1\"}', NULL, NULL),
(93, 'guest_checkout', '1', NULL, NULL),
(94, 'partial_payment', '0', NULL, NULL),
(95, 'partial_payment_combine_with', 'all', NULL, NULL),
(96, 'qr_code', '{\"branch_id\":\"1\",\"logo\":\"\",\"title\":\"\",\"description\":\"\",\"opening_time\":\"\",\"closing_time\":\"\",\"phone\":\"\",\"website\":\"\",\"social_media\":\"\"}', NULL, NULL),
(97, 'apple_login', '{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\",\"status\":0}', NULL, NULL),
(98, 'add_wallet_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(99, 'add_wallet_bonus_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(100, 'firebase_otp_verification', '{\"status\":0,\"web_api_key\":\"\"}', NULL, NULL),
(101, 'country', 'EG', NULL, NULL),
(102, 'customer_notify_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(103, 'customer_notify_message_for_time_change', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(104, 'map_api_server_key', 'AIzaSyDSa4tLLC5r-fPhEdo02_ptNQkbDvHT02o', NULL, NULL),
(105, 'map_api_client_key', 'AIzaSyDSa4tLLC5r-fPhEdo02_ptNQkbDvHT02o', NULL, NULL),
(106, 'firebase_message_config', '{\"apiKey\":null,\"authDomain\":null,\"projectId\":null,\"storageBucket\":null,\"messagingSenderId\":null,\"appId\":null}', '2024-06-02 10:52:06', '2024-06-02 10:52:06'),
(107, 'footer_description_text', '', NULL, NULL),
(108, 'push_notification_service_file_content', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `priority`, `created_at`, `updated_at`, `image`, `banner_image`) VALUES
(3, 'Meals', 0, 0, 1, 10, '2024-06-02 09:42:08', '2024-06-02 11:36:12', '2024-06-02-665c4a84aa135.png', '2024-06-02-665c4a84aaf35.png'),
(4, 'Sandwiches', 0, 0, 1, 10, '2024-06-02 09:43:26', '2024-06-02 11:37:07', '2024-06-02-665c4b5328216.png', '2024-06-02-665c4b5328c39.png'),
(5, 'Broasted', 0, 0, 1, 6, '2024-06-02 09:44:28', '2024-07-07 11:26:20', '2024-06-02-665c30ec0da3f.png', '2024-06-02-665c30ec10a56.png'),
(6, 'Offers', 0, 0, 1, 10, '2024-06-02 09:47:14', '2024-06-02 09:47:14', '2024-06-02-665c3192ae728.png', '2024-06-02-665c3192b2b5f.png'),
(7, 'drinks', 0, 0, 1, 10, '2024-06-02 09:47:51', '2024-06-02 09:47:51', '2024-06-02-665c31b719f9d.png', '2024-06-02-665c31b71cd0d.png'),
(8, 'akeel meals', 3, 1, 1, 10, '2024-06-02 11:39:21', '2024-06-02 11:39:21', 'def.png', 'def.png'),
(9, 'برجر', 0, 0, 1, 10, '2024-06-02 11:40:40', '2024-06-02 11:40:40', '2024-06-02-665c4c283629c.png', '2024-06-02-665c4c283a548.png'),
(10, 'elwaly meals', 3, 1, 1, 10, '2024-06-02 11:40:54', '2024-06-02 11:40:54', 'def.png', 'def.png'),
(11, 'beef', 4, 1, 1, 10, '2024-06-02 11:41:46', '2024-06-02 11:41:46', 'def.png', 'def.png'),
(12, 'chicken', 4, 1, 1, 10, '2024-06-02 11:44:27', '2024-06-02 11:44:27', 'def.png', 'def.png'),
(13, 'cheese', 4, 1, 1, 10, '2024-06-02 11:44:44', '2024-06-02 11:44:44', 'def.png', 'def.png'),
(14, 'potatoes', 4, 1, 1, 10, '2024-06-02 11:45:20', '2024-06-02 11:45:20', 'def.png', 'def.png'),
(15, 'dessert', 0, 0, 1, 10, '2024-06-02 11:45:41', '2024-06-02 11:45:41', '2024-06-02-665c4d55bc7eb.png', '2024-06-02-665c4d55c2eda.png'),
(16, 'seafood', 4, 1, 1, 10, '2024-06-02 11:45:59', '2024-06-02 11:45:59', 'def.png', 'def.png'),
(17, 'round sandwiches', 4, 1, 1, 10, '2024-06-02 11:50:13', '2024-06-02 11:50:13', 'def.png', 'def.png'),
(18, 'fresh juice', 7, 1, 1, 10, '2024-06-02 11:51:27', '2024-06-02 11:51:27', 'def.png', 'def.png'),
(19, 'waffel', 15, 1, 1, 10, '2024-06-02 11:51:47', '2024-06-02 11:51:47', 'def.png', 'def.png'),
(20, 'milkshake', 7, 1, 1, 10, '2024-06-02 11:52:29', '2024-06-02 11:52:29', 'def.png', 'def.png'),
(21, 'smothies', 7, 1, 1, 10, '2024-06-02 11:52:56', '2024-06-02 11:52:56', 'def.png', 'def.png'),
(22, 'rice budding', 15, 1, 1, 10, '2024-06-02 11:53:30', '2024-06-02 11:53:30', 'def.png', 'def.png'),
(23, 'smash burger', 9, 1, 1, 10, '2024-06-02 11:53:56', '2024-06-02 11:53:56', 'def.png', 'def.png'),
(24, 'ice cream', 15, 1, 1, 10, '2024-06-02 11:53:57', '2024-06-02 11:53:57', 'def.png', 'def.png'),
(25, 'lamburger chicken', 9, 1, 1, 10, '2024-06-02 11:54:44', '2024-06-02 11:54:44', 'def.png', 'def.png'),
(27, 'happiness offers', 6, 1, 1, 10, '2024-06-02 11:56:23', '2024-06-02 11:56:23', 'def.png', 'def.png'),
(28, 'family offers', 6, 1, 1, 10, '2024-06-02 11:56:29', '2024-06-02 11:56:29', 'def.png', 'def.png'),
(29, 'new offers', 6, 1, 1, 10, '2024-06-02 11:58:23', '2024-06-02 11:58:23', 'def.png', 'def.png'),
(30, 'single offers', 6, 1, 1, 10, '2024-06-02 11:58:28', '2024-06-02 11:58:28', 'def.png', 'def.png'),
(31, 'cheese cake', 15, 1, 1, 10, '2024-06-02 12:06:41', '2024-06-02 12:06:41', 'def.png', 'def.png');

-- --------------------------------------------------------

--
-- Table structure for table `chef_branch`
--

CREATE TABLE `chef_branch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `is_reply` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `message`, `reply`, `created_at`, `updated_at`, `checked`, `image`, `is_reply`) VALUES
(1, 6, 'Hello', NULL, '2024-06-25 09:57:44', '2024-06-25 21:01:26', 1, 'null', '0'),
(2, 15, 'مساء الخير يا لمادا', NULL, '2024-06-25 11:45:23', '2024-06-25 21:01:28', 1, 'null', '0'),
(3, 15, NULL, NULL, '2024-06-25 11:47:17', '2024-06-25 21:01:28', 1, '[\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/conversation\\/2024-06-25-667aae45439f6.png\"]', '0'),
(4, 3, 'مساء الخير', NULL, '2024-06-25 20:52:12', '2024-06-25 21:03:27', 1, 'null', '0'),
(5, 3, 'مساء الخيرات', NULL, '2024-06-25 20:52:51', '2024-06-25 21:03:27', 1, 'null', '0'),
(6, 3, NULL, 'مساء النور', '2024-06-25 20:53:32', '2024-06-25 21:03:27', 1, 'null', '1'),
(7, 15, NULL, 'خالد', '2024-06-25 21:01:34', '2024-06-25 21:01:34', 1, 'null', '1');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Egypt', '1', '2024-07-07 12:29:57', '2024-07-08 07:07:24'),
(14, 'Alexandria', '1', '2024-07-07 12:30:43', '2024-07-08 07:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`, `coupon_type`, `limit`) VALUES
(1, 'lamada', 'lamada new app', '2024-06-14', '2024-06-24', 100.00, 0.00, 50.00, 'amount', 1, '2024-06-04 11:58:48', '2024-06-04 11:58:48', 'first_order', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_product`
--

CREATE TABLE `cuisine_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuisine_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `road` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` int(11) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `floor`, `house`, `road`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `user_id`, `is_guest`, `contact_person_name`, `is_default`) VALUES
(1, 'Home', '+2001018482936', '23', '21', '12 مكرر', 'Z1434, সোনাগাজী পৌরসভা, Bangladesh', '22.84882285599426', '91.3903059437871', '2024-06-25 18:47:18', '2024-06-25 18:47:18', 21, 0, 'Hussien Ahmed', 0),
(3, 'Home', '+201279036566', '0', '0', 'لماضه كول سنتر', '20-16 اليازيدي، سيدي بشر بحري، قسم المنتزه،، الإسكندرية،، Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt', '31.267119892945278', '29.999395720660686', '2024-06-26 11:20:03', '2024-06-26 11:20:03', 15, 0, 'Khaled Yousry', 0),
(4, 'Workplace', '+201279036566', NULL, NULL, NULL, '20-16 اليازيدي، سيدي بشر بحري، قسم المنتزه،، الإسكندرية،، Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt', '31.267119892945278', '29.999395720660686', '2024-06-26 11:20:26', '2024-06-26 11:20:26', 15, 0, 'Khaled Yousry', 0),
(5, 'Home', '+201111047713', NULL, NULL, NULL, '6X94+6RV, Street 38, Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432090, Egypt', '31.218073599999993', '29.95650559999999', '2024-06-26 12:42:52', '2024-06-26 12:42:52', 5, 0, 'wezza laa', 0),
(6, 'Home', '+201278054896', NULL, NULL, NULL, '50 Ahmed Abou Soliman, Dana Al Gadidah WA Izbat Al Westaneyah, El Raml 2, Alexandria Governorate 5448042, Egypt', '31.22767859459767', '29.983181096613407', '2024-06-26 13:32:32', '2024-06-26 13:32:32', 25, 0, 'Mahmoud Ibrahim', 0),
(7, 'Home', '+201278054896', '1A', '2', '2 شارع فلسطين', '50 Ahmed Abou Soliman, Dana Al Gadidah WA Izbat Al Westaneyah, El Raml 2, Alexandria Governorate 5448042, Egypt', '31.227668846821647', '29.983159638941288', '2024-06-26 13:33:03', '2024-06-26 13:33:03', 25, 0, 'Mahmoud Ibrahim', 0),
(8, 'Home', '+201111134082', '12', NULL, '12', '12ش الزهور من ش سيدي كمال برج مريم امام صيدليه د محمد صالح', '31.20945537869315', '29.961369708180428', '2024-06-26 14:39:17', '2024-06-26 14:39:17', 27, 0, 'Mahmoud Abdallah', 0),
(9, 'Home', '+2001550068211', NULL, NULL, '١٢ ش الزهور مندره بحري برج مريم الدور ١٢', '10 الزهراء، المندرة بحري، قسم ثان المنتزة،، Al Mandarah Bahri, Montaza 2, Alexandria Governorate 5526034, Egypt', '31.275633787430987', '30.007909387350086', '2024-06-26 15:42:33', '2024-06-26 15:42:33', 28, 0, 'Engy Mohamed Elhelwa', 0),
(10, 'Home', '+2001011617126', '٦', '٦', 'شارع ١٧ متفرع من شارع ٤٥ قبلي', '20-16 اليازيدي، سيدي بشر بحري، قسم المنتزه،، الإسكندرية،، Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt', '31.267135081660598', '29.999400079250336', '2024-06-30 16:26:33', '2024-06-30 16:26:33', 3, 0, 'Many ..', 0),
(11, 'Home', '+2001018482936', NULL, NULL, NULL, '20-16 اليازيدي، سيدي بشر بحري، قسم المنتزه،، الإسكندرية،، Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt', '31.26711788688835', '29.99939605593681', '2024-06-30 16:27:41', '2024-06-30 16:27:41', 21, 0, 'Hussien Ahmed', 0),
(12, 'Home', '+2001200908090', '10', '10', '10', '٣٠ شارع المعهد الديني، سموحة، Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432074, Egypt', '31.213746849911686', '29.946615211665627', '2024-07-02 07:59:28', '2024-07-02 07:59:28', 3, 1, '10', 0),
(13, 'Home', '+201111047712', NULL, NULL, NULL, '426, رشدي، قسم سيدى جابر، الإسكندرية،، Sidi Gabir, Sidi Gaber, Alexandria Governorate 5434006, Egypt', '31.224011639668348', '29.93961464613676', '2024-07-02 08:13:17', '2024-07-02 08:13:17', 24, 1, 'Moaz', 0),
(14, 'Home', '+201111047712', NULL, NULL, NULL, '11 Dr Mahmoud Fawzi, Sidi Gabir, Sidi Gaber, Alexandria Governorate 5434006, Egypt', '31.223545447401797', '29.93955999612808', '2024-07-02 08:16:50', '2024-07-02 08:16:50', 24, 1, 'Wezza', 0),
(15, 'Home', '+205555555555', NULL, NULL, NULL, '426, رشدي، قسم سيدى جابر، الإسكندرية،، Sidi Gabir, Sidi Gaber, Alexandria Governorate 5434006, Egypt', '31.224017947297018', '29.93960727006197', '2024-07-02 08:50:52', '2024-07-02 08:50:52', 212, 1, 'ggggggg', 0),
(16, 'Home', '+2001200228086', NULL, NULL, NULL, '69 tareq street. 3rd floor, Sidi Gaber, Alexandria Governorate 5433049, Egypt', '31.222157752015587', '29.941399656236168', '2024-07-02 10:07:17', '2024-07-02 10:07:17', 9, 0, 'Fares Sayed', 0),
(17, 'Home', '+2001064965120', NULL, '16', 'ابن نافع خلف الترام موازي ليه غيط الصعيدي محرم بك', '35 Ibn Nafea, Emberouz WA Moharram Beik, Moharam Bek, Alexandria Governorate 5415007, Egypt', '31.191871962828518', '29.92525845766067', '2024-07-02 13:24:35', '2024-07-02 13:24:35', 109, 0, 'Fatma Abdelkader', 0),
(18, 'Home', '+201001025427', '1', '13', 'ادمون فيرمون (الشرطة العسكرية)', 'تعاونيات سموحة عمارة  ٩٣', '31.206827810251156', '29.95342131704092', '2024-07-02 14:30:23', '2024-07-02 14:30:23', 112, 0, 'Yousef Deghedy', 0),
(19, 'Home', '+201061462535', '7', '7', NULL, 'كمبوند فيروزة سموحة علي محور المحمودية - اخر شارع الريادة - عمارة ٧ - الدور السابع - شقة ٧٠٧', '31.21635415475676', '29.96138077229261', '2024-07-02 17:58:23', '2024-07-02 17:58:23', 116, 0, 'Ahmed Mostafa', 0),
(20, 'Workplace', '+201150517141', NULL, NULL, NULL, '76 Gamal Abd El-Nasir Rd, Al Mandarah Bahri, Montaza 2, Alexandria Governorate 5526047, Egypt', '31.280283006559383', '30.012332350015644', '2024-07-03 09:26:30', '2024-07-03 09:26:30', 121, 0, 'Eman Zidan', 0),
(21, 'Home', '+201095901910', '12', '57', NULL, '٢٨٦ برج هيثم شارع ملك حفني سيدي بشر بحري', '31.262293483193833', '29.998121336102486', '2024-07-03 22:12:49', '2024-07-03 22:12:49', 130, 0, 'Ahmad Hamdy', 0),
(23, 'Home', '+201203095625', NULL, NULL, NULL, '51 ش الطيار احمد سعود اخر ش كلية تربية رياضية بنات فلمنج بعد مستشفي ابراهيم ندا وصيدلية فاتن جمال بعمارتين تحت حزب حماة وطن باب العماره الأسود الدور الخامس', '31.22901259693172', '29.960223734378815', '2024-07-04 16:40:04', '2024-07-04 16:40:04', 136, 0, 'Shahenda Kamel', 0),
(24, 'Workplace', '+201114309096', '1', '53', 'شارع المعهد الديني', 'شارع المعهد الديني، عمارة 53 امام زهران، الدور الاول، شركة STEPS', '31.211602285639017', '29.946859627962112', '2024-07-04 17:55:13', '2024-07-04 17:55:13', 78, 0, 'Ahmed Atef', 0),
(25, 'Home', '+2001003086932', NULL, '٥', 'شارع النبوى المهندس', 'المندره قبلى شارع النبوى المهندس ابراج الديار برج الجوهره بجوار كازيون', '31.274523098766718', '30.01856748014688', '2024-07-04 21:26:13', '2024-07-04 21:26:13', 140, 0, 'Mohamed Mohamed Refaat Abd Rehim', 0),
(26, 'Home', '+2001003086932', NULL, NULL, NULL, 'بجوار شارع البنزينة، نوان، 72F9+R95, Al Mandarah Qebli, Montaza 2, Alexandria Governorate 5524565, Egypt', '31.274525677780318', '30.01856245100498', '2024-07-04 21:26:25', '2024-07-04 21:26:25', 140, 0, 'Mohamed Mohamed Refaat Abd Rehim', 0),
(27, 'Home', '+2001208757333', '01', '01', '19', 'Baddour, Behind 7 Shudz station street، Behind 7 Schutz Station St, Al Aqesa WA Baqos, El Raml 1, Alexandria Governorate 5450221, Egypt', '31.238017265108507', '29.969112910330296', '2024-07-05 15:22:29', '2024-07-05 15:22:29', 148, 0, 'Mohnad Mahmoud', 0),
(28, 'Home', '+201204696132', NULL, NULL, NULL, '72C4+PM4, Al Mandarah Bahri, Montaza 2, Alexandria Governorate 5526020, Egypt', '31.27167811727538', '30.006832480430603', '2024-07-06 01:30:57', '2024-07-06 01:30:57', 158, 0, 'Angelos Melad', 0),
(29, 'Home', '+201111047713', NULL, NULL, NULL, '٣٠ شارع المعهد الديني، سموحة، Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432074, Egypt', '31.213750577551593', '29.946615546941757', '2024-07-06 09:25:23', '2024-07-06 09:25:23', 5, 0, 'wezza laa', 0),
(30, 'Home', '+201111819340', '٩', '٢٥', 'مدينة فيصل - عمارة -٢٥ دور ٩ - شقة ٣', 'رقم ٢٥ Faysal City, Al Mandarah Qebli, Montaza 1, Alexandria Governorate 5516643, Egypt', '31.262690128753857', '30.00377543270588', '2024-07-06 09:28:46', '2024-07-06 09:28:46', 161, 0, 'Yahya Eid', 0),
(31, 'Home', '+201143949854', '1', '24', '24', '24 Khaled Ibn Al Walid, Al Mandarah Qebli, Montaza 2, Alexandria Governorate 5524207, Egypt', '31.266544439439468', '30.006082467734814', '2024-07-06 10:36:28', '2024-07-06 10:36:28', 305, 1, 'ياسمين حسن', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_conversations`
--

CREATE TABLE `dc_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `application_status` varchar(255) NOT NULL DEFAULT 'approved' COMMENT 'pending, approved, denied',
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `created_at`, `updated_at`, `auth_token`, `fcm_token`, `branch_id`, `is_active`, `application_status`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `language_code`) VALUES
(1, 'محمد القصري', 'س', '01273705726', 'osary@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc2b8486db.png\"]', '2024-06-26-667bc19ac91e9.png', '$2y$10$iqgwMvQBPZ0HNfyHxQfOv.RaUSUWmT3rQ93O9M6j50SLbAFJ8Nr8q', '2024-06-26 07:22:02', '2024-06-26 07:26:48', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(2, 'احمد عامر', 'س', '01210780644', 'ahmed@gmail.com', '123456', 'passport', '[\"2024-06-26-667bc225134f9.png\"]', '2024-06-26-667bc22517f21.png', '$2y$10$iyUYbsr2pppkVirb8U6uWebTWDOGnxfWi7qAGDdCWru4CkOnQjTse', '2024-06-26 07:24:21', '2024-06-26 07:24:21', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(3, 'ادهم مصطفي', 'س', '01275243842', 'adham@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc28107c6e.png\"]', '2024-06-26-667bc2810c609.png', '$2y$10$eO8p0FDH/EWQXFM94nzpZevu3qTSx/9tlGrPCUEZC4mW44rITsbae', '2024-06-26 07:25:53', '2024-06-26 07:25:53', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(4, 'اسلام ابرهيم', 'س', '01289477172', 'islam@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc3099d94f.png\"]', '2024-06-26-667bc309a20ee.png', '$2y$10$5Dabmh8G8VOBwyFI0QGtEuNIULF8EHobWtg3GyLqmdGBho1nAzwEC', '2024-06-26 07:28:09', '2024-06-26 07:28:09', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(5, 'اسلام رمضان', 'س', '01222347819', 'islamramadan@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc3b170473.png\"]', '2024-06-26-667bc3b1737b5.png', '$2y$10$A1KUijoxcccZpqJZsgavmOPyD6LwskeTvJSAwzKaG9rdGflOaSGr2', '2024-06-26 07:30:57', '2024-06-26 07:30:57', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(6, 'السيد الشبراوي', 'س', '01228233615', 'elsaied@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc3fc9f415.png\"]', '2024-06-26-667bc3fca3df0.png', '$2y$10$.XCl6LaePR3WTbi9zLKIoercLUSdiwLX7KWpo23HYshg893HG4p9i', '2024-06-26 07:32:12', '2024-06-26 07:32:12', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(7, 'حسن انور', 'س', '01286797438', 'hassan@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc4443fba8.png\"]', '2024-06-26-667bc44444305.png', '$2y$10$mZgJNvKVvd.FI2cqYemdeuAFPSHxPJkWADZMlQHvBUtqOH6vjZIGq', '2024-06-26 07:33:24', '2024-06-26 07:33:24', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(8, 'حسن نصر', 'س', '01272175102', 'hassannasr@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc483452d6.png\"]', '2024-06-26-667bc48349d88.png', '$2y$10$ppw5bN18SBtG.iMANhzJTODJJToM39nKYR/HHr1ukeatC8flxCL3e', '2024-06-26 07:34:27', '2024-06-26 07:34:27', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(9, 'عمرو مختار', 'س', '01224891876', 'amr@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc4eeba0c3.png\"]', '2024-06-26-667bc4eebd06b.png', '$2y$10$Z8/JQB0GuBHT3.D5Hkv7g.00bOELEeM36nVAycLiGc1ySoaGWzjJW', '2024-06-26 07:36:14', '2024-06-26 07:36:14', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(10, 'كمال محمد', 'س', '01224517185', 'kamal@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc5313ce84.png\"]', '2024-06-26-667bc531405fa.png', '$2y$10$jsLOkcIJ2NtrBlYm2t.8ieVbQBJ4lzT/la6uZi.2JfB07WLkpDT3u', '2024-06-26 07:37:21', '2024-06-26 07:37:21', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(11, 'محمد محي', 'س', '01228585535', 'mohy@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc6cac5a4d.png\"]', '2024-06-26-667bc6cacbc1f.png', '$2y$10$gmqjC2pUN1BClim9DQNQru7FZVT/DcLCMvEJzk2f//u7Ih31/Cvc6', '2024-06-26 07:44:10', '2024-06-26 07:44:10', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(12, 'محمود سعيد', 'س', '01508543589', 'mahmoud@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc7316f748.png\"]', '2024-06-26-667bc73174883.png', '$2y$10$f7a4KzzDIpSk9cs3AaLwGOyypWjXVeVHOQxQbcEytEMQguXL4AWv2', '2024-06-26 07:45:53', '2024-06-26 07:45:53', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(13, 'مصطفى اسماعيل', 'س', '01203546409', 'mostafa@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc90c790a5.png\"]', '2024-06-26-667bc90c7b29d.png', '$2y$10$rHg4Lh2jgA7l1fF/1EPVj.A8svu9OpRkdG14RRQd5V5SBMq6Ohi0G', '2024-06-26 07:53:48', '2024-06-26 07:53:48', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(14, 'مؤمن', 'س', '01271702258', 'moamen@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc95a26734.png\"]', '2024-06-26-667bc95a28100.png', '$2y$10$yY9YiY3Qtfc8J2Z9KaoDv.si/P6FPAlHmR2JkqBtG1JpuRqPBYrt6', '2024-06-26 07:55:06', '2024-06-26 07:55:06', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(15, 'مهند الجوهري', 'س', '01287809810', 'mohanad@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc9a897825.png\"]', '2024-06-26-667bc9a898fbd.png', '$2y$10$tuUANg/tRWhTin7dQPqjUuA6wnJ5DQISIRB.83SJPpq1.iLMGmhgG', '2024-06-26 07:56:24', '2024-06-26 07:56:24', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(16, 'محمد ايمن', 'س', '01016753154', 'ayman@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bc9e539959.png\"]', '2024-06-26-667bc9e53ba12.png', '$2y$10$ElIbotEPS2XIUORzDHhkdONnt.te5zKd3RArPCUkB9zEfBflfviYG', '2024-06-26 07:57:25', '2024-06-26 07:57:25', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(17, 'ابو اسر', 'م', '01555448016', 'abiaser@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bca3218d12.png\"]', '2024-06-26-667bca321b37d.png', '$2y$10$yUSTjB43W69R5mR6R8V20OW/PAXvuVqFrTIb7919gwH86Hy4AaAJG', '2024-06-26 07:58:42', '2024-06-26 07:58:42', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(18, 'احمد العطار', 'م', '01005540810', 'attar@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcb3c1bf12.png\"]', '2024-06-26-667bcb3c1e742.png', '$2y$10$pJTVu/.JuO7BsPa5U9E5iOClYn.GY4BZY978b9QEi4jXFVi6JKb7O', '2024-06-26 08:03:08', '2024-06-26 08:03:08', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(19, 'احمد سعيد', 'م', '01287843585', 'saied@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcb9508bb9.png\"]', '2024-06-26-667bcb950b20f.png', '$2y$10$TdlLzDcOF5aQioshM0XsW.FxMaMaDujvZ6r.JQ/9/ueHajkCzLbpG', '2024-06-26 08:04:37', '2024-06-26 08:04:37', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(20, 'احمد شلبي', 'م', '01140855840', 'shalaby@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcc07f3e6f.png\"]', '2024-06-26-667bcc08022ae.png', '$2y$10$WOlAkSxRPSCnckz.y/vCPuODo/4ocNeqPl05l3YnAEuJGEpVllKOy', '2024-06-26 08:06:32', '2024-06-26 08:06:32', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(21, 'احمد عاطف', 'م', '01208491378', 'atef@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcc6229f5a.png\"]', '2024-06-26-667bcc622cb51.png', '$2y$10$FXFVDFPuHVhZk61v5dQDFufZIN5T7iNSNUmjQ5PeLYGR8IdjZxqW6', '2024-06-26 08:08:02', '2024-06-26 08:08:02', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(22, 'اكرم احمد', 'م', '01279717505', 'akram@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcca2d8517.png\"]', '2024-06-26-667bcca2da252.png', '$2y$10$B201yqgCpDxOx4DCYVkezueDsxVewS1O6luIUipWgOu.12ldt4xR.', '2024-06-26 08:09:06', '2024-06-26 08:09:06', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(23, 'السلمي', 'م', '01279288898', 'elselmy@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcce079b53.png\"]', '2024-06-26-667bcce07bd41.png', '$2y$10$c0jEZgJyNAXfkMzTSwN3ne2r16XeJ2u5pp0Vdt0nNQhtEdzRcIUSK', '2024-06-26 08:10:08', '2024-06-26 08:10:08', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(24, 'حسام محمد', 'م', '01201643648', 'hossam@gmail.com', '123456', 'passport', '[\"2024-06-26-667bcd5c7b0c6.png\"]', '2024-06-26-667bcd5c7d72a.png', '$2y$10$aaRVIFaoFOEbcl1W6x6YVuveO/8DjLZc6We4Bu3I6ncKWseeHZkiK', '2024-06-26 08:12:12', '2024-06-26 08:12:12', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(25, 'حسن يحيي', 'م', '01029437241', 'hassanyehia@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcda2b3473.png\"]', '2024-06-26-667bcda2b52fc.png', '$2y$10$YEKTCqtjZjt5YFjvWo5dn.vvyNj/JRCWNiRgIIok7wNpADfBCXCGa', '2024-06-26 08:13:22', '2024-06-26 08:13:22', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(26, 'شريف محمد', 'م', '01284381991', 'sherief@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bce54e91b0.png\"]', '2024-06-26-667bce54eb71d.png', '$2y$10$eZak4WZ3hNurOxA7P3nL3uYSxStPvn/nSjEenRrfPI2ExbHPsVqw6', '2024-06-26 08:16:21', '2024-06-26 08:16:21', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(27, 'عبد الرحمن اشرف', 'م', '01207985054', 'abdoashraf@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bcfc269868.png\"]', '2024-06-26-667bcfc26c251.png', '$2y$10$k1rQBQsmJk6Ngdrdf.u6j.YkWhIds7B6aveX2HGpOc4/XE1wxXmUG', '2024-06-26 08:22:26', '2024-06-26 08:22:26', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(28, 'عبد الرحمن محمد', 'م', '01141147748', 'abdelrahman@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bd01fe37dc.png\"]', '2024-06-26-667bd01fe5f26.png', '$2y$10$1FvonndvF41fUz24WpDd3OJb20wMs/63WD/2y/3GnFuLxBvIkOj6G', '2024-06-26 08:24:00', '2024-06-26 08:24:00', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(29, 'عبده رضا', 'م', '01203603104', 'abdo@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bd06d8fe13.png\"]', '2024-06-26-667bd06d917df.png', '$2y$10$MMLGinoox/Cyf82Gsn.Yl.TvYfgJqkMH4QHrIy8C50kzuCZgzUVYq', '2024-06-26 08:25:17', '2024-06-26 09:16:30', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(30, 'عمر وائل', 'م', '01550327561', 'omarwael@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bd10530a5c.png\"]', '2024-06-26-667bd105329cf.png', '$2y$10$oblGhpUXeTYp7ttkcurWzOR7d3.j/adTl9FlUAQlzxtRNDZI64MG6', '2024-06-26 08:27:49', '2024-06-26 09:16:18', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(31, 'عمرو يحيي', 'م', '01017652217', 'omaryehia@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bdca74d64a.png\"]', '2024-06-26-667bdca753ffc.png', '$2y$10$w679dA3bS2kTyKS/KmTbs.xzzPRVxu999TDdzU1YNWWVlndfWD.9m', '2024-06-26 09:17:27', '2024-06-26 09:17:27', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(32, 'علاء التوني', 'م', '01227652700', 'tony@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bdd2a79ed1.png\"]', '2024-06-26-667bdd2a7e720.png', '$2y$10$gqG1rtYfZYdElCyxakXh7ec6ajAqm1tZLV4v9Enbr1ZgAMbjn2dk6', '2024-06-26 09:19:38', '2024-06-26 09:19:38', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(33, 'كريم ابراهيم', 'م', '01287092303', 'karim@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bddd81121b.png\"]', '2024-06-26-667bddd81462d.png', '$2y$10$xMvb2.sMOh.07zzKCeD7GutJzw./mhlvBIutU6dJAZYHRGERd2Obu', '2024-06-26 09:22:32', '2024-06-26 09:22:32', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(34, 'كريم احمد', 'م', '01280254125', 'karimahmed@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bde22b61a4.png\"]', '2024-06-26-667bde22b9827.png', '$2y$10$Po/5Cjqa5tVbkL0jmmzWWe5WuUqujIRfQ8Kv.H0QM/Q6W70PVxFeO', '2024-06-26 09:23:46', '2024-06-26 09:23:46', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(35, 'محمد السيد', 'م', '01206776295', 'moelsayed@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bde518d86c.png\"]', '2024-06-26-667bde5191654.png', '$2y$10$xPdpo/G/i42Debx2jC7Yeu8Mo31wJCsMnVGfQgpBM4/R5llHtBMES', '2024-06-26 09:24:33', '2024-06-26 09:24:33', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(36, 'محمد حلمى', 'م', '01202014588', 'helmy@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bdeb7cfcdd.png\"]', '2024-06-26-667bdeb7d3f49.png', '$2y$10$U.tYLq0XW2GwWf8rFiaP3.RlauU9qB2O.8vZQtViWUkpaOiBX3Sa6', '2024-06-26 09:26:15', '2024-06-26 09:26:15', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(37, 'محمد رمضان', 'م', '01210780997', 'ramadan@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667bdf96ca6a1.png\"]', '2024-06-26-667bdf96cf453.png', '$2y$10$frb8Wq60jHmvZ.6eKep9Jemvb0mnGlcb7yLytqIvM1NSM1tghK1KO', '2024-06-26 09:29:58', '2024-06-26 09:29:58', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(38, 'محمد عبد الظاهر', 'م', '01208509235', 'abdelzaher@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be008b0833.png\"]', '2024-06-26-667be008b4eaa.png', '$2y$10$LNUR8UJq3XGk9TUh9ZNgqOP.dGlpMdmU3oOONqYHaSxp3TCiggm5q', '2024-06-26 09:31:52', '2024-06-26 09:31:52', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(39, 'محمد مصطفي', 'م', '01223733061', 'momostafa@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be04d37541.png\"]', '2024-06-26-667be04d3b953.png', '$2y$10$Yc/umYI9fzv4mZRrDkVQp.YfYYS2LpXbSGL722PGLIJochAcYbB0q', '2024-06-26 09:33:01', '2024-06-26 09:33:01', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(40, 'محمود التوني', 'م', '01278306878', 'mahtony@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be08763cd7.png\"]', '2024-06-26-667be08766d7c.png', '$2y$10$8blqQkpfuluhC2LW/JwmNuTQ1xnoRfD7aci5ayRGHll80k8024HyO', '2024-06-26 09:33:59', '2024-06-26 09:33:59', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(41, 'محمد هاشم', 'م', '01211935980', 'hashem@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be0b453d61.png\"]', '2024-06-26-667be0b4582b9.png', '$2y$10$lrbO0YGDTV/KjQpF3VsiqucgqZsBaQbsnqlmC/6UPYOwxAc.BWUmW', '2024-06-26 09:34:44', '2024-06-26 09:34:44', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(42, 'مدثر', 'م', '01275003850', 'madaser@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be0e42a341.png\"]', '2024-06-26-667be0e42da21.png', '$2y$10$YAD2d/dTMps9TLrN8MCbxe1Z6sd3CF1cjd6uIvdcegICaMnsgjxMS', '2024-06-26 09:35:32', '2024-06-26 09:35:32', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(43, 'موسي', 'م', '01202000392', 'mosa@gmail.com', '123456', 'restaurant_id', '[\"2024-06-26-667be13e06228.png\"]', '2024-06-26-667be13e0abf6.png', '$2y$10$opGHEirpIPQ0B30vBPV/3.2JKtnZLNhqo5yeG0NPCRQrAc4V/7KwG', '2024-06-26 09:37:02', '2024-06-26 09:37:02', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en'),
(44, 'مؤمن اشرف', 'م', '01208918222', 'moashraf@gmail.com', '123456', 'restaurant_id', '[\"2024-06-27-667daea333e71.png\"]', '2024-06-26-667be16e16c62.png', '$2y$10$nNl31ehHCJCJva5rsGWyPu6RrGuDyAqeAI7CCoE2v/mj0GbMRXzQi', '2024-06-26 09:37:50', '2024-06-27 18:25:39', NULL, NULL, 0, 1, 'approved', 0, 0, NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `button_name` varchar(100) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_template` varchar(255) DEFAULT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 0,
  `refund` tinyint(1) NOT NULL DEFAULT 0,
  `cancelation` tinyint(1) NOT NULL DEFAULT 0,
  `contact` tinyint(1) NOT NULL DEFAULT 0,
  `facebook` tinyint(1) NOT NULL DEFAULT 0,
  `instagram` tinyint(1) NOT NULL DEFAULT 0,
  `twitter` tinyint(1) NOT NULL DEFAULT 0,
  `linkedin` tinyint(1) NOT NULL DEFAULT 0,
  `pinterest` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, '154.180.182.160', '@', '2024-05-29 08:05:28', '2024-05-29 08:14:38'),
(2, '154.180.182.160', '@', '2024-05-29 08:21:39', '2024-06-02 10:32:20'),
(3, '154.180.66.167', '@', '2024-06-02 09:34:58', '2024-06-02 09:34:58'),
(4, '154.180.108.107', '@', '2024-06-03 11:20:11', '2024-06-03 11:20:11'),
(5, '154.180.173.81', '@', '2024-06-03 15:35:27', '2024-06-03 15:35:27'),
(6, '154.180.4.22', '@', '2024-06-04 19:12:10', '2024-06-04 19:14:33'),
(7, '196.150.226.127', '@', '2024-06-04 19:26:31', '2024-06-04 19:26:31'),
(8, '197.165.219.103', '@', '2024-06-04 20:14:27', '2024-06-04 20:15:54'),
(9, '154.177.124.90', '@', '2024-06-05 00:11:24', '2024-06-05 00:13:03'),
(10, '154.180.67.15', '@', '2024-06-24 07:21:33', '2024-06-24 08:14:23'),
(11, '66.249.80.38', '@', '2024-06-24 07:55:41', '2024-06-24 07:55:41'),
(12, '66.102.8.70', '@', '2024-06-24 07:59:24', '2024-06-24 07:59:24'),
(13, '74.125.209.36', '@', '2024-06-24 07:59:34', '2024-06-24 07:59:34'),
(14, '154.180.67.15', '@', '2024-06-24 08:29:41', '2024-06-24 09:07:28'),
(15, '70.32.128.59', '@', '2024-06-24 09:00:27', '2024-06-24 09:00:27'),
(16, '108.177.7.91', '@', '2024-06-24 09:01:01', '2024-06-24 09:01:01'),
(17, '70.32.128.243', '@', '2024-06-24 09:01:24', '2024-06-24 09:01:24'),
(18, '108.177.7.91', '@', '2024-06-24 09:01:24', '2024-06-24 09:01:24'),
(19, '108.177.7.93', '@', '2024-06-24 09:01:25', '2024-06-24 09:01:25'),
(20, '35.243.2.13', '@', '2024-06-24 09:04:29', '2024-06-24 09:04:29'),
(21, '108.177.7.84', '@', '2024-06-24 09:56:12', '2024-06-24 09:56:12'),
(22, '34.218.159.145', '@', '2024-06-24 10:58:44', '2024-06-24 10:58:44'),
(23, '154.180.208.166', '@', '2024-06-24 12:53:36', '2024-06-24 12:53:36'),
(24, '154.180.208.166', '@', '2024-06-24 13:02:05', '2024-07-02 08:29:18'),
(25, '104.133.219.42', '@', '2024-06-24 15:41:24', '2024-06-24 15:41:24'),
(26, '74.125.209.34', '@', '2024-06-25 05:10:39', '2024-06-25 05:10:39'),
(27, '74.125.215.232', '@', '2024-06-25 05:51:25', '2024-06-25 05:51:25'),
(28, '154.180.181.79', '@', '2024-06-25 09:52:55', '2024-06-25 09:56:24'),
(29, '197.121.240.213', '@', '2024-06-25 10:06:29', '2024-06-25 10:06:29'),
(30, '197.121.240.213', '@', '2024-06-25 10:07:19', '2024-06-25 10:10:23'),
(31, '197.162.8.243', '@', '2024-06-25 10:10:37', '2024-06-25 11:43:34'),
(32, '41.44.239.55', '@', '2024-06-25 10:16:21', '2024-06-25 10:17:16'),
(33, '102.44.96.136', '@', '2024-06-25 10:17:41', '2024-06-25 11:18:05'),
(34, '196.132.49.226', '@', '2024-06-25 10:23:46', '2024-06-25 10:26:42'),
(35, '41.237.86.4', '@', '2024-06-25 10:24:07', '2024-06-25 10:24:44'),
(36, '196.155.73.113', '@', '2024-06-25 10:25:06', '2024-06-25 10:25:06'),
(37, '41.239.31.52', '@', '2024-06-25 10:31:12', '2024-06-25 10:33:21'),
(38, '102.43.168.193', '@', '2024-06-25 10:55:19', '2024-06-25 10:56:32'),
(39, '66.102.8.70', '@', '2024-06-25 11:23:53', '2024-06-25 11:23:53'),
(40, '197.162.129.185', '@', '2024-06-25 12:25:19', '2024-06-25 12:25:19'),
(41, '196.155.95.45', '@', '2024-06-25 12:26:52', '2024-06-25 12:30:21'),
(42, '41.47.77.5', '@', '2024-06-25 13:13:34', '2024-06-25 13:15:04'),
(43, '154.180.192.88', '@', '2024-06-25 13:17:03', '2024-06-25 13:24:51'),
(44, '74.125.209.34', '@', '2024-06-25 13:27:28', '2024-06-25 13:27:28'),
(45, '154.180.192.88', '@', '2024-06-25 13:38:44', '2024-06-25 13:38:44'),
(46, '196.158.150.25', '@', '2024-06-25 15:01:39', '2024-06-25 15:01:39'),
(47, '154.184.234.121', '@', '2024-06-25 15:49:44', '2024-06-25 15:51:59'),
(48, '41.38.198.250', '@', '2024-06-25 17:29:15', '2024-06-25 17:31:36'),
(49, '196.159.29.28', '@', '2024-06-25 18:43:09', '2024-06-25 18:43:43'),
(50, '41.65.181.132', '@', '2024-06-26 02:18:01', '2024-06-26 02:19:43'),
(51, '49.44.84.70', '@', '2024-06-26 05:43:18', '2024-06-26 05:43:18'),
(52, '154.180.87.152', '@', '2024-06-26 06:54:09', '2024-06-26 06:54:09'),
(53, '154.180.87.152', '@', '2024-06-26 07:08:46', '2024-06-26 07:08:46'),
(54, '154.180.87.152', '@', '2024-06-26 07:30:08', '2024-06-26 07:36:45'),
(55, '154.180.87.152', '@', '2024-06-26 07:38:58', '2024-06-26 07:40:45'),
(56, '154.180.87.152', '@', '2024-06-26 07:42:21', '2024-06-26 07:42:21'),
(57, '154.180.87.152', '@', '2024-06-26 07:49:16', '2024-06-26 07:51:00'),
(58, '154.180.87.152', '@', '2024-06-26 07:54:26', '2024-06-26 07:56:59'),
(59, '154.180.87.152', '@', '2024-06-26 08:07:31', '2024-06-26 08:07:31'),
(60, '197.160.173.131', '@', '2024-06-26 08:39:21', '2024-06-26 08:40:21'),
(61, '65.154.226.171', '@', '2024-06-26 09:28:35', '2024-06-26 09:28:35'),
(62, '34.122.147.229', '@', '2024-06-26 09:28:42', '2024-06-26 09:28:42'),
(63, '154.180.87.152', '@', '2024-06-26 09:32:00', '2024-06-26 09:32:00'),
(64, '154.180.87.152', '@', '2024-06-26 09:38:27', '2024-06-26 09:38:27'),
(65, '154.180.87.152', '@', '2024-06-26 09:42:33', '2024-06-26 09:42:33'),
(66, '154.180.87.152', '@', '2024-06-26 09:48:25', '2024-06-26 09:48:25'),
(67, '154.180.87.152', '@', '2024-06-26 09:50:08', '2024-06-26 09:50:08'),
(68, '154.180.30.226', '@', '2024-06-26 09:57:45', '2024-06-26 09:57:45'),
(69, '154.180.30.226', '@', '2024-06-26 09:58:52', '2024-06-26 09:58:52'),
(70, '154.180.30.226', '@', '2024-06-26 11:15:40', '2024-06-26 11:15:40'),
(71, '66.249.80.39', '@', '2024-06-26 11:16:06', '2024-06-26 11:16:06'),
(72, '154.180.30.226', '@', '2024-06-26 11:30:35', '2024-06-26 11:30:35'),
(73, '154.180.30.226', '@', '2024-06-26 11:59:20', '2024-06-26 11:59:20'),
(74, '197.55.48.40', '@', '2024-06-26 12:11:18', '2024-06-26 12:12:42'),
(75, '156.192.185.186', '@', '2024-06-26 12:14:15', '2024-06-26 12:15:57'),
(76, '154.180.30.226', '@', '2024-06-26 12:17:08', '2024-06-26 12:17:08'),
(77, '154.180.30.226', '@', '2024-06-26 12:23:27', '2024-06-26 12:23:27'),
(78, '84.54.105.39', '@', '2024-06-26 12:30:42', '2024-06-26 12:30:42'),
(79, '154.180.30.226', '@', '2024-06-26 12:41:03', '2024-06-26 12:42:12'),
(80, '154.180.30.226', '@', '2024-06-26 13:11:58', '2024-06-26 13:11:58'),
(81, '197.121.240.226', '@', '2024-06-26 13:12:20', '2024-06-26 13:13:57'),
(82, '45.242.130.54', '@', '2024-06-26 13:38:53', '2024-06-26 13:38:53'),
(83, '154.184.136.210', '@', '2024-06-26 14:11:03', '2024-06-26 14:12:01'),
(84, '196.159.73.151', '@', '2024-06-26 14:15:43', '2024-06-26 14:15:43'),
(85, '196.155.0.90', '@', '2024-06-26 14:30:29', '2024-06-26 14:33:11'),
(86, '154.191.32.75', '@', '2024-06-26 14:32:16', '2024-06-26 14:33:31'),
(87, '41.234.56.16', '@', '2024-06-26 14:49:17', '2024-06-26 14:50:36'),
(88, '61.5.201.4', '@', '2024-06-26 16:29:32', '2024-06-26 16:29:32'),
(89, '203.171.242.36', '@', '2024-06-26 16:36:24', '2024-06-26 16:36:24'),
(90, '154.239.233.20', '@', '2024-06-26 16:48:41', '2024-06-26 16:50:46'),
(91, '156.163.134.221', '@', '2024-06-26 17:43:22', '2024-06-26 17:43:22'),
(92, '196.159.30.51', '@', '2024-06-26 17:44:21', '2024-06-26 17:44:21'),
(93, '197.48.121.170', '@', '2024-06-26 19:37:35', '2024-06-26 19:39:13'),
(94, '102.12.170.94', '@', '2024-06-26 21:02:36', '2024-06-26 21:03:22'),
(95, '197.135.194.157', '@', '2024-06-26 21:41:11', '2024-06-26 21:41:11'),
(96, '156.164.214.33', '@', '2024-06-26 21:42:37', '2024-06-26 21:44:04'),
(97, '74.125.209.34', '@', '2024-06-26 22:42:40', '2024-06-26 22:42:40'),
(98, '197.55.61.112', '@', '2024-06-26 22:44:25', '2024-06-26 22:44:25'),
(99, '197.48.242.228', '@', '2024-06-26 23:17:37', '2024-06-26 23:22:34'),
(100, '102.189.154.249', '@', '2024-06-26 23:19:38', '2024-06-26 23:21:18'),
(101, '197.48.242.228', '@', '2024-06-26 23:20:03', '2024-06-26 23:21:50'),
(102, '41.238.191.77', '@', '2024-06-27 07:56:53', '2024-06-27 07:58:49'),
(103, '41.47.68.111', '@', '2024-06-27 09:35:33', '2024-06-27 09:39:07'),
(104, '197.160.206.171', '@', '2024-06-27 09:40:36', '2024-06-27 09:40:36'),
(105, '45.242.115.158', '@', '2024-06-27 12:49:51', '2024-06-27 12:49:51'),
(106, '41.233.14.230', '@', '2024-06-27 13:05:38', '2024-06-27 13:05:38'),
(107, '102.187.23.102', '@', '2024-06-27 14:04:11', '2024-06-27 14:05:49'),
(108, '41.233.12.240', '@', '2024-06-27 15:26:51', '2024-06-27 15:28:13'),
(109, '41.40.78.209', '@', '2024-06-27 16:24:38', '2024-06-27 16:25:49'),
(110, '197.48.78.67', '@', '2024-06-27 17:15:11', '2024-06-27 17:15:11'),
(111, '102.41.52.115', '@', '2024-06-27 18:57:54', '2024-06-27 18:57:54'),
(112, '102.44.176.169', '@', '2024-06-27 19:32:41', '2024-06-27 19:33:55'),
(113, '41.40.77.63', '@', '2024-06-27 20:51:20', '2024-06-27 20:52:23'),
(114, '197.48.165.232', '@', '2024-06-27 21:08:16', '2024-06-27 21:10:11'),
(115, '197.48.32.146', '@', '2024-06-27 21:58:53', '2024-06-27 22:00:20'),
(116, '197.55.174.173', '@', '2024-06-27 22:05:18', '2024-06-27 22:05:18'),
(117, '156.218.136.151', '@', '2024-06-27 22:23:03', '2024-06-27 22:24:27'),
(118, '197.222.57.44', '@', '2024-06-27 22:26:20', '2024-06-27 22:26:20'),
(119, '41.234.98.240', '@', '2024-06-27 22:39:01', '2024-06-27 22:39:01'),
(120, '41.237.88.22', '@', '2024-06-27 23:51:11', '2024-06-27 23:53:17'),
(121, '41.237.76.202', '@', '2024-06-27 23:52:05', '2024-06-27 23:53:59'),
(122, '154.184.61.73', '@', '2024-06-28 00:14:19', '2024-06-28 00:15:40'),
(123, '66.249.88.164', '@', '2024-06-28 02:17:18', '2024-06-28 02:17:18'),
(124, '66.249.88.162', '@', '2024-06-28 02:49:18', '2024-06-28 02:49:18'),
(125, '154.180.125.96', '@', '2024-06-28 07:59:45', '2024-06-28 08:00:39'),
(126, '154.189.228.16', '@', '2024-06-28 11:25:45', '2024-06-28 11:31:03'),
(127, '196.159.74.29', '@', '2024-06-28 11:45:08', '2024-06-28 11:46:40'),
(128, '156.163.37.147', '@', '2024-06-28 13:24:51', '2024-06-28 13:25:42'),
(129, '156.163.70.216', '@', '2024-06-28 14:20:45', '2024-06-28 14:22:09'),
(130, '156.212.30.208', '@', '2024-06-28 14:28:02', '2024-06-28 14:28:02'),
(131, '156.160.214.118', '@', '2024-06-28 14:37:08', '2024-06-28 14:38:54'),
(132, '102.44.166.143', '@', '2024-06-28 15:13:27', '2024-06-28 15:14:32'),
(133, '197.55.143.199', '@', '2024-06-28 15:53:22', '2024-06-28 15:54:35'),
(134, '156.163.89.98', '@', '2024-06-28 15:56:00', '2024-06-28 15:56:48'),
(135, '41.234.57.8', '@', '2024-06-28 15:57:46', '2024-06-28 16:00:32'),
(136, '154.180.204.15', '@', '2024-06-28 16:10:23', '2024-06-28 16:12:11'),
(137, '154.180.21.199', '@', '2024-06-28 16:12:19', '2024-06-28 16:13:55'),
(138, '154.180.49.237', '@', '2024-06-28 16:13:05', '2024-06-28 16:16:09'),
(139, '156.164.218.187', '@', '2024-06-28 17:26:49', '2024-06-28 17:29:10'),
(140, '156.211.237.197', '@', '2024-06-28 18:16:24', '2024-06-28 18:16:24'),
(141, '102.187.41.252', '@', '2024-06-28 20:03:18', '2024-06-28 20:05:16'),
(142, '154.180.99.214', '@', '2024-06-28 20:28:22', '2024-06-28 20:28:22'),
(143, '102.42.133.243', '@', '2024-06-28 21:25:15', '2024-06-28 21:25:15'),
(144, '156.218.131.135', '@', '2024-06-28 21:55:59', '2024-06-28 21:57:13'),
(145, '154.191.168.52', '@', '2024-06-28 22:01:45', '2024-06-28 22:01:45'),
(146, '45.242.245.254', '@', '2024-06-28 23:04:10', '2024-06-28 23:06:18'),
(147, '41.199.166.147', '@', '2024-06-28 23:12:39', '2024-06-28 23:14:27'),
(148, '197.48.4.0', '@', '2024-06-29 00:50:14', '2024-06-29 00:51:54'),
(149, '72.240.108.38', '@', '2024-06-29 01:09:39', '2024-06-29 01:09:39'),
(150, '82.76.79.69', '@', '2024-06-29 02:29:52', '2024-06-29 02:29:52'),
(151, '156.218.67.169', '@', '2024-06-29 03:22:17', '2024-06-29 03:24:14'),
(152, '197.197.188.12', '@', '2024-06-29 03:25:16', '2024-06-29 03:26:42'),
(153, '41.40.196.162', '@', '2024-06-29 05:40:47', '2024-06-29 05:41:41'),
(154, '156.218.174.48', '@', '2024-06-29 09:12:32', '2024-06-29 09:14:39'),
(155, '41.45.155.195', '@', '2024-06-29 10:48:24', '2024-06-29 10:49:28'),
(156, '154.180.170.210', '@', '2024-06-29 17:23:24', '2024-06-29 17:23:24'),
(157, '156.194.56.234', '@', '2024-06-29 17:45:03', '2024-06-29 17:45:34'),
(158, '102.189.151.96', '@', '2024-06-29 19:20:17', '2024-06-29 19:20:17'),
(159, '154.238.85.102', '@', '2024-06-29 19:35:06', '2024-06-29 19:36:25'),
(160, '196.136.69.185', '@', '2024-06-29 20:31:36', '2024-06-29 20:33:04'),
(161, '156.211.206.62', '@', '2024-06-29 23:38:13', '2024-06-29 23:38:13'),
(162, '197.48.60.129', '@', '2024-06-29 23:54:05', '2024-06-29 23:54:05'),
(163, '43.250.167.69', '@', '2024-06-30 01:29:32', '2024-06-30 01:29:32'),
(164, '197.135.161.231', '@', '2024-06-30 03:09:32', '2024-06-30 03:10:38'),
(165, '156.192.171.156', '@', '2024-06-30 09:15:13', '2024-06-30 09:15:13'),
(166, '154.180.241.61', '@', '2024-06-30 09:32:22', '2024-06-30 09:33:43'),
(167, '197.48.184.52', '@', '2024-06-30 10:29:52', '2024-06-30 10:29:52'),
(168, '108.177.7.93', '@', '2024-06-30 11:00:23', '2024-06-30 11:00:23'),
(169, '41.40.21.64', '@', '2024-06-30 12:08:05', '2024-06-30 12:09:56'),
(170, '41.236.144.125', '@', '2024-06-30 12:48:22', '2024-06-30 12:49:56'),
(171, '197.48.191.176', '@', '2024-06-30 13:11:45', '2024-06-30 13:13:54'),
(172, '41.35.29.55', '@', '2024-06-30 14:01:10', '2024-06-30 16:52:12'),
(173, '102.11.166.135', '@', '2024-06-30 15:28:09', '2024-06-30 15:28:09'),
(174, '154.180.10.240', '@', '2024-06-30 15:29:58', '2024-06-30 15:31:28'),
(175, '196.155.78.226', '@', '2024-06-30 15:45:56', '2024-06-30 15:46:50'),
(176, '154.180.92.231', '@', '2024-06-30 15:53:10', '2024-06-30 15:54:31'),
(177, '41.44.214.219', '@', '2024-06-30 16:04:22', '2024-06-30 16:06:44'),
(178, '102.185.170.8', '@', '2024-06-30 17:00:00', '2024-06-30 17:00:00'),
(179, '41.46.77.188', '@', '2024-06-30 17:00:10', '2024-06-30 17:00:10'),
(180, '197.48.65.124', '@', '2024-06-30 17:19:07', '2024-06-30 17:19:07'),
(181, '197.165.231.174', '@', '2024-06-30 17:58:24', '2024-06-30 18:00:57'),
(182, '102.187.31.154', '@', '2024-06-30 18:17:48', '2024-06-30 18:17:48'),
(183, '102.187.29.84', '@', '2024-06-30 18:37:48', '2024-06-30 18:39:47'),
(184, '102.10.95.72', '@', '2024-06-30 19:05:17', '2024-06-30 19:07:06'),
(185, '197.48.96.214', '@', '2024-06-30 19:55:01', '2024-06-30 20:10:23'),
(186, '196.155.11.234', '@', '2024-06-30 20:10:08', '2024-06-30 20:12:04'),
(187, '102.45.114.192', '@', '2024-06-30 20:41:00', '2024-06-30 20:42:13'),
(188, '156.218.230.200', '@', '2024-06-30 21:56:52', '2024-06-30 21:58:54'),
(189, '197.48.72.140', '@', '2024-06-30 22:02:34', '2024-06-30 22:02:34'),
(190, '45.242.154.5', '@', '2024-06-30 23:03:10', '2024-06-30 23:05:07'),
(191, '197.165.132.184', '@', '2024-06-30 23:22:10', '2024-06-30 23:22:10'),
(192, '212.142.160.5', '@', '2024-07-01 00:56:57', '2024-07-01 00:56:57'),
(193, '109.120.206.69', '@', '2024-07-01 02:18:26', '2024-07-01 02:18:26'),
(194, '42.106.161.75', '@', '2024-07-01 02:19:27', '2024-07-01 02:19:27'),
(195, '208.70.45.5', '@', '2024-07-01 02:34:25', '2024-07-01 02:34:25'),
(196, '154.180.87.211', '@', '2024-07-01 09:29:51', '2024-07-01 09:30:35'),
(197, '41.38.163.244', '@', '2024-07-01 11:40:52', '2024-07-01 11:41:57'),
(198, '41.238.54.197', '@', '2024-07-01 12:07:22', '2024-07-01 12:07:22'),
(199, '41.43.16.194', '@', '2024-07-01 13:26:52', '2024-07-01 13:26:52'),
(200, '102.9.127.188', '@', '2024-07-01 14:32:43', '2024-07-01 14:33:53'),
(201, '154.237.252.184', '@', '2024-07-01 14:55:23', '2024-07-01 15:01:12'),
(202, '102.44.178.10', '@', '2024-07-01 15:10:22', '2024-07-01 15:11:54'),
(203, '156.194.75.230', '@', '2024-07-01 17:04:24', '2024-07-01 17:04:24'),
(204, '196.132.105.120', '@', '2024-07-01 17:20:58', '2024-07-01 17:22:05'),
(205, '41.42.239.187', '@', '2024-07-01 18:40:17', '2024-07-01 18:41:32'),
(206, '102.189.186.34', '@', '2024-07-01 18:52:28', '2024-07-01 18:53:24'),
(207, '156.166.141.86', '@', '2024-07-01 20:38:26', '2024-07-01 20:40:54'),
(208, '41.237.64.44', '@', '2024-07-01 20:44:13', '2024-07-01 20:48:29'),
(209, '197.48.245.223', '@', '2024-07-01 22:43:49', '2024-07-01 22:43:49'),
(210, '45.242.141.148', '@', '2024-07-02 00:29:49', '2024-07-02 00:30:49'),
(211, '102.40.18.131', '@', '2024-07-02 04:01:54', '2024-07-02 05:25:26'),
(212, '154.180.39.55', '@', '2024-07-02 07:24:35', '2024-07-02 08:49:01'),
(213, '154.180.39.55', 'c98uO_xaT7KzxtCf59DjkZ:APA91bHvw-QfxM8RdL0geuKnOcZuF-mQ0JVR54cC7I0O8Kh1b4i_LyyAD_AuetosZUUUMm40-D3IoR6UYjABtc7Vwh9hsZM43poYelVzLjD2KLKb0s6vsa9ekqPWkM1e2tBun6l13_ky', '2024-07-02 09:19:31', '2024-07-02 11:57:30'),
(214, '41.47.82.124', '@', '2024-07-02 11:50:22', '2024-07-02 11:50:22'),
(215, '154.180.134.159', '@', '2024-07-02 12:23:43', '2024-07-02 12:25:49'),
(216, '154.180.134.159', '@', '2024-07-02 12:44:49', '2024-07-06 11:31:09'),
(217, '197.135.185.198', '@', '2024-07-02 13:16:54', '2024-07-02 13:16:54'),
(218, '196.136.12.61', '@', '2024-07-02 13:21:49', '2024-07-02 13:22:59'),
(219, '156.218.142.99', '@', '2024-07-02 13:37:32', '2024-07-02 13:39:55'),
(220, '154.180.37.148', '@', '2024-07-02 14:09:36', '2024-07-02 14:11:00'),
(221, '154.180.59.198', '@', '2024-07-02 14:25:58', '2024-07-02 14:27:05'),
(222, '41.45.91.52', '@', '2024-07-02 14:59:33', '2024-07-02 15:01:10'),
(223, '154.184.228.28', '@', '2024-07-02 15:00:37', '2024-07-02 15:00:37'),
(224, '197.55.21.99', '@', '2024-07-02 16:14:10', '2024-07-02 16:14:10'),
(225, '196.132.107.90', '@', '2024-07-02 16:30:20', '2024-07-02 16:32:51'),
(226, '197.48.66.63', '@', '2024-07-02 17:30:21', '2024-07-02 17:32:14'),
(227, '154.180.154.168', '@', '2024-07-02 17:47:20', '2024-07-02 17:48:14'),
(228, '156.194.93.188', '@', '2024-07-02 20:25:34', '2024-07-02 20:26:18'),
(229, '102.44.92.255', '@', '2024-07-02 21:01:09', '2024-07-02 21:01:09'),
(230, '156.194.56.239', '@', '2024-07-02 21:37:16', '2024-07-02 21:38:08'),
(231, '105.197.15.170', '@', '2024-07-02 21:50:35', '2024-07-02 21:52:22'),
(232, '102.187.79.114', '@', '2024-07-02 23:56:04', '2024-07-02 23:56:04'),
(233, '41.38.30.235', '@', '2024-07-03 05:48:08', '2024-07-03 05:48:08'),
(234, '41.65.181.132', '@', '2024-07-03 08:15:04', '2024-07-03 08:17:06'),
(235, '197.48.126.196', '@', '2024-07-03 08:49:04', '2024-07-03 09:08:18'),
(236, '197.48.126.196', '@', '2024-07-03 09:28:38', '2024-07-03 09:29:05'),
(237, '196.132.97.135', '@', '2024-07-03 09:32:28', '2024-07-03 20:02:32'),
(238, '74.125.212.136', '@', '2024-07-03 10:26:20', '2024-07-03 10:26:20'),
(239, '104.133.49.111', '@', '2024-07-03 10:26:27', '2024-07-03 10:26:27'),
(240, '197.55.213.160', '@', '2024-07-03 10:50:47', '2024-07-03 10:52:17'),
(241, '156.192.211.75', '@', '2024-07-03 12:11:27', '2024-07-03 12:11:27'),
(242, '197.48.8.145', '@', '2024-07-03 12:14:01', '2024-07-03 12:14:01'),
(243, '196.155.2.102', '@', '2024-07-03 14:20:14', '2024-07-03 14:20:14'),
(244, '156.211.219.86', '@', '2024-07-03 16:11:05', '2024-07-03 16:11:05'),
(245, '41.44.245.131', '@', '2024-07-03 17:22:02', '2024-07-03 17:24:40'),
(246, '102.187.39.243', '@', '2024-07-03 17:44:06', '2024-07-03 17:45:03'),
(247, '154.188.98.195', '@', '2024-07-03 17:56:05', '2024-07-03 17:58:42'),
(248, '156.194.196.176', '@', '2024-07-03 18:16:41', '2024-07-03 18:16:41'),
(249, '154.189.156.106', '@', '2024-07-03 19:09:50', '2024-07-03 19:11:42'),
(250, '197.55.212.168', '@', '2024-07-03 19:30:13', '2024-07-03 19:32:49'),
(251, '102.44.182.166', '@', '2024-07-03 20:44:59', '2024-07-03 20:44:59'),
(252, '197.48.106.251', '@', '2024-07-03 21:18:45', '2024-07-03 21:19:35'),
(253, '41.40.64.222', '@', '2024-07-03 21:22:14', '2024-07-03 21:22:14'),
(254, '197.48.192.40', '@', '2024-07-03 22:07:50', '2024-07-03 22:09:08'),
(255, '197.48.136.51', '@', '2024-07-03 22:12:47', '2024-07-03 22:12:47'),
(256, '197.55.16.198', '@', '2024-07-04 06:45:16', '2024-07-04 06:46:02'),
(257, '41.38.198.112', '@', '2024-07-04 07:39:31', '2024-07-04 07:40:44'),
(258, '197.135.61.30', '@', '2024-07-04 09:53:27', '2024-07-04 09:53:27'),
(259, '156.194.168.100', '@', '2024-07-04 10:33:54', '2024-07-04 11:42:37'),
(260, '156.194.90.126', '@', '2024-07-04 12:29:40', '2024-07-04 12:29:40'),
(261, '45.242.242.248', '@', '2024-07-04 12:29:53', '2024-07-04 12:31:58'),
(262, '41.233.251.242', '@', '2024-07-04 13:19:34', '2024-07-04 13:19:34'),
(263, '197.162.125.148', '@', '2024-07-04 14:47:40', '2024-07-04 14:47:40'),
(264, '102.8.110.41', '@', '2024-07-04 15:24:25', '2024-07-04 18:30:47'),
(265, '197.48.19.220', '@', '2024-07-04 15:49:32', '2024-07-04 15:50:26'),
(266, '197.55.152.57', '@', '2024-07-04 15:52:41', '2024-07-04 15:53:54'),
(267, '41.40.103.8', '@', '2024-07-04 16:37:25', '2024-07-04 16:38:17'),
(268, '197.150.205.71', '@', '2024-07-04 16:49:20', '2024-07-04 16:49:20'),
(269, '41.35.187.219', '@', '2024-07-04 17:43:29', '2024-07-04 17:43:29'),
(270, '102.187.124.116', '@', '2024-07-04 18:11:48', '2024-07-04 18:13:07'),
(271, '41.176.248.103', '@', '2024-07-04 18:48:06', '2024-07-04 18:48:06'),
(272, '154.237.241.163', '@', '2024-07-04 19:06:00', '2024-07-04 19:06:00'),
(273, '154.180.13.111', '@', '2024-07-04 19:33:18', '2024-07-04 19:33:18'),
(274, '197.48.221.34', '@', '2024-07-04 19:49:11', '2024-07-04 19:49:11'),
(275, '197.192.238.196', '@', '2024-07-04 20:56:08', '2024-07-04 20:56:51'),
(276, '156.211.186.145', '@', '2024-07-04 21:20:13', '2024-07-04 21:27:08'),
(277, '197.48.147.112', '@', '2024-07-04 21:37:41', '2024-07-04 21:39:16'),
(278, '196.158.157.72', '@', '2024-07-04 23:17:51', '2024-07-04 23:20:27'),
(279, '197.55.0.202', '@', '2024-07-05 06:15:25', '2024-07-05 06:15:25'),
(280, '41.199.155.213', '@', '2024-07-05 09:07:22', '2024-07-05 09:09:04'),
(281, '197.55.223.169', '@', '2024-07-05 10:06:40', '2024-07-05 10:06:40'),
(282, '154.180.84.18', '@', '2024-07-05 11:53:11', '2024-07-05 11:53:11'),
(283, '154.180.252.226', '@', '2024-07-05 13:58:58', '2024-07-05 14:00:45'),
(284, '102.41.61.68', '@', '2024-07-05 14:17:18', '2024-07-05 14:18:01'),
(285, '102.11.62.26', '@', '2024-07-05 14:20:49', '2024-07-05 14:22:59'),
(286, '41.45.141.103', '@', '2024-07-05 15:06:11', '2024-07-05 15:10:13'),
(287, '41.46.193.84', '@', '2024-07-05 15:18:26', '2024-07-05 15:21:13'),
(288, '41.45.225.229', '@', '2024-07-05 16:15:01', '2024-07-05 18:32:04'),
(289, '197.48.20.226', '@', '2024-07-05 16:19:51', '2024-07-05 16:21:47'),
(290, '156.211.248.51', '@', '2024-07-05 17:48:43', '2024-07-05 17:49:32'),
(291, '197.48.192.36', '@', '2024-07-05 18:18:43', '2024-07-05 18:20:36'),
(292, '197.194.23.19', '@', '2024-07-05 18:30:50', '2024-07-05 18:33:43'),
(293, '197.48.158.246', '@', '2024-07-05 19:07:25', '2024-07-05 19:08:38'),
(294, '156.211.194.87', '@', '2024-07-05 19:12:05', '2024-07-05 19:13:16'),
(295, '197.192.133.87', '@', '2024-07-05 20:55:32', '2024-07-05 20:57:05'),
(296, '154.180.177.203', '@', '2024-07-05 21:10:16', '2024-07-05 21:10:42'),
(297, '156.162.123.18', '@', '2024-07-05 21:34:07', '2024-07-05 21:35:28'),
(298, '156.211.176.27', '@', '2024-07-05 21:55:45', '2024-07-05 21:55:45'),
(299, '156.211.160.15', '@', '2024-07-06 01:22:40', '2024-07-06 01:24:24'),
(300, '197.48.172.112', '@', '2024-07-06 06:43:01', '2024-07-06 06:44:45'),
(301, '197.55.186.143', '@', '2024-07-06 09:09:11', '2024-07-06 09:10:57'),
(302, '197.55.116.111', '@', '2024-07-06 09:21:42', '2024-07-06 09:23:49'),
(303, '154.180.202.93', '@', '2024-07-06 09:22:25', '2024-07-06 09:22:52'),
(304, '197.55.248.211', '@', '2024-07-06 10:17:14', '2024-07-06 10:18:18'),
(305, '41.42.239.252', '@', '2024-07-06 10:29:48', '2024-07-06 10:50:09'),
(306, '102.11.70.220', '@', '2024-07-06 10:56:12', '2024-07-06 10:58:13'),
(307, '154.180.202.93', '@', '2024-07-06 11:35:29', '2024-07-06 11:35:59'),
(308, '197.55.87.184', '@', '2024-07-06 11:59:40', '2024-07-06 11:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_28_082729_create_admins_table', 1),
(5, '2020_12_28_083059_create_delivery_men_table', 1),
(6, '2020_12_28_085055_create_attributes_table', 1),
(7, '2020_12_28_085146_create_add_ons_table', 1),
(8, '2020_12_28_085255_create_categories_table', 1),
(9, '2020_12_28_085511_create_business_settings_table', 1),
(10, '2020_12_28_085733_create_customer_addresses_table', 1),
(11, '2020_12_28_090037_create_orders_table', 1),
(12, '2020_12_28_090551_create_order_details_table', 1),
(13, '2020_12_28_091214_create_order_delivery_histories_table', 1),
(14, '2020_12_28_092607_create_banners_table', 1),
(15, '2020_12_28_092747_create_notifications_table', 1),
(16, '2020_12_28_092933_create_coupons_table', 1),
(17, '2020_12_28_093409_create_track_deliverymen_table', 1),
(18, '2020_12_28_093637_create_conversations_table', 1),
(19, '2020_12_28_093812_create_reviews_table', 1),
(20, '2020_12_28_093937_create_products_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(24, '2016_06_01_000004_create_oauth_clients_table', 2),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(26, '2021_01_02_053131_add_products_column_attributes', 2),
(27, '2021_01_02_062050_add_products_table_column_discount_tax', 2),
(28, '2021_01_03_083314_add_column_to_order_details', 3),
(29, '2021_01_03_084318_add_another_column_to_order_details', 3),
(30, '2021_01_05_133023_add_columns_to_customer_addressess', 4),
(31, '2021_01_07_142644_add_column_to_conversation', 5),
(32, '2021_01_09_145939_add_column_to_order_table', 6),
(33, '2021_01_09_180439_add_column_to_product_table', 7),
(34, '2021_01_09_182458_add_image_column_to_category', 7),
(35, '2021_01_10_144352_create_wishlists_table', 8),
(36, '2021_01_16_182939_add_column_to_order_table1', 9),
(37, '2021_01_18_124153_add_column_to_cono_table', 10),
(38, '2021_01_18_132026_add_column_to_deliveryman_table', 11),
(39, '2021_01_18_135107_create_delivery_histories_table', 11),
(40, '2021_01_23_102525_add_col_to_banner_category_id', 12),
(41, '2021_01_26_133423_add_delivery_charge_order_table', 13),
(42, '2021_01_27_111644_add_email_token_to_user_table', 13),
(43, '2021_01_27_112309_create_email_verifications_table', 13),
(44, '2021_01_27_120054_remove_column_from_users', 13),
(45, '2021_01_27_120306_add_column_tousers', 13),
(46, '2021_01_28_152556_create_currencies_table', 14),
(47, '2021_02_07_140951_add_firebase_token_to_users_table', 15),
(48, '2021_02_07_141134_add_order_note_to_orders_table', 15),
(49, '2021_02_11_125439_add_fcm_to_delivery_man', 16),
(50, '2021_02_15_094227_add_orderid_to_reviews_table', 17),
(51, '2021_02_18_085112_add_coupon_type_column_in_coupons', 18),
(52, '2021_02_18_095103_add_coupon_code_to_order_table', 18),
(53, '2021_02_20_051812_create_d_m_reviews_table', 19),
(54, '2021_02_20_070636_add_addon_qtys_order_table', 19),
(55, '2021_02_22_084240_add_order_type', 20),
(56, '2021_02_23_053203_create_branches_table', 21),
(57, '2021_02_23_093537_add_branch_in_order', 21),
(58, '2021_02_24_055406_add_coverage_in_branch', 21),
(59, '2021_02_25_063013_add_branch_to_delivery_man', 22),
(60, '2021_02_28_080406_add_remember_token_to_branch', 23),
(61, '2021_03_01_112807_change_poduct_table_column_change', 24),
(62, '2021_03_22_055801_add_branch_id_to_product', 25),
(63, '2021_03_24_055957_add_image_table_in_branch', 26),
(64, '2021_04_05_144520_update_product_image_column', 27),
(65, '2021_04_06_040409_create_colors_table', 28),
(66, '2021_04_10_141505_add_colors_column_products', 28),
(67, '2021_04_17_054600_add_point_to_users', 29),
(68, '2021_04_17_084426_create_point_transitions', 29),
(69, '2021_04_11_140138_create_phone_verifications_table', 30),
(70, '2021_04_12_144205_add_column_password_resets', 30),
(71, '2021_05_03_160034_add_callback_to_order', 31),
(72, '2021_05_04_203143_add_delivery_date_to_order', 32),
(73, '2021_05_06_144650_change_business_value_col_type', 33),
(74, '2021_06_17_054551_create_soft_credentials_table', 34),
(75, '2021_09_01_133521_create_phone_verifications_table', 35),
(76, '2021_09_03_194551_create_translations_table', 35),
(77, '2021_09_04_082220_rename_email_col', 35),
(78, '2021_10_12_164428_add_temporary_token_to_users_table', 36),
(79, '2021_11_07_165323_add_extra_discount_to_order_table', 37),
(80, '2022_02_03_092647_add_fcm_token_to_admins_table', 38),
(81, '2022_02_03_175558_create_dc_conversations_table', 38),
(82, '2022_02_03_175826_create_messages_table', 38),
(83, '2022_02_05_161313_add_sender_column_to_conversations_table', 38),
(84, '2022_02_10_163707_change_banner_title_length', 38),
(85, '2022_02_10_172126_change_name_length_to_attributes_table', 38),
(86, '2022_02_10_173534_change_name_length_to_add_ons_table', 38),
(87, '2022_02_10_175418_change_name_length_to_categories_table', 38),
(88, '2022_02_12_154555_create_social_media_table', 38),
(89, '2022_02_13_102927_create_newsletters_table', 38),
(90, '2022_02_14_115413_chnage_message_data_type_in_conversations_table', 38),
(91, '2022_02_15_133410_change_attachment_column_type_to_messages_table', 38),
(92, '2022_02_15_133618_change_image_colum_type_to_conversations_table', 38),
(93, '2022_03_18_102843_add_delivery_address_to_order_table', 39),
(94, '2022_03_18_151825_add_cover_image_to_category_table', 39),
(95, '2022_05_16_171116_preparation_time_add_in_order_table', 40),
(96, '2022_05_26_102619_create_admin_roles_table', 40),
(97, '2022_05_26_113238_add_admin_role_id_to_admin_table', 40),
(98, '2022_05_26_123911_add_status_column_to_admin_table', 40),
(99, '2022_05_26_163239_add_popularity_count_in_product_table', 40),
(100, '2022_05_28_101608_create_time_schedules_table', 40),
(101, '2022_09_10_163335_add_user_type_on_users_table', 41),
(102, '2022_09_11_143431_create_tables_table', 41),
(103, '2022_09_17_104924_add_column_product_type_to_products_table', 41),
(104, '2022_09_17_122002_add_multiple_column_to_orders_table', 41),
(105, '2022_09_20_102322_create_branch_promotions_table', 41),
(106, '2022_09_21_144009_create_chef_branch_table', 41),
(107, '2022_09_26_100058_add_column_branch_promotion_status_to_branch_table', 41),
(108, '2022_09_26_153140_add_is_available_column_to_tables_table', 41),
(109, '2022_09_27_115927_create_table_order_table', 41),
(110, '2022_09_29_154224_add_column_table_order_id_in_orders_table', 41),
(111, '2022_10_19_121218_drop_cloumn_order_id_from_table_orders', 41),
(112, '2022_10_19_121436_drop_cloumn_is_available_from_tables', 41),
(113, '2022_10_20_193809_change_product_type_in_product_table', 41),
(114, '2022_11_20_181511_add_is_active_column_to_delivery_men_table', 42),
(115, '2022_11_24_122400_add_phone_column_to_branches_table', 42),
(116, '2022_12_20_083125_add_identity_infos_to_admins_table', 42),
(117, '2022_12_20_120533_add_flood_road_to_customer_addresses_table', 42),
(118, '2022_12_24_121705_add_login_medium_column_to_users_table', 42),
(119, '2023_01_25_205515_create_tags_table', 43),
(120, '2023_01_25_205742_create_product_tag_table', 43),
(121, '2023_01_25_222442_create_product_by_branches_table', 43),
(122, '2023_01_29_025152_create_wallet_transactions_table', 43),
(123, '2023_01_29_025649_add_wallet_balance_to_users_table', 43),
(124, '2023_01_30_023546_add_multiple_column_in_point_transitions_table', 43),
(125, '2023_01_30_031145_create_order_transaction_table', 43),
(126, '2023_01_30_232645_add_refer_column_in_users_table', 43),
(127, '2023_02_08_172513_add_cover_image_column_in_branch_table', 43),
(128, '2023_02_11_121351_change_varaition_cloumn_type_in_order_details_table', 43),
(129, '2023_02_27_154902_add_price_column_in_product_by_branches_table', 43),
(130, '2023_02_28_130314_add_discount_column_to_product_by_branches_table', 43),
(131, '2023_05_15_153550_add_otp_hist_counts_column_in_phone_verification_tabel', 44),
(132, '2023_05_15_175430_add_otp_hits_counts_column_in_password_resets', 44),
(133, '2023_05_16_000027_add_otp_hits_counts_column_in_email_verifications', 44),
(134, '2023_05_16_144053_add_application_status_to_delivery_men', 44),
(135, '2023_05_16_190456_add_tax_in_add_ons', 44),
(136, '2023_05_17_121506_add_login_hit_count_in_users', 44),
(137, '2023_05_17_152928_add_login_hit_count_in_delivery_men', 44),
(138, '2023_05_22_143319_add_multiple_colum_in_order_details', 44),
(139, '2023_07_24_153033_create_wallet_bonuses_table', 45),
(140, '2023_07_30_112804_add_priority_column_in_categories_table', 45),
(141, '2023_07_31_114206_create_guest_users_table', 45),
(142, '2023_07_31_121256_add_is_guest_column_in_orders_table', 45),
(143, '2023_07_31_121334_add_is_guest_column_in_customer_addresses_table', 45),
(144, '2023_08_01_164756_create_offline_payment_methods_table', 45),
(145, '2023_08_06_121550_create_offline_payments_table', 45),
(146, '2023_08_21_111614_create_order_partial_payments_table', 45),
(147, '2023_08_21_193541_add_stocks_column_to_product_by_branches', 45),
(148, '2023_08_24_172634_create_email_templates_table', 45),
(149, '2023_08_27_145829_add_language_code_in_users_table', 45),
(150, '2023_08_27_150114_add_language_code_in_delivery_men_table', 45),
(151, '2023_09_05_195131_change_column_size_for_transaction_reference', 45),
(152, '2023_11_01_124210_add_status_column_in_offline_payments', 46),
(153, '2023_11_04_163505_add_colun_in_chef_branch_table', 46),
(154, '2023_10_05_104207_add_column_is_recommended_in_products_table', 47),
(155, '2023_10_05_154504_create_cuisines_table', 47),
(156, '2023_10_07_103314_create_cuisine_product_table', 47),
(157, '2023_10_08_114920_add_preparation_time_in_branch_table', 47),
(158, '2023_10_08_135330_add_cutlery_option_in_orders_table', 47),
(159, '2024_01_25_163921_add_sub_title_in_cuisines_table', 47),
(160, '2024_04_03_110946_add_is_default_in_customer_addresses_table', 47),
(161, '2024_07_07_115947_create_countries_table', 48),
(162, '2024_07_07_120233_create_cities_table', 48);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0072a2e7340a189769b396435ad25099d14e2a6e7dcd5d5739261b6c6d367164d3522265e412953d', 93, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:42:11', '2024-06-30 20:42:11', '2025-06-30 23:42:11'),
('016c997e2e7bcfc08a15ca75dbb056102595b2ef1da3d93061914a1cb670360b1f50c87ec3d7cf56', 129, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 21:19:32', '2024-07-03 21:19:32', '2025-07-04 00:19:32'),
('018a1ad7a7932a931cfd0ef7af5a9c2281f9b3e9acc41a6118792bd64d6d69998faae08b4430401e', 50, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 08:00:37', '2024-06-28 08:00:37', '2025-06-28 11:00:37'),
('01cf60957042b02bbccf55094d26dcf2437737049674d0cbea8195cf99beb6837861cc360740dc78', 130, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 22:09:07', '2024-07-03 22:09:07', '2025-07-04 01:09:07'),
('029f6763e31a3a656ce587a76dadb752bd96598e494106167ec571adb4049f976999ca6c3918a72e', 88, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 18:00:55', '2024-06-30 18:00:55', '2025-06-30 21:00:55'),
('02e4baee93f23d76250097df7311d69919ac85245ead5020b5011559bacdcd15465a4657f67724cf', 32, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 21:03:21', '2024-06-26 21:03:21', '2025-06-27 00:03:21'),
('02e9e3e42e8fd87f1a5f983651934676c12f43b8e059478dcbbc66abac0d579ed3799739d4260ca7', 110, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 13:39:54', '2024-07-02 13:39:54', '2025-07-02 16:39:54'),
('0459d11ea1746608400c9a16ef5d900c94002bc23e5c76420c8ed8bad32d8c28eaeac12bb0eb814b', 104, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 18:53:22', '2024-07-01 18:53:22', '2025-07-01 21:53:22'),
('0489a4b93614aecc3fcbdd35a5c69020a042444a134bedb4fe715c98cfd674b12897fee57b1e259b', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 07:36:44', '2024-06-26 07:36:44', '2025-06-26 10:36:44'),
('05b807db1824a0824426c5c15637afdf281dd42ae3e1a4d4e51d7c93389b3db1d0d38fadfadea7fb', 157, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 21:35:27', '2024-07-05 21:35:27', '2025-07-06 00:35:27'),
('0644765743499c20bbce1cdb0334e3266f7ed03d3a13f5d6d81045570a11ca428550da8aa728e866', 58, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:56:46', '2024-06-28 15:56:46', '2025-06-28 18:56:46'),
('09c5e35d9bc0475925de121326b1d7e3a34ecc9d2df5e9d38a1a29fe50f72b19e5c2b7c8d082452b', 164, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:58:11', '2024-07-06 10:58:11', '2025-07-06 13:58:11'),
('09f7a589a88ab6ea2e60829fb1296044367cc021d073dee99e508818d72b6b9399efc302d19625eb', 84, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:46:49', '2024-06-30 15:46:49', '2025-06-30 18:46:49'),
('0a9f73cca519edccfa3252205b617e1147452fd12d50ef12563353d6210225515a354f5ba83b0315', 108, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 05:25:25', '2024-07-02 05:25:25', '2025-07-02 08:25:25'),
('0abea85e4ba1336eb9a9ca7b5ebf120b02e7c3789b35c26166c45bd1fab5cf30383d07cbf92baf7e', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 12:42:10', '2024-06-26 12:42:10', '2025-06-26 15:42:10'),
('0b4ee3fe8cf69440997ceddf694feb7144b5e3e6ee7de9a63f7d463362d97dfd7223d05b1fa5730d', 153, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:33:42', '2024-07-05 18:33:42', '2025-07-05 21:33:42'),
('0c7f2b601ae965180546869fb522ed2538f4c480d6083615df0cda7f8ee07d170213a10b18e96a92', 99, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 14:33:50', '2024-07-01 14:33:50', '2025-07-01 17:33:50'),
('0cd30ae7f8a98f56d15aff8316047d0ce94c3f0d90f9bc59734196ecd66e04063194705bd01363f3', 63, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 17:29:09', '2024-06-28 17:29:09', '2025-06-28 20:29:09'),
('0db8966acd37c0b92095827db2d9b3abef5da310941a7e5234a1ff8f81a5e298a55806a04cdce508', 96, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 09:30:34', '2024-07-01 09:30:34', '2025-07-01 12:30:34'),
('0eb35a77b6f9a8752c940f3ec529df7ba9f4c29d281cd021ac348fd42c90e5a569e2003135ec75e7', 162, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:18:17', '2024-07-06 10:18:17', '2025-07-06 13:18:17'),
('0fb0bac5d1655a5586dc2d9aa6fc4e925bcaa40240930c867ce4eca8b6d523ca924a6cf1b491bcf1', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 13:01:27', '2024-07-02 13:01:27', '2025-07-02 16:01:27'),
('0fb6e7d29188b06c0f340b454a57558d873d2051f5d5ef164c1f14ec7224375d9e8c9571c9d83c39', 62, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:16:07', '2024-06-28 16:16:07', '2025-06-28 19:16:07'),
('0ff9b563fb2eb0486d87e87ba4d1ac21556fd1d0e83acff97d6bd2555b7efb7312d87a6bf8918fd4', 49, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 00:15:38', '2024-06-28 00:15:38', '2025-06-28 03:15:38'),
('109758a13dd92a4c09d4312fd2231f39b3d5f2622cca852bd263f78805ae5ea16e18fc91d0c74a0e', 36, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:22:32', '2024-06-26 23:22:32', '2025-06-27 02:22:32'),
('10ea906e45f7b0a992ecebccf1a13b10e2efc3025915291170c3f2dc95730650170026e7460ec454', 101, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 15:11:52', '2024-07-01 15:11:52', '2025-07-01 18:11:52'),
('115410fd42b74c6a750a18c6f6a5785ce11744cf86921a1785283bb7bfcca32e3aec16473a2607bf', 75, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 19:36:24', '2024-06-29 19:36:24', '2025-06-29 22:36:24'),
('11acd895ca0ac6e864d3eed66585ee23910c90297816e714312775298e41d37fd63de29f7bc2bad9', 64, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 20:05:14', '2024-06-28 20:05:14', '2025-06-28 23:05:14'),
('128e663a92f09c0949386bc162076a900fce2f830681d9e76102072d12b70e6d6797c2c4d4a4e607', 81, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 13:13:53', '2024-06-30 13:13:53', '2025-06-30 16:13:53'),
('134df7f8cbc04acaf94e52bcbb72e733fc45631d13279573d2057f990bf609cd9218b99d07e9013b', 157, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 21:35:27', '2024-07-05 21:35:27', '2025-07-06 00:35:27'),
('140ef873f70d4d0c77b60ed86dac0f1ac080afecf113d614df94bdc958e2d1ee033922c7fc65ccf4', 142, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 23:20:25', '2024-07-04 23:20:25', '2025-07-05 02:20:25'),
('149467d15b8f1f93cd34576a87edba31ccd53c0552b3492b730e595a7a370a3f8f581a335163f487', 82, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:31:07', '2024-06-30 15:31:07', '2025-06-30 18:31:07'),
('153b313658be6e21efa232d4ae281472203856fa6db70f939510ce40f143f262f311d420a9e28fd6', 45, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 22:00:19', '2024-06-27 22:00:19', '2025-06-28 01:00:19'),
('179ebc933a53071c2cf9379acedc9982aa9bfb8397ad7f7a28a098c74b75fe8d208e110e1435909b', 33, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 21:44:03', '2024-06-26 21:44:03', '2025-06-27 00:44:03'),
('17c39713848ca3808cdf979a6d4f018ae616b609b95dce64f7fa7da9b212c0a02054f9ceee181464', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-24 13:02:56', '2024-06-24 13:02:56', '2025-06-24 16:02:56'),
('1892790015b4160a3da69b9cb62be9788df075e63d3179ad1555050eaefaa0efb1f8d9f086cff17c', 145, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:18:00', '2024-07-05 14:18:00', '2025-07-05 17:18:00'),
('18991468947fc449dce4dc48c4864b12a4f1b357ebf53e8dc9cc2b1791789d60a3e4d31932e535be', 25, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 13:13:56', '2024-06-26 13:13:56', '2025-06-26 16:13:56'),
('19f2b582100d9711d269228149dce5a1b6e98b50c1fe3287f7249fb8999e9c8301c33a3ecbb8cee8', 155, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 19:13:14', '2024-07-05 19:13:14', '2025-07-05 22:13:14'),
('1a3208f2c83e2ac7f73dc4ea83daf60d81585d9f41b558b55e654984bd2259e2ae0ff0aa14bd2460', 86, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 16:06:42', '2024-06-30 16:06:42', '2025-06-30 19:06:42'),
('1a429b7e1c66f044e0badfb9041f12bcc9d1824b8493048e67cf34908db53ca81d18335bf95007cf', 20, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 17:31:35', '2024-06-25 17:31:35', '2025-06-25 20:31:35'),
('1a6f93daf102a3aa07a6e8c49fcfffb3ea42d160fc8da8388d5c83ba7677d06313fccc154147eda6', 154, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 19:08:36', '2024-07-05 19:08:36', '2025-07-05 22:08:36'),
('1b38a83522d367c4bc34e8757fdb51504e40fd9d6753722aba996ff1cee7577e7c0d1c55a9f0542d', 139, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 20:56:49', '2024-07-04 20:56:49', '2025-07-04 23:56:49'),
('1b62fe378bb230c7175e3c17622afa949f17410e06968eff22f0b143c8614a770ef3312794fe2afe', 57, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:54:33', '2024-06-28 15:54:33', '2025-06-28 18:54:33'),
('1c2782d2a367e7a86f38ea35eab06201e01ca9e1c97ee7bb97b60fc8acc95d02ddbc4df6e86c4ec4', 97, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 11:41:55', '2024-07-01 11:41:55', '2025-07-01 14:41:55'),
('1f6513e9af946c2cfe416499de0d385c0125aa5c4fcef453a600900e515c5b7a43d4af5e526b14c6', 46, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 22:24:24', '2024-06-27 22:24:24', '2025-06-28 01:24:24'),
('20f02f7916422f6f089efb45e31b43552448181621cd7d16c763d302c5afef1e91df5adda6ac18aa', 84, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:46:48', '2024-06-30 15:46:48', '2025-06-30 18:46:48'),
('2171649ae3ef772fd4d77212f65d30a0dcfeb9543096792132e533f142caa5fa94ae9dc3d949d9b6', 14, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 11:18:04', '2024-06-25 11:18:04', '2025-06-25 14:18:04'),
('21ced032d7a5dd2def59df1f43c91022d79d57851d2b8199b96c79f6da66f22a44498d6b3486b944', 130, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 22:09:06', '2024-07-03 22:09:07', '2025-07-04 01:09:06'),
('232328b2943741b5bf6a8c4e300cc0722fff51307a880a5f6cd2d7ab67ec31522be6c86a7d38fe79', 72, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 09:14:38', '2024-06-29 09:14:38', '2025-06-29 12:14:38'),
('235538266f4fbfc1aa22173934155ecfb21659bfca35a72e30f1606eb1e4b425bfed3b55ea1112c0', 158, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 01:24:22', '2024-07-06 01:24:22', '2025-07-06 04:24:22'),
('239a83ab30ce056c85098c6163e23608da23d1048dd6bba21dd0be31715b6caad1552c3d7e19460e', 25, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 13:13:56', '2024-06-26 13:13:56', '2025-06-26 16:13:56'),
('2428f4c753557678a9cab1774c6a2f16ac3111564f23ee1bb3b840511427e5477a4230383cb97a9c', 146, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:22:58', '2024-07-05 14:22:58', '2025-07-05 17:22:58'),
('25bf6b9115a83ad5970eb11d287b3d42812adff6230c83e82c1d2266b8a4d76690c3474dc206a1c1', 150, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 17:49:31', '2024-07-05 17:49:31', '2025-07-05 20:49:31'),
('25d24b7764becca8cbea514742f573f96f7aab2e3e2e22b17f26be67807566982e427720587ea414', 90, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 19:07:05', '2024-06-30 19:07:05', '2025-06-30 22:07:05'),
('2685f63ebc9a551e6224bdce5b5235c1373f36ba85ea8c37d12a1b069e80dd8e913fbba8a0bbf39f', 17, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 13:15:02', '2024-06-25 13:15:02', '2025-06-25 16:15:02'),
('2793785379df66dfdca095c2ed8c49eee9803a5465d6ada533cf5b693f5585cf074146af52e9efa0', 102, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 17:22:03', '2024-07-01 17:22:03', '2025-07-01 20:22:03'),
('286d5c9519446f6f35464e86c0fc0f8333146cdd5ad76dd9d137d51f9320f14fb6f92ec246bff47f', 41, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 16:25:48', '2024-06-27 16:25:48', '2025-06-27 19:25:48'),
('2ba7b70bead17d82b1b3743cea0ccb65a9590a6a1496546c9ad5357a0b9dabcb1457ada4cbec970b', 113, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 15:01:09', '2024-07-02 15:01:09', '2025-07-02 18:01:09'),
('2c11c079f3a111644fbd39043b53613efd67554d0dc7d4310c1815f44d00fb002c8bc21c52adc65a', 149, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 16:21:46', '2024-07-05 16:21:46', '2025-07-05 19:21:46'),
('2dc989421708c4e1835b0aab051170647e429a1065da98d118fff704cb4e128dd0f5dd6477043665', 10, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:26:21', '2024-06-25 10:26:21', '2025-06-25 13:26:21'),
('2def9e8c1b34a1536fe4ace3275be866283c51dd3daffd76f33bd62a89d0f0c1f3d5bc3ce0e9b413', 105, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 20:40:53', '2024-07-01 20:40:53', '2025-07-01 23:40:53'),
('2e3edc533435c30b1a789be7c50c7a64021901898dce442b1dea0a418a36cdeda2e5fdaa8f759268', 72, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 09:14:37', '2024-06-29 09:14:37', '2025-06-29 12:14:37'),
('2edfa23a82c4c266e433f705b90a2a81d1076da0bc8a2e8ab49cf1a619476fa3670d370a5ebbcba7', 16, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 12:30:13', '2024-06-25 12:30:13', '2025-06-25 15:30:13'),
('2efba0e8ca0cc7a9942183a8e35b0e453b212a95b5bcf8e2a3f7c28cb14f86bbc56f3218eb9785ae', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-05-29 09:17:34', '2024-05-29 09:17:34', '2025-05-29 11:17:34'),
('32bc6f61b88287074af8b3292282df63a0495025705d337b8625794c4083d34d86f75c66a9e1a5b2', 4, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-05 00:12:59', '2024-06-05 00:12:59', '2025-06-05 02:12:59'),
('3331381747683db5d85504b3215f07a8e9faccb5e43d77722fff116c963b2778e94f33350bb736c1', 123, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:24:39', '2024-07-03 17:24:39', '2025-07-03 20:24:39'),
('338d2ded510d02c4799857cba1bedb6148c33a06a4fb69b295af675869bd34de9f944488ef387905', 152, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:32:04', '2024-07-05 18:32:04', '2025-07-05 21:32:04'),
('33c343127db586f604eaa2d91505e33833032b302e44901d66b8d65a147159de7ba51b0830120523', 100, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 15:01:10', '2024-07-01 15:01:10', '2025-07-01 18:01:10'),
('33c5e6e0a0eba3a092822da6df0b166ac703becc8a3fb82b5e02b65dba47b24ca0bfa8261278494e', 164, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:58:12', '2024-07-06 10:58:12', '2025-07-06 13:58:12'),
('34177697dbc4537d4b33dd8bdc992e822e20cbf3b477d1b65835167ad2e783d30341e2c1d2483feb', 28, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:33:30', '2024-06-26 14:33:30', '2025-06-26 17:33:30'),
('342bf24615a8695a66e2bc3b58b7cfaaeed3c76cb8e7c2a4f12b2bccbe208a9dd3068398e6252737', 43, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 20:52:22', '2024-06-27 20:52:22', '2025-06-27 23:52:22'),
('348e43928c389c2025c6e13e22a5e755c11cf937a99a06e1ecdfd02c6d24be38fddd10f69fb8a8c6', 69, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 03:24:13', '2024-06-29 03:24:13', '2025-06-29 06:24:13'),
('34d18e989a5c04099a25b8d8ba19118b8fb05f8c512f8975a648f97723d1eb4064a9672eeaa55dc6', 10, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:26:20', '2024-06-25 10:26:20', '2025-06-25 13:26:20'),
('35b070db7c8ebc178cae806aaec681ef09b50515be5fece6355051c7180be5bf07ce765200c0c07d', 4, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-05 00:13:00', '2024-06-05 00:13:00', '2025-06-05 02:13:00'),
('35ce31222f40857ee95e0158ee146181b03e0ff52503ac1990b3d883a7d1cd3fbf548aee028ec8db', 95, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 23:05:04', '2024-06-30 23:05:04', '2025-07-01 02:05:04'),
('36173ae7a00ee011aeb9f0c284e5f95d4424e0158c7c0868165b4e275b024d626debc63d311755f7', 128, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 20:02:31', '2024-07-03 20:02:31', '2025-07-03 23:02:31'),
('36a96d18240971c2fcc2ec33b072dd581c5d42db45c6f3b491cfe869421151bd32a3d6f9cc8fefbd', 131, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 07:40:43', '2024-07-04 07:40:43', '2025-07-04 10:40:43'),
('36ee5702fa95e98fdb6adbeab6b97c98d64ed041c91ef0e2e2a15054133b9e307788bb0ba86f8a6b', 116, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 17:48:14', '2024-07-02 17:48:14', '2025-07-02 20:48:14'),
('383eb16dfb4083528301eb0335c55895d3396294b855c82f11c87dff37864d52d41eb923f66bb55c', 76, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 20:33:02', '2024-06-29 20:33:02', '2025-06-29 23:33:02'),
('3866ca2983d712f540128153c7e98697119b610c7a36fb4c2c3843e77c99780432ee0cab3b348ad3', 104, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 18:53:22', '2024-07-01 18:53:22', '2025-07-01 21:53:22'),
('39ac3db4c78d1cdc09ee2e9f3a2d9bae18b609de2e3654ec16615684c7beeaa76a6b06ad8a449e35', 158, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 01:24:23', '2024-07-06 01:24:23', '2025-07-06 04:24:23'),
('3bd26335bb8a993cb37d74a4686f8d5b1f567b1b6f8a612f8c99bbebaeb3f114e5fd558687be2ce9', 141, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 21:39:15', '2024-07-04 21:39:15', '2025-07-05 00:39:15'),
('3c41bd7e3621172c71b140153f40acdd7077a5881de614066256cabbfd81a686af8fdd435d632314', 90, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 19:07:04', '2024-06-30 19:07:04', '2025-06-30 22:07:04'),
('3e7c9b5631a02f9404e1b5267981d46ce01b113b68d854b95c78cc13ec2991dfe0c8d7808108e5b0', 59, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:00:30', '2024-06-28 16:00:30', '2025-06-28 19:00:30'),
('3eaf70256849605026a31826f3d86d72c315dbfa1a6199e90501f64294f3f98d50acc88d2b830cb3', 86, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 16:06:43', '2024-06-30 16:06:43', '2025-06-30 19:06:43'),
('3fcf83a006a6c31956cd4f554dea9e0c0a026ff0e92f64828c8c8c2de9e13fb0dbb5c6b369aaa3f9', 126, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 19:11:41', '2024-07-03 19:11:41', '2025-07-03 22:11:41'),
('400b7e662562d2ee23c4f168034c14993a8a22638d8f22563aa864bc0d603a6cbf18601c5c04c746', 73, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 10:49:26', '2024-06-29 10:49:26', '2025-06-29 13:49:26'),
('41d0d7a88d1588e5e781c512525249bad64c12e7f76421a94b942767775b0cc12f0f25589d4f9e83', 132, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 11:42:37', '2024-07-04 11:42:37', '2025-07-04 14:42:37'),
('42a94f8f15a175ccdc4fd8aa46209698e3247b1ee21458488cd4d0854c43ae71d0a14667ac31e62d', 53, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 13:25:41', '2024-06-28 13:25:41', '2025-06-28 16:25:41'),
('42b655c48faa087e81bd294d9cf882a83de37415d438ec93e4b4ed0c1930537f398ebb6ddd86efd8', 116, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 17:48:13', '2024-07-02 17:48:13', '2025-07-02 20:48:13'),
('4353f38a428821d607c902aa716b32924f554d88bb8e16e4ff6db728e2636c4070d9a8d722e48154', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-04 19:14:31', '2024-06-04 19:14:31', '2025-06-04 21:14:31'),
('43abdb961d125973e748ac28a14bfde287e65381f1ddfc88a99f7d8a3755d3581b7b4ac0ea47555a', 120, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 08:16:57', '2024-07-03 08:16:57', '2025-07-03 11:16:57'),
('44e984183faee07d69f977f36fc629ad91302e4d4bcc70415394d37789ea3e0808142c6244dde0c9', 156, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 20:57:04', '2024-07-05 20:57:04', '2025-07-05 23:57:04'),
('44f52cd51db6ee129214c414992800282655c37b32cc43b54dc1b0432f7388eaf6073b0ea717f15a', 123, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:24:39', '2024-07-03 17:24:39', '2025-07-03 20:24:39'),
('4570959adfc174758ee0ae1ca4c2459900ede31e8d82f43b61a6ccc04a30156f372371040faed1ca', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-24 08:14:21', '2024-06-24 08:14:21', '2025-06-24 11:14:21'),
('462147cba694589f6fc58897f2a754b20a6ff83e87b005ca66bce647b74b4abc6d531a7c3df3151a', 136, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 16:38:15', '2024-07-04 16:38:15', '2025-07-04 19:38:15'),
('466c56c326754e40b20b66d79cd6bb50540634edf66f818d8d3addee487687b6fa6ef8de542227ed', 52, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 11:46:39', '2024-06-28 11:46:39', '2025-06-28 14:46:39'),
('47bdd114779119751798127f78bf7fb24aa4add8514336181bac2a388a3b497106714536c8147b13', 48, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 23:53:59', '2024-06-27 23:53:59', '2025-06-28 02:53:59'),
('48eb6f1f3a0f1c2feb2d84dbf0fddcff4784209b9b671010a2928ceac030c7cdfc41d1c3ea71c3c0', 28, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:33:30', '2024-06-26 14:33:30', '2025-06-26 17:33:30'),
('49300f55591aabc1b8fe5fa5cb31891076c9c6ff5d51d7e2395e23938f5410790cfeb3250231d949', 13, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:56:29', '2024-06-25 10:56:29', '2025-06-25 13:56:29'),
('49e4bce2bb0958ba2c44ae2e123f4ca2bdca5889c3c04bc8fe3beada87fd2ae56c27398406b3ac51', 59, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:00:31', '2024-06-28 16:00:31', '2025-06-28 19:00:31'),
('4b6331330fca1f31887d5a806908c37df68bd62410250bf5629edab7627ef6714ed277df94a805cb', 74, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 17:45:33', '2024-06-29 17:45:33', '2025-06-29 20:45:33'),
('4bbba7cb76f0a6894ba79a3f6febbb899170015d91e9d455474677a377438a55a8fdc039fec2c422', 56, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:14:30', '2024-06-28 15:14:30', '2025-06-28 18:14:30'),
('4c0625c80a9ceebcca2e3e26a3ce16f91c02cef721cebb99b10507252b8fae605a7865f9aee08410', 121, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 09:29:04', '2024-07-03 09:29:04', '2025-07-03 12:29:04'),
('4c7577493779f302033c9f0ccba6d3faf848df2e15462a293d39812919240e57257c81c84286cdc7', 9, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:24:42', '2024-06-25 10:24:42', '2025-06-25 13:24:42'),
('4c833f1b0edace30a7e2caf8e7d746801d91c26f404317cf35d040be44cddf27fbd834b67eb7877a', 124, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:45:01', '2024-07-03 17:45:01', '2025-07-03 20:45:01'),
('4c99e512ee5fd517e44da51dc7b590928092ce31c7fecc5457bfa7c840ba718e73d8421c84c715c3', 89, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 18:39:46', '2024-06-30 18:39:46', '2025-06-30 21:39:46'),
('4dcb805285aaa6ebc4bdb23249122d994e5470a034b29ae739848d1146a80a21d5592de646477441', 54, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 14:22:08', '2024-06-28 14:22:08', '2025-06-28 17:22:08'),
('4f7a32f926026d1f6fa468208d4cf5aed2a6eb4bcd5d1b154b397f04e8a2950f6fe8570920865eb5', 27, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:33:10', '2024-06-26 14:33:10', '2025-06-26 17:33:10'),
('50f533790c7625ef83c94650911e740d5395a0b3952407def90c17af8f5c400176a2d1600e42c4cc', 121, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 09:08:17', '2024-07-03 09:08:17', '2025-07-03 12:08:17'),
('513f89b6fbe5cd8c83139d406c0b17a0f7515430340681a192925b1cd61dc612bd604e19ad52a77b', 64, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 20:05:15', '2024-06-28 20:05:15', '2025-06-28 23:05:15'),
('53bd47a8112d5fc6023bc1f9d0918c7c6a0ec3c422f6cad4e4904dd5cf5a18b0c38a5f1788ed8067', 144, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:00:45', '2024-07-05 14:00:45', '2025-07-05 17:00:45'),
('5412cfff8f2e2950c609c79849e66442a3d818ee7f7818213eaecc5059a6c5616eb6535cea35e48d', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-24 09:07:27', '2024-06-24 09:07:27', '2025-06-24 12:07:27'),
('5488cd4e4a2e41a44daa3cfe1a641283109e3fc59e0a21ccaf87d2b56d3a957bcc2cf156fc32f1b5', 156, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 20:57:03', '2024-07-05 20:57:03', '2025-07-05 23:57:03'),
('550c051a8711ad8f66508b5bc5f3132fb5a6104d092b8bce5c9263a5aa19ffb95ab63766a2ef11fb', 87, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 16:52:10', '2024-06-30 16:52:10', '2025-06-30 19:52:10'),
('57e62823d3c1de87b7f405421d1a733d8113172d18ffc675665db8ca8910af414f67be74a1b3bfa7', 115, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 17:32:13', '2024-07-02 17:32:13', '2025-07-02 20:32:13'),
('59bef73784715ec643339fffb2e90ecd289fd1ebcdc51a452a0ec3454fffb16b81854a8e4c5e28ed', 27, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:33:09', '2024-06-26 14:33:09', '2025-06-26 17:33:09'),
('5b92d9eb783fd87dbd66d9dde35061594d372b48e5a6228858a8c4d82a5207ba7a4d8d534e1031c3', 138, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 18:30:46', '2024-07-04 18:30:46', '2025-07-04 21:30:46'),
('5c0f90d64c82bc83cb1ae5fd8cf48ca779383de927ce8165b06b4f68098c1f26d19250239f6fdc06', 15, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 11:43:33', '2024-06-25 11:43:33', '2025-06-25 14:43:33'),
('5c426d1a51e0aadb0a19d0e4b43df929e3f0fecd5a23def998ee738048b2c4af2d085922333067fd', 20, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 17:31:34', '2024-06-25 17:31:34', '2025-06-25 20:31:34'),
('5caa24ae80250bc40281b5a819cde6d0af51b9d65f709ef91683d99a8e4e54906d3edaa47d0d0ce3', 112, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 14:27:04', '2024-07-02 14:27:04', '2025-07-02 17:27:04'),
('5d8ed2817a79a6f9f8d18f62f0ebd26c332fc4e2706f86534db0d228d02b053b6c1639d4d32f61e6', 112, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 14:27:04', '2024-07-02 14:27:04', '2025-07-02 17:27:04'),
('5edba60280c5923822a6c5d8ad995b45b7479450d3550bc9cdb5736984837a20b1315814cda4c75e', 152, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:31:27', '2024-07-05 18:31:27', '2025-07-05 21:31:27'),
('60a3893299c9762ee1708504ad379c83b203cfc4ec1c2094816b21a01992c52cb1bfca6b89397d37', 101, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 15:11:52', '2024-07-01 15:11:52', '2025-07-01 18:11:52'),
('60ffab0fd3dafbe660492644b81038f2ec8313c7bf5f9ed06c98df62a5a23e1cfb266d3330753070', 140, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 21:21:44', '2024-07-04 21:21:44', '2025-07-05 00:21:44'),
('61245fbc682254bb59d59f8550981d0f40eeb0bbd28fd36c5136e420050b8c378e8bc726b0c6d8a1', 95, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 23:05:06', '2024-06-30 23:05:06', '2025-07-01 02:05:06'),
('61eb7ce430604174d8d6ded85a68c361199b085036756fb48ae45a72916d9cbcdbdfd0378c18a739', 69, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 03:24:12', '2024-06-29 03:24:12', '2025-06-29 06:24:12'),
('6259d1da4b974b0a0feeb3646fd899f2267b04e97917cb4f283d17b039fe3f911bcba45def38f14d', 79, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 12:09:54', '2024-06-30 12:09:54', '2025-06-30 15:09:54'),
('63ba5a7253d3b307d08222b8a8537f8d8215bc9f7ee9249acb61c9e54d65aff6e607b9634d8d893a', 94, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 21:58:53', '2024-06-30 21:58:53', '2025-07-01 00:58:53'),
('64542a497b89d69ad31b1894804a1625e10edf5cfc2d0e99f7203dcd578d9eedd378f51595d59dcd', 148, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 15:21:11', '2024-07-05 15:21:11', '2025-07-05 18:21:11'),
('645ee6a86e929e5d39949ab0c4e96a01cac2f25d6f004ecf7e995b79899cca65ee59c72ddf8d2c0d', 154, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 19:08:37', '2024-07-05 19:08:37', '2025-07-05 22:08:37'),
('648787be7bddaba93e9c2d15cf54e2ed134655e321d968f3a51a4b8e7cbfa955fed66336148bef66', 34, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:21:17', '2024-06-26 23:21:17', '2025-06-27 02:21:17'),
('64f93cdb761d11ad1a9cd6e39517c07d63f2c6a39b3deca06c7fdf32d91311e24c4a62de196aa6a3', 52, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 11:46:38', '2024-06-28 11:46:38', '2025-06-28 14:46:38'),
('65047f3acdd7836c11ca6d93470bb9bd906db4d1a255cc8ee8420fe594e2086daac8a3c76d408512', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 02:19:41', '2024-06-26 02:19:41', '2025-06-26 05:19:41'),
('6523b006d921ea3ab72a24619344852f4a24b31182853f65714ae30ec08989d91d3342f0966d7a24', 46, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 22:24:26', '2024-06-27 22:24:26', '2025-06-28 01:24:26'),
('654d4681971c80cf4144e8b770c623c40d18a84c4a6dcf3aaa9983f7b5ec8664582c9463ec956308', 114, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 16:32:38', '2024-07-02 16:32:38', '2025-07-02 19:32:38'),
('6644815c911647409edcd557bca159924b885204c7c27c6bfb9d3fa4b57f64d138fb99f2946d88ce', 76, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 20:33:03', '2024-06-29 20:33:03', '2025-06-29 23:33:03'),
('66efcbf538838e57e75dd82a902071446a099ebb3c9533228108b26133ab09eddca6ff8469f75c2e', 19, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 15:51:57', '2024-06-25 15:51:57', '2025-06-25 18:51:57'),
('6852a72cad2088ea0b87bb029c697a82df042caba2104418917f5cedd231687aa74611c2faf6181d', 113, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 15:01:08', '2024-07-02 15:01:08', '2025-07-02 18:01:08'),
('6904e71128d7c2de2780224159e6888583e3a358e3792f363b6e8edcc88bbe5f10a95822d438eb96', 38, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 09:39:06', '2024-06-27 09:39:06', '2025-06-27 12:39:06'),
('69243bb4923e6a12c18a06d4d0523a76cd29296db8103ec71f7470290621033122dd009701cd9877', 56, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:14:31', '2024-06-28 15:14:31', '2025-06-28 18:14:31'),
('697fd5b10c1bb1affc7d9072d62b97c2bbc0dee9951a91e9ce5a1426be78dbad0e29dfef46b69818', 24, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 12:15:55', '2024-06-26 12:15:55', '2025-06-26 15:15:55'),
('69aa8e158fc71d6c24ded07424fc77ed6fbfc5a5b973404f4d4ef91d92dc76d106bea1295714f865', 142, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 23:20:26', '2024-07-04 23:20:26', '2025-07-05 02:20:26'),
('69de70b461501ee3a5864b44bcfee5fe8aac66d43f46d98bb42fc8165bdddcbe8a49df0e9238fbd0', 26, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:12:00', '2024-06-26 14:12:00', '2025-06-26 17:12:00'),
('69f77e3eac6cc161fdf354d102f2af2171862a6fa8eda76c60d93e30390d2acd37756804a0d6c2ad', 100, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 15:01:11', '2024-07-01 15:01:11', '2025-07-01 18:01:11'),
('6a4ba596d812f1d9354a97e80d399e57e4ea067b253c7951ad6d7c44c49fa2b376c25487c4415557', 17, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 13:15:03', '2024-06-25 13:15:03', '2025-06-25 16:15:03'),
('6ccdd686f78dc8839f9799b7e32f0110f2c8e58d608f942cdbb2266c217d4f1ae892a72053f2e1f4', 108, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 05:25:24', '2024-07-02 05:25:24', '2025-07-02 08:25:24'),
('6d93e86007cc43928bfc0c3e3c90ec07ef3b2481ba3a5edec2d8036edae2453047d5b69244fdebb9', 109, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 13:22:58', '2024-07-02 13:22:58', '2025-07-02 16:22:58'),
('6e4892f24bff876d92cfafaad55719d105fa631f18b453a08ba92cdb4a0a71525d0e40699e93ceb8', 133, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 12:31:57', '2024-07-04 12:31:57', '2025-07-04 15:31:57'),
('6f68e6cd1f894bec6458612640644424135edb55dc129730705d7fc2811ec913de23f431de79ec31', 42, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 19:33:54', '2024-06-27 19:33:54', '2025-06-27 22:33:54'),
('70346e1382a924a7a1db77312690adddbdb1e5e8c30af0636222c7ee652872aa10486c767ff13d4d', 51, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 11:31:01', '2024-06-28 11:31:01', '2025-06-28 14:31:01'),
('70e315df1ecd6d53fc1ea0668ce529c31589d8545e049421b70f3cd4aa5e5f5237083e83d3ac4b77', 122, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 10:52:15', '2024-07-03 10:52:15', '2025-07-03 13:52:15'),
('717f8da4c13d3d6b266f932f3eae767aad5e548b6661bd61b60fd896f6259a8b8507c5d082cf3443', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 07:56:58', '2024-06-26 07:56:58', '2025-06-26 10:56:58'),
('723a7b01a07c663bef8ca57936660e4734b4e336b410691373af940d31e70c83b2bb27c1b7defb87', 136, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 16:38:16', '2024-07-04 16:38:16', '2025-07-04 19:38:16'),
('73309a1d97a39a4ad82cd1a29f4ce41c4cac2eb493a71eb87ed34a8c17eb82677e8976103033d112', 18, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 15:06:28', '2024-06-25 15:06:28', '2025-06-25 18:06:28'),
('7349ebd41f0c47071d62ca623438a544393c1ae9741c917008aa7b6fef27fba9e1cf33cf6a387bc3', 13, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:56:28', '2024-06-25 10:56:28', '2025-06-25 13:56:28'),
('7422e19015f40d61ec9b39917f08b0795d7b0e3c17ca176e72be4e8f5a41998ec247688b11844cbe', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 11:35:58', '2024-07-06 11:35:58', '2025-07-06 14:35:58'),
('74cdb04ddcf7e2de74f78583f9b72ac5d3493cc6e1f27e07f089b2bdf092cace01448e6a4db72060', 117, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 20:26:17', '2024-07-02 20:26:17', '2025-07-02 23:26:17'),
('74e6941ffbdc5c7822b05ebbe705552e8e5b5c461a999f1ec08468e8997a2a999b6dd20744824bd6', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 07:50:59', '2024-06-26 07:50:59', '2025-06-26 10:50:59'),
('74f170c0725ba06238d65af3c3aa23c64b698b6ff7e52ac3f282f09bbd03147ddc4ec6f26d7be33d', 87, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 16:52:11', '2024-06-30 16:52:11', '2025-06-30 19:52:11'),
('7528a2bf2b30035ae2d66862f12db5fe5e51ea986ededeeb1216e3ab629a75d154c591345ec6d2e1', 107, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 00:30:48', '2024-07-02 00:30:48', '2025-07-02 03:30:48'),
('75a7429e8cd70c96236c8050ec85a2258c29ca4c98e56269e7f3a70b1c54058310a86badd56ecc46', 103, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 18:41:31', '2024-07-01 18:41:31', '2025-07-01 21:41:31'),
('75d5c1e73b6f6ee4e0f527bca16b0b87d60767ff0e97a487295ceab5fc79120b26786731fbf690f3', 39, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 14:05:48', '2024-06-27 14:05:48', '2025-06-27 17:05:48'),
('78601bba59b17e6a14718e733e6d37277682721eb39ee645b22d97c748d1f3a30a2ce368cd12abb3', 125, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:58:41', '2024-07-03 17:58:41', '2025-07-03 20:58:41'),
('7a00f1de218b4d4409fd06094661207d2a8666c87dbef44c5fa45d5d6079e11a695eed5cbda47689', 7, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:10:21', '2024-06-25 10:10:21', '2025-06-25 13:10:21'),
('7a73a59cf1d12623ff2647d73c0c03b7c35b24611f7c02bbe03359bff56d2838d566d14c245e8a79', 31, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 19:39:11', '2024-06-26 19:39:11', '2025-06-26 22:39:11'),
('7b28d5a9708c972c3b055a3fe3e2b009b95708c7f85ac96b7eae96be92cd3408a129ff3c52cc867f', 55, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 14:38:52', '2024-06-28 14:38:52', '2025-06-28 17:38:52'),
('7b64a03eb48e84cfd47cb3d28af13d62f85aef618aa6ed89a59ad93d7b9e66a2e7860f63860ba79a', 88, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 18:00:56', '2024-06-30 18:00:56', '2025-06-30 21:00:56'),
('7bf9d2a6f7daeaa96668b4d43414e337a72a819ac5d249c4572106dbdc66449a2cd68736aec408c8', 121, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 09:08:16', '2024-07-03 09:08:16', '2025-07-03 12:08:16'),
('7c17b3154b7f5deef33dc431e0fe692facf4eab89efa7ce3ccda1752e86eb396915c8d4451640904', 79, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 12:09:55', '2024-06-30 12:09:55', '2025-06-30 15:09:55'),
('7c3195d4ce7a2a6458aaf13b9ee7f04f88d6a1463b07e115701adb8fe66046c2b2d48256102c4183', 141, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 21:39:15', '2024-07-04 21:39:15', '2025-07-05 00:39:15'),
('7c99dcf96e5c0ccfc26027017e9803c9fc002cb704dc065f2e1adeacbf295a1b67dad0c4adb75c2e', 32, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 21:03:22', '2024-06-26 21:03:22', '2025-06-27 00:03:22'),
('7cad44138616c92b09a44d90f0fecf83d85956aee32dd0fe91c2bb75cbd965160a0780f23339ddc8', 96, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 09:30:33', '2024-07-01 09:30:33', '2025-07-01 12:30:33'),
('7e1014b3a4f3bf9fc0b5b7ba798236b8fc9060182c234bf10aeb69c32959e7e28896618edb6ce3e1', 48, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 23:53:58', '2024-06-27 23:53:58', '2025-06-28 02:53:58'),
('7f2bbc1c6eef91e2242cb63e255941a31ef071c2e7ede7a8e15c0a63001f7bbff5868ea595a3b9fe', 55, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 14:38:51', '2024-06-28 14:38:51', '2025-06-28 17:38:51'),
('80eeb206c1360ad7e67e71cb5160c47c6146a06b86116c221a1adeff3b43e9c203e95a58cacdb653', 40, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 15:28:13', '2024-06-27 15:28:13', '2025-06-27 18:28:13'),
('8171e67700d432f4e520134ecb579648f4eb30f2a26a5bcbd443dd43bafa70f6cdbef3cfaef50d5a', 66, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 23:06:16', '2024-06-28 23:06:16', '2025-06-29 02:06:16'),
('8268c5791def746e9c8fb0916172aeb72f6e97211f210da2b02146fed14e3c41df627381ea99eeae', 145, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:17:59', '2024-07-05 14:17:59', '2025-07-05 17:17:59'),
('8299d0a51a20439956366491210fb284c43bbc2e669521563282d84d34f7fe9291e3f12a54bcb47b', 34, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:21:16', '2024-06-26 23:21:16', '2025-06-27 02:21:16'),
('82c9b38b6da46a1d53777c2ddd82d53a3e9fe566e54a1bcf155ff6bd1ee0c22af2594ac3b7093c84', 35, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:21:48', '2024-06-26 23:21:48', '2025-06-27 02:21:48'),
('8363be5a0481058be38b637346710185609916eaf1c4ecf19f7f0cdafe3d1c68f78cda1a4691dde5', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-02 10:31:39', '2024-06-02 10:31:39', '2025-06-02 12:31:39'),
('84f9cb8faaa7e405e7b2f8c1f8dc2bdd50625d965d80f6208322bae447e1f84d6b41530f54f75387', 65, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 21:57:11', '2024-06-28 21:57:11', '2025-06-29 00:57:11'),
('852aa2090626a88bdd1b5c036f5ff75e6415c85d0365ae13d57c7f8137465e651d6f39076bdef06f', 54, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 14:22:07', '2024-06-28 14:22:07', '2025-06-28 17:22:07'),
('8562f3595d28b1702afbad57a56cff023ac486b9d4f34f95789826a5477b30c3e37029d7453bf277', 39, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 14:05:48', '2024-06-27 14:05:48', '2025-06-27 17:05:48'),
('8564b1d41c44daa168fbdaea3d6606cbabd8996ef35d27e3b40fa7c6fb52956c3cfcc34afeef4b9b', 163, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:49:22', '2024-07-06 10:49:22', '2025-07-06 13:49:22'),
('877d3a4579b3018c1e0612670ede283207902589af661649f5cda03876ca7f616c1987d15748fede', 26, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:12:00', '2024-06-26 14:12:00', '2025-06-26 17:12:00'),
('89fcd68cad04424a1b40b346a141bd1eb13e761b7ca55389a0873881388efc8853f4a0ee3faf6ce7', 129, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 21:19:34', '2024-07-03 21:19:34', '2025-07-04 00:19:34'),
('8b14d56ebaa9eaef86657891f1a584ddc06259a85b0c89be07a5acdb5b5d0a88a4cf67b0e0eecb18', 120, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 08:16:56', '2024-07-03 08:16:56', '2025-07-03 11:16:56'),
('8c2355f2c9e77b092176a491e2ba47cb9b988830b74f8f7391655615f9a779c63e3ece1bea40229f', 155, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 19:13:15', '2024-07-05 19:13:15', '2025-07-05 22:13:15'),
('8d3f0d20b372d055323a629d270fee0bcd08e484ef18b091f0db6061e87383b7599a01f79076818e', 11, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:26:40', '2024-06-25 10:26:40', '2025-06-25 13:26:40'),
('8dde364646fb120eac9d13c248cfecc9819314c8aa27fec20a2c910088a5a1487c60a85cb00d43bb', 135, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 15:53:52', '2024-07-04 15:53:52', '2025-07-04 18:53:52'),
('8e983d4e8d16ac17ff8806916d42b572999231b98201353e7e821e706497bdfe0b838da8d3ad1a44', 161, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 09:23:48', '2024-07-06 09:23:48', '2025-07-06 12:23:48'),
('8ebfc5f854f4422ae851ca2642f5d3d33bad9ff3c2e423dbb58a5a464d29457aed52e7523d2de5da', 160, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 09:10:56', '2024-07-06 09:10:56', '2025-07-06 12:10:56'),
('8fd2514ef702ee9a7a7e275f4f26138a6c58378f6d9c04131f1a56f5fdb48d52dbf74b852afa7a03', 70, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 03:26:41', '2024-06-29 03:26:41', '2025-06-29 06:26:41'),
('9122c00ceb33f83e72fe0daafbf71bb1e973f028edfef34ec84475d6c452d767bed658ae343e17ab', 92, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:12:03', '2024-06-30 20:12:03', '2025-06-30 23:12:03'),
('91241369a8be0c7d67bd7ee234ab2fee45bcd2d7c31eba1d138c2e5491db3328cb6b09db58d9de6b', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-24 09:07:27', '2024-06-24 09:07:27', '2025-06-24 12:07:27'),
('917e5315585718c7c3c2b23f3c258c6abc1be74fdc2c56caf7b6dc67591deddd7b71b08d8e72543f', 118, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 21:38:06', '2024-07-02 21:38:06', '2025-07-03 00:38:06'),
('918b664c5f5601c0d989766de2a62eab3f0874c54e97ba2f675dd7750e409b7a4b7c421ef67ed9b1', 132, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 11:42:36', '2024-07-04 11:42:36', '2025-07-04 14:42:36'),
('9196667f542955a8006b0c7ee9b1656980af9d5f8e847880d0375c52434800341ed7f12db230c899', 68, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 00:51:53', '2024-06-29 00:51:53', '2025-06-29 03:51:53'),
('91a27b3881dbce225648399fd486ee499e2d1fcb00262aaeeecd478b88e2b413dde6d8cb5a406361', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 09:56:21', '2024-06-25 09:56:21', '2025-06-25 12:56:21'),
('9227181c10a218ec440845cf7476f4e294fa580f18a648325f04cf54707cf224727db9428885b7bc', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-05-29 08:14:36', '2024-05-29 08:14:36', '2025-05-29 10:14:36'),
('928fe0b54e2d7f81bd1536245ca68cec595100b878550fd17f2f45356fb52c0f4a0f0b83dfcae85a', 31, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 19:39:12', '2024-06-26 19:39:12', '2025-06-26 22:39:12'),
('93ebba36e8a2d3a18eda9dd208ff4e4a9ee4b04831e4f0a0aa0d477f18b339c1cc82e75c579edddd', 106, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 20:48:27', '2024-07-01 20:48:27', '2025-07-01 23:48:27'),
('94c02b37961ee65532e8624280175bb3954ff097d747bb0b580623856ae5ce10bbc9a6f70a4e6c28', 73, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 10:49:26', '2024-06-29 10:49:26', '2025-06-29 13:49:26'),
('9580bac1fcf1c80e7a6b93360c0ebf145b11f8505e72e26732e47a30ea90401079757cf48626ee36', 163, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:49:44', '2024-07-06 10:49:44', '2025-07-06 13:49:44'),
('9598722bc13663553b13faa003b77a6b2d22ef0ac9d170c518e5a881baefb320c998ede3ac8ea461', 143, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 09:09:02', '2024-07-05 09:09:02', '2025-07-05 12:09:02'),
('970ca75cced07670a873d21369254ba950aec17e7a8f0030dc9562caf11c7c35e7ebc6514b11a371', 148, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 15:21:12', '2024-07-05 15:21:12', '2025-07-05 18:21:12'),
('98a12154406585cc3026a3b8cda5e05fa4bc5b0037f36957100fef478fc7a73d9fdb83bcfb4a70e3', 75, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 19:36:24', '2024-06-29 19:36:24', '2025-06-29 22:36:24'),
('990686e5b4c692eef4f55010e1422676033dcbc38ab1085f9f67ee4a8edff8342cf8f34f7cd6390e', 15, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 08:40:20', '2024-06-26 08:40:20', '2025-06-26 11:40:20'),
('9a0b2ab5a976f463fe7e974295560b6c1e24b3993b8bf0c36da653c7091d3ab71a218ce4caec549b', 67, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 23:14:25', '2024-06-28 23:14:25', '2025-06-29 02:14:25'),
('9a4857a653d8d98a65bcdaefe09ae3d4265ee05e8e96db1ef301e31bd0de155d31251c945116a312', 85, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:54:29', '2024-06-30 15:54:29', '2025-06-30 18:54:29'),
('9a9e84ac50bbb2c818048246c7d03dbb683aabf34e4c2808d2916e2c87164c0eb752f585aecb43e7', 15, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 11:43:32', '2024-06-25 11:43:32', '2025-06-25 14:43:32'),
('9acfc9c5b41b4d568d0b716b6ae332112caf4045c30cd2f8da3c4cce9cde0da1182be7136f4c74f4', 23, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 12:12:40', '2024-06-26 12:12:40', '2025-06-26 15:12:40'),
('9c30764ac20d82ace8656ed74535c3777e35bd8d918667cd2646da7575b9a86e0dbc184f5a582a02', 29, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:50:34', '2024-06-26 14:50:34', '2025-06-26 17:50:34'),
('9cba4ef27f0712d4529d5684e4c05295e01b05d3908107f1d8919a490d64eb7c3f6c4b268407d3ae', 146, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:22:58', '2024-07-05 14:22:58', '2025-07-05 17:22:58'),
('9d155b2b5031bf66f88d5a9de01a5271f6e288792817ad96b26954c83937d5d0d72f5283a953b526', 127, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 19:32:48', '2024-07-03 19:32:48', '2025-07-03 22:32:48'),
('9d5415c1adc4250787c55ae0f23233c2c3e3af8a381f8c05f0b31660939dc5e29d65c533672af538', 3, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-04 20:15:46', '2024-06-04 20:15:46', '2025-06-04 22:15:46'),
('9e01cf48bb7173de6707400e16e73f79450d71391b2d3d4154978cee014679bfdd14cdf1eac24649', 91, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:10:22', '2024-06-30 20:10:22', '2025-06-30 23:10:22'),
('9ee9683692168cf1bee6d14f94ec0c2c07e6fd27c8747ad36e604e5e3767b27f4311b6cd5839408f', 50, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 08:00:37', '2024-06-28 08:00:37', '2025-06-28 11:00:37'),
('9f7ffd04749c759cba1b1964ef060ce9a9f662268fea913f280b1a88ca2d4c8efe6dc63ee75e86b6', 44, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 21:10:10', '2024-06-27 21:10:10', '2025-06-28 00:10:10'),
('a07c58f136773cb0aeee3b3da02c350b274531b20ab784e02e5ea90e2d8b8e2f2eb0f6422b92c89b', 45, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 22:00:17', '2024-06-27 22:00:17', '2025-06-28 01:00:17'),
('a094f383cfdfa3a3f4ac852d278bf111edc871744a5b0a8947b484f846aed50879260aef96a1b936', 162, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:18:17', '2024-07-06 10:18:17', '2025-07-06 13:18:17'),
('a1a06fccc4b69f2640ccedc4972fb363e0af8fcd05abe6f5baad95c5847ba48f4f9b01327bd5bd8c', 71, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 05:41:39', '2024-06-29 05:41:39', '2025-06-29 08:41:39'),
('a1a406a3565cd814addd8ea03c1480d052fb4e2ab4e5bcfa0590400227b24c63b72cd27a5261d5e3', 42, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 19:33:53', '2024-06-27 19:33:53', '2025-06-27 22:33:53'),
('a42e502c3e3713990f32b5410b4db44d18d2a39d7ba37ea5355d8706db47ecbf9bbea920c9e386de', 109, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 13:22:57', '2024-07-02 13:22:57', '2025-07-02 16:22:57'),
('a44f3acab9620b450f872724792a2cdc63264f5e303f9d8bbda6b60af9d87f9fc7d96eb09f50eac9', 24, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 12:15:56', '2024-06-26 12:15:56', '2025-06-26 15:15:56'),
('a46d72ffbfa87e0bfc11efb4a585386110cd7b98d9dcf127a703b2dae16a9611b9a7980f904840c7', 40, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 15:28:12', '2024-06-27 15:28:12', '2025-06-27 18:28:12'),
('a4aab5e60cd214a88bc6c7af5048fb71567adcdded6e9605f2a913baff53aa4e4dcd15cdb8c10423', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 07:40:44', '2024-06-26 07:40:44', '2025-06-26 10:40:44'),
('a5a86f13cbb1a9ad611976e36c9061903e13ed569033f641f8e05d8a2e9c0b3f3909ffc4e12dc90c', 147, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 15:10:12', '2024-07-05 15:10:12', '2025-07-05 18:10:12'),
('a6f0f5278a5664d614b7b056d14c70ceb6969c2fdc98aa527b25dbd62643c87397ffc0e657017211', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 09:22:51', '2024-07-06 09:22:51', '2025-07-06 12:22:51'),
('a85d41b85d5ea717792ba3bdab267e53ff119ab94689be033e74a37eca4b45de1a020ba6267e8195', 98, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 13:28:13', '2024-07-01 13:28:13', '2025-07-01 16:28:13'),
('a919907972bfe617617ae934c097fa4f17c36e61a26e3eaeb9813ab1af547410f7689a76a27da73c', 151, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:20:35', '2024-07-05 18:20:35', '2025-07-05 21:20:35'),
('a9818e8510ba321ed07da47b4c29fa54f4862f91bb76c3c5695b128dbf95ae3a9adc4369753094e0', 135, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 15:53:53', '2024-07-04 15:53:53', '2025-07-04 18:53:53'),
('ac0b4b4a50b0808e16404eb70e041e64906bd54261999302f996443735385b1c4f089699a9a737ee', 134, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 15:50:25', '2024-07-04 15:50:25', '2025-07-04 18:50:25'),
('ac1fe5626f16201bf1250a64049fe40ee913c4eee1e748b5ff5de4443f51b7c5bae56503eb922544', 21, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 18:43:42', '2024-06-25 18:43:42', '2025-06-25 21:43:42'),
('adf35963fea8291086fd47aa9e469994e731926418c9d6df581eed68760e2b907aa3bc0dead5369d', 7, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:10:22', '2024-06-25 10:10:22', '2025-06-25 13:10:22'),
('ae4ebebdfe309707368272910f2c79d4a0557e9e888376d87547c0ced47b74ff15ed8a0b883ee00d', 111, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 14:10:58', '2024-07-02 14:10:58', '2025-07-02 17:10:58'),
('b00531f52500d97511c7665ef1f1414e9fdc0093e545d9305287942710cca651365f82f87d1556ab', 159, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 06:44:44', '2024-07-06 06:44:44', '2025-07-06 09:44:44'),
('b0828df29d185c9acdf49d57c647764ba05d8fb71839a56782615bba26ad734f3646f192d9edf4f0', 83, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:40:15', '2024-06-30 15:40:15', '2025-06-30 18:40:15'),
('b18bc7917e543d0604b368c6702187830918b4400fd5714c2bef07b9441b36cf70346b4c4908ec7d', 51, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 11:31:02', '2024-06-28 11:31:02', '2025-06-28 14:31:02'),
('b1955088cf094659d684aa89e3e6149140d57a36ee84c5f5c5fbdc155556e9e6bd3a69ab41babdc0', 110, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 13:39:53', '2024-07-02 13:39:53', '2025-07-02 16:39:53'),
('b1eafc5c2ec52f8eeeec4a9efed76503563666594376831b2e58b726756ec30245f8a5872a387e6e', 150, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 17:49:31', '2024-07-05 17:49:31', '2025-07-05 20:49:31'),
('b241d7ca6d35552b5cfdbe214de3beac2dd6f99ebd78d5a3f8cf88a62a610b501ac25a7fa4d58314', 98, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 13:28:13', '2024-07-01 13:28:13', '2025-07-01 16:28:13'),
('b2a0ae07e7f9fd68570bbfa2876cdc1fc8245c7274831130c4917f2cc82b1632922812cf9129f21d', 14, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 11:18:04', '2024-06-25 11:18:04', '2025-06-25 14:18:04'),
('b2dfae521af34240cf58934fc3b1aba5dbb06c9f34ccfee517079e51be33a016b06d5454df381cea', 149, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 16:21:46', '2024-07-05 16:21:46', '2025-07-05 19:21:46'),
('b36c354aa266eda5f3d28ceb5d968f88d89c9ca339677d9443661d238ec0e9f3f5b47bf6e339c09e', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:17:15', '2024-06-25 10:17:15', '2025-06-25 13:17:15'),
('b38866a1575a90c34cd4efc1f96f7bf98c6ea058f7d04036ac4bb4d2c4b4e27fff91a597646d699e', 115, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 17:32:13', '2024-07-02 17:32:13', '2025-07-02 20:32:13'),
('b5549950225f7aef80f71a529a7decf0a72dd5fe45ccb99ec44a026809925db0f59dc1a9c9463ff2', 35, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:21:48', '2024-06-26 23:21:48', '2025-06-27 02:21:48'),
('b5e5483ed7b3e6fceebc0c5d2b0eb5711b576c785d640d0da1cfce48f0da82e55c91c3e5df1c0529', 63, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 17:29:08', '2024-06-28 17:29:08', '2025-06-28 20:29:08'),
('b657a494e323015f510776218d99c596f2bd3f5b6b63bc22b14ac4b68a6b8afba0703edf20773ddf', 70, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 03:26:40', '2024-06-29 03:26:40', '2025-06-29 06:26:40'),
('b734f559d4eb580e81aaba2ea652981c9629987768132c45da36fa6dd4d38b5d478d5b428b113d40', 12, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:33:18', '2024-06-25 10:33:18', '2025-06-25 13:33:18'),
('b7e045e75d81e93ee8cdd7dddfdf58169191aa00caa0b5e361d889dcb6dc97afa65ce4b0cbfa134f', 3, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-04 20:15:47', '2024-06-04 20:15:47', '2025-06-04 22:15:47'),
('b831d2939fab576b6d7da72b7c48ed385daedd99d45f8c3866f77dda30ccbe3fc9340a17012139ea', 44, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 21:10:10', '2024-06-27 21:10:10', '2025-06-28 00:10:10'),
('b8c088e4d717b45c889f71d52b155d153fcff24ec8efd341861ee2a1a037259f58347199e9af8b76', 105, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 20:40:53', '2024-07-01 20:40:53', '2025-07-01 23:40:53'),
('bac1ba79809323bf510e5bbfce621ed021d05a2956f7917296af678a901273270e24120e88b801d9', 114, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 16:32:46', '2024-07-02 16:32:46', '2025-07-02 19:32:46'),
('bc1b6caca97ae341dc9ff2aa050afd7bcd28a230605843beb1dd80371472e577a59be1ca655b9ec0', 125, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:58:41', '2024-07-03 17:58:41', '2025-07-03 20:58:41');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('bccfc1002a96020299401c7eabbbf25f81e25e27d924eb6493239ae6eca7a6357a0efe1590b4caf0', 36, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 23:22:33', '2024-06-26 23:22:33', '2025-06-27 02:22:33'),
('bda83bc8da7bb2cd3816741e9a4e7a350b270bda33c725e428a23b2de68e4caacb395f44336b4672', 83, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:40:13', '2024-06-30 15:40:13', '2025-06-30 18:40:13'),
('be0abfe43fcb9b1488428ab6a3e2ee5f3ba852336748943bdfe299c1b79b87b6d169e7f8f032517d', 94, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 21:58:53', '2024-06-30 21:58:53', '2025-07-01 00:58:53'),
('be77ad397a1e7eda303d3f93219556157c1f881316d03b813728df86f5a2389f11982a78313f6d03', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 09:56:22', '2024-06-25 09:56:22', '2025-06-25 12:56:22'),
('bee778fd091a8bf95c45c49da50ce44e4d8a04b2cba734c9d8f9e1c502c2fa9a7702a8999a10c985', 49, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 00:15:39', '2024-06-28 00:15:39', '2025-06-28 03:15:39'),
('bf58d61597ac842d8f7e56a4979a6669bf378c7db0d62916b08da5898ba7bda9c6744b9b66bbb41d', 139, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 21:10:41', '2024-07-05 21:10:41', '2025-07-06 00:10:41'),
('bf68d2d67c095c73b77ddb7a412d7aeab61fd207e28ea3f17fa9244a70d698f2fb704edeb002d125', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-04 19:14:31', '2024-06-04 19:14:31', '2025-06-04 21:14:31'),
('bfabdc2e712ea17bc4bb8c72ec093bfa41ceb0af59fc8115fdcd47ce50a222d3c0f87080f85e2560', 161, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 09:23:47', '2024-07-06 09:23:47', '2025-07-06 12:23:47'),
('c0e9d56448d5c96135530303437edaa2ac923d72e7449b3cdef378d0f35ef738c79db46655341d43', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 12:25:47', '2024-07-02 12:25:47', '2025-07-02 15:25:47'),
('c0f53739838b253fd31448ac79605d6006a3d80d65ec7c86e0d5368bd8913a335607b6944198b1e1', 118, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 21:38:07', '2024-07-02 21:38:07', '2025-07-03 00:38:07'),
('c26db5884c6ccf7ae1c3855c07f0ac1d5103062a9033f4f5195e9d52384e051af082915d490fb9c9', 99, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 14:33:49', '2024-07-01 14:33:49', '2025-07-01 17:33:49'),
('c2cf2d42ae15c0839436311d2cab312b021466a7500c929e1960d9647502ac4b52e8e6f4e1e22547', 131, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 07:40:43', '2024-07-04 07:40:43', '2025-07-04 10:40:43'),
('c2d35d48de315aa0b3bd27a998c62fe6ec2df2d676569a99782c1650eed13183c867c9d9ee11ea77', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:17:14', '2024-06-25 10:17:14', '2025-06-25 13:17:14'),
('c383d64b1df37deb43c025a8dd25276db2d5054275bcb93384f578060b7b4da2470b675286a32b12', 151, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:20:35', '2024-07-05 18:20:35', '2025-07-05 21:20:35'),
('c4c86bd1c35dae5a951605c83bf2cc6db3d5072a8c60cc9ddbf56e0afc887155c34003bbb7fe7b9c', 67, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 23:14:24', '2024-06-28 23:14:24', '2025-06-29 02:14:24'),
('c4d7c40e80637e918762234077514a1d647b1c3852949fdcf3c9ab7548a746451ca5faa38c24c7b7', 41, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 16:25:48', '2024-06-27 16:25:48', '2025-06-27 19:25:48'),
('c7d6f458ff5408b0d7d2ed6fe64d2927ac7a668f9d613641dabc7f202a18c507f849d6a677927bf8', 91, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:10:21', '2024-06-30 20:10:21', '2025-06-30 23:10:21'),
('c9ee47b278397afafc60c792bed4c7c689115be523a623db37460a5c057d84df6abaadbbe1e7502c', 78, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 09:33:37', '2024-06-30 09:33:37', '2025-06-30 12:33:37'),
('cb22b72744a65ca719f650323d283d8a9edf47aa0e672a078b01305cba51c3376cabfff36c7e0627', 102, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 17:22:02', '2024-07-01 17:22:02', '2025-07-01 20:22:02'),
('cb29ea40df6082a4f7933a913bc0b793e357eb8e090898c6b049191b54e4b5c3327440e52d9cbc2c', 119, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 21:52:20', '2024-07-02 21:52:20', '2025-07-03 00:52:20'),
('cb332e5633f671387288ed9b4e7141d8b9d9a517a459a40f6944770215fb78a09dbd53db20a9a3e9', 119, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 21:52:20', '2024-07-02 21:52:21', '2025-07-03 00:52:20'),
('cc27603a3c0df9130aad92286b8100e726253162db4106a23aa61ef4258ba77fdbc0408a6cbb5783', 60, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:12:08', '2024-06-28 16:12:08', '2025-06-28 19:12:08'),
('cce2aaf565b1c1b886dd410adf72398fda3572e3b95e7161a6ce5423bb03c44d660472eca7802f98', 80, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 12:49:54', '2024-06-30 12:49:54', '2025-06-30 15:49:54'),
('cd1abad614830cea0e9c611f36cfe05fffd8424c7be6191bedc7295f057d4b80e75c3beaf77c08ee', 23, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 12:12:39', '2024-06-26 12:12:39', '2025-06-26 15:12:39'),
('cd973ee850abed8af926a5d39639a9602dcfdc0dd753a857f5fa1189e44641163d7ef16f0b9e244a', 85, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:54:29', '2024-06-30 15:54:29', '2025-06-30 18:54:29'),
('ce246a9d9ef03a64ca02e64cbab574f2389019b04c59ae4fe2bf986d9f247a79599b9027973a9255', 97, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 11:41:56', '2024-07-01 11:41:56', '2025-07-01 14:41:56'),
('cede6343e941de52988740da0092458602da58da524d34b1485ecd2dd5f39290d27ca72a9111ef7b', 92, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:12:01', '2024-06-30 20:12:01', '2025-06-30 23:12:01'),
('cee122717a3b16fc6ddb567e29be7a00d0113dc836060856cfe879eba75d18dc8789ec83d302af82', 37, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 07:58:46', '2024-06-27 07:58:46', '2025-06-27 10:58:46'),
('cf1bdb24f69169f4ec454e0596ec0bbdf66e3ebc7e22843b9230981373e051b23898e6324a078859', 22, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 02:19:40', '2024-06-26 02:19:40', '2025-06-26 05:19:40'),
('d0c484e075da84b8710aa333c6f45074eececf12e527bce35ac5ec95a0ddb0aa531b73fe18c5fecd', 124, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 17:45:02', '2024-07-03 17:45:02', '2025-07-03 20:45:02'),
('d1038d60778e2aa2cf906b934d014a02e7c0faa3a7e8b08ce87b1cf09dd8f82e2cc98e74ce044c58', 16, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 12:30:12', '2024-06-25 12:30:12', '2025-06-25 15:30:12'),
('d1d0fd7f26ed51e2434e65cb0c9c5be31029a7523b39364ff4cc8c60fb3f33f82103ed842fb938c5', 122, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 10:52:16', '2024-07-03 10:52:16', '2025-07-03 13:52:16'),
('d2153379cd1369fee841d36c7f44007ac928b992183e21bba753aff83e078284f3544a4cbed03934', 61, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:13:53', '2024-06-28 16:13:53', '2025-06-28 19:13:53'),
('d23a8710f1ad9f19c6f9c8e90ef4e0ebbaff2b83578cbe906633626110ad19448d153c8b92112498', 21, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 18:43:42', '2024-06-25 18:43:42', '2025-06-25 21:43:42'),
('d249194cd0b5e2d032492ac04b3605b8df8674542220dfa86e81fd2f176ad53dd6358d35fdbe63ab', 43, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 20:52:21', '2024-06-27 20:52:21', '2025-06-27 23:52:21'),
('d2609117b20cab12e7721f2b22dcca47cf303c99da2fb879c8bd2ca0af5072c0ad79de356adfed31', 133, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 12:31:57', '2024-07-04 12:31:57', '2025-07-04 15:31:57'),
('d2ff1715132de150f2286a30d60f03223a6ae8cd92387045fa8a85211f84a38e0e1ed1177e3aad81', 143, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 09:09:02', '2024-07-05 09:09:02', '2025-07-05 12:09:02'),
('d38724fda934f6d72a54bd052c9f1a8296f8bef31be3bda2ac3d474a9edaf12f17b54396819d11a6', 74, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 17:45:32', '2024-06-29 17:45:32', '2025-06-29 20:45:32'),
('d541438d5f5465489a042c140b8d0b02e3469a70de1affae9ec3127429f7692356b4ef7aa27d6757', 82, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 15:31:06', '2024-06-30 15:31:06', '2025-06-30 18:31:06'),
('d56d78b0eb883503bd6e26ab26ca7add6448ae3aeea1a75d4699e7f5178e5aa2c8d72e02c3e14bd4', 144, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 14:00:44', '2024-07-05 14:00:44', '2025-07-05 17:00:44'),
('d627eafcdd59d75267387937f9f638152c82eb363d447a67d1d5bdf8f0869e48f9b78d71baf399c0', 33, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 21:44:04', '2024-06-26 21:44:04', '2025-06-27 00:44:04'),
('d69a871ce23ed5df31aaf4de5a4ea3c31f1151b280035ba9f0afaf4b6115aa01f720099ad3aafc17', 18, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 15:06:32', '2024-06-25 15:06:32', '2025-06-25 18:06:32'),
('d6d348baf9509aee575bd52aef703f9a9a345a7838b24335674d3ae2bf5164e7db40f7fbff37fac2', 137, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 18:13:06', '2024-07-04 18:13:06', '2025-07-04 21:13:06'),
('d6d3e6d6b52bf6bfcea5aacf23555b6a2a100b7de80168270483b04c48df72d338157190aed05082', 117, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 20:26:18', '2024-07-02 20:26:18', '2025-07-02 23:26:18'),
('d7797dc7c09c61c33f96e7e64013e2cbfc3e4e216d6243a1c72c3fe0f5c96152a81995e2f3fbdde0', 53, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 13:25:40', '2024-06-28 13:25:40', '2025-06-28 16:25:40'),
('d7ed428dc4d45ab1cb7aa4c99b6ea2db6d2fea34b2dd9d64f3b3248af3d7ccf31494ec60b40b66c5', 93, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 20:42:12', '2024-06-30 20:42:12', '2025-06-30 23:42:12'),
('d7effe89c488f7ed93c778a9c869f7df7b61d535a32d9ea3bd46d9f7934cfdfaec1871a8d3680da4', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 13:24:48', '2024-06-25 13:24:48', '2025-06-25 16:24:48'),
('d8139c37349bd3f1b6479d136e1925ae3bf5031a9883e6b8b87d2882fd2c75c2c2bc93bd8d83a40c', 65, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 21:57:12', '2024-06-28 21:57:12', '2025-06-29 00:57:12'),
('d86f6ee87f628423ff0b7960ed46b4b6945f6da1967ecf791fec0d3abb5728c3cb161905db3732ba', 108, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 06:46:01', '2024-07-04 06:46:01', '2025-07-04 09:46:01'),
('d970e5d36f5551ff47bba6007a1cfe4d94e30236d59d7a7e99e506ea1c05a37c678a1ecc69868d8b', 103, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 18:41:30', '2024-07-01 18:41:30', '2025-07-01 21:41:30'),
('db9a14010d9c1d0184d81d7fc8eae49803f44551819ad2219ffbe825c8eab568064e6463370d2122', 47, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 23:53:15', '2024-06-27 23:53:15', '2025-06-28 02:53:15'),
('dd1c64bbb6b2b1707c574bcac20e1549017a703a478d74efd7f2d6548523540f17d1664a7bd2f204', 77, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 03:10:36', '2024-06-30 03:10:36', '2025-06-30 06:10:36'),
('dd972314807e42e3770eee9e404a7eca0b1556fdd881b2de098b07e98925b9ac831f1c5b16f08480', 163, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:50:08', '2024-07-06 10:50:08', '2025-07-06 13:50:08'),
('dda2500c284167a80f748793caa99d8fabf726ed5dc3fd5d8cf7fdb73b4a579b8a0e6a41c4cdcf2a', 12, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:33:19', '2024-06-25 10:33:19', '2025-06-25 13:33:19'),
('ddff4fd91290a6f8684b5066047fef154fc7799e172f0ec1bab7e61cc5ee1306ba21717ba86ba1c2', 153, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:33:42', '2024-07-05 18:33:42', '2025-07-05 21:33:42'),
('de53cfac675a185248b476d992afbc40f127043854efb9eb0a13e3f9a14c99810a0b7dc448e0255b', 78, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 09:33:39', '2024-06-30 09:33:39', '2025-06-30 12:33:39'),
('dfff5ed1d9c651c160c7b6d888d4ea444c08a6557647a66555a8519fd703ad3558439481f6a0d66f', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-05-29 08:22:07', '2024-05-29 08:22:07', '2025-05-29 10:22:07'),
('e081e807f78d9711f2fe1386b96fd2753df28a00b3de50a8964227c897772a13fd2187ae72c77f8c', 134, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 15:50:25', '2024-07-04 15:50:25', '2025-07-04 18:50:25'),
('e195a67094bc52a532f729bf3de7c80d4b638cdc89f2286f515ff180301789775c7274d036ed23af', 71, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 05:41:40', '2024-06-29 05:41:40', '2025-06-29 08:41:40'),
('e30d8af69c15c81af109abaff5c9c9d43b2b64d79c17bc9816b9d9ade95372b8d4377f9bb7314dc2', 89, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 18:39:46', '2024-06-30 18:39:46', '2025-06-30 21:39:46'),
('e52b1020bfe414771ee16df3de3359715f895485a6e1752cbb0c003497f6062f1d93799d68b9a4ac', 58, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:56:47', '2024-06-28 15:56:47', '2025-06-28 18:56:47'),
('e562c62ceb8fd65ce0fae90993cd717ed64b933b0457433e5475af7ad0ee69625dd396d61a3ac4aa', 111, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 14:10:59', '2024-07-02 14:10:59', '2025-07-02 17:10:59'),
('e6431f88c57e23cf9fd40b26245e918f5849e0823099bbd3d6d3fb1f91f264d858ea0ed993eb3e7f', 80, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 12:49:53', '2024-06-30 12:49:53', '2025-06-30 15:49:53'),
('e678a74102fe8895c63c79a3fb154f08a89ca74b4b34cddef6fca7ca7665e7c6d3b5b29a50763848', 140, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 21:21:43', '2024-07-04 21:21:44', '2025-07-05 00:21:43'),
('e70c93c5df7e69e4fa2f708387ebf6003e8a032b353a55f6f014099dc43583ec653009556bcc09e9', 57, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 15:54:33', '2024-06-28 15:54:33', '2025-06-28 18:54:33'),
('e72cac3f3bd94a5bf13714a6a63392116dfd00099d55210c4ba9fc2135c5bab5154a2acbb92110d8', 128, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 20:02:32', '2024-07-03 20:02:32', '2025-07-03 23:02:32'),
('e90d601d1b56955735e3ba7e627def852aa9426ac696661fe11eb63c1b7d5fc4fe9c0caae509dddf', 137, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 18:13:06', '2024-07-04 18:13:06', '2025-07-04 21:13:06'),
('e97d9b1df416abb77495a40b487c215ace908899e344f5a6192dfe3a75775754ecfc211973da7f26', 139, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 20:56:50', '2024-07-04 20:56:50', '2025-07-04 23:56:50'),
('e9df311d7f19a9b5a29da4397d04b1adc1de3ae259005572a459a15b1aa72dc7167e7c57baa92797', 159, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 06:44:43', '2024-07-06 06:44:43', '2025-07-06 09:44:43'),
('ea7ad4066078d4fa3f8e4750f7edd4c28ee0234a4f5f35163a6127e59aacca4b5b9505fd38de2802', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-24 07:22:22', '2024-06-24 07:22:22', '2025-06-24 10:22:22'),
('eab15941666f64a9065947ce61922edba87660257a22ef1145d08a7dd0342559a187fe2b6c36648c', 160, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 09:10:56', '2024-07-06 09:10:56', '2025-07-06 12:10:56'),
('eae96588cb2c1e9137e051d070b218f0246f6ff41ef41cec7770e953e90c285f766193a9e2845bd1', 62, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:16:08', '2024-06-28 16:16:08', '2025-06-28 19:16:08'),
('eb57e3713aa02f0b6505244da95e2187af37776caed14509eca7a1a28910e0e54c1dccc42b174266', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-05-29 08:14:37', '2024-05-29 08:14:37', '2025-05-29 10:14:37'),
('ebe6a6141cd288e0b85e4a6313025d3cb728143579f06aa3988fb5f62357b2dfd7310b72a60ec62d', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 08:29:17', '2024-07-02 08:29:17', '2025-07-02 11:29:17'),
('ebfaccb977d12d156ee0144c94986bc539f0f623a9a9ec5976c853ee746f83a26e94e3b8ae689620', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 07:25:14', '2024-07-02 07:25:14', '2025-07-02 10:25:14'),
('ec046091bda757f9b04cf389196056bbe1ebead0cb64e4af964337af2d92cdae4f1a67d9a865169e', 29, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 14:50:35', '2024-06-26 14:50:35', '2025-06-26 17:50:35'),
('ec47af91dd3968a896319dec92fb471519bd0a549c7d1bb10e641b54d988c6a98d8c78ea30e276f9', 81, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 13:13:52', '2024-06-30 13:13:52', '2025-06-30 16:13:52'),
('ed47dbc376d5153961ab81a32f6c5cfed8cfd79e6db60665525ee6607e22f91f92fed2161fed4b55', 47, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 23:53:14', '2024-06-27 23:53:14', '2025-06-28 02:53:14'),
('ed72ff9d7d1f09d60de7d0fe24623e7fe7bd1aa0dfb31cea3bc33c6951017ae0c451146ac2685037', 11, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:26:40', '2024-06-25 10:26:40', '2025-06-25 13:26:40'),
('ee6d90e64abac0039a45d05f12072ce2fe8ef92d5d57c6227e2865f9789454efee239c2486966c54', 19, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 15:51:57', '2024-06-25 15:51:57', '2025-06-25 18:51:57'),
('f08cd81eb9aa886c510219fd593e23504d9aae43679c8ea09ab7b17202a0bc13e72fae23c086f367', 60, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:12:09', '2024-06-28 16:12:09', '2025-06-28 19:12:09'),
('f1fce1a6d0f66908dc8cb977d46a53e6d4e85f47933e4804961d0fddfc3df3261395ddc616e91b29', 106, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-01 20:48:28', '2024-07-01 20:48:28', '2025-07-01 23:48:28'),
('f240e11472e08d25900cb7900054342b7df8be2a75eb4ff68b0e785679afa628f0b8667cbe0d4cc8', 37, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 07:58:45', '2024-06-27 07:58:45', '2025-06-27 10:58:45'),
('f5ba7938e03934c7d2cf05e86db1220fd6e8bb65a459fe4044c7a11c868ab53f872fd4409021abc3', 127, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 19:32:47', '2024-07-03 19:32:47', '2025-07-03 22:32:47'),
('f7c709216745c7a8fd38ffbe0e1943d4a338f91cea4da7f32bdf519ae82b8a520a53a259f0e77ebf', 107, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-02 00:30:47', '2024-07-02 00:30:47', '2025-07-02 03:30:47'),
('f86a4c2228178d4a45b04498a00995d78edacfa05060403bc7734b66b76febfec16fcd007bb114b8', 163, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-06 10:49:21', '2024-07-06 10:49:21', '2025-07-06 13:49:21'),
('f90b8f939684d75873deec8d32ac23dd2112e69154747dc62ade7bed6976b4c7e295a049122fd7a2', 9, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-25 10:24:43', '2024-06-25 10:24:43', '2025-06-25 13:24:43'),
('f96e9f4150f2caf1e3456c166930f19c25434d09fac992f1b24003d4bd68f8106c5eba817214e07e', 126, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-03 19:11:40', '2024-07-03 19:11:40', '2025-07-03 22:11:40'),
('f9895b4a80dfe1e0551fed4e62202049af4852bc8e0c816a7b1128a200e56dbf91dc46295dae445d', 30, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 16:50:45', '2024-06-26 16:50:45', '2025-06-26 19:50:45'),
('fa5db6b09ab860da095760b7a94030d51b65ec4e1183c8b37e5236734ce1656aaa597e6f251af8e3', 138, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-04 18:30:46', '2024-07-04 18:30:46', '2025-07-04 21:30:46'),
('fcd184c3ee3876a217c0f22f94886e6bc3aae10669465ea66c74fada20af3c553bffa96a28b018af', 152, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:31:28', '2024-07-05 18:31:28', '2025-07-05 21:31:28'),
('fd0e4a5452934d2afb342d443199b338bf2a9f4a0d7b56bfac7b17a2691bc83ad5aa6298cf9ec7df', 68, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-29 00:51:54', '2024-06-29 00:51:54', '2025-06-29 03:51:54'),
('fd548558b55ae0012064ec430dc867be13299b5e7789a998d2eb627f98900f2f180d096e0013c468', 30, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-26 16:50:44', '2024-06-26 16:50:44', '2025-06-26 19:50:44'),
('fdf3b59672787b73739d3f4086c62e099598bc398a83466f9d1b6e5065d9095893ed15cde815acab', 61, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 16:13:54', '2024-06-28 16:13:54', '2025-06-28 19:13:54'),
('fe0a1e5b27a8f54dd862c2f3563aeb99fd60ca1c223ea2e1a5a8bc688a9692fe22f80b64f0a970e4', 152, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 18:31:41', '2024-07-05 18:31:41', '2025-07-05 21:31:41'),
('fe61e08bfef9a58ded8f5c9864074c3d8dbf3e32acffca63a69cce43d0524ec47907d0a22f045714', 77, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-30 03:10:36', '2024-06-30 03:10:36', '2025-06-30 06:10:36'),
('fe90dc3241d46a1471d5fef013f341794cae944aa511da6054f93cf9570a161a6d81930eb07c2263', 147, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-07-05 15:10:11', '2024-07-05 15:10:11', '2025-07-05 18:10:11'),
('ff666d9763ccfd6eb13703d5446fe781e454bde72edbcbeb8393b47e8392d6c0c26a042c09078e89', 66, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-28 23:06:15', '2024-06-28 23:06:15', '2025-06-29 02:06:15'),
('ff79cd426d6e0d93938ae4b31aa52b8e0cc3034d8fefa9d33248a70f81985a14ff315fceb14faba0', 38, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-06-27 09:39:06', '2024-06-27 09:39:06', '2025-06-27 12:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(3, NULL, 'Laravel Personal Access Client', 'wDHtyTifyKZ422juudaKc8LW6ZSmE9YEovXIWTSM', NULL, 'http://localhost', 1, 0, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21'),
(4, NULL, 'Laravel Password Grant Client', 'YWRRgYEydgmaZKctc0yO7hA3IiEMYvPZbYDrl8YD', 'users', 'http://localhost', 0, 1, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, 3, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_info` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => approved, 2 => denied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `method_informations` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` int(11) NOT NULL DEFAULT 0,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `callback` varchar(255) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `number_of_people` int(11) DEFAULT NULL,
  `table_order_id` bigint(20) DEFAULT NULL,
  `is_cutlery_required` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `is_guest`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `callback`, `delivery_date`, `delivery_time`, `extra_discount`, `delivery_address`, `preparation_time`, `table_id`, `number_of_people`, `table_order_id`, `is_cutlery_required`) VALUES
(100001, 10, 1, 66.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2024-06-24 08:05:07', '2024-06-24 08:05:27', 1, NULL, 0.00, NULL, NULL, 'take_away', 1, NULL, '2024-06-24', '12:31:00', 0.00, 'null', 0, NULL, NULL, NULL, 0),
(100002, 14, 1, 176.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2024-06-24 09:03:57', '2024-06-24 09:04:13', 1, NULL, 0.00, NULL, NULL, 'take_away', 1, NULL, '2024-06-24', '15:01:00', 0.00, 'null', 0, NULL, NULL, NULL, 0),
(100003, 14, 1, 220.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2024-06-24 09:06:23', '2024-06-24 09:06:31', 1, NULL, 0.00, NULL, NULL, 'take_away', 1, NULL, '2024-06-24', '15:01:00', 0.00, 'null', 0, NULL, NULL, NULL, 0),
(100004, 31, 1, 301.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 0, '2024-06-25 11:40:18', '2024-06-25 11:40:26', 1, NULL, 0.00, NULL, NULL, 'take_away', 1, NULL, '2024-06-25', '15:40:18', 0.00, 'null', 0, NULL, NULL, NULL, 0),
(100005, 3, 0, 150.00, 0.00, NULL, 'unpaid', 'out_for_delivery', 0.00, 'cash_on_delivery', NULL, 0, '2024-06-25 14:44:58', '2024-06-25 19:08:12', 1, NULL, 0.00, NULL, NULL, 'take_away', 1, NULL, '2024-06-25', '18:44:58', 0.00, 'null', 0, NULL, NULL, NULL, 0),
(100006, 21, 0, 75.00, 0.00, NULL, 'unpaid', 'processing', 0.00, 'cash_on_delivery', NULL, 1, '2024-06-25 18:47:24', '2024-06-25 19:21:06', 1, NULL, 0.00, NULL, NULL, 'delivery', 1, NULL, '2024-06-25', '23:21:06', 0.00, '{\"id\":1,\"address_type\":\"Home\",\"contact_person_number\":\"+2001018482936\",\"floor\":\"23\",\"house\":\"21\",\"road\":\"12 \\u0645\\u0643\\u0631\\u0631\",\"address\":\"Z1434, \\u09b8\\u09cb\\u09a8\\u09be\\u0997\\u09be\\u099c\\u09c0 \\u09aa\\u09cc\\u09b0\\u09b8\\u09ad\\u09be, Bangladesh\",\"latitude\":\"22.84882285599426\",\"longitude\":\"91.3903059437871\",\"created_at\":\"2024-06-25T18:47:18.000000Z\",\"updated_at\":\"2024-06-25T18:47:18.000000Z\",\"user_id\":21,\"is_guest\":0,\"contact_person_name\":\"Hussien Ahmed\"}', 0, NULL, NULL, NULL, 0),
(100007, 15, 0, 224.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 4, '2024-06-26 11:20:51', '2024-06-26 11:28:30', 1, NULL, 10.00, NULL, NULL, 'delivery', 1, NULL, '2024-06-26', '15:20:51', 0.00, '{\"id\":4,\"address_type\":\"Workplace\",\"contact_person_number\":\"+201279036566\",\"floor\":null,\"house\":null,\"road\":null,\"address\":\"20-16 \\u0627\\u0644\\u064a\\u0627\\u0632\\u064a\\u062f\\u064a\\u060c \\u0633\\u064a\\u062f\\u064a \\u0628\\u0634\\u0631 \\u0628\\u062d\\u0631\\u064a\\u060c \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0632\\u0647\\u060c\\u060c \\u0627\\u0644\\u0625\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629\\u060c\\u060c Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt\",\"latitude\":\"31.267119892945278\",\"longitude\":\"29.999395720660686\",\"created_at\":\"2024-06-26T11:20:26.000000Z\",\"updated_at\":\"2024-06-26T11:20:26.000000Z\",\"user_id\":15,\"is_guest\":0,\"contact_person_name\":\"Khaled Yousry\"}', 0, NULL, NULL, NULL, 0),
(100008, 15, 0, 133.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 4, '2024-06-26 11:26:22', '2024-06-26 11:28:30', 1, NULL, 10.00, 'عايز الطلب يجى الساعه ٥ الفجر', NULL, 'delivery', 1, NULL, '2024-06-26', '15:26:22', 0.00, '{\"id\":4,\"address_type\":\"Workplace\",\"contact_person_number\":\"+201279036566\",\"floor\":null,\"house\":null,\"road\":null,\"address\":\"20-16 \\u0627\\u0644\\u064a\\u0627\\u0632\\u064a\\u062f\\u064a\\u060c \\u0633\\u064a\\u062f\\u064a \\u0628\\u0634\\u0631 \\u0628\\u062d\\u0631\\u064a\\u060c \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0632\\u0647\\u060c\\u060c \\u0627\\u0644\\u0625\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629\\u060c\\u060c Sidi Beshr Bahri, Montaza 1, Alexandria Governorate 5517284, Egypt\",\"latitude\":\"31.267119892945278\",\"longitude\":\"29.999395720660686\",\"created_at\":\"2024-06-26T11:20:26.000000Z\",\"updated_at\":\"2024-06-26T11:20:26.000000Z\",\"user_id\":15,\"is_guest\":0,\"contact_person_name\":\"Khaled Yousry\"}', 0, NULL, NULL, NULL, 0),
(100009, 5, 0, 105.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 5, '2024-06-26 12:43:49', '2024-07-02 12:27:54', 1, NULL, 27.14, NULL, NULL, 'delivery', 1, NULL, '2024-06-26', '18:16:00', 0.00, '{\"id\":5,\"address_type\":\"Home\",\"contact_person_number\":\"+201111047713\",\"floor\":null,\"house\":null,\"road\":null,\"address\":\"6X94+6RV, Street 38, Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432090, Egypt\",\"latitude\":\"31.218073599999993\",\"longitude\":\"29.95650559999999\",\"created_at\":\"2024-06-26T12:42:52.000000Z\",\"updated_at\":\"2024-06-26T12:42:52.000000Z\",\"user_id\":5,\"is_guest\":0,\"contact_person_name\":\"wezza laa\"}', 0, NULL, NULL, NULL, 0),
(100010, 25, 0, 100.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 7, '2024-06-26 13:36:43', '2024-06-26 13:38:29', 1, NULL, 15.82, 'زيادة صوصات', NULL, 'delivery', 1, NULL, '2024-06-26', '17:51:43', 0.00, '{\"id\":7,\"address_type\":\"Home\",\"contact_person_number\":\"+201278054896\",\"floor\":\"1A\",\"house\":\"2\",\"road\":\"2 \\u0634\\u0627\\u0631\\u0639 \\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\",\"address\":\"50 Ahmed Abou Soliman, Dana Al Gadidah WA Izbat Al Westaneyah, El Raml 2, Alexandria Governorate 5448042, Egypt\",\"latitude\":\"31.227668846821647\",\"longitude\":\"29.983159638941288\",\"created_at\":\"2024-06-26T13:33:03.000000Z\",\"updated_at\":\"2024-06-26T13:33:03.000000Z\",\"user_id\":25,\"is_guest\":0,\"contact_person_name\":\"Mahmoud Ibrahim\"}', 0, NULL, NULL, NULL, 0),
(100011, 28, 0, 135.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 9, '2024-06-26 15:46:38', '2024-06-26 17:07:33', 1, NULL, 10.00, 'دفع بالكريدت كارد عند الاستلام', NULL, 'delivery', 1, NULL, '2024-06-26', '20:01:38', 0.00, '{\"id\":9,\"address_type\":\"Home\",\"contact_person_number\":\"+2001550068211\",\"floor\":null,\"house\":null,\"road\":\"\\u0661\\u0662 \\u0634 \\u0627\\u0644\\u0632\\u0647\\u0648\\u0631 \\u0645\\u0646\\u062f\\u0631\\u0647 \\u0628\\u062d\\u0631\\u064a \\u0628\\u0631\\u062c \\u0645\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062f\\u0648\\u0631 \\u0661\\u0662\",\"address\":\"10 \\u0627\\u0644\\u0632\\u0647\\u0631\\u0627\\u0621\\u060c \\u0627\\u0644\\u0645\\u0646\\u062f\\u0631\\u0629 \\u0628\\u062d\\u0631\\u064a\\u060c \\u0642\\u0633\\u0645 \\u062b\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0632\\u0629\\u060c\\u060c Al Mandarah Bahri, Montaza 2, Alexandria Governorate 5526034, Egypt\",\"latitude\":\"31.275633787430987\",\"longitude\":\"30.007909387350086\",\"created_at\":\"2024-06-26T15:42:33.000000Z\",\"updated_at\":\"2024-06-26T15:42:33.000000Z\",\"user_id\":28,\"is_guest\":0,\"contact_person_name\":\"Engy Mohamed Elhelwa\"}', 0, NULL, NULL, NULL, 0),
(100012, 5, 0, 73.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 5, '2024-07-02 08:03:45', '2024-07-02 08:04:16', 1, NULL, 27.14, NULL, NULL, 'delivery', 1, NULL, '2024-07-02', '13:46:00', 0.00, '{\"id\":5,\"address_type\":\"Home\",\"contact_person_number\":\"+201111047713\",\"floor\":null,\"house\":null,\"road\":null,\"address\":\"6X94+6RV, Street 38, Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432090, Egypt\",\"latitude\":\"31.218073599999993\",\"longitude\":\"29.95650559999999\",\"created_at\":\"2024-06-26T12:42:52.000000Z\",\"updated_at\":\"2024-06-26T12:42:52.000000Z\",\"user_id\":5,\"is_guest\":0,\"contact_person_name\":\"wezza laa\"}', 0, NULL, NULL, NULL, 0),
(100013, 3, 1, 50.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 12, '2024-07-04 13:07:30', '2024-07-04 13:07:41', 1, NULL, 79.30, NULL, NULL, 'delivery', 1, NULL, '2024-07-04', '17:22:30', 0.00, '{\"id\":12,\"address_type\":\"Home\",\"contact_person_number\":\"+2001200908090\",\"floor\":\"10\",\"house\":\"10\",\"road\":\"10\",\"address\":\"\\u0663\\u0660 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0647\\u062f \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u060c \\u0633\\u0645\\u0648\\u062d\\u0629\\u060c Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432074, Egypt\",\"latitude\":\"31.213746849911686\",\"longitude\":\"29.946615211665627\",\"created_at\":\"2024-07-02T07:59:28.000000Z\",\"updated_at\":\"2024-07-02T07:59:28.000000Z\",\"user_id\":3,\"is_guest\":1,\"contact_person_name\":\"10\",\"is_default\":0}', 0, NULL, NULL, NULL, 0),
(100014, 305, 1, 215.00, 0.00, NULL, 'unpaid', 'processing', 0.00, 'cash_on_delivery', NULL, 31, '2024-07-06 10:36:54', '2024-07-06 10:57:33', 1, NULL, 19.60, NULL, NULL, 'delivery', 1, NULL, '2024-07-06', '14:51:54', 0.00, '{\"id\":31,\"address_type\":\"Home\",\"contact_person_number\":\"+201143949854\",\"floor\":\"1\",\"house\":\"24\",\"road\":\"24\",\"address\":\"24 Khaled Ibn Al Walid, Al Mandarah Qebli, Montaza 2, Alexandria Governorate 5524207, Egypt\",\"latitude\":\"31.266544439439468\",\"longitude\":\"30.006082467734814\",\"created_at\":\"2024-07-06T10:36:28.000000Z\",\"updated_at\":\"2024-07-06T10:36:28.000000Z\",\"user_id\":305,\"is_guest\":1,\"contact_person_name\":\"\\u064a\\u0627\\u0633\\u0645\\u064a\\u0646 \\u062d\\u0633\\u0646\",\"is_default\":0}', 0, NULL, NULL, NULL, 0),
(100015, 5, 0, 50.00, 0.00, NULL, 'unpaid', 'pending', 0.00, 'cash_on_delivery', NULL, 29, '2024-07-06 11:56:09', '2024-07-06 12:13:15', 1, NULL, 79.30, NULL, NULL, 'delivery', 1, NULL, '2024-07-06', '19:16:00', 0.00, '{\"id\":29,\"address_type\":\"Home\",\"contact_person_number\":\"+201111047713\",\"floor\":null,\"house\":null,\"road\":null,\"address\":\"\\u0663\\u0660 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0647\\u062f \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u060c \\u0633\\u0645\\u0648\\u062d\\u0629\\u060c Ezbet Saad, Sidi Gaber, Alexandria Governorate 5432074, Egypt\",\"latitude\":\"31.213750577551593\",\"longitude\":\"29.946615546941757\",\"created_at\":\"2024-07-06T09:25:23.000000Z\",\"updated_at\":\"2024-07-06T09:25:23.000000Z\",\"user_id\":5,\"is_guest\":0,\"contact_person_name\":\"wezza laa\",\"is_default\":0}', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text DEFAULT NULL,
  `variation` longtext DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `add_on_ids` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `add_on_qtys` varchar(255) DEFAULT NULL,
  `add_on_taxes` varchar(255) DEFAULT NULL,
  `add_on_prices` varchar(255) DEFAULT NULL,
  `add_on_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `add_on_ids`, `variant`, `add_on_qtys`, `add_on_taxes`, `add_on_prices`, `add_on_tax_amount`) VALUES
(1, 2, 100001, 66.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":45,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"21\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"23\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-03T11:32:31.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":30,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0644\\u0645\\u0627\\u0636\\u0647 \\u0645\\u0643\\u0633\"},{\"id\":223,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"21\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-24 08:05:07', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(2, 37, 100002, 110.00, '{\"id\":37,\"name\":\"akeel strips\",\"description\":\"\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0642\\u0637\\u0639 \\u0633\\u062a\\u0631\\u0628\\u0633 \\u0645\\u0639 \\u0627\\u0631\\u0632 \\u0628\\u0627\\u0644\\u062e\\u0636\\u0627\\u0631 \\u0648\\u0628\\u0637\\u0627\\u0637\\u0633 \\u0648\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0639\\u0635\\u064a\\u0631 \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0646\\u0639\\u0646\\u0627\\u0639\",\"image\":\"2024-06-04-665eec5306092.png\",\"price\":110,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:18:40.000000Z\",\"updated_at\":\"2024-06-04T11:28:35.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-24 09:03:57', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(3, 2, 100002, 66.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":45,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"21\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"23\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-24T08:05:07.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"product_type\":\"veg\",\"translations\":[]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"21\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-24 09:03:57', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(4, 37, 100003, 110.00, '{\"id\":37,\"name\":\"akeel strips\",\"description\":\"\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0642\\u0637\\u0639 \\u0633\\u062a\\u0631\\u0628\\u0633 \\u0645\\u0639 \\u0627\\u0631\\u0632 \\u0628\\u0627\\u0644\\u062e\\u0636\\u0627\\u0631 \\u0648\\u0628\\u0637\\u0627\\u0637\\u0633 \\u0648\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0639\\u0635\\u064a\\u0631 \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0646\\u0639\\u0646\\u0627\\u0639\",\"image\":\"2024-06-04-665eec5306092.png\",\"price\":110,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:18:40.000000Z\",\"updated_at\":\"2024-06-24T09:03:57.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"product_type\":\"veg\",\"translations\":[]}', '[]', 0.00, 'discount_on_product', 2, 0.00, '2024-06-24 09:06:23', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(5, 2, 100004, 73.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-25T10:17:08.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":2,\"product_type\":\"veg\",\"translations\":[{\"id\":30,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0644\\u0645\\u0627\\u0636\\u0647 \\u0645\\u0643\\u0633\"},{\"id\":223,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 11:40:18', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(6, 56, 100004, 105.00, '{\"id\":56,\"name\":\"happiness offers 3\",\"description\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u0628\\u064a\\u062c \\u062a\\u0633\\u064a\\u062a\\u064a \\u0645\\u064a\\u062f\\u064a\\u0645 \\u0628\\u0627\\u0643\\u062a \\u0628\\u0637\\u0627\\u0637\\u0633 -\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0646\\u0639\\u0646\\u0627\\u0639\",\"image\":\"2024-06-04-665ee7a3730bf.png\",\"price\":105,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:44:54.000000Z\",\"updated_at\":\"2024-06-04T11:08:35.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"6\\\",\\\"position\\\":1},{\\\"id\\\":\\\"27\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":106,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":56,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0633\\u0639\\u0627\\u062f\\u0629 3\"},{\"id\":253,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":56,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u0628\\u064a\\u062c \\u062a\\u0633\\u064a\\u062a\\u064a \\u0645\\u064a\\u062f\\u064a\\u0645 \\u0628\\u0627\\u0643\\u062a \\u0628\\u0637\\u0627\\u0637\\u0633 -\\u0644\\u064a\\u0645\\u0648\\u0646 \\u0646\\u0639\\u0646\\u0627\\u0639\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 11:40:18', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(7, 66, 100004, 130.00, '{\"id\":66,\"name\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0631\\u0627\\u0648\\u0646\\u062f \\u0648 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0646\\u0643\\u0644\",\"description\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0627\\u0648 \\u0633\\u0645\\u0627\\u0634 \\u0644\\u062d\\u0645 \\u0645\\u064a\\u062f\\u064a\\u0645 - \\u062a\\u0634\\u064a\\u0632 \\u0643\\u0631\\u064a\\u0646\\u0643\\u0644 - \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0645\\u0646\\u062a\",\"image\":\"2024-06-04-665ee55987b24.png\",\"price\":130,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0633\\\\u0627\\\\u0646\\\\u062f\\\\u0648\\\\u062a\\\\u0634 \\\\u0627\\\\u0644\\\\u0628\\\\u0631\\\\u062c\\\\u0631\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0633\\\\u0645\\\\u0627\\\\u0634 \\\\u0628\\\\u0631\\\\u062c\\\\u0631 \\\\u062f\\\\u0628\\\\u0644 \\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0644\\\\u0645\\\\u0628\\\\u0631\\\\u062c\\\\u0631 \\\\u0641\\\\u0631\\\\u0627\\\\u062e \\\\u0644\\\\u0627\\\\u0631\\\\u062c \\\\u0645\\\\u0642\\\\u0644\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0644\\\\u0645\\\\u0628\\\\u0631\\\\u062c\\\\u0631 \\\\u0641\\\\u0631\\\\u0627\\\\u062e \\\\u0644\\\\u0627\\\\u0631\\\\u062c \\\\u0645\\\\u0634\\\\u0648\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:58:56.000000Z\",\"updated_at\":\"2024-06-04T10:58:49.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"6\\\",\\\"position\\\":1},{\\\"id\\\":\\\"29\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":121,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":66,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0631\\u0627\\u0648\\u0646\\u062f \\u0648 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0646\\u0643\\u0644\"},{\"id\":243,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":66,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0627\\u0648 \\u0633\\u0645\\u0627\\u0634 \\u0644\\u062d\\u0645 \\u0645\\u064a\\u062f\\u064a\\u0645 - \\u062a\\u0634\\u064a\\u0632 \\u0643\\u0631\\u064a\\u0646\\u0643\\u0644 - \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0645\\u0646\\u062a\"}]}', '[{\"name\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0631\\u062c\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u062f\\u0628\\u0644 \\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 11:40:18', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(8, 61, 100005, 75.00, '{\"id\":61,\"name\":\"rizo lamada\",\"description\":\"\",\"image\":\"2024-06-04-665ee630678a9.png\",\"price\":75,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0646\\\\u0648\\\\u0639\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0633\\\\u062a\\\\u0631\\\\u0628\\\\u0633\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0632\\\\u0646\\\\u062c\\\\u0631\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0634\\\\u0627\\\\u0648\\\\u0631\\\\u0645\\\\u0627 \\\\u0628\\\\u064a\\\\u062a\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"}]},{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0635\\\\u0648\\\\u0635\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0631\\\\u0627\\\\u0646\\\\u0634\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0633\\\\u0648\\\\u064a\\\\u062a \\\\u062a\\\\u0634\\\\u064a\\\\u0644\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u062b\\\\u0648\\\\u0645\\\\u064a\\\\u0647\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u062b\\\\u0648\\\\u0645\\\\u064a\\\\u0647 \\\\u0648\\\\u0628\\\\u0627\\\\u0631\\\\u0628\\\\u064a\\\\u0643\\\\u064a\\\\u0648\\\",\\\"optionPrice\\\":\\\"0\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:54:51.000000Z\",\"updated_at\":\"2024-06-04T11:02:24.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"6\\\",\\\"position\\\":1},{\\\"id\\\":\\\"29\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":113,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":61,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0631\\u064a\\u0632\\u0648 \\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\"},{\"id\":114,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":61,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0627\\u0631\\u0632 \\u0628\\u0627\\u0644\\u062e\\u0636\\u0627\\u0631 \\u0642\\u0637\\u0639 \\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0648 \\u0635\\u0648\\u0635 \\u0645\\u0646 \\u0627\\u062e\\u062a\\u0627\\u064a\\u0627\\u0631\\u0643\"}]}', '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0648\\u064a\\u062a \\u062a\\u0634\\u064a\\u0644\\u064a\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 14:44:58', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(9, 61, 100005, 75.00, '{\"id\":61,\"name\":\"rizo lamada\",\"description\":\"\",\"image\":\"2024-06-04-665ee630678a9.png\",\"price\":75,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0646\\\\u0648\\\\u0639\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0633\\\\u062a\\\\u0631\\\\u0628\\\\u0633\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0632\\\\u0646\\\\u062c\\\\u0631\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0634\\\\u0627\\\\u0648\\\\u0631\\\\u0645\\\\u0627 \\\\u0628\\\\u064a\\\\u062a\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"}]},{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0635\\\\u0648\\\\u0635\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0631\\\\u0627\\\\u0646\\\\u0634\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0633\\\\u0648\\\\u064a\\\\u062a \\\\u062a\\\\u0634\\\\u064a\\\\u0644\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u062b\\\\u0648\\\\u0645\\\\u064a\\\\u0647\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u062b\\\\u0648\\\\u0645\\\\u064a\\\\u0647 \\\\u0648\\\\u0628\\\\u0627\\\\u0631\\\\u0628\\\\u064a\\\\u0643\\\\u064a\\\\u0648\\\",\\\"optionPrice\\\":\\\"0\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:54:51.000000Z\",\"updated_at\":\"2024-06-25T14:44:58.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"6\\\",\\\"position\\\":1},{\\\"id\\\":\\\"29\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"product_type\":\"veg\",\"translations\":[{\"id\":113,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":61,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0631\\u064a\\u0632\\u0648 \\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\"},{\"id\":114,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":61,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0627\\u0631\\u0632 \\u0628\\u0627\\u0644\\u062e\\u0636\\u0627\\u0631 \\u0642\\u0637\\u0639 \\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0648 \\u0635\\u0648\\u0635 \\u0645\\u0646 \\u0627\\u062e\\u062a\\u0627\\u064a\\u0627\\u0631\\u0643\"}]}', '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 14:44:58', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(10, 2, 100006, 75.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-25T11:40:18.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":3,\"product_type\":\"veg\",\"translations\":[]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-25 18:47:24', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(11, 3, 100007, 58.00, '{\"id\":3,\"name\":\"chicken pane\",\"description\":\"\",\"image\":\"2024-06-04-665ef1e655387.png\",\"price\":40,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"18\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"20\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"15:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:40.000000Z\",\"updated_at\":\"2024-06-04T11:52:22.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"12\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":31,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":3,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0641\\u0631\\u0627\\u062e \\u0628\\u0627\\u0646\\u064a\\u0647\"},{\"id\":32,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":3,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0641\\u0631\\u0627\\u062e \\u0628\\u0627\\u0646\\u064a\\u0647 \\u0641\\u0631\\u064a\\u0634 \\u0645\\u0639 \\u062e\\u064a\\u0627\\u0631 \\u0648\\u062e\\u0633 \\u0648\\u0637\\u0645\\u0627\\u0637\\u0645 \\u0648\\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:20:51', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(12, 5, 100007, 66.00, '{\"id\":5,\"name\":\"mixcan souses\",\"description\":\"\",\"image\":\"2024-06-02-665c58247ad20.png\",\"price\":42,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"22\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"24\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:31:48.000000Z\",\"updated_at\":\"2024-06-25T10:15:46.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":34,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":5,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0645\\u0643\\u0633\\u064a\\u0633\\u0646 \\u0633\\u0648\\u0633\\u064a\\u0633\"},{\"id\":35,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":5,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633 \\u062c\\u0628\\u0646 - \\u0641\\u0644\\u0641\\u0644 \\u0632\\u064a\\u062a\\u0648\\u0646 - \\u0645\\u064a\\u0648\\u0646\\u064a\\u0632 - \\u0633\\u0648\\u0633\\u064a\\u0633\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"24\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:20:51', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(13, 88, 100007, 50.00, '{\"id\":88,\"name\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0641\\u0627\\u0646\\u064a\\u0644\\u0627\",\"description\":\"\",\"image\":\"2024-06-03-665d8ca409a9c.png\",\"price\":50,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-03T10:28:04.000000Z\",\"updated_at\":\"2024-06-03T10:28:04.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"20\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":159,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":88,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0641\\u0627\\u0646\\u064a\\u0644\\u0627\"},{\"id\":160,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":88,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0641\\u0627\\u0646\\u064a\\u0644\\u0627\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:20:51', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(14, 89, 100007, 50.00, '{\"id\":89,\"name\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0634\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\",\"description\":\"\",\"image\":\"2024-06-03-665d8cf7a7e01.png\",\"price\":50,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-03T10:29:27.000000Z\",\"updated_at\":\"2024-06-03T10:29:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"20\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":161,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":89,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0634\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\"},{\"id\":162,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":89,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u064a\\u0644\\u0643 \\u0634\\u064a\\u0643 \\u0634\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:20:51', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(15, 2, 100008, 75.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-25T18:47:24.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":4,\"product_type\":\"veg\",\"translations\":[{\"id\":30,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0644\\u0645\\u0627\\u0636\\u0647 \\u0645\\u0643\\u0633\"},{\"id\":223,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:26:22', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(16, 3, 100008, 58.00, '{\"id\":3,\"name\":\"chicken pane\",\"description\":\"\",\"image\":\"2024-06-04-665ef1e655387.png\",\"price\":40,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"18\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"20\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"15:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:40.000000Z\",\"updated_at\":\"2024-06-26T11:20:51.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"12\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"product_type\":\"veg\",\"translations\":[{\"id\":31,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":3,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0641\\u0631\\u0627\\u062e \\u0628\\u0627\\u0646\\u064a\\u0647\"},{\"id\":32,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":3,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0641\\u0631\\u0627\\u062e \\u0628\\u0627\\u0646\\u064a\\u0647 \\u0641\\u0631\\u064a\\u0634 \\u0645\\u0639 \\u062e\\u064a\\u0627\\u0631 \\u0648\\u062e\\u0633 \\u0648\\u0637\\u0645\\u0627\\u0637\\u0645 \\u0648\\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 11:26:22', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(17, 35, 100009, 105.00, '{\"id\":35,\"name\":\"akeel zinger spice\",\"description\":\"\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0642\\u0637\\u0639 \\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631 \\u0645\\u0639 \\u0627\\u0631\\u0632 \\u0628\\u0627\\u0644\\u062e\\u0636\\u0627\\u0631 \\u0648\\u0628\\u0637\\u0627\\u0637\\u0633 \\u0648\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0639\\u0635\\u064a\\u0631 \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0646\\u0639\\u0646\\u0627\\u0639\",\"image\":\"2024-06-04-665eec958040c.png\",\"price\":105,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:17:05.000000Z\",\"updated_at\":\"2024-06-04T11:29:41.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"3\\\",\\\"position\\\":1},{\\\"id\\\":\\\"8\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 12:43:49', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(18, 7, 100010, 68.00, '{\"id\":7,\"name\":\"crispy chicken spice with cheese\",\"description\":\"\\u0635\\u062f\\u0648\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0645\\u0642\\u0631\\u0645\\u0634\\u0647 \\u0633\\u0628\\u0627\\u064a\\u0633\\u064a \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u062d\\u0627\\u0631 \\u0648\\u062c\\u0628\\u0646\\u0647 \\u0634\\u064a\\u062f\\u0631\",\"image\":\"2024-06-02-665c58ed0b376.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"18\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"20\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:35:09.000000Z\",\"updated_at\":\"2024-06-03T11:32:15.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"12\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":37,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":7,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0641\\u0631\\u0627\\u062e \\u0643\\u0631\\u0633\\u0628\\u064a \\u062d\\u0627\\u0631 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646\\u0647\"},{\"id\":228,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":7,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0635\\u062f\\u0648\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0645\\u0642\\u0631\\u0645\\u0634\\u0647 \\u0633\\u0628\\u0627\\u064a\\u0633\\u064a \\u0645\\u0639 \\u0635\\u0648\\u0635 \\u062d\\u0627\\u0631 \\u0648\\u062c\\u0628\\u0646\\u0647 \\u0634\\u064a\\u062f\\u0631\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 13:36:43', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(19, 29, 100010, 32.00, '{\"id\":29,\"name\":\"potatoes\",\"description\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633 - \\u0645\\u064a\\u0648\\u0646\\u064a\\u0632 -\\u0643\\u0627\\u062a\\u0634\\u0628\",\"image\":\"2024-06-04-665eedca02720.png\",\"price\":22,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"10\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"13\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:05:57.000000Z\",\"updated_at\":\"2024-06-04T11:34:50.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":68,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":29,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0628\\u0637\\u0627\\u0637\\u0633\"},{\"id\":235,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":29,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633 - \\u0645\\u064a\\u0648\\u0646\\u064a\\u0632 -\\u0643\\u0627\\u062a\\u0634\\u0628\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"10\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 13:36:43', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(20, 54, 100011, 90.00, '{\"id\":54,\"name\":\"happiness offers2\",\"description\":\"\",\"image\":\"2024-06-04-665ee78298ed2.png\",\"price\":90,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T13:43:07.000000Z\",\"updated_at\":\"2024-06-04T11:08:02.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"6\\\",\\\"position\\\":1},{\\\"id\\\":\\\"27\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":103,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":54,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0633\\u0639\\u0627\\u062f\\u0647 2\"},{\"id\":104,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":54,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0645\\u064a\\u062f\\u064a\\u0645 - \\u062c\\u0631\\u064a\\u0644 \\u0628\\u0637\\u0627\\u0637\\u0633 -\\u0645\\u064a\\u062f\\u064a\\u0645 - \\u0628\\u0627\\u0643\\u062a \\u0628\\u0637\\u0627\\u0637\\u0633 - \\u0644\\u064a\\u0645\\u0648\\u0646 \\u0645\\u0646\\u062a\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 15:46:38', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(21, 121, 100011, 45.00, '{\"id\":121,\"name\":\"\\u062a\\u0634\\u064a\\u0632 \\u0643\\u064a\\u0643 \\u0643\\u0631\\u0627\\u0645\\u064a\\u0644\",\"description\":\"\",\"image\":\"2024-06-04-665ec768de49c.png\",\"price\":45,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-03T11:00:38.000000Z\",\"updated_at\":\"2024-06-04T08:51:04.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"15\\\",\\\"position\\\":1},{\\\"id\\\":\\\"31\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"translations\":[{\"id\":211,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":121,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u062a\\u0634\\u0643\\u064a\\u0632 \\u0643\\u064a\\u0643 \\u0643\\u0631\\u0627\\u0645\\u064a\\u0644\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-06-26 15:46:38', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(22, 2, 100012, 73.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-06-26T11:26:22.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":5,\"product_type\":\"veg\",\"translations\":[]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-02 08:03:45', '2024-07-02 09:12:06', '[]', '[]', '[]', '[]', '[]', 0.00),
(23, 2, 100013, 50.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-07-02T08:03:45.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":6,\"product_type\":\"veg\",\"is_recommended\":0,\"translations\":[{\"id\":30,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0644\\u0645\\u0627\\u0636\\u0647 \\u0645\\u0643\\u0633\"},{\"id\":223,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-04 13:07:30', '2024-07-04 13:07:30', '[]', '[]', '[]', '[]', '[]', 0.00),
(24, 18, 100014, 135.00, '{\"id\":18,\"name\":\"solo meal\",\"description\":\"\\u062b\\u0644\\u0627\\u062b\\u0647 \\u0642\\u0637\\u0639 \\u0628\\u0631\\u0648\\u0633\\u062a\\u062f \\u0635\\u062f\\u0631 \\u0648 \\u0641\\u062e\\u0630 \\u0648 \\u062c\\u0646\\u0627\\u062d \\u0627\\u0648 \\u062f\\u0628\\u0648\\u0633 \\u0645\\u0639 \\u062b\\u0644\\u0627\\u062b\\u0629 \\u0642\\u0637\\u0639 \\u0628\\u0631\\u0648\\u0633\\u062a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0627\\u062c\\u0646\\u062d\\u0647 \\u0648\\u0627\\u0644\\u062f\\u0628\\u0627\\u0628\\u064a\\u0633 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637\\u0633 \\u0648 \\u0643\\u0644\\u0648\\u0633\\u0644\\u0648 \\u0648\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0639\\u064a\\u0634 \\u0648\\u0643\\u0627\\u062a\\u0634\\u0628\",\"image\":\"2024-06-04-665ef0a35b645.png\",\"price\":135,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0646\\\\u0648\\\\u0639\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0633\\\\u0628\\\\u0627\\\\u064a\\\\u0633\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0639\\\\u0627\\\\u062f\\\\u064a\\\",\\\"optionPrice\\\":\\\"0\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:51:43.000000Z\",\"updated_at\":\"2024-06-04T11:46:59.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"5\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"is_recommended\":0,\"translations\":[{\"id\":51,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":18,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0648\\u062c\\u0628\\u0629 \\u0635\\u0648\\u0644\\u0648 3\\u0642\\u0637\\u0639\"},{\"id\":52,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":18,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0642\\u0637\\u0639 \\u0628\\u0631\\u0648\\u0633\\u062a\\u062f \\u0635\\u062f\\u0631 \\u0648 \\u0641\\u062e\\u0630 \\u0648\\u062c\\u0646\\u0627\\u062d \\u0627\\u0648 \\u062f\\u0628\\u0648\\u0633 \\u0645\\u0639 \\u0628\\u0637\\u0627\\u0637\\u0633 \\u0648 \\u0643\\u0644\\u0648\\u0633\\u0644\\u0648 \\u0648\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0639\\u064a\\u0634 \\u0648\\u0643\\u0627\\u062a\\u0634\\u0628\"}]}', '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-06 10:36:54', '2024-07-06 10:36:54', '[]', '[]', '[]', '[]', '[]', 0.00);
INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `add_on_ids`, `variant`, `add_on_qtys`, `add_on_taxes`, `add_on_prices`, `add_on_tax_amount`) VALUES
(25, 2, 100014, 50.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-07-04T13:07:30.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":7,\"product_type\":\"veg\",\"is_recommended\":0,\"translations\":[{\"id\":30,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0644\\u0645\\u0627\\u0636\\u0647 \\u0645\\u0643\\u0633\"},{\"id\":223,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":2,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\"}]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-06 10:36:54', '2024-07-06 10:36:54', '[]', '[]', '[]', '[]', '[]', 0.00),
(26, 81, 100014, 30.00, '{\"id\":81,\"name\":\"\\u0633\\u0645\\u0648\\u0632\\u064a \\u0628\\u0644\\u0648\\u0628\\u064a\\u0631\\u064a\",\"description\":\"\\u0633\\u0645\\u0648\\u0632\\u064a \\u0628\\u0644\\u0648\\u0628\\u064a\\u0631\\u064a\",\"image\":\"2024-06-04-665ee0a660ec1.png\",\"price\":30,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2024-06-03T10:22:11.000000Z\",\"updated_at\":\"2024-06-04T10:38:46.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"21\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"amount\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"product_type\":\"veg\",\"is_recommended\":0,\"translations\":[{\"id\":148,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":81,\"locale\":\"ar\",\"key\":\"name\",\"value\":\"\\u0633\\u0645\\u0648\\u0632\\u064a \\u0628\\u0644\\u0648\\u0628\\u064a\\u0631\\u064a\"},{\"id\":247,\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":81,\"locale\":\"ar\",\"key\":\"description\",\"value\":\"\\u0633\\u0645\\u0648\\u0632\\u064a \\u0628\\u0644\\u0648\\u0628\\u064a\\u0631\\u064a\"}]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-06 10:36:54', '2024-07-06 10:36:54', '[]', '[]', '[]', '[]', '[]', 0.00),
(27, 2, 100015, 50.00, '{\"id\":2,\"name\":\"lmada mix\",\"description\":\"\\u0645\\u0643\\u0633\\u0627\\u062a \\u062c\\u0628\\u0646 - \\u0628\\u0633\\u0637\\u0631\\u0645\\u0629 - \\u0637\\u0645\\u0627\\u0637\\u0645 - \\u0645\\u0627\\u064a\\u0648\\u0646\\u064a\\u0632\",\"image\":\"2024-06-02-665c56d8971e2.png\",\"price\":50,\"variations\":\"[{\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u062d\\\\u062c\\\\u0645\\\",\\\"type\\\":\\\"single\\\",\\\"min\\\":0,\\\"max\\\":0,\\\"required\\\":\\\"on\\\",\\\"values\\\":[{\\\"label\\\":\\\"\\\\u0648\\\\u0633\\\\u0637\\\",\\\"optionPrice\\\":\\\"0\\\"},{\\\"label\\\":\\\"\\\\u0643\\\\u0628\\\\u064a\\\\u0631\\\",\\\"optionPrice\\\":\\\"23\\\"},{\\\"label\\\":\\\"\\\\u062a\\\\u0648\\\\u0631\\\\u062a\\\\u064a\\\\u0644\\\\u0627\\\",\\\"optionPrice\\\":\\\"25\\\"}]}]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"10:00:00\",\"available_time_ends\":\"03:30:00\",\"status\":1,\"created_at\":\"2024-06-02T12:26:16.000000Z\",\"updated_at\":\"2024-07-06T10:36:54.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"13\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"amount\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":8,\"product_type\":\"veg\",\"is_recommended\":0,\"translations\":[]}', '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"}]}]', 0.00, 'discount_on_product', 1, 0.00, '2024-07-06 11:56:09', '2024-07-06 11:56:09', '[]', '[]', '[]', '[]', '[]', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_partial_payments`
--

CREATE TABLE `order_partial_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `paid_with` varchar(255) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(255) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `original_delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional_data`)),
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payer_information`)),
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`receiver_information`)),
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `payer_id`, `receiver_id`, `payment_amount`, `gateway_callback_url`, `success_hook`, `failure_hook`, `transaction_id`, `currency_code`, `payment_method`, `additional_data`, `is_paid`, `created_at`, `updated_at`, `payer_information`, `external_redirect_link`, `receiver_information`, `attribute_id`, `attribute`, `payment_platform`) VALUES
('ffb9f8c6-d0d2-43f6-ae98-6a35f0d9dc92', '27', '100', 197.48, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-06-26 14:39:44', '2024-06-26 14:39:44', '{\"name\":\"Mahmoud Abdallah\",\"email\":\"mahmoudabdallah144@icloud.com\",\"phone\":\"+201111134082\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('736ed69f-2f0d-4e75-bef1-c240391b5723', '28', '100', 145.00, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-06-26 15:43:15', '2024-06-26 15:43:15', '{\"name\":\"Engy Mohamed Elhelwa\",\"email\":\"engyelhelwa86@gmail.com\",\"phone\":\"+2001550068211\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('a71763cc-8d1e-4d13-add2-10135e956239', '21', '100', 85.00, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-06-30 16:28:02', '2024-06-30 16:28:02', '{\"name\":\"Hussien Ahmed\",\"email\":\"ragnarahmed5@gmail.com\",\"phone\":\"+2001018482936\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('47007b76-de14-4514-a077-8d39d63e0e92', '3', '100', 60.00, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-06-30 16:29:31', '2024-06-30 16:29:31', '{\"name\":\"Many ..\",\"email\":\"manymalkalby@gmail.com\",\"phone\":\"+2001011617126\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('3e4a309c-a6fe-455f-b793-9ccdea2a4575', '3', '100', 60.00, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-06-30 16:33:37', '2024-06-30 16:33:37', '{\"name\":\"Many ..\",\"email\":\"manymalkalby@gmail.com\",\"phone\":\"+2001011617126\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('0a3467f4-9817-47cf-9ad3-d0bd493a3e77', '3', '100', 76.43, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-02 07:59:57', '2024-07-02 07:59:57', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('99f4d758-af83-40d2-abd8-b9a5ecbe66b2', '3', '100', 76.43, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-02 08:08:59', '2024-07-02 08:08:59', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('83f27d72-2c71-435e-bfe5-42f01be9234c', '3', '100', 76.43, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-02 08:14:17', '2024-07-02 08:14:17', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('0bb7ef06-5b33-4ae4-aefc-5fb27d5b7e42', '3', '100', 76.43, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-02 08:17:12', '2024-07-02 08:17:12', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('a68d868f-918d-442d-9d27-e409b04e5b54', '3', '100', 76.43, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-02 08:24:48', '2024-07-02 08:24:48', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app'),
('c9cdb2f8-cd8e-4378-af17-4ff65acd67f2', '3', '100', 129.30, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-04 12:51:02', '2024-07-04 12:51:02', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1720097461', 'order', 'app'),
('b3029d75-0638-497e-ae71-66942d90934c', '3', '100', 129.30, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-04 12:51:51', '2024-07-04 12:51:51', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1720097511', 'order', 'app'),
('06618076-ae33-4287-b2df-5a7af0ad2627', '3', '100', 129.30, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-04 13:00:27', '2024-07-04 13:00:27', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1720098027', 'order', 'app'),
('4a461df2-37c8-420e-a16a-741caf98fe83', '3', '100', 129.30, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'paymob_accept', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-04 13:09:28', '2024-07-04 13:09:28', '{\"name\":\"10 \",\"email\":\"\",\"phone\":\"+2001200908090\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1720098568', 'order', 'app'),
('5e7a271a-dd8a-409e-9748-b9c389635dae', '5', '100', 152.30, NULL, 'order_place', 'order_cancel', NULL, 'EGP', 'bkash', '{\"business_name\":\"Lamada\",\"business_logo\":\"https:\\/\\/app.lamadafood.com\\/storage\\/app\\/public\\/restaurant\\/2024-05-29-665647a8d670c.png\"}', 0, '2024-07-06 11:40:21', '2024-07-06 11:40:21', '{\"name\":\"wezza laa\",\"email\":\"imoaz877@gmail.com\",\"phone\":\"+201111047713\",\"address\":\"\"}', 'https://App.lamadafood.com/order-completed', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `point_transitions`
--

CREATE TABLE `point_transitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `variations` text DEFAULT NULL,
  `add_ons` varchar(255) DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `set_menu` tinyint(1) NOT NULL DEFAULT 0,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `colors` text DEFAULT NULL,
  `popularity_count` int(11) NOT NULL DEFAULT 0,
  `product_type` varchar(255) DEFAULT NULL COMMENT 'veg, non_veg',
  `is_recommended` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `add_ons`, `tax`, `available_time_starts`, `available_time_ends`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `set_menu`, `branch_id`, `colors`, `popularity_count`, `product_type`, `is_recommended`) VALUES
(2, 'lmada mix', 'مكسات جبن - بسطرمة - طماطم - مايونيز', '2024-06-02-665c56d8971e2.png', 50.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '[]', 0.00, '10:00:00', '03:30:00', 1, '2024-06-02 12:26:16', '2024-07-06 11:56:09', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"13\",\"position\":2}]', '[]', 0.00, 'amount', 'percent', 1, 1, NULL, 9, 'veg', 0),
(3, 'chicken pane', '', '2024-06-04-665ef1e655387.png', 40.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"20\"}]}]', '[]', 0.00, '10:00:00', '15:30:00', 1, '2024-06-02 12:26:40', '2024-06-26 11:26:22', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 2, 'veg', 0),
(4, 'shish tawwok', 'قطع شيش طاووك وراك مع الطماطم والفلفل والبصل وصوص التكساس المدخن', '2024-06-02-665c57c0f3bf0.png', 55.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '[]', 0.00, '10:00:00', '15:30:00', 1, '2024-06-02 12:30:09', '2024-06-03 11:33:08', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(5, 'mixcan souses', '', '2024-06-02-665c58247ad20.png', 42.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"22\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"24\"}]}]', '[]', 0.00, '10:00:00', '03:30:00', 1, '2024-06-02 12:31:48', '2024-06-26 11:20:51', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"13\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(6, 'chicken strips with cheese', 'صدور فراخ مقرمشه مع صوص الف جزيره وجبنه شيدر', '2024-06-02-665c585499f11.png', 50.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"20\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"22\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:32:36', '2024-06-03 11:33:39', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(7, 'crispy chicken spice with cheese', 'صدور فراخ مقرمشه سبايسي مع صوص حار وجبنه شيدر', '2024-06-02-665c58ed0b376.png', 50.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"20\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:35:09', '2024-06-26 13:36:43', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(8, 'ميكسين سجق', 'مكس جبن - فلفل زيتون - ميونيز - سجق', '2024-06-04-665ef162c1eca.png', 50.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '[]', 0.00, '10:00:00', '03:30:00', 1, '2024-06-02 12:36:06', '2024-06-25 10:14:14', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"13\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(9, 'chicken lamada grilled', 'صدور فراخ مشويه مع زيتون وصوص باربيكيو وجبنه شيدر', '2024-06-02-665c598b37d49.png', 60.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:37:47', '2024-06-03 11:35:30', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(10, 'جبنه متبله جريل', 'مكس جبن - فلفل زيتون - ميونيز', '2024-06-02-665c59b1bc2a9.png', 31.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"15\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"17\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:38:25', '2024-06-25 10:13:36', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"13\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(11, 'جبنه جريل بطاطس', '', '2024-06-02-665c5a2227388.png', 36.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"17\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"19\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:40:18', '2024-06-25 10:17:55', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"13\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(12, 'سدق مشوي', '', '2024-06-02-665c5ab2a23da.png', 37.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"19\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"21\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:42:42', '2024-06-03 11:40:03', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(13, 'sea food', 'سي فود -  جمبي - كابوريا - كاليماري - خس - صوص تارتار', '2024-06-02-665c5abf60cfb.png', 60.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"28\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"30\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:42:55', '2024-06-03 11:35:17', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(14, 'كفته مشويه', 'كفته مشويه مع طحينه وخيار مخلل', '2024-06-02-665c5b1abe320.png', 48.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"29\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"37\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 0, '2024-06-02 12:44:26', '2024-06-25 11:11:54', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(15, 'fride shrimp', 'جمبري مقلس - خس - صوص التارتار', '2024-06-04-665ef110705bd.png', 75.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"22\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:45:14', '2024-06-04 11:48:48', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(16, 'lite meal', '', '2024-06-04-665ef0c69309b.png', 115.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:48:29', '2024-06-04 11:47:34', '[]', '[{\"id\":\"5\",\"position\":1}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(17, 'smash burger', 'سماش برجر دبل - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة', '2024-06-02-665c5c226690d.png', 90.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"30\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:48:50', '2024-06-03 11:38:33', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"23\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(18, 'solo meal', 'ثلاثه قطع بروستد صدر و فخذ و جناح او دبوس مع ثلاثة قطع بروستد من الاجنحه والدبابيس مع بطاطس و كلوسلو وثوميه وعيش وكاتشب', '2024-06-04-665ef0a35b645.png', 135.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:51:43', '2024-07-06 10:36:54', '[]', '[{\"id\":\"5\",\"position\":1}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(19, 'smash burger mushroom', '', '2024-06-04-665ef07b5f899.png', 105.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"40\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:51:44', '2024-06-04 11:46:19', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"23\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(20, 'due meal', 'ستة قطع بروستد مع بطاطس و كلوسلو وثوميه وعيش وكاتشب', '2024-06-04-665ef03d6822e.png', 255.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:53:24', '2024-06-04 11:45:17', '[]', '[{\"id\":\"5\",\"position\":1}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(21, 'smash burger bacon', '', '2024-06-04-665ef00b7182f.png', 115.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"45\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:53:58', '2024-06-04 11:44:27', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"23\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(22, 'triple meal', 'تسعة قطع بروستد فرخة كامله مع بطاطس و كلوسلو وثوميه وعيش وكاتشب', '2024-06-04-665eefe1d4725.png', 375.00, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:55:38', '2024-06-04 11:43:45', '[]', '[{\"id\":\"5\",\"position\":1}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(23, 'smash burger mozzarela steak', 'سماش برجر موتزريل ستيك  - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة', '2024-06-02-665c5df6b91f2.png', 110.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"40\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:56:38', '2024-06-03 11:47:28', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"23\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(24, 'smash burger mozzerla  mushroom', '', '2024-06-04-665eefb996628.png', 125.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"50\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:58:38', '2024-06-04 11:43:05', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"23\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(25, 'chicken big tasty', '', '2024-06-04-665eeee6826c9.png', 100.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 12:59:33', '2024-06-04 11:39:34', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(26, 'lamburger chicken', 'لمبرجر فراخ  - جبنه شيدر - صوص جبنه /  رانش   - علبه سلطة', '2024-06-04-665eee9aa7de0.png', 60.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"30\"}]},{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u062c\\u0628\\u0646\\u0629\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:01:56', '2024-06-04 11:38:18', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(27, 'lamburger chicken dupple', 'لمبرجر فراخ دبل  - جبنه شيدر - صوص جبنه / رانش - علبه سلط', '2024-06-04-665eee641e0cb.png', 100.00, '[{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:03:30', '2024-06-04 11:37:24', '[]', '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(28, 'chicken strips', '', '2024-06-04-665eee087ad3e.png', 95.00, '[{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:05:10', '2024-06-04 11:35:52', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(29, 'potatoes', 'سندوتش البطاطس - ميونيز -كاتشب', '2024-06-04-665eedca02720.png', 22.00, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"10\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"13\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:05:57', '2024-06-26 13:36:43', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(30, 'potatoes backet', 'بطاطس', '2024-06-04-665eed9c2a1af.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:07:49', '2024-06-04 11:34:04', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(31, 'spice zinger', 'ثلاثة قطع صدور فراخ مقرمشة سبايسي مع صوص  وخس وجبنه شيدر', '2024-06-04-665eed6014286.png', 85.00, '[{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:08:08', '2024-06-04 11:33:04', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(32, 'potatoes backet crencle', 'باكت بطاطس كرينكل', '2024-06-04-665eed3a3d316.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:09:29', '2024-06-04 11:32:26', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(33, 'Halapeno zinger', 'ثلاثة قطع صدور فراخ مقرمشه سبايسي مع صوص سبايسي وفلفل هالبينو وجبنه شيدر وخس', '2024-06-04-665eecfd2363a.png', 85.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:10:24', '2024-06-04 11:31:25', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(34, 'lamada fesfour', 'فسفور لماضه - جمبري - كابوريا - كاليماري - خس - صوص جبنه', '2024-06-04-665eecc5db305.png', 110.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:11:32', '2024-06-04 11:30:29', '[]', '[{\"id\":\"4\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(35, 'akeel zinger spice', 'ثلاثة قطع زنجر حار مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665eec958040c.png', 105.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:17:05', '2024-06-26 12:43:49', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(36, 'elwaly cheecken zinger spisy', '', '2024-06-02-665c62c7c495d.png', 140.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:17:11', '2024-06-03 11:56:37', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(37, 'akeel strips', 'ثلاثة قطع ستربس مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665eec5306092.png', 110.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:18:40', '2024-06-24 09:06:23', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 2, 'veg', 0),
(38, 'elwaly checken strpise', '4  قطع استربس - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع', '2024-06-04-665eebfbbecf9.png', 140.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:19:41', '2024-06-04 11:27:07', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(39, 'akeel seafood', 'جمبري وكابوريا وكاليماري مع ارز بالخضار وبطاطس وصوص تارتار وعصير ليمون نعناع', '2024-06-04-665eeb948dbec.png', 110.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:20:23', '2024-06-04 11:25:24', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(40, 'الوالي كفته مشويه', 'خمس قطع كفته مشويه - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع', '2024-06-02-665c63d4ce735.png', 175.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 0, '2024-06-02 13:21:40', '2024-06-25 11:11:52', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(41, 'akeel kofta', 'اربع قطع كفته مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665eeb39eede8.png', 130.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 0, '2024-06-02 13:21:57', '2024-06-25 11:12:05', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(42, 'akeel chicken lamada', 'اربع قطع صدور مشويه مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665eeaec10593.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:23:42', '2024-06-04 11:22:36', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(43, 'الوالي تشكن لماضة مشوي', '', '2024-06-02-665c646670ad7.png', 155.00, '[{\"name\":\"\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:24:06', '2024-06-03 12:39:12', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(44, 'elwaly chicken grill', '', '2024-06-02-665c64f392132.png', 180.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:26:27', '2024-06-03 11:59:24', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(45, 'akeel shish tawook', 'قطع الشيش طاووك مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665eeaa2dea74.png', 135.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:26:36', '2024-06-04 11:21:22', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(46, 'elwaly mix', '', '2024-06-04-665eea2fd103b.png', 185.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:28:32', '2024-06-04 11:19:27', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(47, 'akeel mix', 'قطع الكفته والشيش طاووك و الستربس مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع', '2024-06-04-665ee9d9ebbcb.png', 135.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:29:44', '2024-06-04 11:18:01', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(48, 'elwaly mix chicken', '', '2024-06-04-665ee973460af.png', 180.00, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:30:18', '2024-06-04 11:16:19', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(49, 'akeel mix chicken', '', '2024-06-04-665ee925954bb.png', 135.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:32:29', '2024-06-04 11:15:01', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(50, 'akeel shirmp', 'جمبري - ارز بالخضار - بطاطس - صوص تارتار - عصير لمون نعناع', '2024-06-04-665ee894cd246.png', 160.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:34:10', '2024-06-04 11:12:36', '[]', '[{\"id\":\"3\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(51, 'single 1 karmasha box', 'ثلاثة قطع فراخ ستربس سبايسي او عادي وسناكس بوتيتو و بطاطس وعيش وعصير ليمون نعناع', '2024-06-02-665c681477c2a.png', 95.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:39:48', '2024-06-03 12:05:19', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(52, 'happiness offers 1', 'ستربس او زنجر حار كبير في عيش البطاطس سماش برجر ميديم 120 جرام بطاطس كرينكل مشروب سباتس أو ليمون منت صوص بيج تيستي', '2024-06-04-665ee7ff090c5.png', 205.00, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0631\\u0627\\u0646\\u0633\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:40:52', '2024-06-04 11:10:07', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(53, 'single 3', '', '2024-06-02-665c6899ba26a.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:42:01', '2024-06-25 11:08:33', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(54, 'happiness offers2', '', '2024-06-04-665ee78298ed2.png', 90.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:43:07', '2024-06-26 15:46:38', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(55, 'single 4', 'اتنين ميني  جمبري +اتنين ميني سي فود+بطاطس+كلوسلو+صوص تارتار +عصير ليمون منت', '2024-06-04-665ee74db3191.png', 170.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:44:05', '2024-06-04 11:07:09', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(56, 'happiness offers 3', 'سماش برجر بيج تسيتي ميديم باكت بطاطس -ليمون نعناع', '2024-06-04-665ee7a3730bf.png', 105.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:44:54', '2024-06-25 11:40:18', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(57, 'single 5', 'ميني ستربس او زنجر+ميني شاورما او كفته+ميني ميكسكن سوسيس +ميني شيكولاته مكسرات+مخلل+كلوسلو+بطاطس+عصير ليمون نعناع', '2024-06-02-665c699b21969.png', 135.00, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:46:19', '2024-06-25 11:08:06', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(58, 'happiness offers 4', '', '2024-06-04-665ee6935bfc4.png', 80.00, '[{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:46:38', '2024-06-04 11:04:03', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(59, 'happiness offers 5', '', '2024-06-04-665ee67463a3e.png', 150.00, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0631\\u062c\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u062f\\u0627\\u0628\\u0644 \\u0645\\u064a\\u062f\\u064a\\u0645\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:48:56', '2024-06-04 11:03:32', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(60, 'single 7', 'لمبرجر فراخ وسط مقلي + جبنه جريل بطاطس+باكت بطاطس+ليمون نعناع', '2024-06-04-665ee655283df.png', 110.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:53:55', '2024-06-04 11:03:01', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(61, 'rizo lamada', '', '2024-06-04-665ee630678a9.png', 75.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0634\\u0627\\u0648\\u0631\\u0645\\u0627 \\u0628\\u064a\\u062a\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0633\\u0648\\u064a\\u062a \\u062a\\u0634\\u064a\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0628\\u0627\\u0631\\u0628\\u064a\\u0643\\u064a\\u0648\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:54:51', '2024-06-25 14:44:58', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 2, 'veg', 0),
(62, 'single 8', 'شيش طاووك+سدق مشوي +باكت بطاطس+ليمون نعناع', '2024-06-04-665ee605dadc5.png', 115.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:55:29', '2024-06-04 11:01:41', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(63, 'عرض الدويتو', '', '2024-06-04-665ee5e09ef5c.png', 170.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:56:53', '2024-06-04 11:01:04', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(64, 'single 9', '', '2024-06-04-665ee5a0a251d.png', 115.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:57:03', '2024-06-04 11:00:00', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(65, 'single 10', 'كرسبي حار +لماضه ميكس+باكت بطاطس+ليمون نعناع', '2024-06-04-665ee57e24bd5.png', 115.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:58:32', '2024-06-04 10:59:26', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(66, 'عرض الراوند و الكرينكل', 'لمبرجر تشكن لارج او سماش لحم ميديم - تشيز كرينكل - ليمون منت', '2024-06-04-665ee55987b24.png', 130.00, '[{\"name\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0631\\u062c\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u062f\\u0628\\u0644 \\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0644\\u0627\\u0631\\u062c \\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0644\\u0627\\u0631\\u062c \\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 13:58:56', '2024-06-25 11:40:18', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(67, 'single 11', 'تشيكن لماضه +جبنه جريل+باكت بطاطس+ليمون نعناع', '2024-06-04-665ee5165423d.png', 110.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 14:01:10', '2024-06-04 10:57:42', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(68, 'بوكس القرمشة دبل', '', '2024-06-04-665ee4c472648.png', 175.00, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 14:01:48', '2024-06-04 10:56:20', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(69, 'rab offer', '', '2024-06-04-665ee478f23de.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 14:03:26', '2024-06-04 10:55:04', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(70, 'cranchi box', '', '2024-06-04-665ee4146b86a.png', 120.00, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-02 14:04:01', '2024-06-04 10:53:24', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(71, 'صينية الشله ميكس', '', '2024-06-03-665d8607b6b62.png', 440.00, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 09:59:51', '2024-06-03 12:11:08', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(72, 'صينية الشلة مشكل', '', '2024-06-03-665d8626b1378.png', 440.00, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:00:22', '2024-06-03 12:10:41', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(73, 'صينية الشله سي فود', '', '2024-06-03-665d86d820db3.png', 440.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:03:20', '2024-06-03 10:03:20', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(74, 'عرض اللمه', '', '2024-06-04-665ee3ade644d.png', 410.00, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0648\\u0633\\u0637\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0646\\u0648\\u0639 \\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0643\\u0628\\u064a\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:03:45', '2024-06-04 10:51:41', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(75, 'صينية الفرخة بروستد', '', '2024-06-04-665ee37b47c2d.png', 475.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:08:57', '2024-06-04 10:50:51', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(76, 'صينية سوبر كرانشي', 'كيلو ارز بسمتي بالخضار +6قطع بروستد+3قطع ستربس+بطاطس +3انواع سلطه+لتر ليمون منت +2سبيرو سباتس', '2024-06-04-665ee34dd5823.png', 425.00, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:10:22', '2024-06-04 10:50:05', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(77, 'تريبل بروستد', '', '2024-06-04-665ee3279a90e.png', 375.00, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:10:57', '2024-06-04 10:49:27', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(78, 'عرض الفسفور', '', '2024-06-04-665ee15b694b5.png', 325.00, '[{\"name\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"2 \\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"2 \\u0628\\u0627\\u0643\\u062a\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:13:01', '2024-06-04 10:41:47', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(79, 'عرض البيج فاميلي', '', '2024-06-04-665ee110aba16.png', 410.00, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e \\u0627\\u0644\\u0644\\u0627\\u0631\\u062c\",\"type\":\"multi\",\"min\":\"1\",\"max\":\"2\",\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:13:32', '2024-06-04 10:40:32', '[]', '[{\"id\":\"6\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(80, 'سموزي بطيخ', 'سموزي بطيح', '2024-06-04-665ee0e1c5f9f.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:20:39', '2024-06-04 10:39:45', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(81, 'سموزي بلوبيري', 'سموزي بلوبيري', '2024-06-04-665ee0a660ec1.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:22:11', '2024-07-06 10:36:54', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(82, 'عصير مانجو', '', '2024-06-04-665ee083b6127.png', 35.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:22:52', '2024-06-04 10:38:11', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(83, 'سموزي فراولة', '', '2024-06-04-665ee03d4fb4e.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:23:53', '2024-06-04 10:37:01', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(84, 'عصير فراوله', '', '2024-06-04-665edfe42cbf6.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:24:35', '2024-06-04 10:35:32', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(85, 'سموزي مانجو', 'سموزي مانجو', '2024-06-04-665edfb59b700.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:25:15', '2024-06-04 10:34:45', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(86, 'سموزي ليمون منت', 'سموزي ليمون منت', '2024-06-04-665ee00bc56dc.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:26:45', '2024-06-04 10:36:11', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(87, 'عصير جوافه', '', '2024-06-04-665edf4d0af38.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:27:21', '2024-06-04 10:33:01', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(88, 'ميلك شيك فانيلا', '', '2024-06-03-665d8ca409a9c.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:28:04', '2024-06-26 11:20:51', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(89, 'ميلك شيك شكولاتة', '', '2024-06-03-665d8cf7a7e01.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:29:27', '2024-06-26 11:20:51', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(90, 'ميلك شيك فراولة', '', '2024-06-04-665ecd29d66d6.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:31:12', '2024-06-04 09:15:37', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(91, 'عصير موز', '', '2024-06-04-665ecd0f72118.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:32:09', '2024-06-04 09:15:11', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(92, 'ميلك شيك مانجو', '', '2024-06-04-665eccf9d64fe.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:32:29', '2024-06-04 09:14:49', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(93, 'ميلك شيك موز', '', '2024-06-04-665ecc03a90ec.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:34:12', '2024-06-04 09:10:43', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(94, 'عصير ليمون فريش', '', '2024-06-04-665ecbd1abc5c.png', 18.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:35:13', '2024-06-04 09:09:53', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(95, 'ميلك شيك بلوبيري', '', '2024-06-04-665ecba2cf661.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:35:54', '2024-06-04 09:09:06', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(96, 'عصير ليمون منت', '', '2024-06-04-665ecb82f2d1f.png', 20.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:37:33', '2024-06-04 09:08:34', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(97, 'ميلك شيك اوريو', '', '2024-06-04-665ecb5aa109a.png', 60.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:37:38', '2024-06-04 09:07:54', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(98, 'عصير بطيخ', '', '2024-06-04-665ecad3140f4.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:38:44', '2024-06-04 09:05:39', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(99, 'ميلك شيك بوريو', '', '2024-06-04-665ecac02dd5d.png', 60.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:38:54', '2024-06-04 09:05:20', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(100, 'ميلك شيك نسكافية', '', '2024-06-03-665d8f781e465.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:40:08', '2024-06-03 10:40:08', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(101, 'عصير برتقال', '', '2024-06-04-665eca3a67442.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:40:11', '2024-06-04 09:03:06', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0);
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `add_ons`, `tax`, `available_time_starts`, `available_time_ends`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `set_menu`, `branch_id`, `colors`, `popularity_count`, `product_type`, `is_recommended`) VALUES
(102, 'ميلك شيك سنيكرز', '', '2024-06-03-665d90265f2a8.png', 90.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:43:02', '2024-06-03 10:43:02', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(103, 'ميلك شيك كيت كات', '', '2024-06-04-665eca0df0c08.png', 85.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:44:20', '2024-06-04 09:02:21', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(104, 'ميلك شيك مكسرات', '', '2024-06-04-665ec9fbe1175.png', 90.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:45:37', '2024-06-04 09:02:03', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(105, 'ميلك شيك لوتس', '', '2024-06-04-665ec9e594606.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:45:55', '2024-06-04 09:01:41', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(106, 'ميلك شيك كراميل', '', '2024-06-04-665ec982bf824.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:47:20', '2024-06-04 09:00:02', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(107, 'ميكس فلوريدا', '', '2024-06-04-665ec964229fd.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:48:12', '2024-06-04 08:59:32', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(108, 'ميكس كوكتيل', '', '2024-06-04-665ec954e3041.png', 30.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:49:56', '2024-06-04 08:59:16', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(109, 'كوكتيل مانجو بيش', 'كوكتيل مانجو وصوص خوخ', '2024-06-04-665ec93f951c0.png', 45.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:50:02', '2024-06-04 08:58:55', '[]', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(110, 'وافل دارك', '', '2024-06-04-665ec925616f2.png', 80.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:51:20', '2024-06-04 08:58:29', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(111, 'وافل كراميل', '', '2024-06-04-665ec9041a9eb.png', 80.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:51:41', '2024-06-04 08:57:56', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(112, 'وافل وايت شوكلت', '', '2024-06-04-665ec8ec7ecea.png', 90.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:52:26', '2024-06-04 08:57:32', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(113, 'وافل كريمة شيكولاته', '', '2024-06-04-665ec8dc89113.png', 85.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:53:24', '2024-06-04 08:57:16', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(114, 'وافل لوتس', '', '2024-06-04-665ec8aa59dd2.png', 80.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:54:39', '2024-06-04 08:56:26', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(115, 'وافل فورسيزون كريمة شيكولاته', '', '2024-06-04-665ec87d6c05c.png', 85.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:55:15', '2024-06-04 08:55:41', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(116, 'وافل دارك و كراميل', '', '2024-06-04-665ec828996fb.png', 80.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:56:49', '2024-06-04 08:54:16', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(117, 'ارز باللبن ساده', '', '2024-06-03-665d93b102ea1.png', 20.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:58:09', '2024-06-03 10:58:09', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(118, 'كب كيك لوتس', '', '2024-06-03-665d93cfa573b.png', 55.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:58:39', '2024-06-03 10:58:39', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"31\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(119, 'ارز باللبن بالمكسرات', '', '2024-06-04-665ec79d5cc05.png', 40.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:59:38', '2024-06-04 08:51:57', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(120, 'كب كيك ميكس شوكولاتة', '', '2024-06-03-665d940c398a8.png', 70.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 10:59:40', '2024-06-03 12:45:05', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"31\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(121, 'تشيز كيك كراميل', '', '2024-06-04-665ec768de49c.png', 45.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:00:38', '2024-06-26 15:46:38', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"31\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 1, 'veg', 0),
(122, 'ارز باللبن بالايس كريم والمكسرات', '', '2024-06-04-665ec73fbc23a.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:01:39', '2024-06-04 08:50:23', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(123, 'تشيز كيك بلوبيري', '', '2024-06-04-665ec6f74839c.png', 45.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:01:45', '2024-06-04 08:49:11', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"31\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(124, 'ارز باللبن بالمانجو', '', '2024-06-04-665ec6dbdffc9.png', 35.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:02:57', '2024-06-04 08:48:43', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(125, 'ارز باللبن بالايس كريم', '', '2024-06-03-665d94da8d0e9.png', 32.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:03:06', '2024-06-03 11:03:06', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(126, 'ارز باللبن باللوتس', '', '2024-06-04-665ec584d2879.png', 45.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:04:32', '2024-06-04 08:43:00', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(127, 'ارز باللبن بالشكولاتة', '', '2024-06-04-665ec4cec22e4.png', 35.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:04:37', '2024-06-04 08:39:58', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(128, 'اوريو مادنيس', '', '2024-06-04-665ec4a7ba30b.png', 70.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:09:05', '2024-06-04 08:39:19', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(129, 'لوتس مادنيس', '', '2024-06-03-665d9680ded60.png', 70.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:10:08', '2024-06-03 11:10:08', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0),
(130, 'ICE CREAM', '', '2024-06-04-665ec495252da.png', 15.00, '[{\"name\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0628\\u0648\\u0644\\u0627\\u062a\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0628\\u0648\\u0644\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0628\\u0648\\u0644\\u062a\\u064a\\u0646\",\"optionPrice\":\"13\"}]},{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0635\\u0648\\u0635 \\u0643\\u0631\\u0627\\u0645\\u064a\\u0644\",\"optionPrice\":\"0\"},{\"label\":\"\\u0635\\u0648\\u0635 \\u0634\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0635\\u0648\\u0635 \\u0644\\u0648\\u062a\\u0633\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0641\\u0627\\u0646\\u064a\\u0644\\u064a\\u0627\",\"optionPrice\":\"0\"},{\"label\":\"\\u0634\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\",\"optionPrice\":\"0\"}]}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2024-06-03 11:11:12', '2024-06-04 08:39:01', '[]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[]', 0.00, 'amount', 'amount', 1, 1, NULL, 0, 'veg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_by_branches`
--

CREATE TABLE `product_by_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) NOT NULL DEFAULT 'percent',
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `branch_id` bigint(20) DEFAULT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>not available, 1=>available',
  `variations` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_type` varchar(255) NOT NULL DEFAULT 'unlimited',
  `stock` int(11) NOT NULL DEFAULT 0,
  `sold_quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_by_branches`
--

INSERT INTO `product_by_branches` (`id`, `product_id`, `price`, `discount_type`, `discount`, `branch_id`, `is_available`, `variations`, `created_at`, `updated_at`, `stock_type`, `stock`, `sold_quantity`) VALUES
(1, 1, 10.00, 'percent', 0.00, 1, 1, '[]', '2023-09-06 08:40:57', '2023-09-06 08:40:57', 'unlimited', 0, 0),
(2, 2, 50.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '2024-06-02 12:26:16', '2024-06-25 10:17:08', 'unlimited', 0, 0),
(3, 3, 40.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"20\"}]}]', '2024-06-02 12:26:40', '2024-06-04 11:52:22', 'unlimited', 0, 0),
(4, 4, 55.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '2024-06-02 12:30:09', '2024-06-03 11:33:08', 'unlimited', 0, 0),
(5, 5, 42.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"22\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"24\"}]}]', '2024-06-02 12:31:48', '2024-06-25 10:15:46', 'unlimited', 0, 0),
(6, 6, 50.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"20\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"22\"}]}]', '2024-06-02 12:32:36', '2024-06-03 11:33:39', 'unlimited', 0, 0),
(7, 7, 50.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"18\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"20\"}]}]', '2024-06-02 12:35:09', '2024-06-03 11:32:15', 'unlimited', 0, 0),
(8, 8, 50.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '2024-06-02 12:36:06', '2024-06-25 10:14:14', 'fixed', 0, 0),
(9, 9, 60.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"23\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '2024-06-02 12:37:47', '2024-06-03 11:35:30', 'unlimited', 0, 0),
(10, 10, 31.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"15\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"17\"}]}]', '2024-06-02 12:38:25', '2024-06-25 10:13:36', 'fixed', 0, 0),
(11, 11, 36.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"17\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"19\"}]}]', '2024-06-02 12:40:18', '2024-06-25 10:17:55', 'fixed', 0, 0),
(12, 12, 37.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"19\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"21\"}]}]', '2024-06-02 12:42:42', '2024-06-03 11:40:03', 'unlimited', 0, 0),
(13, 13, 60.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"28\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"30\"}]}]', '2024-06-02 12:42:55', '2024-06-03 11:35:17', 'fixed', 0, 0),
(14, 14, 48.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"29\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"37\"}]}]', '2024-06-02 12:44:26', '2024-06-03 11:39:38', 'unlimited', 0, 0),
(15, 15, 75.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"22\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"25\"}]}]', '2024-06-02 12:45:14', '2024-06-04 11:48:48', 'fixed', 0, 0),
(16, 16, 115.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 12:48:29', '2024-06-04 11:47:34', 'unlimited', 0, 0),
(17, 17, 90.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"30\"}]}]', '2024-06-02 12:48:50', '2024-06-03 11:38:33', 'fixed', 0, 0),
(18, 18, 135.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 12:51:43', '2024-06-04 11:46:59', 'unlimited', 0, 0),
(19, 19, 105.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"40\"}]}]', '2024-06-02 12:51:44', '2024-06-04 11:46:19', 'fixed', 0, 0),
(20, 20, 255.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 12:53:24', '2024-06-04 11:45:17', 'unlimited', 0, 0),
(21, 21, 115.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"45\"}]}]', '2024-06-02 12:53:58', '2024-06-04 11:44:27', 'unlimited', 0, 0),
(22, 22, 375.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 12:55:38', '2024-06-04 11:43:45', 'unlimited', 0, 0),
(23, 23, 110.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"40\"}]}]', '2024-06-02 12:56:38', '2024-06-03 11:47:28', 'unlimited', 0, 0),
(24, 24, 125.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"50\"}]}]', '2024-06-02 12:58:38', '2024-06-04 11:43:05', 'unlimited', 0, 0),
(25, 25, 100.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 12:59:33', '2024-06-04 11:39:34', 'unlimited', 0, 0),
(26, 26, 60.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"30\"}]},{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u062c\\u0628\\u0646\\u0629\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:01:56', '2024-06-04 11:38:18', 'unlimited', 0, 0),
(27, 27, 100.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:03:30', '2024-06-04 11:37:24', 'unlimited', 0, 0),
(28, 28, 95.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:05:10', '2024-06-04 11:35:52', 'unlimited', 0, 0),
(29, 29, 22.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0628\\u064a\\u0631\",\"optionPrice\":\"10\"},{\"label\":\"\\u062a\\u0648\\u0631\\u062a\\u064a\\u0644\\u0627\",\"optionPrice\":\"13\"}]}]', '2024-06-02 13:05:57', '2024-06-04 11:34:49', 'unlimited', 0, 0),
(30, 30, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:07:49', '2024-06-04 11:34:04', 'unlimited', 0, 0),
(31, 31, 85.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:08:08', '2024-06-04 11:33:04', 'unlimited', 0, 0),
(32, 32, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:09:29', '2024-06-04 11:32:26', 'unlimited', 0, 0),
(33, 33, 85.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:10:24', '2024-06-04 11:31:25', 'unlimited', 0, 0),
(34, 34, 110.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:11:32', '2024-06-04 11:30:29', 'unlimited', 0, 0),
(35, 35, 105.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:17:05', '2024-06-04 11:29:41', 'unlimited', 0, 0),
(36, 36, 140.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:17:11', '2024-06-03 11:56:37', 'unlimited', 0, 0),
(37, 37, 110.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:18:40', '2024-06-04 11:28:35', 'unlimited', 0, 0),
(38, 38, 140.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:19:41', '2024-06-04 11:27:07', 'unlimited', 0, 0),
(39, 39, 110.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:20:23', '2024-06-04 11:25:24', 'unlimited', 0, 0),
(40, 40, 175.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:21:40', '2024-06-03 12:41:38', 'unlimited', 0, 0),
(41, 41, 130.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:21:57', '2024-06-04 11:23:53', 'unlimited', 0, 0),
(42, 42, 120.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:23:42', '2024-06-04 11:22:36', 'unlimited', 0, 0),
(43, 43, 155.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:24:06', '2024-06-03 12:39:12', 'unlimited', 0, 0),
(44, 44, 180.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0629\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:26:27', '2024-06-03 11:59:24', 'unlimited', 0, 0),
(45, 45, 135.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:26:36', '2024-06-04 11:21:22', 'unlimited', 0, 0),
(46, 46, 185.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:28:32', '2024-06-04 11:19:27', 'unlimited', 0, 0),
(47, 47, 135.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:29:44', '2024-06-04 11:18:01', 'unlimited', 0, 0),
(48, 48, 180.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0633\\u0644\\u0637\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0643\\u0648\\u0644 \\u0633\\u0644\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:30:18', '2024-06-04 11:16:19', 'unlimited', 0, 0),
(49, 49, 135.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:32:29', '2024-06-04 11:15:01', 'unlimited', 0, 0),
(50, 50, 160.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:34:10', '2024-06-04 11:12:36', 'unlimited', 0, 0),
(51, 51, 95.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:39:48', '2024-06-03 12:05:19', 'unlimited', 0, 0),
(52, 52, 205.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0631\\u0627\\u0646\\u0633\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:40:52', '2024-06-04 11:10:07', 'unlimited', 0, 0),
(53, 53, 120.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:42:01', '2024-06-25 11:08:33', 'unlimited', 0, 0),
(54, 54, 90.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:43:07', '2024-06-04 11:08:02', 'unlimited', 0, 0),
(55, 55, 170.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:44:05', '2024-06-04 11:07:09', 'unlimited', 0, 0),
(56, 56, 105.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:44:54', '2024-06-04 11:08:35', 'unlimited', 0, 0),
(57, 57, 135.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:46:19', '2024-06-25 11:08:06', 'unlimited', 0, 0),
(58, 58, 80.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0647\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:46:38', '2024-06-04 11:04:03', 'unlimited', 0, 0),
(59, 59, 150.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0633\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0631\\u062c\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u062f\\u0627\\u0628\\u0644 \\u0645\\u064a\\u062f\\u064a\\u0645\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u062a\\u0634\\u0643\\u0646 \\u0644\\u0627\\u0631\\u062c \\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:48:56', '2024-06-04 11:03:32', 'unlimited', 0, 0),
(60, 60, 110.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:53:55', '2024-06-04 11:03:01', 'unlimited', 0, 0),
(61, 61, 75.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0634\\u0627\\u0648\\u0631\\u0645\\u0627 \\u0628\\u064a\\u062a\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0627\\u0644\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0633\\u0648\\u064a\\u062a \\u062a\\u0634\\u064a\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u062b\\u0648\\u0645\\u064a\\u0647 \\u0648\\u0628\\u0627\\u0631\\u0628\\u064a\\u0643\\u064a\\u0648\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:54:51', '2024-06-04 11:02:24', 'unlimited', 0, 0),
(62, 62, 115.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:55:29', '2024-06-04 11:01:41', 'unlimited', 0, 0),
(63, 63, 170.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:56:53', '2024-06-04 11:01:04', 'unlimited', 0, 0),
(64, 64, 115.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:57:03', '2024-06-04 11:00:00', 'unlimited', 0, 0),
(65, 65, 115.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 13:58:32', '2024-06-04 10:59:26', 'unlimited', 0, 0),
(66, 66, 130.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0628\\u0631\\u062c\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0645\\u0627\\u0634 \\u0628\\u0631\\u062c\\u0631 \\u062f\\u0628\\u0644 \\u0648\\u0633\\u0637\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0644\\u0627\\u0631\\u062c \\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0644\\u0645\\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0644\\u0627\\u0631\\u062c \\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 13:58:56', '2024-06-04 10:58:49', 'unlimited', 0, 0),
(67, 67, 110.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 14:01:10', '2024-06-04 10:57:42', 'unlimited', 0, 0),
(68, 68, 175.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 14:01:48', '2024-06-04 10:56:20', 'unlimited', 0, 0),
(69, 69, 120.00, 'amount', 0.00, 1, 1, '[]', '2024-06-02 14:03:26', '2024-06-04 10:55:04', 'unlimited', 0, 0),
(70, 70, 120.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-02 14:04:01', '2024-06-04 10:53:24', 'unlimited', 0, 0),
(71, 71, 440.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '2024-06-03 09:59:51', '2024-06-03 12:11:08', 'unlimited', 0, 0),
(72, 72, 440.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0627\\u0633\\u062a\\u0631\\u0628\\u0633\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:00:22', '2024-06-03 12:10:41', 'unlimited', 0, 0),
(73, 73, 440.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:03:20', '2024-06-03 10:03:20', 'unlimited', 0, 0),
(74, 74, 410.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0648\\u0633\\u0637\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0646\\u0648\\u0639 \\u0628\\u0631\\u062c\\u0631 \\u0641\\u0631\\u0627\\u062e \\u0643\\u0628\\u064a\\u0631\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0645\\u0642\\u0644\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0645\\u0634\\u0648\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:03:45', '2024-06-04 10:51:41', 'unlimited', 0, 0),
(75, 75, 475.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:08:57', '2024-06-04 10:50:51', 'unlimited', 0, 0),
(76, 76, 425.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u0628\\u0627\\u064a\\u0633\\u064a\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:10:22', '2024-06-04 10:50:05', 'unlimited', 0, 0),
(77, 77, 375.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u062d\\u0627\\u0631\",\"optionPrice\":\"0\"},{\"label\":\"\\u0639\\u0627\\u062f\\u064a\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:10:57', '2024-06-04 10:49:27', 'unlimited', 0, 0),
(78, 78, 325.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0637\\u0633\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"2 \\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"2 \\u0628\\u0627\\u0643\\u062a\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:13:01', '2024-06-04 10:41:47', 'unlimited', 0, 0),
(79, 79, 410.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0646\\u0648\\u0639 \\u0633\\u0627\\u0646\\u062f\\u0648\\u062a\\u0634 \\u0627\\u0644\\u0641\\u0631\\u0627\\u062e \\u0627\\u0644\\u0644\\u0627\\u0631\\u062c\",\"type\":\"multi\",\"min\":\"1\",\"max\":\"2\",\"required\":\"on\",\"values\":[{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0633\\u062a\\u0631\\u0628\\u0633 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u062c\\u0628\\u0646\\u0647\",\"optionPrice\":\"0\"},{\"label\":\"\\u0632\\u0646\\u062c\\u0631 \\u0631\\u0627\\u0646\\u0634\",\"optionPrice\":\"0\"}]}]', '2024-06-03 10:13:32', '2024-06-04 10:40:32', 'unlimited', 0, 0),
(80, 80, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:20:39', '2024-06-04 10:39:45', 'unlimited', 0, 0),
(81, 81, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:22:11', '2024-06-04 10:38:46', 'unlimited', 0, 0),
(82, 82, 35.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:22:52', '2024-06-04 10:38:11', 'unlimited', 0, 0),
(83, 83, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:23:53', '2024-06-04 10:37:01', 'unlimited', 0, 0),
(84, 84, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:24:35', '2024-06-04 10:35:32', 'unlimited', 0, 0),
(85, 85, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:25:15', '2024-06-04 10:34:45', 'unlimited', 0, 0),
(86, 86, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:26:45', '2024-06-04 10:36:11', 'unlimited', 0, 0),
(87, 87, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:27:21', '2024-06-04 10:33:01', 'unlimited', 0, 0),
(88, 88, 50.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:28:04', '2024-06-03 10:28:04', 'unlimited', 0, 0),
(89, 89, 50.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:29:27', '2024-06-03 10:29:27', 'unlimited', 0, 0),
(90, 90, 50.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:31:12', '2024-06-04 09:15:37', 'unlimited', 0, 0),
(91, 91, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:32:09', '2024-06-04 09:15:11', 'unlimited', 0, 0),
(92, 92, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:32:29', '2024-06-04 09:14:49', 'unlimited', 0, 0),
(93, 93, 50.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:34:12', '2024-06-04 09:10:43', 'unlimited', 0, 0),
(94, 94, 18.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:35:13', '2024-06-04 09:09:53', 'unlimited', 0, 0),
(95, 95, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:35:54', '2024-06-04 09:09:06', 'unlimited', 0, 0),
(96, 96, 20.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:37:33', '2024-06-04 09:08:34', 'unlimited', 0, 0),
(97, 97, 60.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:37:38', '2024-06-04 09:07:54', 'unlimited', 0, 0),
(98, 98, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:38:44', '2024-06-04 09:05:39', 'unlimited', 0, 0),
(99, 99, 60.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:38:54', '2024-06-04 09:05:20', 'unlimited', 0, 0),
(100, 100, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:40:08', '2024-06-03 10:40:08', 'unlimited', 0, 0),
(101, 101, 25.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:40:11', '2024-06-04 09:03:06', 'unlimited', 0, 0),
(102, 102, 90.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:43:02', '2024-06-03 10:43:02', 'unlimited', 0, 0),
(103, 103, 85.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:44:20', '2024-06-04 09:02:21', 'unlimited', 0, 0),
(104, 104, 90.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:45:37', '2024-06-04 09:02:03', 'unlimited', 0, 0),
(105, 105, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:45:55', '2024-06-04 09:01:41', 'unlimited', 0, 0),
(106, 106, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:47:20', '2024-06-04 09:00:02', 'unlimited', 0, 0),
(107, 107, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:48:12', '2024-06-04 08:59:32', 'unlimited', 0, 0),
(108, 108, 30.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:49:56', '2024-06-04 08:59:16', 'unlimited', 0, 0),
(109, 109, 45.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:50:02', '2024-06-04 08:58:55', 'unlimited', 0, 0),
(110, 110, 80.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:51:20', '2024-06-04 08:58:29', 'unlimited', 0, 0),
(111, 111, 80.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:51:41', '2024-06-04 08:57:56', 'unlimited', 0, 0),
(112, 112, 90.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:52:26', '2024-06-04 08:57:32', 'unlimited', 0, 0),
(113, 113, 85.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:53:24', '2024-06-04 08:57:16', 'unlimited', 0, 0),
(114, 114, 80.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:54:39', '2024-06-04 08:56:26', 'unlimited', 0, 0),
(115, 115, 85.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:55:15', '2024-06-04 08:55:41', 'unlimited', 0, 0),
(116, 116, 80.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:56:49', '2024-06-04 08:54:16', 'unlimited', 0, 0),
(117, 117, 20.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:58:09', '2024-06-03 10:58:09', 'unlimited', 0, 0),
(118, 118, 55.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:58:39', '2024-06-03 10:58:39', 'unlimited', 0, 0),
(119, 119, 40.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:59:38', '2024-06-04 08:51:57', 'unlimited', 0, 0),
(120, 120, 70.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 10:59:40', '2024-06-03 12:45:04', 'unlimited', 0, 0),
(121, 121, 45.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:00:38', '2024-06-04 08:51:04', 'unlimited', 0, 0),
(122, 122, 50.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:01:39', '2024-06-04 08:50:23', 'unlimited', 0, 0),
(123, 123, 45.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:01:45', '2024-06-04 08:49:11', 'unlimited', 0, 0),
(124, 124, 35.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:02:57', '2024-06-04 08:48:43', 'unlimited', 0, 0),
(125, 125, 32.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:03:06', '2024-06-03 11:03:06', 'unlimited', 0, 0),
(126, 126, 45.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:04:32', '2024-06-04 08:43:00', 'unlimited', 0, 0),
(127, 127, 35.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:04:37', '2024-06-04 08:39:58', 'unlimited', 0, 0),
(128, 128, 70.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:09:05', '2024-06-04 08:39:19', 'unlimited', 0, 0),
(129, 129, 70.00, 'amount', 0.00, 1, 1, '[]', '2024-06-03 11:10:08', '2024-06-03 11:10:08', 'unlimited', 0, 0),
(130, 130, 15.00, 'amount', 0.00, 1, 1, '[{\"name\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0628\\u0648\\u0644\\u0627\\u062a\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0628\\u0648\\u0644\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0628\\u0648\\u0644\\u062a\\u064a\\u0646\",\"optionPrice\":\"13\"}]},{\"name\":\"\\u0635\\u0648\\u0635\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0635\\u0648\\u0635 \\u0643\\u0631\\u0627\\u0645\\u064a\\u0644\",\"optionPrice\":\"0\"},{\"label\":\"\\u0635\\u0648\\u0635 \\u0634\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\",\"optionPrice\":\"0\"},{\"label\":\"\\u0635\\u0648\\u0635 \\u0644\\u0648\\u062a\\u0633\",\"optionPrice\":\"0\"}]},{\"name\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u064a\\u0633 \\u0643\\u0631\\u064a\\u0645\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"\\u0641\\u0627\\u0646\\u064a\\u0644\\u064a\\u0627\",\"optionPrice\":\"0\"},{\"label\":\"\\u0634\\u0643\\u0648\\u0644\\u0627\\u062a\\u0629\",\"optionPrice\":\"0\"}]}]', '2024-06-03 11:11:12', '2024-06-04 08:39:01', 'unlimited', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`) VALUES
(1, 2, 1),
(2, 5, 1),
(3, 8, 1),
(4, 10, 1),
(5, 11, 1),
(6, 13, 1),
(7, 17, 1),
(8, 19, 1),
(9, 21, 1),
(10, 23, 1),
(11, 24, 1),
(12, 26, 1),
(13, 27, 1),
(14, 29, 1),
(15, 30, 1),
(16, 32, 1),
(17, 34, 1),
(18, 36, 1),
(19, 38, 1),
(20, 40, 1),
(21, 43, 1),
(22, 44, 1),
(23, 46, 1),
(24, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  `branch_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_orders`
--

CREATE TABLE `table_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `branch_table_token` varchar(255) NOT NULL,
  `branch_table_token_is_expired` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, '0', '2024-06-02 12:26:16', '2024-06-02 12:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedules`
--

CREATE TABLE `time_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_schedules`
--

INSERT INTO `time_schedules` (`id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(1, 1, '10:00:00', '23:59:00', NULL, NULL),
(2, 1, '00:00:00', '02:00:00', NULL, NULL),
(3, 2, '10:00:00', '23:59:00', NULL, NULL),
(4, 3, '10:00:00', '23:59:00', NULL, NULL),
(5, 4, '10:00:00', '23:59:00', NULL, NULL),
(6, 5, '10:00:00', '23:59:00', NULL, NULL),
(7, 6, '10:00:00', '23:59:00', NULL, NULL),
(8, 0, '10:00:00', '23:59:00', NULL, NULL),
(9, 2, '00:00:00', '02:00:00', NULL, NULL),
(10, 3, '00:00:00', '02:00:00', NULL, NULL),
(11, 4, '00:00:00', '02:00:00', NULL, NULL),
(12, 5, '00:00:00', '02:00:00', NULL, NULL),
(13, 6, '00:00:00', '02:00:00', NULL, NULL),
(14, 0, '00:00:00', '02:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES
(1, 'App\\Model\\Category', 3, 'ar', 'name', 'وجبات'),
(2, 'App\\Model\\Category', 5, 'ar', 'name', 'بروستد'),
(3, 'App\\Model\\Category', 4, 'ar', 'name', 'سندوتشات'),
(4, 'App\\Model\\Category', 6, 'ar', 'name', 'عروض'),
(5, 'App\\Model\\Category', 8, 'ar', 'name', 'وجبات الأكيل'),
(6, 'App\\Model\\Category', 2, 'ar', 'name', 'وجبات الوالي'),
(7, 'App\\Model\\Category', 9, 'ar', 'name', 'burger'),
(8, 'App\\Model\\Category', 10, 'ar', 'name', 'وجبات الوالي'),
(9, 'App\\Model\\Category', 11, 'ar', 'name', 'لحوم'),
(10, 'App\\Model\\Category', 12, 'ar', 'name', 'فراخ'),
(11, 'App\\Model\\Category', 13, 'ar', 'name', 'جبن'),
(12, 'App\\Model\\Category', 14, 'ar', 'name', 'بطاطس'),
(13, 'App\\Model\\Category', 15, 'ar', 'name', 'حلويات'),
(14, 'App\\Model\\Category', 16, 'ar', 'name', 'سي فود'),
(15, 'App\\Model\\Category', 17, 'ar', 'name', 'راوند'),
(16, 'App\\Model\\Category', 18, 'ar', 'name', 'عصائر فريش'),
(17, 'App\\Model\\Category', 19, 'ar', 'name', 'وافل'),
(18, 'App\\Model\\Category', 20, 'ar', 'name', 'ميلك شيك'),
(19, 'App\\Model\\Category', 21, 'ar', 'name', 'سموزي'),
(20, 'App\\Model\\Category', 22, 'ar', 'name', 'ارز بلبن'),
(21, 'App\\Model\\Category', 23, 'ar', 'name', 'سماش برجر'),
(22, 'App\\Model\\Category', 24, 'ar', 'name', 'ايس كريم'),
(23, 'App\\Model\\Category', 25, 'ar', 'name', 'لمبرجر فراخ'),
(24, 'App\\Model\\Category', 26, 'ar', 'name', 'عروض السنجل'),
(25, 'App\\Model\\Category', 27, 'ar', 'name', 'عروض السعاده'),
(26, 'App\\Model\\Category', 28, 'ar', 'name', 'وجبات العائلة'),
(27, 'App\\Model\\Category', 29, 'ar', 'name', 'عروض جديده'),
(28, 'App\\Model\\Category', 30, 'ar', 'name', 'وجبات السنجل'),
(29, 'App\\Model\\Category', 31, 'ar', 'name', 'تشييز كيك'),
(30, 'App\\Model\\Product', 2, 'ar', 'name', 'لماضه مكس'),
(31, 'App\\Model\\Product', 3, 'ar', 'name', 'فراخ بانيه'),
(32, 'App\\Model\\Product', 3, 'ar', 'description', 'فراخ بانيه فريش مع خيار وخس وطماطم ومايونيز'),
(33, 'App\\Model\\Product', 4, 'ar', 'name', 'شيش طاووك'),
(34, 'App\\Model\\Product', 5, 'ar', 'name', 'مكسيسن سوسيس'),
(35, 'App\\Model\\Product', 5, 'ar', 'description', 'مكس جبن - فلفل زيتون - ميونيز - سوسيس'),
(36, 'App\\Model\\Product', 6, 'ar', 'name', 'فراخ ستربس جبنه'),
(37, 'App\\Model\\Product', 7, 'ar', 'name', 'فراخ كرسبي حار بالجبنه'),
(38, 'App\\Model\\Product', 8, 'ar', 'name', 'مكسيكن سجق'),
(39, 'App\\Model\\Product', 9, 'ar', 'name', 'فراخ لماضه مشوي'),
(40, 'App\\Model\\Product', 10, 'ar', 'name', 'جبنه متبله جريل'),
(41, 'App\\Model\\Product', 11, 'ar', 'name', 'جبنه جريل بالبطاطس'),
(42, 'App\\Model\\Product', 11, 'ar', 'description', 'مكس جبن - فلفل زيتون - ميونيز  - بطاطس'),
(43, 'App\\Model\\Product', 12, 'ar', 'name', 'سدق مشوي'),
(44, 'App\\Model\\Product', 12, 'ar', 'description', 'سدق مشوي مع  خيار مخلل وخس وطحينه'),
(45, 'App\\Model\\Product', 13, 'ar', 'name', 'سي فود - مقلي'),
(46, 'App\\Model\\Product', 14, 'ar', 'name', 'كفته مشويه'),
(47, 'App\\Model\\Product', 15, 'ar', 'name', 'جمبري مقلي'),
(48, 'App\\Model\\Product', 16, 'ar', 'name', 'لايت 3 قطع'),
(49, 'App\\Model\\Product', 16, 'ar', 'description', 'ثلاثة قطع بروستد من الاجنحه والدبابيس مع بطاطس و كلوسلو وثوميه وعيش وكاتشب'),
(50, 'App\\Model\\Product', 17, 'ar', 'name', 'سماش برجر'),
(51, 'App\\Model\\Product', 18, 'ar', 'name', 'وجبة صولو 3قطع'),
(52, 'App\\Model\\Product', 18, 'ar', 'description', 'ثلاثة قطع بروستد صدر و فخذ وجناح او دبوس مع بطاطس و كلوسلو وثوميه وعيش وكاتشب'),
(53, 'App\\Model\\Product', 19, 'ar', 'name', 'سماش برجر مشروم'),
(54, 'App\\Model\\Product', 19, 'ar', 'description', '- سماش برجر دبل - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة - مشروم'),
(55, 'App\\Model\\Product', 20, 'ar', 'name', 'ديو 6قطع'),
(56, 'App\\Model\\Product', 21, 'ar', 'name', 'سماش برجر بيكون'),
(57, 'App\\Model\\Product', 21, 'ar', 'description', 'سماش برجر دبل - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة- بيكون'),
(58, 'App\\Model\\Product', 22, 'ar', 'name', 'تريبل بروستد'),
(59, 'App\\Model\\Product', 23, 'ar', 'name', 'سماش برجر موتزريلا ستيك'),
(60, 'App\\Model\\Product', 24, 'ar', 'name', 'سماش برجر موتزريلا مشروم'),
(61, 'App\\Model\\Product', 24, 'ar', 'description', 'سماش برجر موتزريلا مشروم - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة'),
(62, 'App\\Model\\Product', 25, 'ar', 'name', 'تشيكن بيج تيستي'),
(63, 'App\\Model\\Product', 25, 'ar', 'description', 'صدور فراخ مشويه ف عيش راوند مع زيتون وصوص بيج تيستي و جبنه شيدر وخس'),
(64, 'App\\Model\\Product', 26, 'ar', 'name', 'لمبرجر تشيكن'),
(65, 'App\\Model\\Product', 27, 'ar', 'name', 'لمبرجر تشيكن دابل'),
(66, 'App\\Model\\Product', 28, 'ar', 'name', 'تشيكن ستربس راوند'),
(67, 'App\\Model\\Product', 28, 'ar', 'description', 'ثلاثة قطع صدور فراخ مقرمشه مع صوص الجبنه او الرانش والجبنه الشيدر والخس'),
(68, 'App\\Model\\Product', 29, 'ar', 'name', 'بطاطس'),
(69, 'App\\Model\\Product', 30, 'ar', 'name', 'باكت بطاطس'),
(70, 'App\\Model\\Product', 31, 'ar', 'name', 'زنجر حاار'),
(71, 'App\\Model\\Product', 32, 'ar', 'name', 'باكت بطاطس كرينكل'),
(72, 'App\\Model\\Product', 33, 'ar', 'name', 'زنجر هالبينو'),
(73, 'App\\Model\\Product', 33, 'ar', 'description', 'ثلاثة قطع صدور فراخ مقرمشه سبايسي مع صوص سبايسي وجبنه شيدر وخس'),
(74, 'App\\Model\\Product', 34, 'ar', 'name', 'فسفور لماضه'),
(75, 'App\\Model\\Product', 35, 'ar', 'name', 'الاكيل زنجر حار'),
(76, 'App\\Model\\Product', 36, 'ar', 'name', 'الوالي تشكن زينجر حار'),
(77, 'App\\Model\\Product', 36, 'ar', 'description', '4قطع فراح - ارز بالخضار - كبابه - سموسك - مخلل - سلطه -عصير  ليمون نعناع'),
(78, 'App\\Model\\Product', 37, 'ar', 'name', 'وجبة الاكيل ستربس'),
(79, 'App\\Model\\Product', 38, 'ar', 'name', 'الوالي تشكن استربس'),
(80, 'App\\Model\\Product', 39, 'ar', 'name', 'الاكيل سي فود'),
(81, 'App\\Model\\Product', 40, 'ar', 'name', 'الوالي كفته مشويه'),
(82, 'App\\Model\\Product', 41, 'ar', 'name', 'الاكيل كفته مشويه'),
(83, 'App\\Model\\Product', 42, 'ar', 'name', 'الاكيل تشيكن لماضه'),
(84, 'App\\Model\\Product', 43, 'ar', 'name', 'الوالي تشكن لماضه مشوي'),
(85, 'App\\Model\\Product', 43, 'ar', 'description', '5 قطع فراخ مشويه ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع'),
(86, 'App\\Model\\Product', 44, 'ar', 'name', 'الوالي شيش طاووق'),
(87, 'App\\Model\\Product', 44, 'ar', 'description', 'قطع الشيش الطاووق - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع'),
(88, 'App\\Model\\Product', 45, 'ar', 'name', 'الاكيل شيش طاووك'),
(89, 'App\\Model\\Product', 46, 'ar', 'name', 'الوالي ميكس'),
(90, 'App\\Model\\Product', 46, 'ar', 'description', 'قطع كفته - شيش طاووق - استربس - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع'),
(91, 'App\\Model\\Product', 47, 'ar', 'name', 'الاكيل ميكس'),
(92, 'App\\Model\\Product', 48, 'ar', 'name', 'الوالي مكس فراخ'),
(93, 'App\\Model\\Product', 48, 'ar', 'description', 'قطع استربس - شيش طاووق - صدور مشوية - ارز بالخضار - كبابه - سموسك - مخلل - سلطه -عصير ليمون نعناع'),
(94, 'App\\Model\\Product', 49, 'ar', 'name', 'الاكيل ميكس فراخ'),
(95, 'App\\Model\\Product', 49, 'ar', 'description', 'قطع ستربس و شيش طاووك و صدور مشويه مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(96, 'App\\Model\\Product', 50, 'ar', 'name', 'الاكيل جمبري'),
(97, 'App\\Model\\Product', 50, 'ar', 'description', 'جمبري - ارز بالخضار - بطاطس - ثوميه - عصير لمون نعناع'),
(98, 'App\\Model\\Product', 51, 'ar', 'name', 'سنجل 1 بوكس القرمشه'),
(99, 'App\\Model\\Product', 52, 'ar', 'name', 'عرض السعادة 1'),
(100, 'App\\Model\\Product', 52, 'ar', 'description', 'ستربس او زنجر حار كبير في عيش البطاطس سماش برجر ميديم 120 جرام بطاطس كرينكل   شروب سباتس أو ليمون منت صوص بيج تيستي'),
(101, 'App\\Model\\Product', 53, 'ar', 'name', 'سنجل 3 فسفور'),
(102, 'App\\Model\\Product', 53, 'ar', 'description', 'ميني جمبري + ميني سي فود + ميني بطاطس+كلوسلو+صوص تارتار+عصير ليمون نعناع'),
(103, 'App\\Model\\Product', 54, 'ar', 'name', 'عرض السعاده 2'),
(104, 'App\\Model\\Product', 54, 'ar', 'description', 'بانية ميديم - جريل بطاطس -ميديم - باكت بطاطس - ليمون منت'),
(105, 'App\\Model\\Product', 55, 'ar', 'name', 'سنجل 4'),
(106, 'App\\Model\\Product', 56, 'ar', 'name', 'عرض السعادة 3'),
(107, 'App\\Model\\Product', 57, 'ar', 'name', 'سنجل 5'),
(108, 'App\\Model\\Product', 58, 'ar', 'name', 'عرض السعاده 4'),
(109, 'App\\Model\\Product', 58, 'ar', 'description', 'لمبرجر فراخ وسط - باكت بطاطس - ليمون منت'),
(110, 'App\\Model\\Product', 59, 'ar', 'name', 'عرض السعادة 5'),
(111, 'App\\Model\\Product', 59, 'ar', 'description', 'واحد سماش برجر ميديم او واحد لمبرجر تشكن لارج - 2 قطعه ستربس - بطاطس - ثومية - كلوسلو - ليمون منت'),
(112, 'App\\Model\\Product', 60, 'ar', 'name', 'سنجل 7'),
(113, 'App\\Model\\Product', 61, 'ar', 'name', 'ريزو استربس'),
(114, 'App\\Model\\Product', 61, 'ar', 'description', 'ارز بالخضار قطع استربس و صوص من اختايارك'),
(115, 'App\\Model\\Product', 62, 'ar', 'name', 'سنجل 8'),
(116, 'App\\Model\\Product', 63, 'ar', 'name', 'عرض الدويتو'),
(117, 'App\\Model\\Product', 63, 'ar', 'description', 'سماش - برجر فراخ -باكت بطاطس - مشروب سباتس - ليمون نعناع'),
(118, 'App\\Model\\Product', 64, 'ar', 'name', 'سنجل 9'),
(119, 'App\\Model\\Product', 64, 'ar', 'description', 'ستربس جبنه+ ميكس سدق +باكت بطاطس+ليمون نعناع'),
(120, 'App\\Model\\Product', 65, 'ar', 'name', 'سنجل 10'),
(121, 'App\\Model\\Product', 66, 'ar', 'name', 'عرض الراوند و الكرينكل'),
(122, 'App\\Model\\Product', 67, 'ar', 'name', 'سنجل11'),
(123, 'App\\Model\\Product', 68, 'ar', 'name', 'بوكس القرمشة دبل'),
(124, 'App\\Model\\Product', 68, 'ar', 'description', '6 قطع استربس او زنجر بطاطس - 4 قطع سناك بوتيتو -4 عيش ميني - 2 كلوسلو و صوص - 2 ليمون منت'),
(125, 'App\\Model\\Product', 69, 'ar', 'name', 'عرض الراب'),
(126, 'App\\Model\\Product', 69, 'ar', 'description', 'تورتيلا جبنه جريل بالبطاطس - تورتيلا سدق مشوي - بطاطس - -ليمون منت'),
(127, 'App\\Model\\Product', 70, 'ar', 'name', 'بوكس كرانشي'),
(128, 'App\\Model\\Product', 70, 'ar', 'description', 'قطعة بروستد+2قطعه ستربس+بطاطس+ثوميه+كلوسلو +عيش+ليمون منت'),
(129, 'App\\Model\\Product', 71, 'ar', 'name', 'صينية الشله ميكس'),
(130, 'App\\Model\\Product', 71, 'ar', 'description', 'كيلوارز بالخضار+جمبري+كابوريا+كاليماري+ستربس او ن=زنجر حار +بطاطس كتير +سناكس بوتيتو+4انواعسلطه+لتر ليمون نعناع او 2سبيرو'),
(131, 'App\\Model\\Product', 72, 'ar', 'name', 'صينية الشلة مشكل'),
(132, 'App\\Model\\Product', 72, 'ar', 'description', 'كيلو ارز بالخضار - كفته - شيش طاووق- استربس او زنجر حار - بطاطس كتير - سناكس بوتيتو - 4 انواع سلطة - لتر ليمون نعناع او 2 سبيرو'),
(133, 'App\\Model\\Product', 73, 'ar', 'name', 'صينية الشلة سي فوود'),
(134, 'App\\Model\\Product', 73, 'ar', 'description', 'كيلو ارز بالخضار - جمبري - كابوريا - كاليماري - بطاطس كتير - سناكس بوتيتو - 4 انواع سلطة - 1 لتر منت او 2 سبيرو'),
(135, 'App\\Model\\Product', 74, 'ar', 'name', 'عرض اللمه'),
(136, 'App\\Model\\Product', 74, 'ar', 'description', 'اتنين سماش برجر(ميديم ولارج)+ اتنين برجرفراخ(ميديم ولارج) باكت بطاطس كرينكل+2كلوسلو ميديم+2مشروب سباتس او لتر ليمون منت'),
(137, 'App\\Model\\Product', 75, 'ar', 'name', 'صينية الفرخة بروستد'),
(138, 'App\\Model\\Product', 75, 'ar', 'description', 'كيلو ارز بسمتي بالخضار السوتية - فرخة كاملة - بطاطس - 3 انواع سلطة - ليمون منت او 2 سبيرو سباتس'),
(139, 'App\\Model\\Product', 76, 'ar', 'name', 'صينية سوبر كرانشي'),
(140, 'App\\Model\\Product', 77, 'ar', 'name', 'تريبل بروستد'),
(141, 'App\\Model\\Product', 77, 'ar', 'description', 'فرخه كاملة - بطاطس - ثومية - كلوسلو - 6 عيش بيتي بان مني'),
(142, 'App\\Model\\Product', 78, 'ar', 'name', 'عرض الفسفور'),
(143, 'App\\Model\\Product', 78, 'ar', 'description', '3 سندوتشات ميني جمبري \r\n3 ميني سي فود\r\n2 بطاطس \r\n2 سلطة طحينة\r\n2 ليمون منت'),
(144, 'App\\Model\\Product', 79, 'ar', 'name', 'عرض البيج فاميلي'),
(145, 'App\\Model\\Product', 79, 'ar', 'description', 'اتنين ساندوتشات لارج (ستربس جبنه اوزنجر حار ) + اثنين ساندوتش سماش برجر ميديم لحمه +2صوص +باكت بطاطس كرينكل+2مشروب سباتس اولتر ليمون نعناع'),
(146, 'App\\Model\\Product', 80, 'ar', 'name', 'سموزي بطيخ'),
(147, 'App\\Model\\Product', 80, 'ar', 'description', 'سموزي بطيخ'),
(148, 'App\\Model\\Product', 81, 'ar', 'name', 'سموزي بلوبيري'),
(149, 'App\\Model\\Product', 82, 'ar', 'name', 'عصيرمانجو'),
(150, 'App\\Model\\Product', 82, 'ar', 'description', 'عصير مانجو'),
(151, 'App\\Model\\Product', 83, 'ar', 'name', 'سموزي فراولة'),
(152, 'App\\Model\\Product', 83, 'ar', 'description', 'سموزي فراولة'),
(153, 'App\\Model\\Product', 84, 'ar', 'name', 'عصير فراوله'),
(154, 'App\\Model\\Product', 84, 'ar', 'description', 'عصير فراوله'),
(155, 'App\\Model\\Product', 26, 'ar', 'description', 'لمبرجر فراخ  - جبنه شيدر - صوص جبنه /  رانش   - علبه سلطة'),
(156, 'App\\Model\\Product', 85, 'ar', 'name', 'سموزي مانجو'),
(157, 'App\\Model\\Product', 86, 'ar', 'name', 'سموزي ليمون منت'),
(158, 'App\\Model\\Product', 87, 'ar', 'name', 'عصير جوافه'),
(159, 'App\\Model\\Product', 88, 'ar', 'name', 'ميلك شيك فانيلا'),
(160, 'App\\Model\\Product', 88, 'ar', 'description', 'ميلك شيك فانيلا'),
(161, 'App\\Model\\Product', 89, 'ar', 'name', 'ميلك شيك شكولاتة'),
(162, 'App\\Model\\Product', 89, 'ar', 'description', 'ميلك شيك شكولاتة'),
(163, 'App\\Model\\Product', 90, 'ar', 'name', 'ميلك شيك فراولة'),
(164, 'App\\Model\\Product', 90, 'ar', 'description', 'ميلك شيك فراولة'),
(165, 'App\\Model\\Product', 91, 'ar', 'name', 'عصير موز'),
(166, 'App\\Model\\Product', 92, 'ar', 'name', 'ميلك شيك مانجو'),
(167, 'App\\Model\\Product', 92, 'ar', 'description', 'ميلك شيك مانجو'),
(168, 'App\\Model\\Product', 93, 'ar', 'name', 'ميلك شيك موز'),
(169, 'App\\Model\\Product', 93, 'ar', 'description', 'ميلك شيك موز'),
(170, 'App\\Model\\Product', 94, 'ar', 'name', 'عصير ليمون فريش'),
(171, 'App\\Model\\Product', 95, 'ar', 'name', 'ميلك شيك بلوبيري'),
(172, 'App\\Model\\Product', 95, 'ar', 'description', 'ميلك شيك بلوبيري'),
(173, 'App\\Model\\AddOn', 1, 'ar', 'name', 'كومبو ليمون'),
(174, 'App\\Model\\Product', 96, 'ar', 'name', 'عصير ليمون منت'),
(175, 'App\\Model\\Product', 97, 'ar', 'name', 'ميلك شيك اوريو'),
(176, 'App\\Model\\Product', 97, 'ar', 'description', 'ميلك شيك اوريو'),
(177, 'App\\Model\\Product', 98, 'ar', 'name', 'عصير بطيخ'),
(178, 'App\\Model\\Product', 99, 'ar', 'name', 'ميلك شيك بوريو'),
(179, 'App\\Model\\Product', 99, 'ar', 'description', 'ميلك شيك بوريو'),
(180, 'App\\Model\\Product', 100, 'ar', 'name', 'ميلك شيك نسكافية'),
(181, 'App\\Model\\Product', 100, 'ar', 'description', 'ميلك شيك نسكافية'),
(182, 'App\\Model\\Product', 101, 'ar', 'name', 'عصير برتقال'),
(183, 'App\\Model\\Product', 102, 'ar', 'name', 'ميلك شيك سنيكرز'),
(184, 'App\\Model\\Product', 102, 'ar', 'description', 'ميلك شيك سنيكرز'),
(185, 'App\\Model\\Product', 103, 'ar', 'name', 'ميلك شيك كيت كات'),
(186, 'App\\Model\\Product', 103, 'ar', 'description', 'ميلك شيك كيت كات'),
(187, 'App\\Model\\Product', 104, 'ar', 'name', 'ميلك شيك مكسرات'),
(188, 'App\\Model\\Product', 105, 'ar', 'name', 'ميلك شيك لوتس'),
(189, 'App\\Model\\Product', 105, 'ar', 'description', 'ميلك شيك لوتس'),
(190, 'App\\Model\\Product', 106, 'ar', 'name', 'ميلك شيك كراميل'),
(191, 'App\\Model\\Product', 106, 'ar', 'description', 'ميلك شيك كراميل'),
(192, 'App\\Model\\Product', 107, 'ar', 'name', 'ميكس فلوريدا'),
(193, 'App\\Model\\Product', 107, 'ar', 'description', 'مانجو-فراوله-جوافه'),
(194, 'App\\Model\\Product', 108, 'ar', 'name', 'ميكس كوكتيل'),
(195, 'App\\Model\\Product', 108, 'ar', 'description', 'كوكتيل مانجو-فراوله-موز'),
(196, 'App\\Model\\Product', 109, 'ar', 'name', 'كوكتيل مانجو بيش'),
(197, 'App\\Model\\Product', 109, 'ar', 'description', 'كوكتيل مانجو وصوص خوخ'),
(198, 'App\\Model\\Product', 110, 'ar', 'name', 'وافل دارك'),
(199, 'App\\Model\\Product', 111, 'ar', 'name', 'وافل كراميل'),
(200, 'App\\Model\\Product', 112, 'ar', 'name', 'وافل وايت شوكلت'),
(201, 'App\\Model\\Product', 113, 'ar', 'name', 'وافل كريمة شيكولاته'),
(202, 'App\\Model\\Product', 114, 'ar', 'name', 'وافل لوتس'),
(203, 'App\\Model\\Product', 115, 'ar', 'name', 'وافل فورسيزون كريمة شيكولاته'),
(204, 'App\\Model\\Product', 115, 'ar', 'description', 'كريمة شيكولاته-كراميل-دارك-وايت'),
(205, 'App\\Model\\Product', 116, 'ar', 'name', 'وافل دارك و كراميل'),
(206, 'App\\Model\\Product', 116, 'ar', 'description', 'وافل دارك و كراميل'),
(207, 'App\\Model\\Product', 117, 'ar', 'name', 'ارز باللبن ساده'),
(208, 'App\\Model\\Product', 118, 'ar', 'name', 'كب كيك لوتس'),
(209, 'App\\Model\\Product', 119, 'ar', 'name', 'ارز باللبن بالمكسرات'),
(210, 'App\\Model\\Product', 120, 'ar', 'name', 'كب كيك شوكولاتة'),
(211, 'App\\Model\\Product', 121, 'ar', 'name', 'تشكيز كيك كراميل'),
(212, 'App\\Model\\Product', 122, 'ar', 'name', 'ارز باللبن بالايس كريم والمكسرات'),
(213, 'App\\Model\\Product', 123, 'ar', 'name', 'تشكيز كيك بلوبيري'),
(214, 'App\\Model\\Product', 124, 'ar', 'name', 'ارز بلبن بالمانجو'),
(215, 'App\\Model\\Product', 125, 'ar', 'name', 'ارز باللبن بالايس كريم'),
(216, 'App\\Model\\Product', 126, 'ar', 'name', 'ارز باللبن باللوتس'),
(217, 'App\\Model\\Product', 127, 'ar', 'name', 'ارز باللبن بالشكولاتة'),
(218, 'App\\Model\\Product', 128, 'ar', 'name', 'اوريو مادنيس'),
(219, 'App\\Model\\Product', 128, 'ar', 'description', 'طبقات ايس كريم و اوريو بالمكسرات و صوص كراميل و شكولاتة'),
(220, 'App\\Model\\Product', 129, 'ar', 'name', 'لوتس مادنيس'),
(221, 'App\\Model\\Product', 129, 'ar', 'description', 'طبقات ايس كريم وبسكوت لوتس ومكسرات وصوص لوتس وصوص وايت شوكليت'),
(222, 'App\\Model\\Product', 130, 'ar', 'name', 'ايس كريم'),
(223, 'App\\Model\\Product', 2, 'ar', 'description', 'مكسات جبن - بسطرمة - طماطم - مايونيز'),
(224, 'App\\Model\\Product', 4, 'ar', 'description', 'قطع شيش طاووك وراك مع الطماطم والفلفل والبصل وصوص التكساس المدخن'),
(225, 'App\\Model\\Product', 8, 'ar', 'description', 'مكس جبن - فلفل زيتون - ميونيز - سجق'),
(226, 'App\\Model\\Product', 6, 'ar', 'description', 'صدور فراخ مقرمشه مع صوص الف جزيره وجبنه شيدر'),
(227, 'App\\Model\\Product', 10, 'ar', 'description', 'مكس جبن - فلفل زيتون - ميونيز'),
(228, 'App\\Model\\Product', 7, 'ar', 'description', 'صدور فراخ مقرمشه سبايسي مع صوص حار وجبنه شيدر'),
(229, 'App\\Model\\Product', 13, 'ar', 'description', 'سي فود -  جمبي - كابوريا - كاليماري - خس - صوص تارتار'),
(230, 'App\\Model\\Product', 9, 'ar', 'description', 'صدور فراخ مشويه مع زيتون وصوص باربيكيو وجبنه شيدر'),
(231, 'App\\Model\\Product', 15, 'ar', 'description', 'جمبري مقلس - خس - صوص التارتار'),
(232, 'App\\Model\\Product', 17, 'ar', 'description', 'سماش برجر دبل - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة'),
(233, 'App\\Model\\Product', 14, 'ar', 'description', 'كفته مشويه مع طحينه وخيار مخلل'),
(234, 'App\\Model\\Product', 23, 'ar', 'description', 'سماش برجر موتزريل ستيك  - جبنه شيدر - صوص بيج تيستي -خس - علبه سلطة'),
(235, 'App\\Model\\Product', 29, 'ar', 'description', 'سندوتش البطاطس - ميونيز -كاتشب'),
(236, 'App\\Model\\Product', 27, 'ar', 'description', 'لمبرجر فراخ دبل  - جبنه شيدر - صوص جبنه / رانش - علبه سلط'),
(237, 'App\\Model\\Product', 20, 'ar', 'description', 'ستة قطع بروستد مع بطاطس و كلوسلو وثوميه وعيش وكاتشب'),
(238, 'App\\Model\\Product', 22, 'ar', 'description', 'تسعة قطع بروستد فرخة كامله مع بطاطس و كلوسلو وثوميه وعيش وكاتشب'),
(239, 'App\\Model\\Product', 31, 'ar', 'description', 'ثلاثة قطع صدور فراخ مقرمشة سبايسي مع صوص  وخس وجبنه شيدر'),
(240, 'App\\Model\\Product', 40, 'ar', 'description', '4  قطع كفته مشويه - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع'),
(241, 'App\\Model\\Product', 38, 'ar', 'description', '4  قطع استربس - ارز بالخضار - كبابه - سموسك - مخلل - سلطه - ليمون نعناع'),
(242, 'App\\Model\\Product', 51, 'ar', 'description', 'ثلاثة قطع فراخ ستربس سبايسي او عادي وسناكس بوتيتو و بطاطس وعيش وعصير ليمون نعناع'),
(243, 'App\\Model\\Product', 66, 'ar', 'description', 'لمبرجر تشكن لارج او سماش لحم ميديم - تشيز كرينكل - ليمون منت'),
(244, 'App\\Model\\Product', 76, 'ar', 'description', 'كيلو ارز بسمتي بالخضار +6قطع بروستد+3قطع ستربس+بطاطس +3انواع سلطه+لتر ليمون منت +2سبيرو سباتس'),
(245, 'App\\Model\\Product', 86, 'ar', 'description', 'سموزي ليمون منت'),
(246, 'App\\Model\\Product', 85, 'ar', 'description', 'سموزي مانجو'),
(247, 'App\\Model\\Product', 81, 'ar', 'description', 'سموزي بلوبيري'),
(248, 'App\\Model\\Product', 67, 'ar', 'description', 'تشيكن لماضه +جبنه جريل+باكت بطاطس+ليمون نعناع'),
(249, 'App\\Model\\Product', 65, 'ar', 'description', 'كرسبي حار +لماضه ميكس+باكت بطاطس+ليمون نعناع'),
(250, 'App\\Model\\Product', 62, 'ar', 'description', 'شيش طاووك+سدق مشوي +باكت بطاطس+ليمون نعناع'),
(251, 'App\\Model\\Product', 60, 'ar', 'description', 'لمبرجر فراخ وسط مقلي + جبنه جريل بطاطس+باكت بطاطس+ليمون نعناع'),
(252, 'App\\Model\\Product', 57, 'ar', 'description', 'ميني ستربس او زنجر+ميني شاورما او كفته+ميني ميكسكن سوسيس +ميني شيكولاته مكسرات+مخلل+كلوسلو+بطاطس+عصير ليمون نعناع'),
(253, 'App\\Model\\Product', 56, 'ar', 'description', 'سماش برجر بيج تسيتي ميديم باكت بطاطس -ليمون نعناع'),
(254, 'App\\Model\\Product', 55, 'ar', 'description', 'اتنين ميني  جمبري +اتنين ميني سي فود+بطاطس+كلوسلو+صوص تارتار +عصير ليمون منت'),
(255, 'App\\Model\\Product', 47, 'ar', 'description', 'قطع الكفته والشيش طاووك و الستربس مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(256, 'App\\Model\\Product', 45, 'ar', 'description', 'قطع الشيش طاووك مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(257, 'App\\Model\\Product', 42, 'ar', 'description', 'اربع قطع صدور مشويه مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(258, 'App\\Model\\Product', 41, 'ar', 'description', 'اربع قطع كفته مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(259, 'App\\Model\\Product', 39, 'ar', 'description', 'جمبري وكابوريا وكاليماري مع ارز بالخضار وبطاطس وصوص تارتار وعصير ليمون نعناع'),
(260, 'App\\Model\\Product', 37, 'ar', 'description', 'ثلاثة قطع ستربس مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(261, 'App\\Model\\Product', 35, 'ar', 'description', 'ثلاثة قطع زنجر حار مع ارز بالخضار وبطاطس وثوميه وعصير ليمون نعناع'),
(262, 'App\\Model\\Product', 34, 'ar', 'description', 'فسفور لماضه - جمبري - كابوريا - كاليماري - خس - صوص جبنه'),
(263, 'App\\Model\\Product', 32, 'ar', 'description', 'باكت بطاطس كرينكل'),
(264, 'App\\Model\\Product', 30, 'ar', 'description', 'بطاطس');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL COMMENT 'null for user, kitchen for kitchen user',
  `is_active` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cm_firebase_token` varchar(255) DEFAULT NULL,
  `point` decimal(8,2) NOT NULL DEFAULT 0.00,
  `temporary_token` varchar(255) DEFAULT NULL,
  `login_medium` varchar(15) DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `refer_code` varchar(255) DEFAULT NULL,
  `refer_by` bigint(20) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `user_type`, `is_active`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `point`, `temporary_token`, `login_medium`, `wallet_balance`, `refer_code`, `refer_by`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `language_code`) VALUES
(2, 'Mohammed', 'Mobark', 'mohamedmobark7070@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$SDAfHEjzGuQKVJNYI9XRB.sveGORT0gH2nn91UMXlZ/t05y4NJWmm', NULL, '2024-06-04 19:14:30', '2024-06-04 19:14:33', NULL, '+2001023919385', '@', 0.00, NULL, NULL, 0.000, '25TNSKRf9daLxhTvsx1K', NULL, 0, 0, NULL, 'ar'),
(3, 'Many', '..', 'manymalkalby@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$NvTH.cQkKa2OXXtSPIahf.e/88ulp0NjHv1YmIlkuEABSXz18gxWi', NULL, '2024-06-04 20:15:46', '2024-06-04 20:15:54', NULL, '+2001011617126', '@', 0.00, NULL, NULL, 0.000, '78VGP2phZORcZkNTnFKs', NULL, 0, 0, NULL, 'ar'),
(4, 'Hamada', 'Kenawy', 'hamadakenawy167@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$nt9tk1qQd7vgYhn5H462m.tu3O/MdfBHxI.qOS7RExs.RN4NmQUru', NULL, '2024-06-05 00:12:59', '2024-06-05 00:13:03', NULL, '+2001551333406', '@', 0.00, NULL, NULL, 0.000, 'D452OrWZ3ESAjTzPIeLj', NULL, 0, 0, NULL, 'ar'),
(5, 'wezza', 'laa', 'imoaz877@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$0QRXJketzBO2eDA.u2RVlea5MCox1yQOj5qcXxBKVlpLAKI8JTgm.', NULL, '2024-06-24 09:07:26', '2024-07-06 11:35:59', NULL, '+201111047713', '@', 0.00, NULL, NULL, 0.000, 'JfluMXDwdWvND6yUZ2OD', NULL, 0, 0, NULL, 'en'),
(6, 'محمد', 'محمود', 'Mohammed01212070488@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$LPHWSZbPgU5ofLp3P.PrFe5JGh/Wdl0rkT59monwJjvtXr9XW4Sli', NULL, '2024-06-25 09:56:21', '2024-06-25 09:56:24', NULL, '+2001212070488', '@', 0.00, NULL, NULL, 0.000, 'oDBbMjfwZNA1HQElMuAR', NULL, 0, 0, NULL, 'ar'),
(7, 'Eyad', 'Ramy', 'eyadramyragab@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$FlQaOsZNlgTK6Znk.ISlQ.sWQWl.OuF1fdIOl2dQe/dCK6SAiqkXO', NULL, '2024-06-25 10:10:21', '2024-06-25 10:10:23', NULL, '+200111655168', '@', 0.00, NULL, NULL, 0.000, 'zt29dKowO0heGkyCsGFZ', NULL, 0, 0, NULL, 'en'),
(8, 'Ahmed', 'Hafez', 'ahmdnofel@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$tXzpmLkthHvf4A46PMj/lu8ySuY2QhHKj6dgJPBUgGaIP/TOiklEW', NULL, '2024-06-25 10:17:14', '2024-06-25 10:17:16', NULL, '+201208159127', '@', 0.00, NULL, NULL, 0.000, 'RmAdkmTiyRfnffqKZHJh', NULL, 0, 0, NULL, 'ar'),
(9, 'Fares', 'Sayed', 'darkreaperx58@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$VMIRaOTbDnYasAXfqADr.ODuyez0iL/rElRdx5Wpsc2J6gGX9SBSq', NULL, '2024-06-25 10:24:42', '2024-06-25 10:24:44', NULL, '+2001200228086', '@', 0.00, NULL, NULL, 0.000, 'u0rtp6JV21aGXct040uu', NULL, 0, 0, NULL, 'en'),
(10, 'Mahmoud', 'Mohamdd', 'mahmoudcazcoo@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ZsPh07aixB8FFeNfY7AbPuUT72AN8vbgKPUNrwpVOsEhxTnvfY3ia', NULL, '2024-06-25 10:26:20', '2024-06-25 10:26:21', NULL, '+2001159832070', NULL, 0.00, NULL, NULL, 0.000, 'Tje7GxPtHIVlcFjR9oC3', NULL, 0, 0, NULL, 'ar'),
(11, 'Tarek', 'Hossny', 'aboyahiataky@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$AbOdyCK9C4wR.7x7RF9FoeaatzhdDKHy.dKxJV6smVPiiByS3IfEG', NULL, '2024-06-25 10:26:40', '2024-06-25 10:26:42', NULL, '+2001098178289', '@', 0.00, NULL, NULL, 0.000, 'OE7zMFnn8ZjvRPT5epqj', NULL, 0, 0, NULL, 'ar'),
(12, 'ام', 'ماسة', 'nesma_135@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$7IziIAcuOaA8r0QSBJuu9eLBNsE.OrPZJu1VvEAz/QCMRtGbTSyEe', NULL, '2024-06-25 10:33:18', '2024-06-25 10:33:21', NULL, '+2001030299803', '@', 0.00, NULL, NULL, 0.000, 'U7FHLLIiAWKI0zXR19Nm', NULL, 0, 0, NULL, 'ar'),
(13, 'سعد', 'عبدربه', 'saadelkheety@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$vYDo25oHbkzUjanHvltWAeE3VlY30mE0neUPo6Dk4ZpT2l6CoDav2', NULL, '2024-06-25 10:56:28', '2024-06-25 10:56:32', NULL, '+201225956167', '@', 0.00, NULL, NULL, 0.000, 'bg0fWkRNiCURcRrerdn3', NULL, 0, 0, NULL, 'ar'),
(14, 'Gasser', 'Hanafy', 'gasser.hanafy@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$g8L/VG2hZc4mwcuh7m93Guqvzfj9ZJmrZs177Q8MHI5EvmBV0.UQi', NULL, '2024-06-25 11:18:04', '2024-06-25 11:18:05', NULL, '+2001221622166', '@', 0.00, NULL, NULL, 0.000, 'X6tP2jZngzb7JTZjMwGu', NULL, 0, 0, NULL, 'ar'),
(15, 'Khaled', 'Yousry', 'Khalidyousry21@gmail.com', NULL, 1, '2024-06-25-667aadb15fef5.png', 0, NULL, '$2y$10$wMf4oJtgT825gUk1ATvX1OB8igtfiwQZEWi1fNMaK5JTW6v3iOFma', NULL, '2024-06-25 11:43:32', '2024-06-26 08:40:21', NULL, '+201279036566', '@', 0.00, NULL, NULL, 0.000, 'niry9JMiBzx0f0byKKfA', NULL, 0, 0, NULL, 'ar'),
(16, 'Marwan', 'Mostafa', 'marawanmostafa817@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$VivDQBKqi1ZTbtatCo0pVOM1QRGE1hiAAz8OEfkienpq1FeO2Y64.', NULL, '2024-06-25 12:30:12', '2024-06-25 12:30:21', NULL, '+2010080290415', '@', 0.00, NULL, NULL, 0.000, 'f12HeITOpssMgZnUs2hK', NULL, 0, 0, NULL, 'ar'),
(17, 'Ziad', 'Mohamed', 'Ziadm407@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$M3JIZwfgebe.gp0B0sffQu.REIpLgo.h3dn//vv6M10oxAn5d8A.u', NULL, '2024-06-25 13:15:02', '2024-06-25 13:15:04', NULL, '+2001277821617', '@', 0.00, NULL, NULL, 0.000, 'CNma1PQrVWta4N0hQ7WG', NULL, 0, 0, NULL, 'ar'),
(18, 'Yehia', 'Ismal', 'mera2612009@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$jg58cKHWhCFKPyoMxrwSC.dXtwMSnV6lh931.aVol7I0KV12i2pW6', NULL, '2024-06-25 15:06:28', '2024-06-25 15:06:32', NULL, '+2001014977232', NULL, 0.00, NULL, NULL, 0.000, 'JGH87MAbxnN9UuBTgpN9', NULL, 0, 0, NULL, 'ar'),
(19, 'Ahmed', 'Thabet', 'thabeta561@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$wf1QYtDHY1/SQEcWURrQ6eUuz90OVyzr/ueYBNNvR36FM7F/fl1Wq', NULL, '2024-06-25 15:51:57', '2024-06-25 15:51:59', NULL, '+201283941222', '@', 0.00, NULL, NULL, 0.000, 'cZURSqrDuJmxZySW9SkP', NULL, 0, 0, NULL, 'ar'),
(20, 'كرستينا', 'منير يوسف', 'christina_mounir@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$4XtFiT8Ui0ftkCn33EqS1OemsaqaiBaNlXgWT6k2rnaeqqmCVGLl6', NULL, '2024-06-25 17:31:34', '2024-06-25 17:31:36', NULL, '+2001226125940', '@', 0.00, NULL, NULL, 0.000, '0M8ymU0qsLTXOMsyDbBk', NULL, 0, 0, NULL, 'ar'),
(21, 'Hussien', 'Ahmed', 'ragnarahmed5@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$PVx/UPp5y4o3ngfXYoM8MeT2cVoWavPSeSOCSr1n.MfCQr7uJfHMi', NULL, '2024-06-25 18:43:41', '2024-06-25 18:43:43', NULL, '+2001018482936', '@', 0.00, NULL, NULL, 0.000, 'fBn7RLHhkyLLF7SJOoPS', NULL, 0, 0, NULL, 'en'),
(22, 'ahmed', 'abdullah', 'ledooman44@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$DMr5Z1QeOo.dVGiI8e8qbuDOxkafkwplMTOyVW7cXsyxGEeajGFdy', NULL, '2024-06-26 02:19:40', '2024-06-26 02:19:43', NULL, '+2001021020248', '@', 0.00, NULL, NULL, 0.000, 'wmAP6qEjvekIGnt2ycbY', NULL, 0, 0, NULL, 'ar'),
(23, 'Hadeer', 'Shahin', 'hadeer.r.shahin1@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$h3tJjUHHHdlF8Qm4gYsRrO6X7LydXoQNTrSW12VhzHyqmNNPJHOd6', NULL, '2024-06-26 12:12:39', '2024-06-26 12:12:42', NULL, '+201276490116', '@', 0.00, NULL, NULL, 0.000, 'O024fytjldzeSQBrF4mr', NULL, 0, 0, NULL, 'ar'),
(24, 'Mahmoud', 'Jaafar', 'mahmoudjaafar2020@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$tZONk2I4a05E8G2/9qTBZ.pWRWIrtGCh2Vz0xvIh85QVRZtSZVqGi', NULL, '2024-06-26 12:15:55', '2024-06-26 12:15:57', NULL, '+201123338865', '@', 0.00, NULL, NULL, 0.000, 'otr2F50GJWf5L0pIkUHv', NULL, 0, 0, NULL, 'en'),
(25, 'Mahmoud', 'Ibrahim', 'mahmoudelzamlkawy086@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$dH6Ja4zqSEe10Z9mn/tCOeYG76MkeWAUj2u3xURghe6bSPRSwLztS', NULL, '2024-06-26 13:13:56', '2024-06-26 13:13:57', NULL, '+201278054896', '@', 0.00, NULL, NULL, 0.000, 'xCmjqQn71cJ2lLKZDlM9', NULL, 0, 0, NULL, 'ar'),
(26, 'خالد', 'محمد', 'bokahf2016@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$7Y6WsSeYu5cTYBLkZBiSvu79SHHHZRyCMZlbCKzxUuUbbMBz5JqvG', NULL, '2024-06-26 14:12:00', '2024-06-26 14:12:01', NULL, '+2001288303340', '@', 0.00, NULL, NULL, 0.000, '9U0FEunUM0s2jyKeWqk9', NULL, 0, 0, NULL, 'ar'),
(27, 'Mahmoud', 'Abdallah', 'mahmoudabdallah144@icloud.com', NULL, 1, NULL, 0, NULL, '$2y$10$jMYnOx1FLNi6OvEpF93AwOz7SwiFeRbSDIfNPgoP3UyUea4UboqGG', NULL, '2024-06-26 14:33:09', '2024-06-26 14:33:11', NULL, '+201111134082', '@', 0.00, NULL, NULL, 0.000, 'IA32Y5E8Gv8zowEUyvZr', NULL, 0, 0, NULL, 'en'),
(28, 'Engy', 'Mohamed Elhelwa', 'engyelhelwa86@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9/dRnh1TUW7uQdy3ChClzuQEgqqEO9XeeeMUIeXuwUFCyGffWxKiG', NULL, '2024-06-26 14:33:30', '2024-06-26 14:33:31', NULL, '+2001550068211', '@', 0.00, NULL, NULL, 0.000, '7RxMA05S515i0aQwJbIl', NULL, 0, 0, NULL, 'ar'),
(29, 'Dana', 'H', 'danahassooun01@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$NGzcLlyu9aMMw5ppYTT.ber0e4kQbggE89bPYk0lOO6WfI.ih3CGm', NULL, '2024-06-26 14:50:34', '2024-06-26 14:50:36', NULL, '+201062952591', '@', 0.00, NULL, NULL, 0.000, 'PtC4tci9gEuPlEp4ROEs', NULL, 0, 0, NULL, 'ar'),
(30, 'Gehad', 'Elsayed', 'egehad399@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$HXz20dl4gAELQDOT2WDT1eymgCvdH2sEJWktMz.szz8dirbpQbP56', NULL, '2024-06-26 16:50:44', '2024-06-26 16:50:46', NULL, '+2001276142894', '@', 0.00, NULL, NULL, 0.000, 'fTXqJkDDIoUgZ8i3fYqf', NULL, 0, 0, NULL, 'ar'),
(31, 'Alaa', 'Montaser', 'alaa.mon18@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$cRWOjt69ReZO93jk/JjdvOb.EnA21.NIY5OjqegCDBVDvyRJ61GhO', NULL, '2024-06-26 19:39:11', '2024-06-26 19:39:13', NULL, '+201143654119', '@', 0.00, NULL, NULL, 0.000, 'XsI0gui3aLjrY89LhOlh', NULL, 0, 0, NULL, 'ar'),
(32, 'Mohamed', 'Adel', 'hamadaaadel21@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$VqYykNlCD2cG5n5YGZFjYOB3ZIJIzQfZWdPbzArvTcptGDhE2d1wO', NULL, '2024-06-26 21:03:21', '2024-06-26 21:03:22', NULL, '+2001279968673', '@', 0.00, NULL, NULL, 0.000, 'KEhlIMF0g27TIklkvzUn', NULL, 0, 0, NULL, 'ar'),
(33, 'Mazen', 'Ahmed', 'mazenahmedabdelmoneim@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$zA07CCeExS6PDIwY70PqA.9/1Z0.5zB7W/Y6ckkMdtpIsggTW086i', NULL, '2024-06-26 21:44:03', '2024-06-26 21:44:04', NULL, '+201121643272', '@', 0.00, NULL, NULL, 0.000, 'JArYg2dgRrbF6hQN1xAj', NULL, 0, 0, NULL, 'en'),
(34, 'محمد', 'صبحى', 'Moh.sobhi28@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$5ECgk0e7gUTgZx2IwR3/6OT6AHjdlau7K67tQ8stTCl7c42wG1Uza', NULL, '2024-06-26 23:21:16', '2024-06-26 23:21:18', NULL, '+2001023000146', '@', 0.00, NULL, NULL, 0.000, '4SbWKbDdZZF3hpZP4Bi0', NULL, 0, 0, NULL, 'ar'),
(35, 'اسماء', 'الجروانى', 'asmaa.garawany@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ZRmZzylGtaZ3XHHUgW8uxuPeLFtUR7I6Aakpi2ol8xB7ieWimUZS2', NULL, '2024-06-26 23:21:48', '2024-06-26 23:21:50', NULL, '+201229586687', '@', 0.00, NULL, NULL, 0.000, 'VV4C00QoOJthP0BDD3Xt', NULL, 0, 0, NULL, 'ar'),
(36, 'Saber', 'Gaber', 'saber.gaber1988@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$VypocITGE/J8vosB2ET.1OoobFdwYSgXTrNJ0nyK0g9O0klFlygQW', NULL, '2024-06-26 23:22:32', '2024-06-26 23:22:34', NULL, '+201228516865', '@', 0.00, NULL, NULL, 0.000, 'TcFb1Gfaa5BeQCV2PBJf', NULL, 0, 0, NULL, 'ar'),
(37, 'معتز', 'أسامة', 'moataz.nar@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$pfm1Xglv.Jk6IfDOBjmVl.6vLRpeNChNjuChw4lqL5QJUFvGIOYSG', NULL, '2024-06-27 07:58:45', '2024-06-27 07:58:49', NULL, '+201004449941', '@', 0.00, NULL, NULL, 0.000, 'zd8j2IzjuTGgvl5UVfsp', NULL, 0, 0, NULL, 'ar'),
(38, 'محمد', 'هاشم', 'mohamedhashim624@g.comail.com', NULL, 1, NULL, 0, NULL, '$2y$10$.Q/q9zDrFtsj3b0ofR2nye8DfirbHpYCMhsgcEsEgt2HOvInOxwzS', NULL, '2024-06-27 09:39:06', '2024-06-27 09:39:07', NULL, '+2001092916800', '@', 0.00, NULL, NULL, 0.000, 'V2akfwKW4OzFZyoL61ht', NULL, 0, 0, NULL, 'ar'),
(39, 'Kareem', 'Ashraf', 'kareemashraf840@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$WFyddv5NzipkK2kg/rw9SedfgUfwPky4Uw2ER6ee/Q3NRm12mxCBG', NULL, '2024-06-27 14:05:48', '2024-06-27 14:05:49', NULL, '+201060224237', '@', 0.00, NULL, NULL, 0.000, 'GDTnm0sEVAOxJWhn7Yae', NULL, 0, 0, NULL, 'en'),
(40, 'Elsayed', 'Ahmed', 'sido_themaster@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$ucjirWnx9DjQxjLIxh.a/OUNY.HVNH7PL1KDqPww5hw8RBTDErjzW', NULL, '2024-06-27 15:28:12', '2024-06-27 15:28:13', NULL, '+201556668700', '@', 0.00, NULL, NULL, 0.000, '4V0hfvbV1hgxEVeVnAvG', NULL, 0, 0, NULL, 'ar'),
(41, 'سيف الدين', 'عادل', 'SeifAdel.sea@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$CkJ9L/NmT5y.hoMn73ZDsOV3PgQ8vCW55Il4Bz.K6f5IDB.KrX7jG', NULL, '2024-06-27 16:25:48', '2024-06-27 16:25:49', NULL, '+2001553132408', '@', 0.00, NULL, NULL, 0.000, '5oSAQHZGir3LBcuXc1Ss', NULL, 0, 0, NULL, 'ar'),
(42, 'Mina', 'Zakaria', 'mina.zakaria.zakher@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$xfwDi4b.rSC5JoBIyAyGu.Uen7Cm6VM3mM8JFxA8y4x9sBgK7az02', NULL, '2024-06-27 19:33:53', '2024-06-27 19:33:55', NULL, '+2001203370083', '@', 0.00, NULL, NULL, 0.000, 'yhI6f4vnr8SAOniU1WKc', NULL, 0, 0, NULL, 'ar'),
(43, 'khaled', 'raslan', 'the93youtub@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$yLPDfbVXBrX7sOqfj/7yBOG7WL6kVAP9klKw2G/jBkgHLOYYZpZG6', NULL, '2024-06-27 20:52:21', '2024-06-27 20:52:23', NULL, '+201553372923', '@', 0.00, NULL, NULL, 0.000, 'GVt3UU0Kwp0qlxjIIoSD', NULL, 0, 0, NULL, 'en'),
(44, 'Ibrahim', 'Ali', 'brime.ali@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$eqJbtFd5XRXfe3PBoTmmiO76JnYYENyh3a9DU1zsD1NDk6c06vblK', NULL, '2024-06-27 21:10:10', '2024-06-27 21:10:11', NULL, '+201284070016', '@', 0.00, NULL, NULL, 0.000, 'tOgzzc7b7GJ1N23QfH95', NULL, 0, 0, NULL, 'ar'),
(45, 'Ahmad', 'Ali', 'ahmadpali2233@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$8ZDAgBquzjq/JIGxvxHiIObb8GtmiYjV5hlIs9eSv8f21gUHPOMyC', NULL, '2024-06-27 22:00:17', '2024-06-27 22:00:20', NULL, '+2010177513204', '@', 0.00, NULL, NULL, 0.000, 'zqMU8toBELuOe2cVubrf', NULL, 0, 0, NULL, 'ar'),
(46, 'Nesma', 'Himdan', 'nesmahimdan2022@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$XYpnarXCp//uFZ.2homZnOLXpyWB7zWH3FkCODA1wY1dxow/DrEtW', NULL, '2024-06-27 22:24:24', '2024-06-27 22:24:27', NULL, '+201275644422', '@', 0.00, NULL, NULL, 0.000, 'ECTj8VWW21O9O1pXh5Cg', NULL, 0, 0, NULL, 'ar'),
(47, 'Mohanad', 'ElSaadany', 'mohanedelsadany@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$hVsOgNdaCmzkIbBMavLhZuhC3HPYt1ax2auebbJ.8swJ84bJC8NWm', NULL, '2024-06-27 23:53:14', '2024-06-27 23:53:17', NULL, '+201211134170', '@', 0.00, NULL, NULL, 0.000, 'Y6Slt6qsVJIoGZmd0uMF', NULL, 0, 0, NULL, 'en'),
(48, 'Mohamed', 'Fawaz', 'mfawaz979@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$7LRZaZiR/ZXXP9MeH2mUwe8NZjWd2KjKBsPe4Z5wQUZgqsY6WQcJK', NULL, '2024-06-27 23:53:58', '2024-06-27 23:53:59', NULL, '+201550318103', '@', 0.00, NULL, NULL, 0.000, 'D6vyXQXMoPQMJCUAxLah', NULL, 0, 0, NULL, 'ar'),
(49, 'Abdelwahab', 'Ramadan', 'abdelwahabramadan12345@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$85rr2m2iZcmpcZw2HWD0guZt/wLL2GfTQYqm5cluSi2e8LatJ5Cy2', NULL, '2024-06-28 00:15:38', '2024-06-28 00:15:40', NULL, '+201141350926', '@', 0.00, NULL, NULL, 0.000, 'rh10giKZHoQSs4Ko8UAR', NULL, 0, 0, NULL, 'ar'),
(50, 'Hazem', 'Amr', 'hazemamr2121@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$7yl2RTU4K5FSXTJIfVQY3.fgJef9Ul2GeRWVbH8ALhRhKWAHQvtIK', NULL, '2024-06-28 08:00:37', '2024-06-28 08:00:39', NULL, '+201554083459', '@', 0.00, NULL, NULL, 0.000, 'xswjOQfEkUuVr5sSEta6', NULL, 0, 0, NULL, 'ar'),
(51, 'Eman', 'Mohamed', 'emyalieyad33@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$yTTbVQj5uOPx00J0WCDJPO85sUOq/pRj9AYTdZWHZMu3zcpDSzHne', NULL, '2024-06-28 11:31:01', '2024-06-28 11:31:03', NULL, '+2001553566261', '@', 0.00, NULL, NULL, 0.000, '9EHP14YpRpBI4bo9ruUz', NULL, 0, 0, NULL, 'ar'),
(52, 'حازم', 'سعيد', 'arsenal1886.49.84@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ggMF5yCbVPQfcXEypRIiG.cqbIQrQrmZsdfJ8p9qqOdIaSw0uO5ZC', NULL, '2024-06-28 11:46:38', '2024-06-28 11:46:40', NULL, '+201003727248', '@', 0.00, NULL, NULL, 0.000, 'rg3dm57ZGkpzDbGwESXp', NULL, 0, 0, NULL, 'ar'),
(53, 'هشام', 'السيد', 'heshamelsayed676@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$Fz/X81W.xLlC3gsry3gx9eRFgUguoEX1N5PWA0u/LTLrV6c95AAe6', NULL, '2024-06-28 13:25:40', '2024-06-28 13:25:42', NULL, '+2001009003154', '@', 0.00, NULL, NULL, 0.000, 'th6WzWHyMlhlJuJRK4w2', NULL, 0, 0, NULL, 'ar'),
(54, 'وليد', 'محمد', 'mf9275019@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9.63tr79tVEMHACtAcfKru/Xh8M3XTqsKrz4W1W/EN1epT8wM9fj6', NULL, '2024-06-28 14:22:07', '2024-06-28 14:22:09', NULL, '+201015860623', '@', 0.00, NULL, NULL, 0.000, 'UIGYFuova0z4YsdKhJKH', NULL, 0, 0, NULL, 'ar'),
(55, 'إسلام', 'حسين', 'islam.cellphone@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$6dkS46ye8OkhJM18pvAO0uOrjWgrj/NPGSsS3a5zOlMg/xtSPk.kC', NULL, '2024-06-28 14:38:51', '2024-06-28 14:38:54', NULL, '+201101112811', '@', 0.00, NULL, NULL, 0.000, 'ifwlGNg4AnLozXD7Mtk7', NULL, 0, 0, NULL, 'ar'),
(56, 'Ibrahim', 'Ramy', 'ibrahimramy049@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$EqPEszYex0aYs3GPCZ.2WOYcrHP/1T5khgh/pjrFcc8F7esWKl1S2', NULL, '2024-06-28 15:14:30', '2024-06-28 15:14:32', NULL, '+201097448253', '@', 0.00, NULL, NULL, 0.000, 'pVd2SuDyLHenuOkK9GYN', NULL, 0, 0, NULL, 'ar'),
(57, 'Omar', 'Ahmed', 'omrya9060@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$iRNdxDigiqqA3P2NS8rlvuqmrgdv4j8ccoOyO2jJhS89qiUSoQC62', NULL, '2024-06-28 15:54:32', '2024-06-28 15:54:35', NULL, '+201277073419', '@', 0.00, NULL, NULL, 0.000, 'sByfM7TsaV6xs88XdmRG', NULL, 0, 0, NULL, 'ar'),
(58, 'Mohamed', 'Tarek', 'm.tarek.ossman@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$WTTYZWYGHwWdf3Dsd/nwneV.NMRtMbzrqLjwlTfH6Z2KkEIgiMz7a', NULL, '2024-06-28 15:56:46', '2024-06-28 15:56:48', NULL, '+201111074237', '@', 0.00, NULL, NULL, 0.000, 'tkhN7ILo9SZsk7DQLydM', NULL, 0, 0, NULL, 'ar'),
(59, 'Ahmed', 'Osman', 'ahmedosman.civil@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$O.Y1t0VhZgPPLWavqCF5Qud29XU8aSNab/m.U8JRf8krsHslgjG6.', NULL, '2024-06-28 16:00:30', '2024-06-28 16:00:32', NULL, '+2001116401071', '@', 0.00, NULL, NULL, 0.000, 'Un7hKcTN3nmxiDck076r', NULL, 0, 0, NULL, 'ar'),
(60, 'Hala', 'Ibrahim', 'basteen9@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$sovEN/GVF.oNJD6sJqZmEu9pASLle6XA/1ViijDl7MQGeYxVT0eTW', NULL, '2024-06-28 16:12:08', '2024-06-28 16:12:11', NULL, '+201129858859', '@', 0.00, NULL, NULL, 0.000, 'g1vWWfMu2V5lpQY0OyA0', NULL, 0, 0, NULL, 'en'),
(61, 'Mohamed', 'yassin', 'capt.mohamedyassin@hotmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$rtWRLJLzS0xjPWmRV7BrKuidnPsINdeVvVRH9pVwupoIfosQV749q', NULL, '2024-06-28 16:13:53', '2024-06-28 16:13:55', NULL, '+2001005533623', '@', 0.00, NULL, NULL, 0.000, 'JyWm5P5NhAAcsSaG1Ngm', NULL, 0, 0, NULL, 'ar'),
(62, 'yasser', 'henawy', 'henawyyyy@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$uZZ/cK4KadVU57M1Sf6BGugusnkDUzViPLyE.HMHWCHP8EGPQvGBq', NULL, '2024-06-28 16:16:07', '2024-06-28 16:16:09', NULL, '+2001555098221', '@', 0.00, NULL, NULL, 0.000, 'aSlQZCzF2opHvitfqeDG', NULL, 0, 0, NULL, 'ar'),
(63, 'Ahmed', 'Elgiuoshy', 'giuoip@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$8mk8Jh1tMCw.jytfQzTpquMzu1J2vMKVgLH1.smnJHcBs4ZOm2AXS', NULL, '2024-06-28 17:29:08', '2024-06-28 17:29:10', NULL, '+201284819322', '@', 0.00, NULL, NULL, 0.000, 'Yv6j9bkEyXP6wn3dIPGe', NULL, 0, 0, NULL, 'ar'),
(64, 'Adam', 'Ahmed', 'asmaaahmedomanas91@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$I6Q9/MWYMdWAEnlDVnzTqu7uChtiMty2KpexR1rbFt1loO/2X18Fe', NULL, '2024-06-28 20:05:14', '2024-06-28 20:05:16', NULL, '+2001275012254', '@', 0.00, NULL, NULL, 0.000, 'mQXvLeFequQKPW6YKvu8', NULL, 0, 0, NULL, 'ar'),
(65, 'Nour', 'Ahmed', 'noureldin20795@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$bcrddFbb0fEnf.XNIIFdeOgvw9dhmjP7MGNd8UB.1IiFbeaJvKdE.', NULL, '2024-06-28 21:57:11', '2024-06-28 21:57:13', NULL, '+201270864298', '@', 0.00, NULL, NULL, 0.000, '9d1bSyZrjzIkQiNyAspX', NULL, 0, 0, NULL, 'ar'),
(66, 'Youmna', 'Soliman', 'yomisoliman@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$tKB.RB072i9RsBh3L9dL7ed6hv9NjE6ws4T9BMjh2xIRMUVAA5sMO', NULL, '2024-06-28 23:06:15', '2024-06-28 23:06:18', NULL, '+2001276691158', '@', 0.00, NULL, NULL, 0.000, 'wj8Xm4Snz6eeHfZ0b1nc', NULL, 0, 0, NULL, 'ar'),
(67, 'Ahmed', 'Mahmoud', 'talaatmarwa89@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$qrNrWUYVoLVbbwR3CBQxTuYfX0amPILmVQ2EV81cbQr66h7cB0VTW', NULL, '2024-06-28 23:14:24', '2024-06-28 23:14:27', NULL, '+2001551003333', '@', 0.00, NULL, NULL, 0.000, 'wKAJbZb0QLYfddBQ2Lwf', NULL, 0, 0, NULL, 'ar'),
(68, 'المستشار هانى', 'عبداللطيف', 'hanylancer86@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$sTXUWd0pmBU36/PPjbmzc.62GyUcg63QXr95n6eHyd7cV5.0s0oZa', NULL, '2024-06-29 00:51:53', '2024-06-29 00:51:54', NULL, '+201000884445', '@', 0.00, NULL, NULL, 0.000, 'XX34cqbQ4SlF3AM2dsc4', NULL, 0, 0, NULL, 'ar'),
(69, 'نجلاء', 'فتحى', 'nanafathi2949@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ZMS.4GKx9A0GsrROohlCTuq8JShZMpl0rRRLLE6xXcw4JXlYHaEN6', NULL, '2024-06-29 03:24:12', '2024-06-29 03:24:14', NULL, '+201200045498', '@', 0.00, NULL, NULL, 0.000, '0FHdkWh7yNDu2NTRLNHq', NULL, 0, 0, NULL, 'ar'),
(70, 'Esraa', 'Ahmed', 'esraahmed068@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$MpQ3Iy8qAA9/SkqvTf/4V.5gYS0g4SN891BgG3OisgK8maLYodAQ6', NULL, '2024-06-29 03:26:40', '2024-06-29 03:26:42', NULL, '+2001112344906', '@', 0.00, NULL, NULL, 0.000, 'lmAjlW5Io6pVd1XhTPGY', NULL, 0, 0, NULL, 'ar'),
(71, 'Hesham', 'Ehab', 'heshamangel123@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$X/nTmyDjAcAjZfEx76bU3evSIbZudoCBc2RLilcoa5uve92gUzfWK', NULL, '2024-06-29 05:41:39', '2024-06-29 05:41:41', NULL, '+2001067931035', '@', 0.00, NULL, NULL, 0.000, 'jHuoMUZ51KyWd8lSkyHT', NULL, 0, 0, NULL, 'en'),
(72, 'Lobna', 'Othman', 'lobnaothman@outlook.com', NULL, 1, NULL, 0, NULL, '$2y$10$PJvPB7MklnRSihPvtZo1..30zT17M5Qp2X8v.eePepqc/TqTiTQBG', NULL, '2024-06-29 09:14:37', '2024-06-29 09:14:39', NULL, '+2001020256198', '@', 0.00, NULL, NULL, 0.000, 'MpoAgo2mAqLJUs0aKLpF', NULL, 0, 0, NULL, 'en'),
(73, 'Sohaila', 'Tawakol', 'tawakolsohaila989@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$qR9HiGi5BGNdy//JGZPQjuQ7nN4tzEm6pu9ic1up0L94j9LReALj.', NULL, '2024-06-29 10:49:26', '2024-06-29 10:49:28', NULL, '+201227550561', '@', 0.00, NULL, NULL, 0.000, '9D5S1HIMKpDN6cDEL9HN', NULL, 0, 0, NULL, 'ar'),
(74, 'Mohammed', 'Hosny', 'mohammedhosny232@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$YONTivr6sygSwASeKeqZjOv1jh76JC5YRquv.9F7dmic7BRSZBqVm', NULL, '2024-06-29 17:45:32', '2024-06-29 17:45:34', NULL, '+201091548154', '@', 0.00, NULL, NULL, 0.000, 'lUa8MVRPMF79keiuy86F', NULL, 0, 0, NULL, 'en'),
(75, 'Noah', 'Osama', 'meena.persian@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$/e2Cjx54kE6Pto.pPsMLkOPxkXvTncUks4olD6oin5MuiYeHrkBrW', NULL, '2024-06-29 19:36:23', '2024-06-29 19:36:25', NULL, '+201116270640', '@', 0.00, NULL, NULL, 0.000, 'v0J89DcAzVzyu1i52kOb', NULL, 0, 0, NULL, 'ar'),
(76, 'Mohamed', 'Khedr', 'mohamedkhedrtanjero@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$RdDCf5xEICj8wgNE1YgU/.P4Y1lM1o1Bq94IAsNrZkAhxztUit4g.', NULL, '2024-06-29 20:33:02', '2024-06-29 20:33:04', NULL, '+201020967696', '@', 0.00, NULL, NULL, 0.000, 'ucmz1tRCmHqFMA4DpM8x', NULL, 0, 0, NULL, 'en'),
(77, 'Sagda', 'Sherif', 'fonen91@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ToDWY5ATVGhKkbOzBS5p7eFsNkGZvNzAS2ZSTXdut8D9Dxf7i30u.', NULL, '2024-06-30 03:10:35', '2024-06-30 03:10:38', NULL, '+2001283438708', '@', 0.00, NULL, NULL, 0.000, 'X37dpmRql649m8uYgEvS', NULL, 0, 0, NULL, 'ar'),
(78, 'Ahmed', 'Atef', 'ahmedbakry0002@gmail.com', NULL, 1, '2024-07-04-6686e15934a19.png', 0, NULL, '$2y$10$u6bIqXdybk1vw3exGDIxM.sXaMNa/XQQh3MRRYMWYvB23OWZXLE1.', NULL, '2024-06-30 09:33:37', '2024-07-04 17:52:25', NULL, '+201114309096', '@', 0.00, NULL, NULL, 0.000, 'BqJeQD9FpmAB2g2Qrvtp', NULL, 0, 0, NULL, 'ar'),
(79, 'Mahitab', 'Nagah', 'mahy_8880@hotmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$OibwtznhvA7X.FyQvd9Su..p0XmJqV5WyvXArzmInDl0T1TcwUOOC', NULL, '2024-06-30 12:09:54', '2024-06-30 12:09:56', NULL, '+201096156833', '@', 0.00, NULL, NULL, 0.000, 'sI8LFrj2LSvyZIlIJ1J6', NULL, 0, 0, NULL, 'ar'),
(80, 'Loay', 'Shaaban', 'lakm68491@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$YARcbeOXZetZsDYM0H1H6.0gUeqMfsXCUlyTwtuewBJYKfMExlqfW', NULL, '2024-06-30 12:49:53', '2024-06-30 12:49:56', NULL, '+2001061882552', '@', 0.00, NULL, NULL, 0.000, 'P3p6vGpZhUHjInSrWe6q', NULL, 0, 0, NULL, 'ar'),
(81, 'Habiba', 'Taha', 'bmostafa689@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9tm8//3QLTwxGicdP2zhH.Hhch6FouyxonqEYxbyWV6V2xvgwm3ua', NULL, '2024-06-30 13:13:52', '2024-06-30 13:13:54', NULL, '+2001102302253', '@', 0.00, NULL, NULL, 0.000, 'mgJ09ybYuQ6zy6Q0rSZG', NULL, 0, 0, NULL, 'ar'),
(82, 'Khalida', 'Mohamed', 'tokaam1999@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$byQLCvlX3PnSk10/Md54nu/y54P2JQdYBebkOdo9cJxvbRzqvRnaG', NULL, '2024-06-30 15:31:06', '2024-06-30 15:31:28', NULL, '+2001008016669', '@', 0.00, NULL, NULL, 0.000, 'zOe0pOUoobqxPqIOIpfp', NULL, 0, 0, NULL, 'ar'),
(83, 'Heba', 'Khaled', 'hebakaled970@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$jIPMxtp.3t0iLGnseS0Uy.UAVdPYCWdq5ppmOfBS3ITHzaf49.CPm', NULL, '2024-06-30 15:40:13', '2024-06-30 15:40:15', NULL, '+2001284587519', NULL, 0.00, NULL, NULL, 0.000, 'M8JMipnLyCkcERnGm57b', NULL, 0, 0, NULL, 'ar'),
(84, 'Ahmad', 'Anan', 'enan.fsorg@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$loFzoNYqsua3sP4mAkFDuOFpAvO84wxeVT3d6bMaGzVN8JuimPgVu', NULL, '2024-06-30 15:46:48', '2024-06-30 15:46:50', NULL, '+201069786249', '@', 0.00, NULL, NULL, 0.000, 'gJZJBzWSFsKDYijNZLwR', NULL, 0, 0, NULL, 'ar'),
(85, 'Adham', 'Attia', 'attiaadham54@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ZURPQGM1GL6pyO9gVJSPoOXQed6i2wwH83Sk3G4Y69U61.yKwh89.', NULL, '2024-06-30 15:54:29', '2024-06-30 15:54:31', NULL, '+2001274154401', '@', 0.00, NULL, NULL, 0.000, 'g82gb2ZVfNQ1Ey0Se4Bc', NULL, 0, 0, NULL, 'ar'),
(86, 'Mostafa', 'Hanafy', 'hanafymostafa29@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$aG9ZsYFK3ztdwwR/BYAci.24f.5xAAYU50ys7g3WXrXs8dtIIjrLm', NULL, '2024-06-30 16:06:42', '2024-06-30 16:06:44', NULL, '+201273774280', '@', 0.00, NULL, NULL, 0.000, 'tY2jDFZeaQiAqWXrCOzl', NULL, 0, 0, NULL, 'ar'),
(87, 'islam', 'Ashraf', 'islamashraf9991234@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$cbP8hkmptBon9ibpq43he.JdvwzSkqEUqxLcv8DeWn/WiLW8/IR5C', NULL, '2024-06-30 16:52:10', '2024-06-30 16:52:12', NULL, '+201007345196', '@', 0.00, NULL, NULL, 0.000, 'hXzKpzP4aN1vpapL6QIH', NULL, 0, 0, NULL, 'ar'),
(88, 'Samar', 'Khalifah', 'smsmanoolove@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$/2hTU4fta/q10TZvAq02oOfhVtpIvzibFIS9ebfGfyPPZas3ZVWvC', NULL, '2024-06-30 18:00:55', '2024-06-30 18:00:57', NULL, '+201100741654', '@', 0.00, NULL, NULL, 0.000, 'D1jvr4Bc1x1OtfH8xNga', NULL, 0, 0, NULL, 'ar'),
(89, 'Esraa', 'Hamdy', 'esraahamdyy2020@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$LnS8iGLxNad8q1MlrXEUmO2JU/2BwIy76zyFAs3Ddrg4awIz5adMO', NULL, '2024-06-30 18:39:46', '2024-06-30 18:39:47', NULL, '+201065417835', '@', 0.00, NULL, NULL, 0.000, 'cFPeJETTSgEzp2x9IaAd', NULL, 0, 0, NULL, 'ar'),
(90, 'Mohamed', 'Beshir', 'mohamedbeshir45@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$qu0CFYJxLGUlLDJaKCjKNOrYlBipO5AaWTxf99Ic75o/ZJWjHOtx.', NULL, '2024-06-30 19:07:04', '2024-06-30 19:07:06', NULL, '+201110087939', '@', 0.00, NULL, NULL, 0.000, 'Us8FipWbjtu4MYJL5IPO', NULL, 0, 0, NULL, 'ar'),
(91, 'Lara', 'Ahmed', 'laraahmed102011@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$0HVn98tohkEeRu1hckaC..r8n6b0majMCkMCl4qxjVhJ20xpIgy2W', NULL, '2024-06-30 20:10:21', '2024-06-30 20:10:23', NULL, '+2001507332011', '@', 0.00, NULL, NULL, 0.000, 'DZywpglExll1Rk7mHeZm', NULL, 0, 0, NULL, 'ar'),
(92, 'Ahmed', 'Elhariry', 'abml72@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$0hvwYwelcjcY9sGzG0GalO1kmfVyPHhief3mE1Jdj9mhAAnOwt6xa', NULL, '2024-06-30 20:12:01', '2024-06-30 20:12:04', NULL, '+201224356944', '@', 0.00, NULL, NULL, 0.000, 'natBA3Yf4RX2bdeqDhkC', NULL, 0, 0, NULL, 'ar'),
(93, 'Mahmoud', 'MUSTAPHA', 'mahmoudmustapha2711@icloud.com', NULL, 1, NULL, 0, NULL, '$2y$10$BVd.KQ9LU/Rd6M2k6pcnwesas/b3l8.dGM3gGcyto65pg7gFgpOOK', NULL, '2024-06-30 20:42:11', '2024-06-30 20:42:13', NULL, '+201201429453', '@', 0.00, NULL, NULL, 0.000, 'GDKw64UTRHZyrFTihhGu', NULL, 0, 0, NULL, 'ar'),
(94, 'Ahmed', 'Essam', 'midoz_91@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$bF24BpS1Ie.R9fMCn3vKtuk8vymavxJV9ACmypJTmL83D9zrbLxpm', NULL, '2024-06-30 21:58:53', '2024-06-30 21:58:54', NULL, '+201289447032', '@', 0.00, NULL, NULL, 0.000, '4jOTeUKJMi68kZvFCVaW', NULL, 0, 0, NULL, 'ar'),
(95, 'Eslam', 'Talaat', 'eslam5talaat@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$u30/WKsFfUcs4h6QO8NmNObSG9LODpF8k9PhiEFjQCdjvzj6SGEDe', NULL, '2024-06-30 23:05:04', '2024-06-30 23:05:07', NULL, '+201065512655', '@', 0.00, NULL, NULL, 0.000, 'AFECBvMN6aOecVu6UuNr', NULL, 0, 0, NULL, 'ar'),
(96, 'هاني', 'محمد', 'hanimohamed565456@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9ny2f0UUPb91c/VEY2JfNOfhlga34sHqnchLzuESEHI2ILXdGkMy6', NULL, '2024-07-01 09:30:33', '2024-07-01 09:30:35', NULL, '+201289400118', '@', 0.00, NULL, NULL, 0.000, 'almN4FhkiWFzvxMM1GBX', NULL, 0, 0, NULL, 'ar'),
(97, 'Basma', 'Gamal', 'basmagamal902@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ImelZbaKdMNjsXtk15wv3u7LrVk0C1iBo/hIsC/4NEuEOlYCzsflK', NULL, '2024-07-01 11:41:55', '2024-07-01 11:41:57', NULL, '+2001206278027', '@', 0.00, NULL, NULL, 0.000, 'vrM5nWtf9iqgrzcmTcJQ', NULL, 0, 0, NULL, 'ar'),
(98, 'Sara', 'Hagag', 'hagag.sara@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$5Cy7Bkjdtwwl7I4eBXjXw.eHeQM3lvZYbIv4Dhn6cpZDRH/cYKnJ6', NULL, '2024-07-01 13:28:12', '2024-07-01 13:28:13', NULL, '+201229426568', NULL, 0.00, NULL, NULL, 0.000, 'ot0EqTtw5aciBcizjJ6K', NULL, 0, 0, NULL, 'en'),
(99, 'Fady', 'Asharf', 'fadyturboo6@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ywIziMCQwlGAw2/kU93Hs.fk2SgyDv/2ndPP6f7jPRAhFJJvTb48O', NULL, '2024-07-01 14:33:49', '2024-07-01 14:33:53', NULL, '+201276080004', '@', 0.00, NULL, NULL, 0.000, 'DP5Z2c1euIt6fGSbvrKz', NULL, 0, 0, NULL, 'ar'),
(100, 'YO', 'MN A', 'yomna.hassan097@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$IwUJWYQp2FDV2sLfQbL0xuo6QAymzWDRU7ZQXoxh8HD47QBYWE4Bi', NULL, '2024-07-01 15:01:10', '2024-07-01 15:01:12', NULL, '+201145571893', '@', 0.00, NULL, NULL, 0.000, 'iozUZlyetWl5Jvd7qLGw', NULL, 0, 0, NULL, 'en'),
(101, 'Shehab', 'Mohsen', 'shehabplop@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$fXBkvkNK7ZXuQ7GZkGcWB.zvh2Ol3xHYhkBrAcP4YKxoe2MZqUqaq', NULL, '2024-07-01 15:11:52', '2024-07-01 15:11:54', NULL, '+201005615687', '@', 0.00, NULL, NULL, 0.000, 'OnO9CSafZQy9RkAMCysG', NULL, 0, 0, NULL, 'en'),
(102, 'Radwa', 'Elhaddad', 'radwa.elhadadd@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$JjgihT9IrgyjWTHOObutsufzD5YstsBeM2bGPN4PWU.s5VZYVosZu', NULL, '2024-07-01 17:22:02', '2024-07-01 17:22:05', NULL, '+201005594913', '@', 0.00, NULL, NULL, 0.000, 'sMxpB3h1j6T2jpI2p2x3', NULL, 0, 0, NULL, 'en'),
(103, 'George', 'Gamal', 'george.gamal98@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$.BpTYfrrDvhhE0Q8eQHEuedBVkJjsDEVNi6Kf5/k.K4SRDydo6j8i', NULL, '2024-07-01 18:41:30', '2024-07-01 18:41:32', NULL, '+201229162063', '@', 0.00, NULL, NULL, 0.000, 'ncoSogoETAs2h6djUhgA', NULL, 0, 0, NULL, 'ar'),
(104, 'كيرلس', 'مرقس', 'kirollos32@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$AO.BJ5b5xVb27N02acBt7.XAetxtBuboFgDXs6/oQzYDkNYSbp7YG', NULL, '2024-07-01 18:53:22', '2024-07-01 18:53:24', NULL, '+201285691345', '@', 0.00, NULL, NULL, 0.000, 'Th3jAidpMFDCAKDfKXyu', NULL, 0, 0, NULL, 'ar'),
(105, 'Mohamed', 'Abdo', 'm.abdo.m.ma@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$OIGu7OZS1MUyvMFgakCtwOzDgjxATsUylwrpr3xkSJAhHvCPMPBle', NULL, '2024-07-01 20:40:53', '2024-07-01 20:40:54', NULL, '+201127360181', '@', 0.00, NULL, NULL, 0.000, 'V9cxopwerKusamgZJUZ6', NULL, 0, 0, NULL, 'ar'),
(106, 'Bebo', '.', 'bebogaber66@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$O6rS6ydfIIIBQhNeFQFCaOMqcuscvxEnUzzUcNaV8Gk.GrPuVRnvu', NULL, '2024-07-01 20:48:27', '2024-07-01 20:48:29', NULL, '+2001234549555', '@', 0.00, NULL, NULL, 0.000, 'UqyU53prPA6gaooaNS7j', NULL, 0, 0, NULL, 'ar'),
(107, 'Ali', 'Ehab', 'aligomaa48@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$AsaGwk6C.bG73kUvi8uQ8eDRrG9e5ueRgCOJM0.ekgxnbOz603Cy6', NULL, '2024-07-02 00:30:47', '2024-07-02 00:30:49', NULL, '+201111287579', '@', 0.00, NULL, NULL, 0.000, '1IglVQTzzrRiZUQApOgH', NULL, 0, 0, NULL, 'ar'),
(108, 'Hosny', 'Kamel', 'minagris2015@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$.PyO5iUrCOQrIO8mS83Q4efqnB6NXwzpNUWhcURT7PHv3dAPcR.ei', NULL, '2024-07-02 05:25:24', '2024-07-04 06:46:02', NULL, '+201156681207', '@', 0.00, NULL, NULL, 0.000, 'PGAiCZeBcNB9TfIDLDL2', NULL, 0, 0, NULL, 'ar'),
(109, 'Fatma', 'Abdelkader', 'doctor.fatma555@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$e2k0mDAVEqM2VhkHJDPlOeiy1LEDZ0laJMFGV/eHPG98Ck8LbZ1Va', NULL, '2024-07-02 13:22:57', '2024-07-02 13:22:59', NULL, '+2001064965120', '@', 0.00, NULL, NULL, 0.000, '9r9bo21OzIXsF5hw2xZ4', NULL, 0, 0, NULL, 'ar'),
(110, 'Nesma', 'Khled', 'nesmakhaled507@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$Xhoj6Zq.LJmIxYkXOnZhTexanGM7iNZC/77GiJiu7gb7X5dOY7xbq', NULL, '2024-07-02 13:39:53', '2024-07-02 13:39:55', NULL, '+201066138413', '@', 0.00, NULL, NULL, 0.000, 'LLLaTP5MIGywn17mxmYW', NULL, 0, 0, NULL, 'ar'),
(111, 'Mohamed', 'Youssef', 'My_sobhy@hotmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$Ep1kiidGazBdnM25fQORpOi9dIY8UYcwuFG1i09XuhhjO6jr981Tm', NULL, '2024-07-02 14:10:58', '2024-07-02 14:11:00', NULL, '+201223445487', '@', 0.00, NULL, NULL, 0.000, 'Tu3OtJOKgQerhffZR0vj', NULL, 0, 0, NULL, 'en'),
(112, 'Yousef', 'Deghedy', 'yousef.deghedy@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$GgG3VuIxWmGdlhApt6KAcuuNC.KWWKxpnJPGJ2BBJDPYPF12.a31S', NULL, '2024-07-02 14:27:04', '2024-07-02 14:27:05', NULL, '+201001025427', '@', 0.00, NULL, NULL, 0.000, 'ReQNlSixwKThkiulF2ol', NULL, 0, 0, NULL, 'en'),
(113, 'Yassen', 'Hazem', 'yassenhazem444@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$19uMqGo4B6LQk45gLTgyw.GTV9Xl5a4sc6ehRUJ03ZtAgl35IOFTC', NULL, '2024-07-02 15:01:08', '2024-07-02 15:01:10', NULL, '+2001098366279', '@', 0.00, NULL, NULL, 0.000, '9oPOy2S5ssfdgBsoT5Fo', NULL, 0, 0, NULL, 'ar'),
(114, 'Amgad', 'Muhamed', 'amgadmohamed146@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$NUHciWkF9EUWX3p62pr0betk4Bvv0zJT9lOjq23fDohS9knyimRCC', NULL, '2024-07-02 16:32:38', '2024-07-02 16:32:51', NULL, '+2001112235875', '@', 0.00, NULL, NULL, 0.000, 'BDZHCth8g277BMFJgPdb', NULL, 0, 0, NULL, 'en'),
(115, 'Ayman', 'Fathi', 'karasayman65@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$3BamtEOeHY7J5vRs75Ktk.tg8DdWicrJdOHUCfq7bQMs3zetfs2KS', NULL, '2024-07-02 17:32:13', '2024-07-02 17:32:14', NULL, '+201277982246', '@', 0.00, NULL, NULL, 0.000, 'lhcrPHduGU1nZpYieHM5', NULL, 0, 0, NULL, 'ar'),
(116, 'Ahmed', 'Mostafa', 'ahmed.m.salem.91@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$RF1MHeH6JpnslWHCs2f8LOdB2HTNphwvfGsZR0CRukfVFW/F7.PuG', NULL, '2024-07-02 17:48:13', '2024-07-02 17:48:14', NULL, '+201061462535', '@', 0.00, NULL, NULL, 0.000, 'WNb3pGD4O1wlItSK3raE', NULL, 0, 0, NULL, 'ar'),
(117, 'Thomas', 'Rafik', 'thomasrafik565@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$Uo/glguTsA5AQWBFSU7wCucQz1bPNaCXwsswaRw84iNAFCAobLdX2', NULL, '2024-07-02 20:26:17', '2024-07-02 20:26:18', NULL, '+2001550821918', '@', 0.00, NULL, NULL, 0.000, 'xZqcRQBtgBThUZ1pj4eQ', NULL, 0, 0, NULL, 'ar'),
(118, 'سرور', 'عبداللطيف سرور', 'Sorooo115@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$TAPLOaOrt7ixhVlLtw3PCOgcB3dojV8YSPjoW3wjR6CXuQyOZf1fO', NULL, '2024-07-02 21:38:06', '2024-07-02 21:38:08', NULL, '+2015508510085', '@', 0.00, NULL, NULL, 0.000, 'RO9BfyR36x20KxDNcIZp', NULL, 0, 0, NULL, 'en'),
(119, 'Ramy', 'Hesham', 'ramyhesham781@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$7B.NQJ8/BqNUQE.c8cDQt.gHWN4doH1/YVaR75asgqrIi9ktDA7.2', NULL, '2024-07-02 21:52:20', '2024-07-02 21:52:22', NULL, '+201211738423', '@', 0.00, NULL, NULL, 0.000, 'N1ejnzZZN3nIHhZojGwV', NULL, 0, 0, NULL, 'ar'),
(120, 'Safaa', 'Kamal', 'safaakamal474@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$KG6xPQzct2UZpV/QWqB0z.qvvQ6NT6deXr04Z24SsRimGhGYkKR9q', NULL, '2024-07-03 08:16:55', '2024-07-03 08:17:06', NULL, '+2001284358499', '@', 0.00, NULL, NULL, 0.000, 'XKClTrvINsjrXuOZjz4P', NULL, 0, 0, NULL, 'ar'),
(121, 'Eman', 'Zidan', 'emanzidan02@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$CkK5JfVoZj72nqrBwhbExOkajpCIiOA6AIdPe8wE13gKgZE6vEunS', NULL, '2024-07-03 09:08:16', '2024-07-03 09:29:05', NULL, '+201150517141', '@', 0.00, NULL, NULL, 0.000, '0icraBTq258rhkUHn25b', NULL, 0, 0, NULL, 'ar'),
(122, 'Eman', 'Ibrahim', 'emy.emooz37@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$1eigTTZ6ONeGAjNSHCIKg.XyAQCInmgGEOKacBuf/J/J.SH7OHCga', NULL, '2024-07-03 10:52:15', '2024-07-03 10:52:17', NULL, '+2001032579793', '@', 0.00, NULL, NULL, 0.000, 'EbAn1TG0bEfiFmvTmoyC', NULL, 0, 0, NULL, 'ar'),
(123, 'Jacinda', 'Mohamed', 'jessymamdouh03@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$CnmYMC2qr15/eHWnXpBqsuCFwO3dcKyq8VBYy4roIJqiaDSqH59Cy', NULL, '2024-07-03 17:24:38', '2024-07-03 17:24:40', NULL, '+2001276138690', '@', 0.00, NULL, NULL, 0.000, '0z6C6wkYbs3MnBbbaxja', NULL, 0, 0, NULL, 'en'),
(124, 'Madonna', 'Mohsen', 'madonnamohsen59@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$u61jjS1VPDLvp11gvN4xeuDlYNcqsQrOXtapWStgLPmL0KuAIYiKe', NULL, '2024-07-03 17:45:01', '2024-07-03 17:45:03', NULL, '+201223552692', '@', 0.00, NULL, NULL, 0.000, 'oyZnIYx51vbHuGc5LtD5', NULL, 0, 0, NULL, 'ar'),
(125, 'مصطفى', 'ابو سمرة', 'mostafaabosamra78@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$10GODmNaPPw0cD8NOZIuJuXcWKHHJB.xpxQE5y5aQOuLq6NIpyBnO', NULL, '2024-07-03 17:58:41', '2024-07-03 17:58:42', NULL, '+2001276395078', '@', 0.00, NULL, NULL, 0.000, 'N9kU8VEPMcR3DDuTwo6F', NULL, 0, 0, NULL, 'ar'),
(126, 'Mahmoud', 'Masekh', 'mahmoudmasekh9@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$3mS3ZnazLzF8f.vI7u8OuO7HpBpQkyCFebBWHCHmvgjArrSKLRmY2', NULL, '2024-07-03 19:11:40', '2024-07-03 19:11:42', NULL, '+2001226646212', '@', 0.00, NULL, NULL, 0.000, 'uLiERTfshAvnK63xG6Nr', NULL, 0, 0, NULL, 'ar'),
(127, 'Jana', 'Mahran', 'jmahran66@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$NDTZ7cLtMGUkfN0hyDkIK.KEi4kA.D/W7G6A0LdNFmOxSiUipfy5O', NULL, '2024-07-03 19:32:47', '2024-07-03 19:32:49', NULL, '+2001211662019', '@', 0.00, NULL, NULL, 0.000, 'c69fVViemjvRlg6OdFpm', NULL, 0, 0, NULL, 'ar'),
(128, 'Ahmed', 'Osman', 'ahmed.osman222002@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9RCP3WKUS1lncJWAh7AH.ux0JPESpvBUP9QoZCOow9xFCu5OA/dLG', NULL, '2024-07-03 20:02:31', '2024-07-03 20:02:32', NULL, '+2001009666163', '@', 0.00, NULL, NULL, 0.000, 'VljrShbzG0m1fbI75O5F', NULL, 0, 0, NULL, 'ar'),
(129, 'محمد', 'عاطف', 'mohamedeka2001@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$d7f/xabztYlmNE8nMBpO0OIpHTZl5keQjatcN/rmYm0joi9kx6pu.', NULL, '2024-07-03 21:19:31', '2024-07-03 21:19:35', NULL, '+2001115595971', '@', 0.00, NULL, NULL, 0.000, 'sHUg9jr5oFq6dVgCphj6', NULL, 0, 0, NULL, 'ar'),
(130, 'Ahmad', 'Hamdy', 'eng.hmdy.47@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$23EcZJ2nVBqJ0cPvoLxTLuSgEoc7FvS3UMWgGvrbfck3Q/xWiDAxi', NULL, '2024-07-03 22:09:06', '2024-07-03 22:09:08', NULL, '+201095901910', '@', 0.00, NULL, NULL, 0.000, '3818k5mYTSeVK4p4Ore0', NULL, 0, 0, NULL, 'en'),
(131, 'اميرة', 'خليل', 'miroo259@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$TjVGGSpfu9ltxcHrHy4zJ.0M1I7rWEOjk9PcA8bJtIis7HKvs/Zyu', NULL, '2024-07-04 07:40:43', '2024-07-04 07:40:44', NULL, '+2001027277141', '@', 0.00, NULL, NULL, 0.000, 'iAaHCZVC2tM9eSd1LaCl', NULL, 0, 0, NULL, 'ar'),
(132, 'Jody', 'Amr', 'samrsalh99@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$/2la89kh1qQafj76ocAOaO5.TdCCzRlET2ieIlWoH06Eah96dNq5a', NULL, '2024-07-04 11:42:36', '2024-07-04 11:42:37', NULL, '+2001203986465', '@', 0.00, NULL, NULL, 0.000, 'kcI1OQXu6YRCSTaF4lrO', NULL, 0, 0, NULL, 'ar'),
(133, 'احمد', 'المحمدي', 'amohamady47@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$5UgmY25ewNFSAsZ7yYJXief36.WB1jYyGO/0QJ4gkWegySVbwzj5.', NULL, '2024-07-04 12:31:57', '2024-07-04 12:31:58', NULL, '+201211400015', '@', 0.00, NULL, NULL, 0.000, 'RgVZpiaEGdpeZbaXDAVG', NULL, 0, 0, NULL, 'ar'),
(134, 'Roro', 'Mohamed', 'rehamelkhatib0@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$O59dQL3W0eEq2BcW/nJWLO.2ueFUUeUI4RtQherxU0w7vf9M9usMm', NULL, '2024-07-04 15:50:25', '2024-07-04 15:50:26', NULL, '+2001126848955', '@', 0.00, NULL, NULL, 0.000, 'b2PivGNFJs3eP7QfkqAr', NULL, 0, 0, NULL, 'ar'),
(135, 'Mohamed', 'Hamedo', 'mo.elbadrawi@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$rfmi9XvUVvNTla37Segkv.hsGjsBP0TqYGrcNlHr9mW6.B/cqELJ.', NULL, '2024-07-04 15:53:52', '2024-07-04 15:53:54', NULL, '+201117512724', '@', 0.00, NULL, NULL, 0.000, 'JmYwBsqmbnO9lZQ3rSzI', NULL, 0, 0, NULL, 'ar'),
(136, 'Shahenda', 'Kamel', 'shoshomostafakamel2015@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$6WLOx2GpMXRLjZ7U6kf/EOoF.DD2zfqldDacbwu8utIR5n8IVaPfO', NULL, '2024-07-04 16:38:15', '2024-07-04 16:38:17', NULL, '+201203095625', '@', 0.00, NULL, NULL, 0.000, 'c3cSQvkTjjhhYuJvXtTR', NULL, 0, 0, NULL, 'ar'),
(137, 'Habiba', 'Sameh', '7abibasameh@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$m4b5yiyQh6PeuQYz099DDOc2bJz/LJVvjfLn6PeAIz7wrQvwtxpUW', NULL, '2024-07-04 18:13:06', '2024-07-04 18:13:07', NULL, '+201095089009', '@', 0.00, NULL, NULL, 0.000, '8xJXehw33aZQoqIsksWL', NULL, 0, 0, NULL, 'ar'),
(138, 'Nesma', 'Ahmed', 'drnesma19@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$9ntj2aodBmz.2Hqe2wrrS.ozPL55wR330EQm0mS1b56vK2vGC69/C', NULL, '2024-07-04 18:30:46', '2024-07-04 18:30:47', NULL, '+2001234512866', '@', 0.00, NULL, NULL, 0.000, 'kBhBK7LGEW1BtsvzfGX3', NULL, 0, 0, NULL, 'ar'),
(139, 'Mohamed', 'Abdel Rahman', 'm_abdelrahman_89@outlook.com', NULL, 1, NULL, 0, NULL, '$2y$10$mc40XPsbkEQwjvy8fF7hJO4u/5hWV5bBHrQ8dlkBUoQVmTG7Rsn/y', NULL, '2024-07-04 20:56:49', '2024-07-05 21:10:42', NULL, '+201223662199', '@', 0.00, NULL, NULL, 0.000, 'BxDtsvX9B9mosjYoM9Ui', NULL, 0, 0, NULL, 'en'),
(140, 'Mohamed Mohamed Refaat', 'Abd Rehim', 'hamza01207907904@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$4mVjiowGTCgyO4CxVArg8.RV0tvB34aysMdbcZvrqzhylM9epotP6', NULL, '2024-07-04 21:21:43', '2024-07-04 21:27:07', NULL, '+2001003086932', '@', 0.00, NULL, NULL, 0.000, 'nU3daUlWQnpq2apoqzRn', NULL, 0, 0, NULL, 'ar'),
(141, 'Mohammed', 'Eldesouky', 'm.eldesoukyonline@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$ZoFeZL5xuxdaK9HnkO7xEu3L/ayLQApldZuDJJAG.pHta5QNvnpm2', NULL, '2024-07-04 21:39:15', '2024-07-04 21:39:16', NULL, '+201007492923', '@', 0.00, NULL, NULL, 0.000, 'bdCKLlxAC09SZCLQaB0k', NULL, 0, 0, NULL, 'ar'),
(142, 'Ahmed', 'Mady', 'eng.ahmadmady@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$c3KnBYUwOtOC1wiyy3Jya.fqQlWI7QqLf37CDXe8boaPpSHI9ZFY6', NULL, '2024-07-04 23:20:25', '2024-07-04 23:20:27', NULL, '+2011192000980', '@', 0.00, NULL, NULL, 0.000, 'KP0iwvI5CpNxeb1InHan', NULL, 0, 0, NULL, 'en'),
(143, 'Mai', 'Fawzy', 'maifwzymai925@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$4ARrYZja9fbRvBtNDFgdfO5.JaFIjvt8hB67nNXzsY.sR4JuSRIvS', NULL, '2024-07-05 09:09:02', '2024-07-05 09:09:04', NULL, '+201065590903', '@', 0.00, NULL, NULL, 0.000, 'f7PEqisOWZ9I0yUaiXIV', NULL, 0, 0, NULL, 'ar'),
(144, 'Mohamed', 'Massoud', 'mohamedmassoud@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$ROgunb/lCWVz02PmQyrgDecVCXHoLBEXxJbfNAv3oykyNM7Webpf6', NULL, '2024-07-05 14:00:44', '2024-07-05 14:00:45', NULL, '+201200761967', '@', 0.00, NULL, NULL, 0.000, '5DSBJkGcvA2ILLvCjYBI', NULL, 0, 0, NULL, 'ar'),
(145, 'Hana', 'Hossam', 'hanahossam662@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$4cSRgw5J2rouvattvKP4V.pnTQ6w/sevA/kMl25.4HjbGhIr5fAam', NULL, '2024-07-05 14:17:59', '2024-07-05 14:18:01', NULL, '+201224167100', '@', 0.00, NULL, NULL, 0.000, 'rBQlDKwxuxyfuJIGfU7Z', NULL, 0, 0, NULL, 'ar'),
(146, 'Ekrema', 'Zaitoun', 'hodaelsheekh@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$rOGsf1EdX7PnD8U9jI3dr..2QYSqObRsSUSkRsLVKBLHOQkN9baQK', NULL, '2024-07-05 14:22:58', '2024-07-05 14:22:59', NULL, '+2001283220973', '@', 0.00, NULL, NULL, 0.000, '3qBuSoepgH6pzYpb4741', NULL, 0, 0, NULL, 'ar'),
(147, 'حسن', 'سلام', 'sallam20000@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$rQipIWEuvVw.VA0DpFVw4.26acy9YqWXJ8LeOGxqW6W1X9PJuGvpC', NULL, '2024-07-05 15:10:11', '2024-07-05 15:10:13', NULL, '+2001225004053', '@', 0.00, NULL, NULL, 0.000, 'EeHD1BBpJvs0DWJXU3rr', NULL, 0, 0, NULL, 'ar'),
(148, 'Mohnad', 'Mahmoud', 'dodonanad54@gamil.com', NULL, 1, NULL, 0, NULL, '$2y$10$EHsuR8VbRBk1I6mOclKfrut3A5jWeU1Ecu5My7ymsxC7JoHS.pKKO', NULL, '2024-07-05 15:21:11', '2024-07-05 15:21:13', NULL, '+2001208757333', '@', 0.00, NULL, NULL, 0.000, 'Sc0bWMGJUiL4AjsCsbk3', NULL, 0, 0, NULL, 'ar'),
(149, 'Rana', 'Mahmoud', 'coolana816@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$KNvbDhFYGauX2mNLZiqXDuijDQMrAWgtgra2dPFIzHaSi4/YO1vmS', NULL, '2024-07-05 16:21:46', '2024-07-05 16:21:47', NULL, '+201272375698', '@', 0.00, NULL, NULL, 0.000, 'UdMhWUnv7Y7zgo9mwhbU', NULL, 0, 0, NULL, 'en'),
(150, 'محمد', 'المغربي', 'mo.most145@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$SEkSkrrRVGUuWULNhf5UoeCQfUdXDPHOIU/jH/.vfmmHQyaX2egaG', NULL, '2024-07-05 17:49:30', '2024-07-05 17:49:32', NULL, '+201012484824', '@', 0.00, NULL, NULL, 0.000, 'IKlmy5eRUImRVc3MBkwE', NULL, 0, 0, NULL, 'ar'),
(151, 'Amr', 'Ehab', 'amrehab5555@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$byLMczJhEIn.yK/ga1wZ1eBivFl6Jk6cxgf6jdpulhUaisAkKS7fu', NULL, '2024-07-05 18:20:35', '2024-07-05 18:20:36', NULL, '+2001000491495', '@', 0.00, NULL, NULL, 0.000, 'BoYIdGQPBbyLK63lSN51', NULL, 0, 0, NULL, 'ar'),
(152, 'Arwa', 'Ashraf', 'arwa25ashraf@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$hhGCvhN3ObTXXubG4dM0KesOLaPOwU5lwzi9LWNrbdfEa1YrOtowa', NULL, '2024-07-05 18:31:27', '2024-07-05 18:32:04', NULL, '+201091871300', '@', 0.00, NULL, NULL, 0.000, 'DOIigu9J596XN5chlCxJ', NULL, 0, 0, NULL, 'en'),
(153, 'Shorouk', 'Mokhles', 'shoroukshams7@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$eJilwB41slIKR9r7fD8.fuRNDVoMOi8bjS.broYtAqYqV7JxS1lmW', NULL, '2024-07-05 18:33:42', '2024-07-05 18:33:43', NULL, '+2001112082894', '@', 0.00, NULL, NULL, 0.000, 'Ij2J6rMlJ1LBe2qoN3B3', NULL, 0, 0, NULL, 'ar'),
(154, 'محمد', 'صالح', 'holako_alex2009@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$YIMxu7k0FL.qhZEVhzx2VOqRfeJDXPtQqlBgqWPfbR/8EgDwXSmkK', NULL, '2024-07-05 19:08:36', '2024-07-05 19:08:38', NULL, '+201002845768', '@', 0.00, NULL, NULL, 0.000, 'gPdE9BuFA58rUNFM9IYg', NULL, 0, 0, NULL, 'ar'),
(155, 'Ammar', 'Ahmed', 'badawyammar7@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$io1RhUcVEVuGR9UYq4YHM.TIfLIBSFqyu13dTeJLmO4OmchVpL0Vm', NULL, '2024-07-05 19:13:14', '2024-07-05 19:13:16', NULL, '+2001011547790', '@', 0.00, NULL, NULL, 0.000, 'RrLuVPilm7vdaIvU7zqd', NULL, 0, 0, NULL, 'ar'),
(156, 'Ahmed', 'Ezzat', 'lovelyghost68@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$8rj.l8AXd/QNq0NRSCmoQebAo9eoSzNHgdGb3uWzy/gQxvTklY1yO', NULL, '2024-07-05 20:57:03', '2024-07-05 20:57:05', NULL, '+201210011037', '@', 0.00, NULL, NULL, 0.000, 'QzcJtU7jN0ftYIof8fxx', NULL, 0, 0, NULL, 'ar'),
(157, 'Rowyda', 'Mahdy', 'alex.mahdy.rm@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$v3dFOLvH/M7cgxW9rTbxjuO3uEaBAclAM9Kt.eMH0A6tosmStTvgO', NULL, '2024-07-05 21:35:27', '2024-07-05 21:35:28', NULL, '+201111735518', '@', 0.00, NULL, NULL, 0.000, 'uheLg5BM3GOyUe9HTAuD', NULL, 0, 0, NULL, 'en'),
(158, 'Angelos', 'Melad', 'angelosmelad@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$7hGjTVmuKMASL.OHxVfnb.oNEyf8E/k1DBkjlzdtSS.4OY5nmQYVC', NULL, '2024-07-06 01:24:22', '2024-07-06 01:24:24', NULL, '+201204696132', '@', 0.00, NULL, NULL, 0.000, 'jj7UK1010c1M702u9IQO', NULL, 0, 0, NULL, 'ar'),
(159, 'Alaa', 'Nasr', 'alaanasr239203@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$MlzUNRCxYDniCrx.y/J5RemZ/UiI/Uc.0eqfNWsSY5FKgdOsTmuHW', NULL, '2024-07-06 06:44:43', '2024-07-06 06:44:45', NULL, '+2001028999034', '@', 0.00, NULL, NULL, 0.000, 'gK6iIvQWh70VXjPpCemt', NULL, 0, 0, NULL, 'ar'),
(160, 'mona', 'ibrahim', 'mona_ibrahim_89@yahoo.com', NULL, 1, NULL, 0, NULL, '$2y$10$XIsap9d0rgJcvr91JPks3eSQ0ehgz.559VldJjJtPAOrx5GrC7wdy', NULL, '2024-07-06 09:10:55', '2024-07-06 09:10:57', NULL, '+201203066557', '@', 0.00, NULL, NULL, 0.000, 't2rvv5A5yaMPm5A5NA9i', NULL, 0, 0, NULL, 'ar'),
(161, 'Yahya', 'Eid', 'yahyaze1@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$3OtnMwohz.ykYZMv2YP9NevzZix8UKZe4O4iJ4BpMjtfu6oOsoz8u', NULL, '2024-07-06 09:23:47', '2024-07-06 09:23:49', NULL, '+201111819340', '@', 0.00, NULL, NULL, 0.000, 'HhPJYlofhzHSX0cVaFa7', NULL, 0, 0, NULL, 'en'),
(162, 'علي', 'بكري', 'sealofme@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$XKWaE4VmFyLB7.qQwPc2o.pBw5yxcrHYJr57kPv6M3VzV5DiO.kxu', NULL, '2024-07-06 10:18:17', '2024-07-06 10:18:18', NULL, '+201555089323', '@', 0.00, NULL, NULL, 0.000, 'RWePXaLmgAeMThTHXFEa', NULL, 0, 0, NULL, 'ar'),
(163, 'Yasmeen', 'Hassan', 'yasmeen.hassan.mahmoud@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$dvLCZlfYaSHGjiOO/5J7j.CsN7ozY.1PoJh4SxOJfwuasA.5/Ycyi', NULL, '2024-07-06 10:49:21', '2024-07-06 10:50:09', NULL, '+2001143949854', '@', 0.00, NULL, NULL, 0.000, 'YKZquXcQWyU2NBv1khAS', NULL, 0, 0, NULL, 'ar'),
(164, 'Aya', 'mohamed', 'aya777519@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$bM.UInV5fKP3s7hy8/ST/u38b6yk.yRQ1OYPi.ScllU/IfyOd.ymm', NULL, '2024-07-06 10:58:11', '2024-07-06 10:58:13', NULL, '+201285601459', '@', 0.00, NULL, NULL, 0.000, 'XnnfdSqv19fqL7KlksdV', NULL, 0, 0, NULL, 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_bonuses`
--

CREATE TABLE `wallet_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `bonus_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `minimum_add_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `maximum_bonus_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 7, 17, '2024-06-25 10:12:05', '2024-06-25 10:12:05'),
(2, 27, 130, '2024-06-26 14:36:15', '2024-06-26 14:36:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_promotions`
--
ALTER TABLE `branch_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chef_branch`
--
ALTER TABLE `chef_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine_product`
--
ALTER TABLE `cuisine_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email_or_phone`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_transitions`
--
ALTER TABLE `point_transitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_by_branches`
--
ALTER TABLE `product_by_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_orders`
--
ALTER TABLE `table_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedules`
--
ALTER TABLE `time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branch_promotions`
--
ALTER TABLE `branch_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `chef_branch`
--
ALTER TABLE `chef_branch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine_product`
--
ALTER TABLE `cuisine_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100016;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_transitions`
--
ALTER TABLE `point_transitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `product_by_branches`
--
ALTER TABLE `product_by_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_orders`
--
ALTER TABLE `table_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_schedules`
--
ALTER TABLE `time_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
