-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 09:54 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qodehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_07_130937_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `importance` enum('urgent','not too urgent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not too urgent',
  `status` enum('complete','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `task`, `date`, `importance`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'make a cake and fry fish', '2020-06-24', 'urgent', 'pending', '2020-06-13 16:12:42', '2020-06-07 13:49:01', '2020-06-13 16:12:42'),
(2, 1, 'fry some chicken', '2020-06-17', 'urgent', 'pending', '2020-06-13 16:23:46', '2020-06-07 13:51:58', '2020-06-13 16:23:46'),
(3, 1, 'make a cake', '2020-06-16', 'urgent', 'complete', '2020-06-13 18:22:42', '2020-06-07 15:35:41', '2020-06-13 18:22:42'),
(4, 1, 'create form', '2020-06-11', 'urgent', 'complete', NULL, '2020-06-08 20:20:42', '2020-06-13 17:54:09'),
(5, 2, 'fill a form', '2020-06-14', 'urgent', 'pending', NULL, '2020-06-13 10:01:33', '2020-06-13 10:01:33'),
(6, 1, 'make a ponytail', '2020-06-20', 'urgent', 'complete', NULL, '2020-06-13 16:24:05', '2020-06-13 18:09:40'),
(7, 1, 'download sauti sol album', '2020-06-15', 'urgent', 'complete', NULL, '2020-06-13 17:51:49', '2020-06-13 17:51:53'),
(8, 1, 'make a ponytail', '2020-06-09', 'not too urgent', 'pending', NULL, '2020-06-13 18:09:59', '2020-06-13 18:10:20'),
(9, 3, 'go to a house party at East Legon', '2020-06-25', 'not too urgent', 'complete', '2020-06-14 19:50:00', '2020-06-14 19:48:02', '2020-06-14 19:50:00'),
(10, 3, 'go to the supermarket', '2020-06-18', 'urgent', 'complete', NULL, '2020-06-14 19:49:01', '2020-06-14 19:53:06'),
(11, 3, 'go to the mall', '2020-06-20', 'not too urgent', 'pending', NULL, '2020-06-14 19:49:20', '2020-06-14 19:49:20'),
(12, 3, 'go to school', '2020-06-17', 'urgent', 'pending', '2020-06-14 19:49:41', '2020-06-14 19:49:36', '2020-06-14 19:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alice', 'alice@gmail.com', NULL, '$2y$10$rh5CrAVAh6v/0J6BQcK6S.STMCII6du7WxgMjoxqiLog4SCPrU37i', NULL, '2020-06-07 13:44:40', '2020-06-07 13:44:40'),
(2, 'Suzanna', 'su@gmail.com', NULL, '$2y$10$gHHhBQMC/4crJzJy3zjgmeS8l21MBQzLtNClmUkWYaLutY1YdavjG', NULL, '2020-06-13 09:58:13', '2020-06-13 09:58:13'),
(3, 'Lillian', 'lee@gmail.com', NULL, '$2y$10$EpX0S7RP1PiHMNVZgOXzyOsuiQUtQ1wn51fvCKMtV2lHE4f21p9tm', 'ikLo8Ks1XH2lUR0vVr9dLLrdFnLD8TfLQ9eeFUeT9ovXJ7gzyLqglIYIAcYz', '2020-06-14 19:47:39', '2020-06-14 19:53:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
