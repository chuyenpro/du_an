-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 11:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `status`, `created_at`) VALUES
(5, 'Fashion Winter', 1, '2021-01-25 12:15:27'),
(6, 'Fashion style Summer', 1, '2021-01-07 12:15:31'),
(7, 'Fashion style Autumn', 1, '2021-01-06 12:15:40'),
(8, 'Fashion style Spring', 1, '2021-01-05 12:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `addres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `total` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Description product',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. Best Sellers; 2.  New Arrivals; 3. Hot Sales',
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `images`, `quantity`, `description`, `created_at`, `status`, `active`) VALUES
(9, 6, 'Piqué Biker Jacket', 67.24, 'product-1.jpg', 10, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-05 19:38:02', 1, 1),
(10, 6, 'Piqué Biker Jacket Summer', 67, 'product-2.jpg', 5, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 2, 1),
(11, 7, 'Multi-pocket Chest Bag', 43.48, 'product-3.jpg', 5, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-13 19:38:02', 1, 1),
(12, 8, 'Diagonal Textured Cap', 60.9, 'product-4.jpg', 7, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 1, 1),
(13, 6, 'Lether Backpack', 31.37, 'product-5.jpg', 2, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 3, 1),
(14, 7, 'Ankle Boots', 98.49, 'product-6.jpg', 4, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 2, 1),
(15, 7, 'T-shirt Contrast Pocket', 49.66, 'product-7.jpg', 7, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 3, 1),
(16, 7, 'Basic Flowing Scarf', 26.28, 'product-8.jpg', 3, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2020-11-21 19:38:02', 2, 1),
(17, 6, 'Basic Flowing Torano', 49.28, 'product-9.jpg', 7, 'Brittany Humble Off-Shoulder Jumpsuit\r\nExpose a shoulder in this alluring (and comfortable) knit jumpsuit that\'s destined to become your go-to for relaxed everyday wear or dressing up with your favorite accessories and heels.\r\nFit Guide - Fit by Bust, Waist and Hip:\r\n\r\nGarment is sized by the bust, waist and hip measurements. If your bust, waist and hip correspond to different sizes, choose the largest size from the HSN Size Chart.', '2021-01-18 19:38:02', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
