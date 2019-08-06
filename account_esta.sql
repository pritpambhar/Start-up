-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 11:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account_esta`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill_history`
--

CREATE TABLE `customer_bill_history` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bill_product_qty` int(11) NOT NULL,
  `bill_product_price` float NOT NULL,
  `product_total` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `bill_date` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_bill_history`
--

INSERT INTO `customer_bill_history` (`bill_id`, `customer_id`, `product_id`, `bill_product_qty`, `bill_product_price`, `product_total`, `invoice_id`, `bill_date`, `created_on`) VALUES
(144, 3, 25, 34, 43, 1462, 83, '2019-07-30', '2019-07-30 19:56:56'),
(145, 3, 19, 43, 18, 774, 83, '2019-07-30', '2019-07-30 19:56:56'),
(146, 3, 17, 32, 320, 10240, 83, '2019-07-30', '2019-07-30 19:56:56'),
(147, 3, 34, 31, 323, 10013, 83, '2019-07-30', '2019-07-30 19:56:56'),
(151, 1, 16, 23, 32, 736, 86, '2019-07-30', '2019-07-30 21:53:27'),
(152, 1, 16, 23, 32, 736, 87, '2019-07-30', '2019-07-30 21:55:54'),
(153, 1, 16, 23, 32, 736, 88, '2019-07-30', '2019-07-30 22:03:59'),
(154, 4, 16, 12, 12.3, 148, 89, '2019-07-31', '2019-07-31 18:11:05'),
(157, 1, 16, 122, 45, 5490, 92, '2019-07-31', '2019-07-31 18:26:11'),
(158, 1, 16, 122, 45, 5490, 93, '2019-07-31', '2019-07-31 18:27:30'),
(159, 1, 20, 2, 21, 42, 94, '2019-07-31', '2019-07-31 18:36:39'),
(160, 15, 18, 12, 22, 264, 95, '2019-07-31', '2019-07-31 22:47:44'),
(161, 16, 21, 23, 32, 736, 96, '2019-07-31', '2019-07-31 22:48:48'),
(162, 1, 18, 1, 250, 250, 97, '2019-08-01', '2019-08-01 16:27:00'),
(163, 3, 19, 12, 15, 180, 98, '2019-08-04', '2019-08-04 18:35:06'),
(164, 1, 16, 2, 49, 98, 99, '2019-08-05', '2019-08-05 13:15:03'),
(165, 1, 20, 5, 88, 440, 99, '2019-08-05', '2019-08-05 13:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_city` varchar(20) NOT NULL,
  `customer_phone_no` varchar(15) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`customer_id`, `customer_name`, `customer_city`, `customer_phone_no`, `created_on`) VALUES
