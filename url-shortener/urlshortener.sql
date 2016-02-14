-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2016 at 01:17 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlshortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_13_145626_create_urls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortened` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `url`, `shortened`) VALUES
(1, 'http://tutsplus.com', 'asdf'),
(2, 'http://www.google.com', '7bca82'),
(4, 'http://www.tiguratech.com', '9c048a'),
(5, 'http://awapzz.com', '1a6cad'),
(6, 'http://www.vinay.com', '5b010f'),
(7, 'http://tutsplus1.com', 'd07808'),
(8, 'http://tutsplu21.com', 'bb34ac'),
(9, 'http://lltutsplus.com', 'c10ba2'),
(10, 'http://tut22splus.com', '87d358'),
(11, 'http://tutsp78lus.com', 'c9b85b'),
(12, 'http://tutsp56lus.com', 'ded4cb'),
(13, 'http://tu21tsplus.com', 'eeec10'),
(14, 'http://tuts45plus.com', 'bedc35'),
(15, 'http://www.tiguratecjjh.com', '6c27ee'),
(16, 'http://www.tiguratecj5jh.com', 'a42eec'),
(17, 'http://www.tiguratecj785jh.com', '95c067'),
(18, 'http://www.tigurat55ecj785jh.com', '1df336'),
(19, 'http://www.t89iguratech.com', '8fa9d6'),
(20, 'http://www.t89igurddatech.com', 'a20705'),
(21, 'http://www.t89igurddatecllh.com', '17760b'),
(22, 'http://www.t89igurd55datecllh.com', '3911ee'),
(23, 'http://www.t89igurd55dakktecllh.com', 'ad1b82'),
(24, 'http://www.jjt89igurd55dakktecllh.com', 'eb2bd5'),
(25, 'http://tutkks5plus.com', '64f600'),
(26, 'http://tutkks5plsaus.com', 'f0565f'),
(27, 'http://tutkks5plsakus.com', '85ded5'),
(28, 'http://tutspl', 'f35790'),
(29, 'http://tutsp', 'b77657'),
(30, 'http://tu', '79f9f9');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
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
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
