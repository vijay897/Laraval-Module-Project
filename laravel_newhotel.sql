-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 05:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_newhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total` varchar(255) NOT NULL DEFAULT '0',
  `seen` varchar(255) NOT NULL DEFAULT '0',
  `rank` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `user_id`, `room_id`, `user_name`, `user_email`, `status`, `total`, `seen`, `rank`, `created_at`, `updated_at`) VALUES
(81, '14', '5', 'vijay', 'somulavijaykumar3@gmail.com', 'pending', '14000', '1', 'pending', '2024-11-07 21:33:01', '2024-11-07 21:33:01'),
(83, '14', '4', 'Vijay', 'somulavijaykumar3@gmail.com', 'pending', '18000', '1', 'pending', '2024-11-08 04:25:58', '2024-11-08 04:25:58'),
(84, '14', '4', 'Vijay', 'somulavijaykumar3@gmail.com', 'pending', '12000', '1', 'pending', '2024-11-08 08:38:14', '2024-11-08 08:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_22_043052_create_students_table', 1),
(7, '2024_05_13_024716_create_rooms_table', 1),
(8, '2024_05_15_064500_create_books_table', 1),
(9, '2024_11_07_150736_add_mobile_and_address_to_users_table', 2),
(10, '2024_11_07_152406_add_mobile_and_address_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `adult` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `bed` varchar(255) NOT NULL,
  `bathroom` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `user_id`, `name`, `image`, `description`, `city`, `adult`, `child`, `bed`, `bathroom`, `price`, `from`, `to`, `status`, `total`, `created_at`, `updated_at`) VALUES
(3, '5', 'Beach Front House', 'home/image/1730968513.jpg', 'In the Beach View Room, the Facility Which having Adults 2, Children 3, beds 2, Bathrooms 2 And We have Telescope on the Building for View Point.', 'Chennai, Krishna Giri', '2', '2', '3', '2', '4500', '2024-11-08', '2024-11-10', 'pending', '0', '2024-11-07 03:05:13', '2024-11-07 03:05:13'),
(4, '5', 'Sky View', 'home/image/1730969065.jpg', 'In theSky View Room, the Facility Which having Adults 2, Children 3, beds 2, Bathrooms 2 And We have Telescope on the Building for View Point.', 'koyambattur', '2', '3', '2', '2', '6000', '2024-11-09', '2024-11-11', 'pending', '0', '2024-11-07 03:14:26', '2024-11-07 03:14:26'),
(5, '5', 'Full House', 'home/image/1730969218.jpg', 'the full house 5 Members in the Room', 'Delhi, Agra', '2', '3', '1', '1', '3500', '2024-11-09', '2024-11-12', 'pending', '0', '2024-11-07 03:16:58', '2024-11-07 03:16:58'),
(6, '17', 'The New Taj Hotel', 'home/image/1731038358.jpg', '7 guests3 bedrooms4 beds2 bathrooms', 'Delhi, Agra', '4', '3', '4', '2', '6500', '2024-11-09', '2024-11-12', 'pending', '0', '2024-11-07 22:29:18', '2024-11-07 22:29:18'),
(7, '5', 'Village Homes', 'home/image/1731057002.jpg', 'This house having 5 members 2 adults and 3 children.\r\nIt is having 1 Bathroom and 2 bed.', 'Chennai, Krishna Giri', '2', '3', '2', '1', '2500', '2024-11-09', '2024-11-10', 'pending', '0', '2024-11-08 03:40:02', '2024-11-08 03:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `password`, `created_at`, `updated_at`, `mobile`, `address`) VALUES
(5, 'Mohit', 'owner', 'somulavijaykumar007@gmail.com', '$2y$12$71aWECLjHu3NhRDmIoXRNe.Ui8WUhd2.YRd4hXHpd43nZT2RpRheO', '2024-11-07 03:02:52', '2024-11-07 23:17:25', '7981900587', 'Nellore'),
(14, 'Vijay', 'user', 'somulavijaykumar3@gmail.com', '$2y$12$OCE823H/Li2bJT5pPy.aFO6S.6hzZtksQzLwAryfSDAKAj6tx5QZK', '2024-11-07 21:32:38', '2024-11-08 11:03:33', '8978290725', 'Kadapa'),
(16, 'vinod', 'user', 'vinodchoudary45@gmail.com', '$2y$12$Szerao7QWe928.cSLo3TYuc6xzsf.ROdVaEwEl8e0XWnpC1GsqsCm', '2024-11-07 22:23:39', '2024-11-07 22:23:39', NULL, NULL),
(17, 'Meena', 'owner', 'somulavijaykumar3@outlook.com', '$2y$12$1/Z/fAbguBXOfz/E3qstFOdy8xVkxo.ilDUFE4RL2RlRlkMNd69se', '2024-11-07 22:25:41', '2024-11-08 11:04:55', '1234567891', 'fgbhnjm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
