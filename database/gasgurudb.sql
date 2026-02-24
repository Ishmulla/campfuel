-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 07:44 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campfuel`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location_status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `lat`, `lng`, `description`, `location_status`) VALUES
(7, 2, 0.293719, 35.296265, 'Philma room 1', 1),
(8, 4, 0.293712, 35.296265, 'Beside Philma Villas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `date_registered` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `date_registered`) VALUES
(2, 'YUSUF', 'KIPROP', 'yusufkiprop97@gmail.com', '0724206400', '$2y$10$wPBmuq5p.MjhSMqEhAjVP.og1ALPfSE.f3NuTGjrzSsC4lacm1rfC', '1571640924'),
(3, 'swaleh', 'zakaria', 'swaleh@gmail.com', '0701002132', '$2y$10$A8wdy2IKSLLzYphBYjtc7.yfHTW9sGLwP6nsN5oUU8DULv5gJN1cy', '1571904296'),
(4, 'Example', 'Example', 'example@example.com', '12345', '$2y$10$AXKZYqui95kgOHhbXMQtUu.wZmzNIzYS9Calgf0AgqIFEBuKdnJ3u', '1573535750');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `name`, `merchant_id`, `description`, `location`) VALUES
(7, 'Sava', 4, 'Reliable and efficient', 'Antalya'),
(8, 'Example', 6, 'best of the best', 'Antalya'),
(9, 'Maina Enterprises', 7, 'Reliable and efficient', 'Stage');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory`
--

CREATE TABLE `tbl_inventory` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `gas_brand` varchar(100) NOT NULL,
  `cylinder_size` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inventory`
--

INSERT INTO `tbl_inventory` (`id`, `merchant_id`, `gas_brand`, `cylinder_size`, `price`, `quantity`) VALUES
(1, 4, 'Total', '6.00', '900.00', 15),
(2, 4, 'K-Gas', '6.00', '850.00', 8),
(3, 6, 'K-Gas', '6.00', '850.00', 6),
(4, 6, 'Total', '12.00', '900.00', 2),
(7, 7, 'K-gas', '6.00', '700.00', 6),
(8, 7, 'Total', '6.00', '900.00', 7),
(9, 7, 'K-gas', '12.00', '1800.00', 9),
(10, 6, 'Hashi', '6.00', '700.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merchants`
--

CREATE TABLE `tbl_merchants` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registered` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merchants`
--

INSERT INTO `tbl_merchants` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `date_registered`) VALUES
(4, 'YUSUF', 'KIPROP', 'yusufkiprop97@gmail.com', '43567', '$2y$10$5dQf/VHJqREb.igEghEVkeE.ICxm1lLB2ywfE0OltV5ATuG9ASFQC', '1571727384'),
(6, 'Example', 'Example', 'example@example.com', '123456', '$2y$10$m1wLVQiJrwa3Wm.RCiQs3.C.0Ut1/c5GNarpytux5XuuBQOxGF.76', '1574491661'),
(7, 'Maina', 'Maina', 'maina@maina.com', '0722222', '$2y$10$5i9qsRohLngGwQRtxwwsfuNSMaiv/3wgmxuRzZp3zLNaZfz5P2Fu2', '1574580279');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `location_id` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `date_posted` varchar(30) NOT NULL,
  `date_completed` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `client_id`, `merchant_id`, `stock_id`, `quantity`, `total_price`, `location_id`, `order_status`, `date_posted`, `date_completed`) VALUES
(21, 2, 6, 10, 1, '700.00', 7, 4, '1576213786', ''),
(22, 2, 7, 9, 3, '5400.00', 7, 1, '1576214090', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merchants`
--
ALTER TABLE `tbl_merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_merchants`
--
ALTER TABLE `tbl_merchants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
