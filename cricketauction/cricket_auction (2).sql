-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 12:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `csk06`
--

CREATE TABLE `csk06` (
  `id` int(2) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_no` int(2) NOT NULL,
  `auction_id` int(2) NOT NULL,
  `min_amount` int(10) NOT NULL,
  `final_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csk06`
--

INSERT INTO `csk06` (`id`, `player_name`, `player_no`, `auction_id`, `min_amount`, `final_amount`) VALUES
(1, 'ms dhoni', 10, 8, 80000000, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `kkr64`
--

CREATE TABLE `kkr64` (
  `id` int(2) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_no` int(2) NOT NULL,
  `auction_id` int(2) NOT NULL,
  `min_amount` int(10) NOT NULL,
  `final_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kkr64`
--

INSERT INTO `kkr64` (`id`, `player_name`, `player_no`, `auction_id`, `min_amount`, `final_amount`) VALUES
(1, 'gowtham gambir', 87, 9, 70000000, 80000001);

-- --------------------------------------------------------

--
-- Table structure for table `mir21`
--

CREATE TABLE `mir21` (
  `id` int(2) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_no` int(2) NOT NULL,
  `auction_id` int(2) NOT NULL,
  `min_amount` int(10) NOT NULL,
  `final_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mir21`
--

INSERT INTO `mir21` (`id`, `player_name`, `player_no`, `auction_id`, `min_amount`, `final_amount`) VALUES
(1, 'sachin tendulkar', 10, 84, 12000000, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(2) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_no` int(2) NOT NULL,
  `auction_id` int(2) NOT NULL,
  `min_amount` int(10) NOT NULL,
  `final amount` int(10) DEFAULT NULL,
  `position` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `player_name`, `player_no`, `auction_id`, `min_amount`, `final amount`, `position`) VALUES
(1, 'virat kolhi', 18, 1, 80000000, NULL, 'batsman'),
(2, 'ab di villiers', 4, 1, 50000000, NULL, 'keeper'),
(3, 'ms dhoni', 10, 8, 80000000, NULL, 'keeper'),
(4, 'gowtham gambir', 87, 9, 70000000, NULL, 'batsman'),
(5, 'sachin tendulkar', 10, 84, 12000000, NULL, 'batsman');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'BOLT1', 'Sports Shoes', 'With a clean vamp, tonal stitch details throughout, and a unique formstripe finish, the all new sports shoes fits the needs of multiple running consumers by offering an athletic and a lifestyle look.', 'sports_shoes.jpg', 26, '5000.00'),
(2, 'BOLT2', 'Cap', 'A sleek, tonal stitched cap for runners. The plain texture and unique design will help runners to concentrate more on running and less on their hair. The combbination of casual and formal look is just brilliant.', 'cap.jpg', 7, '200.00'),
(3, 'BOLT3', 'Sports Band', 'The Sports Band collection features highly polished stainless steel and space black stainless steel cases. The display is protected by sapphire crystal. And there is a choice of three different leather bands.', 'sports_band.jpg', 34, '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `rcb18`
--

CREATE TABLE `rcb18` (
  `id` int(2) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `player_no` int(2) NOT NULL,
  `auction_id` int(2) NOT NULL,
  `min_amount` int(10) NOT NULL,
  `final_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcb18`
--

INSERT INTO `rcb18` (`id`, `player_name`, `player_no`, `auction_id`, `min_amount`, `final_amount`) VALUES
(1, 'viratkolhi', 18, 1, 80000000, 80000001),
(2, 'ab di villiers', 4, 1, 50000000, 1000000000),
(3, 'ms dhoni', 10, 8, 80000000, 2147483647),
(4, 'virat kolhi', 18, 1, 80000000, 1000000000),
(5, 'ms dhoni', 10, 8, 80000000, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `team_login`
--

CREATE TABLE `team_login` (
  `id` int(5) NOT NULL,
  `team` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_login`
--

INSERT INTO `team_login` (`id`, `team`, `username`, `password`) VALUES
(1, 'royal challengers bangalore', 'Rcb18', 'virat_kolhi'),
(2, 'chennai super kings', 'csk06', 'ms_dhoni'),
(3, 'mumbai indians', 'mir21', 'rohit_shar'),
(4, 'kolkata knights  riders', 'kkr64', 'kkr_gua');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csk06`
--
ALTER TABLE `csk06`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kkr64`
--
ALTER TABLE `kkr64`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mir21`
--
ALTER TABLE `mir21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `rcb18`
--
ALTER TABLE `rcb18`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_login`
--
ALTER TABLE `team_login`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `csk06`
--
ALTER TABLE `csk06`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kkr64`
--
ALTER TABLE `kkr64`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mir21`
--
ALTER TABLE `mir21`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rcb18`
--
ALTER TABLE `rcb18`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_login`
--
ALTER TABLE `team_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
