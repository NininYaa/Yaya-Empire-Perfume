-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 04:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `mypassword`, `created_at`) VALUES
(1, 'admin.first@yahoo.com', 'admin.first@yahoo.com', '$2y$10$3lqPV300ILIrRX1TzeZ7DuKlGlyU41eQU6KoEhMJr97CJk3O1EWC6', '2022-11-24 15:29:50'),
(2, 'admins-second@yahoo.com', 'admins-second', '$2y$10$skM4iAjF/VMicH8mfAu23uozOU8ye5xosbuTBXVneLGTEvX0rgEbS', '2022-11-25 10:35:15'),
(3, 'first@gmail.com', 'first', 'first@gmail.com', '2023-11-13 04:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` int(3) NOT NULL,
  `pro_amount` int(3) NOT NULL,
  `pro_file` varchar(200) NOT NULL,
  `user_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pro_id`, `pro_name`, `pro_image`, `pro_price`, `pro_amount`, `pro_file`, `user_id`, `create_at`) VALUES
(181, 6, 'PINK', 'pinkedition.jpg', 40, 1, 'file.pdf', 1, '2023-11-13 10:14:03'),
(182, 9, 'PRINCESS EDITION', 'LOVE PRINCESS3.jpg', 74, 1, '', 1, '2023-11-13 12:03:23'),
(183, 7, 'PINK MIA', 'special edition76.jpg', 31, 1, 'YayaEmpire.zip', 6, '2023-11-14 03:03:23'),
(184, 21, 'CINDELULU BLUE', 'cindelulu9-.jpg', 35, 1, '', 1, '2023-11-15 02:49:22'),
(185, 21, 'CINDELULU BLUE', 'cindelulu9-.jpg', 35, 1, '', 7, '2023-11-15 04:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`) VALUES
(1, 'MEN', 'Immerse yourself in the invigorating essence of our distinguished men\'s perfume—a fragrance that echoes with the confident rhythm of modern masculinity. The journey begins with a burst of zesty, awakening your senses and setting the stage for an olfactory adventure.', 'mee.jpg', '2022-11-24 11:02:32'),
(3, 'WOMEN', 'Indulge in the timeless allure of our enchanting women\'s perfume, a symphony of delicate notes that dance gracefully on your skin. Opening with the fresh vibrancy of sun-kissed citrus, the fragrance unfolds into a captivating bouquet of blooming florals.', 'enn.jpg', '2022-11-24 11:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `user_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `username`, `fname`, `lname`, `price`, `user_id`, `create_at`) VALUES
(66, 'user.first@gmail.com', 'user.first', 'ninin', 'Kuala Lumpur', '188', 1, '2023-11-13 14:03:25'),
(67, 'ainin@gmail.com', 'ainin', 'ninin', 'Kuala Lumpur', '93', 6, '2023-11-14 03:04:58'),
(68, 'asofiya742@gmail.com', 'ainin', 'ninin', 'kl', '35', 7, '2023-11-15 04:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(3) NOT NULL,
  `file` text NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `category_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `file`, `description`, `status`, `category_id`, `created_at`) VALUES
(21, 'CINDELULU BLUE', 'cindelulu9-.jpg', 35, '', 'Scent: Warm Vanilla, Woody, Fresh', 1, 0, '2023-11-14 17:54:53'),
(22, 'DINO GREEN', 'dino.jpg', 35, '', 'Scent: Sweet, Vanilla, Fresh, BubbleGum', 1, 0, '2023-11-14 17:55:50'),
(23, 'FRUITY LICIOUS', 'FRUITY2.jpg', 35, '', 'Scent: Fruity', 1, 0, '2023-11-14 17:56:43'),
(27, 'SPECIAL', 'special edition76.jpg', 35, '', 'Scent: Sweet, Floral Nutty, Fresh, ', 1, 0, '2023-11-14 18:07:31'),
(28, 'SPECIAL EDITION', 'special.jpg', 35, '', 'Scent: Vanilla, Sweet, Vanilla, Fruity, Floral', 1, 0, '2023-11-14 18:10:58'),
(29, 'FAIRY TALE', 'FAIRYTALE EDITION.jpg', 35, '', 'Scent: Sweet, Fruity, Tropical, Fresh, Sour', 1, 0, '2023-11-14 18:12:41'),
(30, 'SARANGHEYO', 'saranghae.jpg', 35, '', 'Scent: Sweet, Coconut, Fruity, Vanilla, Almond', 1, 0, '2023-11-14 18:14:44'),
(32, 'DINO PINK', 'DINO CANDY.jpg', 35, '', 'Scent: Strawberry, Apple, Rose', 1, 0, '2023-11-14 18:17:19'),
(33, 'BOGOSHIPO', 'BOGOSHIPO2.jpg', 35, '', 'Scent: Sweet, Vanilla, Coconut', 1, 0, '2023-11-14 18:21:04'),
(34, 'YE CLD', 'YE.jpg', 35, '', 'Scent: Vanilla, Coconut, Sweet', 1, 0, '2023-11-14 18:22:57'),
(35, 'YE SWT', 'photo_2023-11-15_02-32-29.jpg', 35, '', 'Scent: Vanilla, Fruity, Sweet', 1, 0, '2023-11-14 18:32:52'),
(36, 'YE EI ROSE', 'photo_2023-11-15_02-34-24.jpg', 35, '', 'Scent: Citrus, Fruity, Vanilla, Wood', 1, 0, '2023-11-14 18:34:58'),
(37, 'YE IVICTS', 'photo_2023-11-15_02-35-30.jpg', 35, '', 'Scent: Citrus, Marine, Aromatic, Woody', 1, 0, '2023-11-14 18:36:34'),
(38, 'YE WLD MDGSR', 'photo_2023-11-15_02-37-51.jpg', 35, '', 'Scent: Woody Floral, Musky, Fresh', 1, 0, '2023-11-14 18:38:09'),
(39, 'YE BILLIE ILISH', 'photo_2023-11-15_02-39-25.jpg', 35, '', 'Scent: Vanilla, Sweet, Amber', 1, 0, '2023-11-14 18:39:59'),
(40, 'ROSE DES VENTS', 'photo_2023-11-15_02-41-39.jpg', 35, '', 'Scent: Rose, Fruity, Woody', 1, 0, '2023-11-14 18:43:11'),
(42, 'ROSES GLAM', 'photo_2023-11-15_02-41-39 (3).jpg', 35, '', 'Scent: Rose, Amber, Fresh', 1, 0, '2023-11-14 18:44:45'),
(43, 'GLAMOUR ', 'photo_2023-11-15_02-41-39 (4).jpg', 35, '', 'Scent: Fruity', 1, 0, '2023-11-14 18:45:26'),
(44, 'BUBBLE GUM ', 'photo_2023-11-15_02-41-39 (2).jpg', 35, '', 'Scent: Sweet, Fruity', 1, 0, '2023-11-14 18:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'user.first', 'user.first@gmail.com', '$2y$10$3lqPV300ILIrRX1TzeZ7DuKlGlyU41eQU6KoEhMJr97CJk3O1EWC6', '2022-11-20 19:11:07'),
(6, 'ainin', 'ainin@gmail.com', '$2y$10$UogdOfL.p8Lojda/KATmq.w.AWhxsoDt/f3mKFX2hcUTZ33zJ6DTO', '2023-11-14 03:02:54'),
(7, 'ainin', 'asofiya742@gmail.com', '$2y$10$GMUi77ZYqWarVwq7i3SDpOlAB3cAbeqwZnEUiwN7WyrltrSAPl0G2', '2023-11-15 04:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `pro_id` int(3) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` int(10) NOT NULL,
  `user_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`pro_id`, `pro_name`, `pro_image`, `pro_price`, `user_id`, `create_at`) VALUES
(1, 'CINDELULU', 'cinde.jpg', 20, 1, '2023-11-13 07:56:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `pro_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
