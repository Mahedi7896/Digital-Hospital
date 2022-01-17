-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2021 at 06:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientprojects_doctor_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=free,1=booked',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulances`
--

INSERT INTO `ambulances` (`id`, `vehicle_name`, `image`, `vehicle_number`, `booking_status`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Vehicle One', 'uploads/ambulance/16238579901.jpg', 'RN-85255', 0, 1, '2021-06-16 15:39:50', 1, '2021-06-16 15:42:11', 1, 0, NULL, NULL),
(2, 'Vehicle Two', 'uploads/ambulance/16238580291.jpg', 'DK-54541', 1, 1, '2021-06-16 15:40:29', 1, NULL, NULL, 0, NULL, NULL),
(3, 'Vehicle Three', 'uploads/ambulance/16238580451.jpg', 'BG-54545', 0, 1, '2021-06-16 15:40:45', 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `doctor_details_id` int(10) UNSIGNED NOT NULL,
  `appointment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` text COLLATE utf8mb4_unicode_ci,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `department_id`, `doctor_details_id`, `appointment_time`, `message`, `payment_status`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 5, 1, 2, '2021-05-26 18:51:00', 'test', 0, 1, '2021-05-25 12:52:01', 5, NULL, NULL, 0, NULL, NULL),
(2, 5, 1, 2, '2021-05-26 18:51:00', 'test', 0, 1, '2021-05-25 12:53:07', 5, NULL, NULL, 0, NULL, NULL),
(3, 5, 1, 2, '2021-05-25 20:22:45', 'test', 1, 1, '2021-05-25 12:54:41', 5, NULL, NULL, 0, NULL, NULL),
(4, 5, 1, 1, '2021-05-31 08:09:03', 'test', 1, 1, '2021-05-31 02:08:20', 5, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Distinctio Sed elit', 'uploads/blog/16217922111.png', '<p><span style=\"color:rgb(88, 88, 88); font-family:din next lt pro; font-size:15px\">Spirit of Wipro (SOW) run 2019 is celebrated today in Bangladesh through collaborating MUNSHI and Wipro Bangladesh together. The champion and runners-up are awarded medal by the high officials of MUNSHI &amp; WIPRO, Other participants had taken the certificates.</span></p>\r\n\r\n<p><span style=\"color:rgb(88, 88, 88); font-family:din next lt pro; font-size:15px\">Spirit of Wipro (SOW) run 2019 is celebrated today in Bangladesh through collaborating MUNSHI and Wipro Bangladesh together. The champion and runners-up are awarded medal by the high officials of MUNSHI &amp; WIPRO, Other participants had taken the certificates.</span></p>\r\n\r\n<p><span style=\"color:rgb(88, 88, 88); font-family:din next lt pro; font-size:15px\">Spirit of Wipro (SOW) run 2019 is celebrated today in Bangladesh through collaborating MUNSHI and Wipro Bangladesh together. The champion and runners-up are awarded medal by the high officials of MUNSHI &amp; WIPRO, Other participants had taken the certificates.</span></p>', 1, '2021-05-23 11:50:11', 1, '2021-05-23 11:54:41', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_ambulances`
--

CREATE TABLE `booking_ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ambulance_id` int(10) UNSIGNED NOT NULL,
  `departure_time` timestamp NULL DEFAULT NULL,
  `boarding_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropping_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending,1=approve,2=rejected',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_ambulances`
--

INSERT INTO `booking_ambulances` (`id`, `user_id`, `ambulance_id`, `departure_time`, `boarding_point`, `dropping_point`, `booking_status`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 2, '2021-06-17 05:40:00', 'Shamoly', 'Mohakhali', 0, 1, '2021-06-16 16:37:36', 1, NULL, NULL, 0, NULL, NULL),
(2, 1, 2, '2021-06-16 17:40:00', 'Shamoly', 'Mohakhali', 0, 1, '2021-06-16 16:39:14', 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_departments`
--

CREATE TABLE `doctor_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_departments`
--

INSERT INTO `doctor_departments` (`id`, `title`, `image`, `description`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Cardiology', 'uploads/department/16217938471.jpg', 'Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero', 1, '2021-05-23 12:17:27', 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`id`, `user_id`, `department_id`, `designation`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 3, 1, 'Duis sunt aspernatu', 1, '2021-05-24 07:45:00', 1, '2021-05-26 00:01:00', 1, 0, '2021-05-26 00:01:03', 1),
(2, 4, 1, 'Proident totam elit', 1, '2021-05-24 11:23:35', 1, NULL, NULL, 0, '2021-05-26 00:01:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_23_051612_create_blogs_table', 2),
(5, '2021_05_23_175507_create_doctor_departments_table', 3),
(6, '2021_05_23_182227_create_doctor_details_table', 4),
(7, '2021_05_24_212750_create_appointments_table', 5),
(8, '2021_05_25_185816_create_payment_details_stripes_table', 6),
(10, '2021_06_16_210001_create_ambulances_table', 7),
(12, '2021_06_16_221825_create_booking_ambulances_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details_stripes`
--

CREATE TABLE `payment_details_stripes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `stripe_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double(10,2) NOT NULL,
  `amount_captured` double(10,2) NOT NULL,
  `amount_refunded` double(10,2) NOT NULL,
  `currency` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_level` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_score` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_message` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvc_check` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_email` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_number` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_url` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bdt_amount` decimal(10,3) NOT NULL,
  `transaction_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending,1=accepted,2=rejected,3=canceled',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details_stripes`
--

INSERT INTO `payment_details_stripes` (`id`, `user_id`, `stripe_id`, `trx_id`, `paid_amount`, `amount_captured`, `amount_refunded`, `currency`, `description`, `risk_level`, `risk_score`, `seller_message`, `payment_method`, `card_brand`, `cvc_check`, `card_country`, `card_exp_month`, `card_exp_year`, `card_last_four`, `billing_email`, `billing_name`, `billing_phone`, `receipt_email`, `receipt_number`, `receipt_url`, `payment_status`, `bdt_amount`, `transaction_time`, `transaction_status`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 5, 'ch_1Iv6lqBJIvYQOiJRx6nDe8gC', 'txn_1Iv6lqBJIvYQOiJRsSCanNs6', 50000.00, 50000.00, 0.00, 'bdt', 'Deposit In WorkersEngine', 'normal', '6', 'Payment complete.', 'card_1Iv6lnBJIvYQOiJRU6QQmDsr', 'visa', 'pass', 'US', '12', '2022', '4242', NULL, NULL, NULL, NULL, NULL, 'https://pay.stripe.com/receipts/acct_1I0TjfBJIvYQOiJR/ch_1Iv6lqBJIvYQOiJRx6nDe8gC/rcpt_JYDCn8WoSiifr3IlRKxcUNZOL17fBvK', 'succeeded', '500.000', '2021-05-25 14:22:45', 1, 1, '2021-05-25 14:22:45', 5, NULL, NULL, 0, NULL, NULL),
(2, 5, 'ch_1Ix69nBJIvYQOiJRSU3nNI3m', 'txn_1Ix69oBJIvYQOiJRFOusdFXc', 50000.00, 50000.00, 0.00, 'bdt', 'Paid for Appointment on Digital Doctor', 'normal', '48', 'Payment complete.', 'card_1Ix69kBJIvYQOiJRgiftIBsu', 'visa', 'pass', 'US', '12', '2022', '4242', NULL, NULL, NULL, NULL, NULL, 'https://pay.stripe.com/receipts/acct_1I0TjfBJIvYQOiJR/ch_1Ix69nBJIvYQOiJRSU3nNI3m/rcpt_JaGhQvB2OflwPTBJEqLsO0qlQUEQQN3', 'succeeded', '500.000', '2021-05-31 02:09:03', 1, 1, '2021-05-31 02:09:03', 5, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of user=admin,doctor,patient',
  `role` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'user role id=admin,doctor,patient',
  `first_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` tinyint(3) UNSIGNED DEFAULT '0' COMMENT '0=No,1=Accept',
  `subscribe_newsletter` tinyint(3) UNSIGNED DEFAULT '0' COMMENT '0=No,1=Yes',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `role`, `first_name`, `last_name`, `email`, `password`, `mobile`, `profile_picture`, `designation`, `address`, `remember_token`, `terms_and_condition`, `subscribe_newsletter`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'admin', 'admin', 'Super', 'Admin', 'admin@gmail.com', '$2y$10$awjtqa2EY1ap3xRYSZv.Z.QVcMuKl9upyyKPK8kij355yHX76kOpy', '01750000000', NULL, NULL, NULL, NULL, 1, 1, 1, '2021-05-22 22:45:24', NULL, NULL, NULL, 0, NULL, NULL),
(3, 'doctor', 'doctor', 'Cruza', 'Everett1', 'doctor@gmail.com', '$2y$10$O6jefg0Fbm/.eJ2HQnLgTuyivCJqRFFw95s1ZjhJg79eP3xSidEFm', 'Omnis dolorem nihil', 'uploads/doctor/16218639001.png', NULL, NULL, NULL, 1, 1, 1, '2021-05-24 07:45:00', 1, '2021-05-26 00:01:00', 1, 0, NULL, NULL),
(4, 'doctor', 'doctor', 'Penelope', 'Madden', 'dakahaxap@deker.com', '$2y$10$Gs8ELEdrPXAF/DxbMyikDOC4EcFmvbYw.YGKBBuLIgfgQ.eKjLBjm', 'Molestiae molestiae', 'uploads/doctor/16218770151.jpg', NULL, NULL, NULL, 1, 1, 1, '2021-05-24 11:23:35', 1, NULL, NULL, 0, NULL, NULL),
(5, 'customer', 'customer', 'Customer', 'Name', 'customer@gmail.com', '$2y$10$LTHG0H.LMRRDxzJbmEKNqOs3eEFurt2YyUvz/zdi6QFl3NIrw8Ts6', NULL, NULL, NULL, NULL, 'gY0TCkZ7NlBxa6FmoPUcdU8jWRvdUESIFVV25roiKiokFIIxNU0VqheBPV4Q', 1, 0, 1, '2021-05-24 12:58:36', NULL, NULL, NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_ambulances`
--
ALTER TABLE `booking_ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details_stripes`
--
ALTER TABLE `payment_details_stripes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_ambulances`
--
ALTER TABLE `booking_ambulances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details_stripes`
--
ALTER TABLE `payment_details_stripes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
