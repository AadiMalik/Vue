-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 08:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelvue`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user@gmail.com', '099e1b8241b56c7c03fe3682199317f6eb5fcbc45803cac3ae143768e14d9603', '[\"*\"]', NULL, NULL, '2024-03-12 13:22:19', '2024-03-12 13:22:19'),
(2, 'App\\Models\\User', 2, 'user1@gmail.com', 'f4e4196aeb413111ff5b52193bdbb07d2c401af078fa5e2974b389c006ec8fab', '[\"*\"]', NULL, NULL, '2024-03-12 13:23:08', '2024-03-12 13:23:08'),
(3, 'App\\Models\\User', 1, 'user@gmail.com', '0d4defef6cbb8843cbfd50a634b5e048262f3a06cece3799727f544d3b411d07', '[\"*\"]', '2024-03-12 13:41:22', NULL, '2024-03-12 13:25:21', '2024-03-12 13:41:22'),
(4, 'App\\Models\\User', 1, 'user@gmail.com', '63ec961078756cfebfd1bf44df3dda6315802f13533b49b6fa5974c13c786e9a', '[\"*\"]', NULL, NULL, '2024-03-12 14:05:20', '2024-03-12 14:05:20'),
(5, 'App\\Models\\User', 1, 'user@gmail.com', '198a21da7999c3d48060df04c8524caf8eff7b8678a955f1c11b795123b29add', '[\"*\"]', NULL, NULL, '2024-03-13 07:03:37', '2024-03-13 07:03:37'),
(6, 'App\\Models\\User', 1, 'user@gmail.com', '06394bed97ddd839e0c7cc0f9d2688e8fec1dbb13c5c3dac5e238d0ec706d6c9', '[\"*\"]', NULL, NULL, '2024-03-13 07:05:42', '2024-03-13 07:05:42'),
(7, 'App\\Models\\User', 1, 'user@gmail.com', '9e53ef8c27f7aee9da76d49927e17c79171ce17110fb401479037be9ac3fabec', '[\"*\"]', NULL, NULL, '2024-03-13 07:06:23', '2024-03-13 07:06:23'),
(8, 'App\\Models\\User', 1, 'user@gmail.com', '0e3c331fc9966bae61a183c9178a9587b4121cdb8574270986704355c7767197', '[\"*\"]', NULL, NULL, '2024-03-13 07:15:16', '2024-03-13 07:15:16'),
(9, 'App\\Models\\User', 1, 'user@gmail.com', 'cb5649fbade51c9c5766d61add71bf0ce8780589277cf7cee3a0373889929753', '[\"*\"]', NULL, NULL, '2024-03-13 07:16:09', '2024-03-13 07:16:09'),
(10, 'App\\Models\\User', 1, 'user@gmail.com', '5c09937b8b47ba76db316c06759cb505fb886fc58ebd8d380205069a87c4dd2c', '[\"*\"]', NULL, NULL, '2024-03-13 07:23:32', '2024-03-13 07:23:32'),
(11, 'App\\Models\\User', 1, 'user@gmail.com', '4a8a9e16812624a58887e941f8910092ebc930f48638c8f3cc18332fab8e0846', '[\"*\"]', NULL, NULL, '2024-03-13 07:25:25', '2024-03-13 07:25:25'),
(12, 'App\\Models\\User', 1, 'user@gmail.com', '51ad3731be6a75e5a2c0549c4e9e5e16623978e0b52ef9569b2eecf5b8c0ef41', '[\"*\"]', NULL, NULL, '2024-03-13 07:26:38', '2024-03-13 07:26:38'),
(13, 'App\\Models\\User', 1, 'user@gmail.com', '5e45fa348e580ae259258bcc48a336ff4f9a62867510447a2a4a7d69e5e3aeac', '[\"*\"]', NULL, NULL, '2024-03-13 07:27:15', '2024-03-13 07:27:15'),
(14, 'App\\Models\\User', 1, 'user@gmail.com', '4a64c82fbb7dd6f8351cba532bef26d7c5a8259a84580e8784f1ac2922e40edb', '[\"*\"]', NULL, NULL, '2024-03-13 07:33:00', '2024-03-13 07:33:00'),
(15, 'App\\Models\\User', 1, 'user@gmail.com', '3dbcbf901ccfe30aee6d8b841c0afbd3c1ce7b976176e703d3048bd0dbfbfbf9', '[\"*\"]', NULL, NULL, '2024-03-13 07:34:53', '2024-03-13 07:34:53'),
(16, 'App\\Models\\User', 1, 'user@gmail.com', 'b1e097f141ae68f3efa023341ab622aa9cee4243b621b2ac9414f34f175096d5', '[\"*\"]', NULL, NULL, '2024-03-13 07:44:26', '2024-03-13 07:44:26'),
(17, 'App\\Models\\User', 1, 'user@gmail.com', '266bf40a3d6d47f1d14f82184a5a05044317974047cedc1d1b37bd2200876a3f', '[\"*\"]', NULL, NULL, '2024-03-13 08:55:52', '2024-03-13 08:55:52'),
(18, 'App\\Models\\User', 1, 'user@gmail.com', 'd9ee8f679233dc1254993dabcadd4514b72f263ade53b1c4cd559e3fd9998e09', '[\"*\"]', NULL, NULL, '2024-03-13 08:57:40', '2024-03-13 08:57:40'),
(19, 'App\\Models\\User', 3, 'user3@gmail.com', 'cb9b2581946c06a8aceb940ffd9b84687e58d72d100c3e7830769c4ab43f6c6c', '[\"*\"]', NULL, NULL, '2024-03-13 09:04:48', '2024-03-13 09:04:48'),
(20, 'App\\Models\\User', 1, 'user@gmail.com', 'c8b5a949ae9e7d7850f9e5e4a2f27c6846a309fde2ba825bee8fd27560df837d', '[\"*\"]', NULL, NULL, '2024-03-13 12:38:59', '2024-03-13 12:38:59'),
(21, 'App\\Models\\User', 1, 'user@gmail.com', '46863ceb4b4e2f6d18a0752b5a0a4fbf02d0f4619bf53f8f066e65ed724d56a7', '[\"*\"]', NULL, NULL, '2024-03-13 13:28:44', '2024-03-13 13:28:44'),
(22, 'App\\Models\\User', 1, 'user@gmail.com', '6830a250b066aba2c9751718fc1e9adda04d2c731005ec86ab838fbabe83bba0', '[\"*\"]', NULL, NULL, '2024-03-13 13:35:37', '2024-03-13 13:35:37'),
(23, 'App\\Models\\User', 1, 'user@gmail.com', 'bff06a8d4a2f0d7c4b41fda1a07c9f98decb2b27bc8718923a15ed1a2b1d4658', '[\"*\"]', NULL, NULL, '2024-03-13 13:37:41', '2024-03-13 13:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'user@gmail.com', NULL, '$2y$10$tQARE15NUDr7EED61xWiyuWSJy/IEfB3jqELCa7rLKSHkLIiyb5vi', NULL, '2024-03-12 13:22:19', '2024-03-12 13:22:19'),
(2, 'customer', 'user1@gmail.com', NULL, '$2y$10$mOaYWL8AJeWvHeYoT7O5kOSwBc3onj0iky8kxVGerVDwfmjg61w0i', NULL, '2024-03-12 13:23:08', '2024-03-12 13:23:08'),
(3, 'new User', 'user3@gmail.com', NULL, '$2y$10$eHu4vMnDo6Hi8/AMKTQUk.veFlougZby26H9XGq/Smh8cS1r4GZgy', NULL, '2024-03-13 09:04:48', '2024-03-13 09:04:48');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
