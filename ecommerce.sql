-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 01:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'Guess 1875', 300000),
(2, 'Guest Watch', 250000),
(3, 'Panerai Watch', 350000),
(4, 'Nonos Watch', 180000),
(5, 'Blouse Batik Sutra', 180000),
(6, 'Blouse Batik Dibo', 250000),
(7, 'Highbatik Serat', 500000),
(8, 'Katuna Blouse Batik', 230000),
(9, 'Nike White Sneaker', 800000),
(10, 'Nike White Shoes', 750000),
(11, 'Nike Yellow Sneaker', 700000),
(12, 'Nike Brown Sneaker', 600000),
(13, 'Beats Headphone', 2250000),
(14, 'Zolo Headphone', 450000),
(15, 'Sony Speaker', 1050000),
(16, 'Airpods', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `phone`, `registration_time`, `password`) VALUES
(67, 'melmel@gmail.com', 'melmel', 'lisa', 0, '2022-12-28 07:37:46', 'e10adc3949ba59abbe56e057f20f883e'),
(68, 'melisa@gmail.com', 'meli', 'lisa', 0, '2022-12-28 09:33:37', 'e10adc3949ba59abbe56e057f20f883e'),
(69, 'melisaami@gmail.com', 'melisa', 'umami', 0, '2022-12-28 10:09:09', 'e10adc3949ba59abbe56e057f20f883e'),
(71, 'melisa.umami@students.utdi.ac.id', 'melisa', 'umami', 0, '2022-12-28 17:49:30', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed'),
(34, 69, 2, 'Confirmed'),
(35, 69, 7, 'Confirmed'),
(36, 69, 11, 'Confirmed'),
(41, 69, 15, 'Confirmed'),
(42, 69, 2, 'Confirmed'),
(43, 69, 7, 'Confirmed'),
(44, 69, 12, 'Confirmed'),
(46, 68, 2, 'Added To Cart'),
(47, 68, 3, 'Added To Cart'),
(48, 68, 7, 'Added To Cart'),
(49, 68, 10, 'Added To Cart'),
(50, 69, 2, 'Confirmed'),
(51, 69, 7, 'Confirmed'),
(52, 69, 10, 'Confirmed'),
(53, 69, 15, 'Confirmed'),
(54, 68, 6, 'Added To Cart'),
(55, 69, 2, 'Confirmed'),
(56, 69, 6, 'Confirmed'),
(57, 69, 14, 'Confirmed'),
(58, 69, 10, 'Confirmed'),
(59, 69, 2, 'Confirmed'),
(60, 69, 6, 'Confirmed'),
(61, 69, 2, 'Confirmed'),
(62, 69, 3, 'Confirmed'),
(63, 69, 1, 'Confirmed'),
(64, 69, 2, 'Confirmed'),
(65, 69, 3, 'Confirmed'),
(66, 69, 2, 'Confirmed'),
(67, 71, 2, 'Confirmed'),
(68, 71, 7, 'Confirmed'),
(69, 71, 10, 'Confirmed'),
(71, 71, 15, 'Confirmed');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_products`
--
ALTER TABLE `users_products`
  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
