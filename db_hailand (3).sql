-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2026 at 08:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hailand`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `user1_id` int(11) DEFAULT NULL,
  `user2_id` int(11) DEFAULT NULL,
  `last_message` text DEFAULT NULL,
  `last_message_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 1, 3, '2026-01-08 05:53:17'),
(2, 1, 3, '2026-01-08 05:53:19'),
(3, 1, 3, '2026-01-08 05:53:20'),
(4, 1, 3, '2026-01-08 05:54:16'),
(5, 1, 3, '2026-01-08 05:54:17'),
(6, 1, 3, '2026-01-08 05:54:18'),
(7, 1, 3, '2026-01-08 05:54:19'),
(8, 1, 3, '2026-01-08 05:54:20'),
(9, 1, 3, '2026-01-08 05:54:21'),
(10, 1, 3, '2026-01-08 05:54:22'),
(11, 1, 5, '2026-01-08 06:00:05'),
(12, 1, 4, '2026-01-08 06:01:47'),
(13, 1, 4, '2026-01-08 06:01:50'),
(14, 1, 4, '2026-01-08 06:01:52'),
(15, 1, 5, '2026-01-08 06:17:20'),
(16, 1, 3, '2026-01-08 06:55:15'),
(17, 1, 3, '2026-01-09 12:48:14'),
(18, 1, 3, '2026-01-09 16:05:30'),
(19, 76, 0, '2026-01-22 04:49:02'),
(21, 76, 3, '2026-01-22 05:31:35'),
(29, 76, 8, '2026-01-22 07:45:06'),
(30, 76, 11, '2026-01-22 08:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_seen` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `receiver_id`, `message`, `is_seen`, `created_at`, `file_url`) VALUES
(1, NULL, 2, 2, 'chào anh', 1, '2026-01-29 07:20:16', NULL),
(2, NULL, 2, 1, 'alo anh\'', 1, '2026-01-29 07:21:35', NULL),
(3, NULL, 1, 2, 'sản phảm này còn không ạ', 1, '2026-01-29 07:21:56', NULL),
(4, NULL, 2, 1, 'dạ còn anh', 1, '2026-01-29 07:22:07', NULL),
(5, NULL, 1, 2, '', 1, '2026-01-29 07:23:19', 'uploads/chat/1769671399_Screenshot2025-01-03144621.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `province` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(100) DEFAULT NULL,
  `favorite_count` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `price`, `description`, `province`, `image`, `created_at`, `category`, `favorite_count`, `views`) VALUES
(3, 67, 'loptop cũ', 2400000, '', 'hồ chí minh', '', '2026-01-07 15:23:31', NULL, 0, 0),
(4, 66, 'bàn học ', 120000, 'làm từ bằng nhựa', 'hồ chí minh', '1767852026_view (2).htm', '2026-01-08 06:00:26', NULL, 0, 0),
(8, 1, 'Huỳnh Minh Nhật', 5353, 'adsfsdas', 'tp hcm', '1768162493_696404bd6d54d.HEIC', '2026-01-11 20:14:53', 'Dien thoai', 1, 0),
(9, 1, 'iphone', 99999, 'Dádsdfsadfas', 'tp hcm', '1768162868_69640634914cc.webp', '2026-01-11 20:21:08', 'Dien thoai', 0, 0),
(11, 76, 'iphone 15', 1200000, '', 'hồ chí minh', '1769057654_6971ad7612542.webp', '2026-01-22 04:54:14', 'Dien thoai', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `typing_status`
--

CREATE TABLE `typing_status` (
  `user_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `typing_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typing_status`
--

INSERT INTO `typing_status` (`user_id`, `receiver_id`, `typing_at`) VALUES
(1, 2, '2026-01-29 14:21:55'),
(2, 1, '2026-01-29 14:22:07'),
(2, 2, '2026-01-29 14:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_online` tinyint(1) DEFAULT 0,
  `last_active` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `is_online`, `last_active`) VALUES
(1, 'LÊ TẤN TIẾN', 'tantienle323@gmail.com', '0982059744', '$2y$10$2fk7zuLxMXOWu0QUy34Rwel4d/nsLoIOtffvq6vvChtk8ZV/Ac0QG', '2026-01-29 07:17:23', 1, '2026-01-29 14:34:01'),
(2, 'anh tuan', 'anh@gmail.com', '0904248735', '$2y$10$hh.dg8TD26/Flr0lWZhcVeiampQdcbO4FHI4Dsmskxn7ILgQ.K2xK', '2026-01-29 07:19:41', 1, '2026-01-29 14:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_conversation` (`user1_id`,`user2_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typing_status`
--
ALTER TABLE `typing_status`
  ADD PRIMARY KEY (`user_id`,`receiver_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
