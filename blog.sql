-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 07:14 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL,
  `modified` timestamp NOT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `pings` json DEFAULT NULL,
  `creator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_by_current_user` tinyint(1) NOT NULL DEFAULT '1',
  `upvote_count` int(11) DEFAULT NULL,
  `user_has_upvoted` tinyint(1) NOT NULL DEFAULT '0',
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent`, `created`, `modified`, `file_url`, `content`, `pings`, `creator`, `fullname`, `profile_picture_url`, `created_by_admin`, `created_by_current_user`, `upvote_count`, `user_has_upvoted`, `is_new`, `created_at`, `updated_at`) VALUES
(1, NULL, '2018-07-08 23:34:15', '2018-07-08 23:34:15', NULL, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c1', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-08 23:34:15', '2018-07-08 23:34:15'),
(2, NULL, '2018-07-08 23:53:34', '2018-07-08 23:53:34', NULL, 'ccxcvzccxvzxcv', NULL, 'c2', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-08 23:53:34', '2018-07-08 23:53:34'),
(3, NULL, '2018-07-08 23:53:37', '2018-07-08 23:53:37', NULL, 'xczvxcvzvx', NULL, 'c3', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-08 23:53:37', '2018-07-08 23:53:37'),
(4, NULL, '2018-07-08 23:59:34', '2018-07-08 23:59:34', NULL, 'czxcxzvzvxccxv', NULL, 'c1', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-08 23:59:34', '2018-07-08 23:59:34'),
(22, 18, '2018-07-10 08:24:12', '2018-07-10 08:24:12', NULL, 'dcscdsvcxvxcv', NULL, 'c4', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:24:12', '2018-07-10 08:24:12'),
(30, 15, '2018-07-10 08:28:44', '2018-07-10 08:28:44', NULL, 'cvcxvcxvxcv', NULL, 'c4', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:28:44', '2018-07-10 08:28:44'),
(12, NULL, '2018-07-10 08:15:01', '2018-07-10 08:15:01', NULL, 'xcvcxvxcvxv', NULL, 'c2', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:15:01', '2018-07-10 08:15:01'),
(29, NULL, '2018-07-10 08:27:55', '2018-07-10 08:27:55', NULL, 'czxvczxv', NULL, 'c3', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:27:55', '2018-07-10 08:27:55'),
(14, NULL, '2018-07-10 08:15:09', '2018-07-10 08:17:20', NULL, 'cxvxcvxcvgbvcbn', NULL, 'c4', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:15:09', '2018-07-10 08:17:20'),
(15, NULL, '2018-07-10 08:15:13', '2018-07-10 08:15:13', NULL, 'cvxcvxcv', NULL, 'c5', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:15:13', '2018-07-10 08:15:13'),
(18, NULL, '2018-07-10 08:17:31', '2018-07-10 08:17:31', NULL, 'fbcvcvncv', NULL, 'c6', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:17:31', '2018-07-10 08:17:31'),
(28, NULL, '2018-07-10 08:27:52', '2018-07-10 08:27:52', NULL, 'cvcxvxcv', NULL, 'c2', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:27:52', '2018-07-10 08:27:52'),
(27, NULL, '2018-07-10 08:27:50', '2018-07-10 08:27:50', NULL, 'cxcxvc', NULL, 'c1', 'You', 'https://viima-app.s3.amazonaws.com/media/user_profiles/user-icon.png', 0, 1, 0, 0, 0, '2018-07-10 08:27:50', '2018-07-10 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(78, '2014_10_12_100000_create_password_resets_table', 2),
(2, '2018_06_28_084206_create_user_activations_table', 1),
(79, '2018_06_28_090244_create_user_activation_table', 2),
(80, '2018_07_07_092740_create_comments_table', 2),
(81, '2018_07_07_093739_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(2, 'ngocanh', 'ngocanh2088188@gmail.com', '$2y$10$BzX6UQAlTlIANO2BkW6/CuiHxjgCb1OgkPDCLBqoC6.PxL6QMxFSe', 'xH23BckT4rVHLMzb1vqvNVjweBpJMY0YfSPFfgHScxxLsDt4keYnVueifiZR', '2018-07-10 22:42:48', '2018-07-10 22:43:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`user_id`, `activation_code`, `created_at`, `updated_at`) VALUES
(1, '4bbbe2dad0abc890381727fe68e5c8b6a2445f4068e25ea4031e952a52a45948', '2018-07-08 09:38:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD KEY `user_activations_activation_code_index` (`activation_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
