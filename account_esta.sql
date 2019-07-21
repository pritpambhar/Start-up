-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 07:20 PM
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
  `bill_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_bill_history`
--

INSERT INTO `customer_bill_history` (`bill_id`, `customer_id`, `product_id`, `bill_product_qty`, `bill_product_price`, `product_total`, `invoice_id`, `bill_date`) VALUES
(10, 2, 3, 50, 100, 5000, 7, '2019-07-19'),
(11, 2, 1, 80, 250, 20000, 7, '2019-07-19'),
(12, 2, 6, 50, 150, 7500, 7, '2019-07-19'),
(13, 2, 4, 78, 120, 9360, 7, '2019-07-19'),
(14, 14, 5, 45, 700, 31500, 8, '2019-07-19'),
(15, 14, 5, 23, 50, 1150, 8, '2019-07-19'),
(16, 14, 6, 90, 500, 45000, 8, '2019-07-19'),
(17, 4, 3, 45, 100, 4500, 9, '2019-07-19'),
(18, 4, 5, 90, 250, 22500, 9, '2019-07-19'),
(19, 4, 6, 70, 3000, 210000, 9, '2019-07-19'),
(20, 4, 3, 45, 100, 4500, 10, '2019-07-19'),
(21, 4, 5, 90, 250, 22500, 10, '2019-07-19'),
(22, 4, 6, 70, 3000, 210000, 10, '2019-07-19'),
(23, 13, 3, 35, 700, 24500, 11, '2019-07-19'),
(24, 13, 4, 50, 900, 45000, 11, '2019-07-19'),
(25, 13, 4, 45, 200, 9000, 12, '2019-07-19'),
(26, 13, 6, 80, 350, 28000, 12, '2019-07-19'),
(27, 1, 4, 45, 200, 9000, 13, '2019-07-19'),
(28, 1, 6, 78, 250, 19500, 13, '2019-07-19'),
(29, 1, 3, 23, 520, 11960, 13, '2019-07-19'),
(30, 15, 3, 45, 100, 4500, 14, '2019-07-19'),
(31, 15, 4, 20, 200, 4000, 14, '2019-07-19'),
(32, 15, 1, 78, 230, 17940, 14, '2019-07-19'),
(33, 1, 3, 399, 10, 3990, 15, '2019-07-19'),
(34, 1, 6, 20, 150, 3000, 15, '2019-07-19'),
(35, 1, 5, 78, 56, 4368, 15, '2019-07-19'),
(36, 1, 3, 399, 10, 3990, 16, '2019-07-19'),
(37, 1, 6, 20, 150, 3000, 16, '2019-07-19'),
(38, 1, 5, 78, 56, 4368, 16, '2019-07-19'),
(39, 1, 1, 33, 100, 3300, 17, '2019-07-19'),
(40, 1, 5, 89, 67, 5963, 17, '2019-07-19'),
(41, 1, 6, 45, 34, 1530, 17, '2019-07-19'),
(42, 1, 1, 33, 100, 3300, 18, '2019-07-19'),
(43, 1, 5, 89, 67, 5963, 18, '2019-07-19'),
(44, 1, 6, 45, 34, 1530, 18, '2019-07-19'),
(45, 1, 1, 33, 100, 3300, 19, '2019-07-19'),
(46, 1, 5, 89, 67, 5963, 19, '2019-07-19'),
(47, 1, 6, 45, 34, 1530, 19, '2019-07-19'),
(48, 1, 1, 33, 100, 3300, 20, '2019-07-19'),
(49, 1, 5, 89, 67, 5963, 20, '2019-07-19'),
(50, 1, 6, 45, 34, 1530, 20, '2019-07-19'),
(51, 14, 3, 43, 67, 2881, 21, '2019-07-19'),
(52, 14, 3, 43, 67, 2881, 22, '2019-07-19'),
(53, 14, 3, 43, 67, 2881, 23, '2019-07-19'),
(54, 3, 4, 250, 250, 62500, 24, '2019-07-19'),
(55, 16, 3, 25, 500, 12500, 25, '2019-07-20'),
(56, 16, 6, 89, 450, 40050, 25, '2019-07-20'),
(57, 16, 1, 23, 560, 12880, 25, '2019-07-20'),
(58, 1, 5, 78, 100, 7800, 26, '2019-07-20'),
(59, 1, 6, 12, 23, 276, 26, '2019-07-20'),
(60, 1, 5, 56, 100, 5600, 26, '2019-07-20'),
(61, 15, 3, 50, 700, 35000, 27, '2019-07-20'),
(62, 15, 6, 39, 560, 21840, 27, '2019-07-20'),
(63, 1, 1, 43, 3, 129, 28, '2019-07-21'),
(64, 1, 3, 40, 34, 1360, 28, '2019-07-21'),
(65, 1, 6, 45, 54, 2430, 28, '2019-07-21'),
(66, 1, 1, 200, 10, 2000, 29, '2019-07-21'),
(67, 1, 1, 500, 20, 10000, 29, '2019-07-21'),
(68, 1, 1, 100, 10, 1000, 29, '2019-07-21'),
(69, 14, 1, 34, 500, 17000, 30, '2019-07-21'),
(70, 14, 4, 780, 45, 35100, 30, '2019-07-21'),
(71, 14, 5, 25, 500, 12500, 30, '2019-07-21'),
(72, 16, 1, 50, 600, 30000, 31, '2019-07-21'),
(73, 16, 3, 30, 780, 23400, 31, '2019-07-21'),
(74, 16, 6, 150, 450, 67500, 31, '2019-07-21'),
(75, 13, 1, 45, 800, 36000, 32, '2019-07-21'),
(76, 13, 3, 30, 100, 3000, 33, '2019-07-21'),
(77, 13, 5, 50, 700, 35000, 33, '2019-07-21'),
(78, 13, 3, 30, 100, 3000, 34, '2019-07-21'),
(79, 13, 5, 50, 700, 35000, 34, '2019-07-21'),
(80, 3, 3, 20, 100, 2000, 35, '2019-07-21'),
(81, 3, 4, 36, 780, 28080, 35, '2019-07-21'),
(82, 3, 6, 45, 55, 2475, 35, '2019-07-21'),
(83, 3, 4, 23, 12, 276, 36, '2019-07-21'),
(84, 3, 3, 20, 45, 900, 37, '2019-07-21'),
(85, 3, 4, 78, 150, 11700, 37, '2019-07-21'),
(86, 3, 6, 780, 200, 156000, 37, '2019-07-21'),
(87, 3, 3, 20, 45, 900, 38, '2019-07-21'),
(88, 3, 4, 78, 150, 11700, 38, '2019-07-21'),
(89, 3, 6, 780, 200, 156000, 38, '2019-07-21'),
(90, 3, 5, 12, 452, 5424, 39, '2019-07-21'),
(91, 16, 6, 456, 78, 35568, 40, '2019-07-21'),
(92, 4, 1, 34, 23, 782, 41, '2019-07-21'),
(93, 14, 4, 23, 456, 10488, 42, '2019-07-21'),
(94, 2, 5, 23, 455, 10465, 43, '2019-07-21'),
(95, 2, 4, 345, 34, 11730, 44, '2019-07-21'),
(96, 4, 4, 12, 21, 252, 45, '2019-07-21'),
(97, 14, 1, 34, 500, 17000, 46, '2019-07-21'),
(98, 14, 4, 60, 560, 33600, 46, '2019-07-21'),
(99, 14, 5, 340, 400, 136000, 46, '2019-07-21'),
(100, 4, 5, 34, 560, 19040, 47, '2019-07-21'),
(101, 13, 4, 134, 23, 3082, 48, '2019-07-21'),
(102, 13, 5, 345, 34, 11730, 49, '2019-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_city` varchar(20) NOT NULL,
  `customer_phone_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`customer_id`, `customer_name`, `customer_city`, `customer_phone_no`) VALUES
(1, 'Prit Pambhar', 'Rajkot', '123456789'),
(2, 'Darshit Rathod', 'Dhoraji', '4567789123'),
(3, 'Mihir Shukla ', 'Jetpur', '789456213'),
(4, 'Mishil Dobariya ', 'Mumbai', '159263487'),
(13, 'Krunal Parsana', 'Mota mava', '7567163164'),
(14, 'Deep Kakkad', 'Kagdadi', '4561230578'),
(15, 'Madhav Maheta', 'Patan', '7894561230'),
(16, 'Abhay Kathrotiya', 'Kankot', '7894561230');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_grand_total` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `debit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_master`
--

INSERT INTO `invoice_master` (`invoice_id`, `customer_id`, `invoice_date`, `invoice_grand_total`, `credit`, `debit`) VALUES
(7, 2, '2019-07-19', 0, 0, 0),
(8, 14, '2019-07-19', 0, 0, 0),
(9, 4, '2019-07-19', 0, 0, 0),
(10, 4, '2019-07-19', 0, 0, 0),
(11, 13, '2019-07-19', 0, 0, 0),
(12, 13, '2019-07-19', 0, 0, 0),
(13, 1, '2019-07-19', 0, 0, 0),
(14, 15, '2019-07-19', 0, 0, 0),
(15, 1, '2019-07-19', 0, 0, 0),
(16, 1, '2019-07-19', 0, 0, 0),
(17, 1, '2019-07-19', 0, 0, 0),
(18, 1, '2019-07-19', 0, 0, 0),
(19, 1, '2019-07-19', 0, 0, 0),
(20, 1, '2019-07-19', 0, 0, 0),
(21, 14, '2019-07-19', 0, 0, 0),
(22, 14, '2019-07-19', 0, 0, 0),
(23, 14, '2019-07-19', 0, 0, 0),
(24, 3, '2019-07-19', 0, 0, 0),
(25, 16, '2019-07-20', 0, 0, 0),
(26, 1, '2019-07-20', 0, 0, 0),
(27, 15, '2019-07-20', 56840, 7800, 49040),
(28, 1, '2019-07-21', 3919, 0, 0),
(29, 1, '2019-07-21', 13000, 10000, 3000),
(30, 14, '2019-07-21', 64600, 4503, 60097),
(31, 16, '2019-07-21', 120900, 10000, 110900),
(32, 13, '2019-07-21', 36000, 0, 36000),
(33, 13, '2019-07-21', 38000, 100000, 93000),
(34, 13, '2019-07-21', 38000, 30000, 8000),
(35, 3, '2019-07-21', 32555, 25000, 7555),
(36, 3, '2019-07-21', 276, 56, 219),
(37, 3, '2019-07-21', 168600, 8000, 160600),
(38, 3, '2019-07-21', 168600, 8000, 160600),
(39, 3, '2019-07-21', 5424, 0, 5424),
(40, 16, '2019-07-21', 35568, 0, 35567),
(41, 4, '2019-07-21', 782, 0, 7822),
(42, 14, '2019-07-21', 10488, 7520, 2968),
(43, 2, '2019-07-21', 10465, 890, 9575),
(44, 2, '2019-07-21', 11730, 2345, 9385),
(45, 4, '2019-07-21', 252, 21, 231),
(46, 14, '2019-07-21', 186600, 86000, 100600),
(47, 4, '2019-07-21', 19040, 1789, 17251),
(48, 13, '2019-07-21', 3082, 2342, 740),
(49, 13, '2019-07-21', 11730, 43, 11686);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(35) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `Updated_on` date NOT NULL,
  `Created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`product_id`, `product_name`, `supplier_id`, `product_qty`, `Updated_on`, `Created_on`) VALUES
(1, 'A', 1, 10, '0000-00-00', '2019-07-19'),
(3, 'B', 1, 150, '0000-00-00', '2019-07-19'),
(4, 'C', 1, 200, '0000-00-00', '2019-07-19'),
(5, 'E', 1, 250, '0000-00-00', '2019-07-19'),
(6, 'D', 1, 300, '0000-00-00', '2019-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_master`
--

CREATE TABLE `supplier_master` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(35) NOT NULL,
  `supplier_mobile` varchar(15) NOT NULL,
  `supplier_city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_master`
--

INSERT INTO `supplier_master` (`supplier_id`, `supplier_name`, `supplier_mobile`, `supplier_city`) VALUES
(1, 'supply-a', '7567163164', 'rajkot');

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
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_master`
--
ALTER TABLE `supplier_master`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_bill_history`
--
ALTER TABLE `customer_bill_history`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_master`
--
ALTER TABLE `supplier_master`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `product_master_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_master` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