(1, 'Prit Pambhar', 'Rajkot', '123456789', '2019-07-26 18:29:16'),
(2, 'Darshit Rathod', 'Dhoraji', '4567789123', '2019-07-26 18:29:16'),
(3, 'Mihir Shukla ', 'Jetpur', '789456213', '2019-07-26 18:29:16'),
(4, 'Mishil Dobariya ', 'Mumbai', '159263487', '2019-07-26 18:29:16'),
(13, 'Krunal Parsana h', 'Mota mava', '7567163164', '2019-07-26 18:29:16'),
(14, 'Deep Kakkad', 'Kagdadi', '4561230578', '2019-07-26 18:29:16'),
(15, 'Madhav Maheta', 'Patan', '7894561230', '2019-07-26 18:29:16'),
(16, 'Abhay Kathrotiya', 'Kankot', '7894561230', '2019-07-26 18:29:16'),
(17, 'rakesh', 'junagadh', '7567163164', '2019-07-29 23:56:22'),
(18, 'bhavin soneji', 'rajkot', '4567891234', '2019-07-30 15:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_grand_total` int(11) DEFAULT NULL,
  `credit` int(11) NOT NULL,
  `debit` int(11) NOT NULL,
  `invoice_status` varchar(10) NOT NULL DEFAULT 'active',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_master`
--

INSERT INTO `invoice_master` (`invoice_id`, `customer_id`, `invoice_date`, `invoice_grand_total`, `credit`, `debit`, `invoice_status`, `created_on`) VALUES
(83, 3, '2019-07-30', 22489, 3232, 19257, 'cancel', '2019-07-30 19:56:56'),
(86, 1, '2019-07-30', 736, 46, 690, 'active', '2019-07-30 21:53:27'),
(87, 1, '2019-07-30', 736, 746, -10, 'active', '2019-07-30 21:55:54'),
(88, 1, '2019-07-30', 736, 7445, -6709, 'active', '2019-07-30 22:03:59'),
(89, 4, '2019-07-31', 148, 14, 134, 'active', '2019-07-31 18:11:05'),
(92, 1, '2019-07-31', 5490, 4560, 931, 'active', '2019-07-31 18:26:11'),
(93, 1, '2019-07-31', 5490, 4560, 931, 'cancel', '2019-07-31 18:27:30'),
(94, 1, '2019-07-31', 42, 222, -179, 'active', '2019-07-31 18:36:39'),
(95, 15, '2019-07-31', 264, 21, 244, 'active', '2019-07-31 22:47:44'),
(96, 16, '2019-07-31', 736, 32, 705, 'active', '2019-07-31 22:48:48'),
(97, 1, '2019-08-01', 250, 200, 51, 'active', '2019-08-01 16:26:59'),
(98, 3, '2019-08-04', 180, 30, 150, 'active', '2019-08-04 18:35:06'),
(99, 1, '2019-08-05', 538, 200, 338, 'cancel', '2019-08-05 13:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(35) NOT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`product_id`, `product_name`, `product_qty`, `created_on`) VALUES
(16, 'Blender', NULL, '2019-07-30 19:52:40'),
(17, 'Pipe', NULL, '2019-07-30 19:52:48'),
(18, 'Fourleg', NULL, '2019-07-30 19:52:59'),
(19, 'Blade Set', NULL, '2019-07-30 19:53:10'),
(20, 'Coupler', NULL, '2019-07-30 19:53:17'),
(21, 'Wire', NULL, '2019-07-30 19:53:24'),
(22, 'Switch', NULL, '2019-07-30 19:53:31'),
(23, 'Black Ring', NULL, '2019-07-30 19:53:42'),
(24, 'Water Guard', NULL, '2019-07-30 19:53:56'),
(25, 'Rubber Set', NULL, '2019-07-30 19:54:04'),
(26, 'Silicon Ring', NULL, '2019-07-30 19:54:18'),
(27, 'Steel Ring', NULL, '2019-07-30 19:54:26'),
(28, 'Connection Clip', NULL, '2019-07-30 19:54:40'),
(29, 'Fiber Washer', NULL, '2019-07-30 19:54:53'),
(30, 'Chatni Jar', NULL, '2019-07-30 19:55:03'),
(31, 'Motor', NULL, '2019-07-30 19:55:10'),
(32, 'Water Seal', NULL, '2019-07-30 19:55:19'),
(33, 'Juicing Machine', NULL, '2019-07-30 19:55:31'),
(34, 'Saft', NULL, '2019-07-30 19:55:36'),
(35, 'Blender Body', NULL, '2019-07-30 19:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_master`
--

CREATE TABLE `transaction_master` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `credit` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_master`
--

INSERT INTO `transaction_master` (`transaction_id`, `customer_id`, `transaction_date`, `credit`, `invoice_id`, `created_on`) VALUES
(1, 1, '2019-07-31', 25000, NULL, '2019-07-31 21:58:50'),
(2, 1, '2019-07-31', 5000, NULL, '2019-07-31 22:20:22'),
(3, 1, '2019-07-31', 200, NULL, '2019-07-31 22:22:41'),
(4, 1, '2019-07-31', 200, NULL, '2019-07-31 22:25:27'),
(5, 16, '2019-07-31', 450, NULL, '2019-07-31 22:49:24'),
(6, 16, '2019-08-01', 20, NULL, '2019-08-01 16:31:15'),
(7, 1, '2019-08-05', 5000, NULL, '2019-08-05 13:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`) VALUES
(2, 'sachinenterprise@gmail.com', 'Sachin@??');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_bill_history`
--
ALTER TABLE `customer_bill_history`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transaction_master`
--
ALTER TABLE `transaction_master`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_bill_history`
--
ALTER TABLE `customer_bill_history`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `transaction_master`
--
ALTER TABLE `transaction_master`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_bill_history`
--
ALTER TABLE `customer_bill_history`
  ADD CONSTRAINT `customer_bill_history_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`product_id`),
  ADD CONSTRAINT `customer_bill_history_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice_master` (`invoice_id`),
  ADD CONSTRAINT `customer_bill_history_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`);

--
-- Constraints for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD CONSTRAINT `invoice_master_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`);

--
-- Constraints for table `transaction_master`
--
ALTER TABLE `transaction_master`
  ADD CONSTRAINT `transaction_master_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
