-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2020 at 08:34 PM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stilexch_exchange`
--

-- --------------------------------------------------------

--
-- Table structure for table `bit_exchanges`
--

CREATE TABLE `bit_exchanges` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `gateway_send` int(11) DEFAULT NULL,
  `gateway_receive` int(11) DEFAULT NULL,
  `amount_send` varchar(255) DEFAULT NULL,
  `amount_receive` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `updated` int(11) NOT NULL DEFAULT 0,
  `expired` int(11) NOT NULL DEFAULT 0,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `exchange_id` varchar(255) DEFAULT NULL,
  `referral_id` varchar(255) NOT NULL DEFAULT '0',
  `referral_amount` varchar(255) DEFAULT NULL,
  `referral_currency` varchar(255) DEFAULT NULL,
  `referral_status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_faq`
--

CREATE TABLE `bit_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_gateways`
--

CREATE TABLE `bit_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `exchange_type` int(11) DEFAULT NULL,
  `include_fee` int(11) DEFAULT NULL,
  `extra_fee` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `allow_send` int(11) DEFAULT NULL,
  `allow_receive` int(11) DEFAULT NULL,
  `default_send` int(11) DEFAULT NULL,
  `default_receive` int(11) DEFAULT NULL,
  `allow_payouts` int(11) DEFAULT NULL,
  `a_field_1` varchar(255) DEFAULT NULL,
  `a_field_2` varchar(255) DEFAULT NULL,
  `a_field_3` varchar(255) DEFAULT NULL,
  `a_field_4` varchar(255) DEFAULT NULL,
  `a_field_5` varchar(255) DEFAULT NULL,
  `a_field_6` varchar(255) DEFAULT NULL,
  `a_field_7` varchar(255) DEFAULT NULL,
  `a_field_8` varchar(255) DEFAULT NULL,
  `a_field_9` varchar(255) DEFAULT NULL,
  `a_field_10` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `external_gateway` int(11) NOT NULL DEFAULT 0,
  `external_icon` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_gateways_fields`
--

CREATE TABLE `bit_gateways_fields` (
  `id` int(11) NOT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_number` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_pages`
--

CREATE TABLE `bit_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bit_pages`
--

INSERT INTO `bit_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Terms of service', 'terms-of-services', 'Edit from WebAdmin.', NULL, NULL),
(2, 'Privacy Policy', 'privacy-policy', 'Edit from WebAdmin.', NULL, NULL),
(3, 'About', 'about', 'Edit from WebAdmin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_rates`
--

CREATE TABLE `bit_rates` (
  `id` int(11) NOT NULL,
  `gateway_from` int(11) DEFAULT NULL,
  `gateway_to` int(11) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_settings`
--

CREATE TABLE `bit_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `referral_comission` varchar(255) DEFAULT NULL,
  `wallet_comission` varchar(255) DEFAULT NULL,
  `login_to_exchange` int(11) DEFAULT NULL,
  `document_verification` int(11) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `phone_verification` int(11) DEFAULT NULL,
  `recaptcha_verification` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `nexmo_api_key` varchar(255) DEFAULT NULL,
  `nexmo_api_secret` varchar(255) DEFAULT NULL,
  `worktime_from` varchar(255) DEFAULT NULL,
  `worktime_to` varchar(255) DEFAULT NULL,
  `worktime_gmt` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `operator_status` int(11) DEFAULT NULL,
  `footer_information` text DEFAULT NULL,
  `license_key` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bit_settings`
--

INSERT INTO `bit_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `whatsapp`, `skype`, `url`, `referral_comission`, `wallet_comission`, `login_to_exchange`, `document_verification`, `email_verification`, `phone_verification`, `recaptcha_verification`, `recaptcha_publickey`, `recaptcha_privatekey`, `nexmo_api_key`, `nexmo_api_secret`, `worktime_from`, `worktime_to`, `worktime_gmt`, `default_language`, `default_template`, `operator_status`, `footer_information`, `license_key`) VALUES
(1, 'Title', 'Description', 'Keywords', 'Site Name', 'info@stil-exchange.com', 'info@stil-exchange.com', 'test', 'test', 'https://stil-exchange.com/', '1', '1', 0, 0, 0, 0, NULL, NULL, NULL, 'test', 'test', '8 AM', '9 PM', '10 GMT', NULL, NULL, 1, 'Footer', 'bditweb');

-- --------------------------------------------------------

--
-- Table structure for table `bit_sms_codes`
--

CREATE TABLE `bit_sms_codes` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sms_code` varchar(255) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_testimonials`
--

CREATE TABLE `bit_testimonials` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `exchange_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_transactions`
--

CREATE TABLE `bit_transactions` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_users`
--

CREATE TABLE `bit_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_recovery` text DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `document_verified` int(11) DEFAULT NULL,
  `document_1` text DEFAULT NULL,
  `document_2` text DEFAULT NULL,
  `mobile_verified` int(11) DEFAULT NULL,
  `mobile_number` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bit_users`
--

INSERT INTO `bit_users` (`id`, `username`, `password`, `password_recovery`, `email_verified`, `email_hash`, `email`, `status`, `ip`, `last_login`, `signup_time`, `document_verified`, `document_1`, `document_2`, `mobile_verified`, `mobile_number`) VALUES
(1, 'stilexadmin', '694ef0fb0a0846e8d56d36ce3c786a9b', NULL, NULL, NULL, 'info@stil-exchange.com', 666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_users_deposits`
--

CREATE TABLE `bit_users_deposits` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `gateway_id` varchar(255) DEFAULT NULL,
  `payment_hash` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_users_earnings`
--

CREATE TABLE `bit_users_earnings` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_users_transactions`
--

CREATE TABLE `bit_users_transactions` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bit_users_withdrawals`
--

CREATE TABLE `bit_users_withdrawals` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bit_exchanges`
--
ALTER TABLE `bit_exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_faq`
--
ALTER TABLE `bit_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_gateways`
--
ALTER TABLE `bit_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_gateways_fields`
--
ALTER TABLE `bit_gateways_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_pages`
--
ALTER TABLE `bit_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_rates`
--
ALTER TABLE `bit_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_settings`
--
ALTER TABLE `bit_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_sms_codes`
--
ALTER TABLE `bit_sms_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_testimonials`
--
ALTER TABLE `bit_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_transactions`
--
ALTER TABLE `bit_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_users`
--
ALTER TABLE `bit_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_users_deposits`
--
ALTER TABLE `bit_users_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_users_earnings`
--
ALTER TABLE `bit_users_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_users_transactions`
--
ALTER TABLE `bit_users_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_users_withdrawals`
--
ALTER TABLE `bit_users_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bit_exchanges`
--
ALTER TABLE `bit_exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_faq`
--
ALTER TABLE `bit_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_gateways`
--
ALTER TABLE `bit_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bit_gateways_fields`
--
ALTER TABLE `bit_gateways_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_pages`
--
ALTER TABLE `bit_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bit_rates`
--
ALTER TABLE `bit_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_settings`
--
ALTER TABLE `bit_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bit_sms_codes`
--
ALTER TABLE `bit_sms_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_testimonials`
--
ALTER TABLE `bit_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_transactions`
--
ALTER TABLE `bit_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_users`
--
ALTER TABLE `bit_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bit_users_deposits`
--
ALTER TABLE `bit_users_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_users_earnings`
--
ALTER TABLE `bit_users_earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_users_transactions`
--
ALTER TABLE `bit_users_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_users_withdrawals`
--
ALTER TABLE `bit_users_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
