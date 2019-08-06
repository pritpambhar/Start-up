-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 04:02 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_account_esta`
--
CREATE DATABASE IF NOT EXISTS `new_account_esta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new_account_esta`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill_history`
--

DROP TABLE IF EXISTS `customer_bill_history`;
CREATE TABLE `customer_bill_history` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bill_product_qty` int(11) NOT NULL,
  `bill_product_price` float NOT NULL,
  `product_total` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `bill_date` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `customer_bill_history`:
--   `id`
--       `invoice_master` -> `id`
--   `customer_id`
--       `customer_master` -> `customer_id`
--   `product_id`
--       `product_master` -> `product_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

DROP TABLE IF EXISTS `customer_master`;
CREATE TABLE `customer_master` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_city` varchar(20) NOT NULL,
  `customer_phone_no` varchar(15) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `customer_master`:
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

DROP TABLE IF EXISTS `invoice_master`;
CREATE TABLE `invoice_master` (
  `id` int(11) NOT NULL,
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
-- RELATIONS FOR TABLE `invoice_master`:
--   `customer_id`
--       `customer_master` -> `customer_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
CREATE TABLE `product_master` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(35) NOT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `product_master`:
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction_master`
--

DROP TABLE IF EXISTS `transaction_master`;
CREATE TABLE `transaction_master` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `credit` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `transaction_master`:
--   `id`
--       `invoice_master` -> `id`
--   `customer_id`
--       `customer_master` -> `customer_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `user`:
--

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
  ADD KEY `invoice_id` (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`id`),
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
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `id` (`id`);

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
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_master`
--
ALTER TABLE `transaction_master`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_bill_history`
--
ALTER TABLE `customer_bill_history`
  ADD CONSTRAINT `customer_bill_history_ibfk_1` FOREIGN KEY (`id`) REFERENCES `invoice_master` (`id`),
  ADD CONSTRAINT `customer_bill_history_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`),
  ADD CONSTRAINT `customer_bill_history_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`product_id`);

--
-- Constraints for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD CONSTRAINT `invoice_master_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`);

--
-- Constraints for table `transaction_master`
--
ALTER TABLE `transaction_master`
  ADD CONSTRAINT `transaction_master_ibfk_1` FOREIGN KEY (`id`) REFERENCES `invoice_master` (`id`),
  ADD CONSTRAINT `transaction_master_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
