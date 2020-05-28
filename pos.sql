-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 07:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_no` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_details` varchar(100) DEFAULT NULL,
  `original_rate` float DEFAULT NULL,
  `product_tax` int(4) DEFAULT NULL,
  `item_interest` int(4) DEFAULT NULL,
  `item_rate` int(40) DEFAULT NULL,
  `item_count` float DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_no`, `item_name`, `item_details`, `original_rate`, `product_tax`, `item_interest`, `item_rate`, `item_count`, `date`) VALUES
(1, 'pen', '& g:/Project_python/venv/Scripts/python.exe g:/Project_python/py_file/pos/update.py', 3, 2, 50, 5, 1057, '2020-04-05 06:55:20'),
(2, 'pencil', 'black write', 2.9, 3, 30, 4, 1477, '2020-04-05 07:42:10'),
(3, 'scale', 'draw a line', 3.2, 18, 30, 5, 986, '2020-04-05 06:48:06'),
(4, 'earser', 'clean a draw', 1.2, 18, 30, 2, 492, '2020-04-05 06:14:00'),
(5, 'sharpner', 'to sharp pencil', 5, 18, 20, 7, 10, '2020-04-05 06:40:12'),
(6, 'box', 'box in container', 250, 18, 16, 335, 52, '2020-05-28 05:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `jk202044`
--

CREATE TABLE `jk202044` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_mobileno` varchar(11) NOT NULL,
  `customer_item_count` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk202044`
--

INSERT INTO `jk202044` (`id`, `bill_no`, `customer_name`, `customer_mobileno`, `customer_item_count`, `total`, `date`) VALUES
(1, 'jk2020441', 'jeyakartheesan', '8012553355', 4, 85, '2020-04-04 17:14:57'),
(2, 'jk2020442', 'balaji', '9489552565', 4, 170, '2020-04-04 17:15:59'),
(3, 'jk2020443', 'muthuraman', '9597962116', 4, 255, '2020-04-04 17:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `jk202045`
--

CREATE TABLE `jk202045` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_mobileno` varchar(11) NOT NULL,
  `customer_item_count` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk202045`
--

INSERT INTO `jk202045` (`id`, `bill_no`, `customer_name`, `customer_mobileno`, `customer_item_count`, `total`, `date`) VALUES
(1, 'jk2020451', 'dgfh', '151', 1, 20, '2020-04-05 06:27:46'),
(2, 'jk2020452', 'jhgfg', '265', 1, 16, '2020-04-05 06:28:28'),
(3, 'jk2020453', 'mugesh', '9597962116', 2, 22, '2020-04-05 06:41:49'),
(4, 'jk2020454', 'muthu', '1234567890', 4, 95, '2020-04-05 06:43:24'),
(5, 'jk2020455', 'ghfj', '5653', 1, 20, '2020-04-05 06:47:40'),
(6, 'jk2020456', 'gjkkj', '265', 3, 105, '2020-04-05 06:48:07'),
(7, 'jk2020457', 'gfn', '453', 10, 0, '2020-04-05 06:49:16'),
(8, 'jk2020458', 'mnhg', '654', 1, 30, '2020-04-05 06:50:10'),
(9, 'jk2020459', 'dfhgfjhg', '2654', 1, 5, '2020-04-05 06:55:21'),
(10, 'jk20204510', 'gfhg', '5648', 1, 8, '2020-04-05 07:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `jk2020451`
--

CREATE TABLE `jk2020451` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020451`
--

INSERT INTO `jk2020451` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020451', 1, 'pen', 5, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020452`
--

CREATE TABLE `jk2020452` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020452`
--

INSERT INTO `jk2020452` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020452', 2, 'pencil', 4, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020453`
--

CREATE TABLE `jk2020453` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020453`
--

INSERT INTO `jk2020453` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020453', 3, 'scale', 5, 2, 10),
(2, 'jk2020453', 2, 'pencil', 4, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020454`
--

CREATE TABLE `jk2020454` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020454`
--

INSERT INTO `jk2020454` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020454', 1, 'pen', 5, 5, 25),
(2, 'jk2020454', 2, 'pencil', 4, 5, 20),
(3, 'jk2020454', 1, 'pen', 5, 10, 50),
(4, 'jk2020454', 4, 'earser', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020455`
--

CREATE TABLE `jk2020455` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020455`
--

INSERT INTO `jk2020455` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020455', 1, 'pen', 5, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020456`
--

CREATE TABLE `jk2020456` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020456`
--

INSERT INTO `jk2020456` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020456', 1, 'pen', 5, 8, 40),
(2, 'jk2020456', 2, 'pencil', 4, 10, 40),
(3, 'jk2020456', 3, 'scale', 5, 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020458`
--

CREATE TABLE `jk2020458` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020458`
--

INSERT INTO `jk2020458` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020458', 1, 'pen', 5, 6, 30);

-- --------------------------------------------------------

--
-- Table structure for table `jk2020459`
--

CREATE TABLE `jk2020459` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk2020459`
--

INSERT INTO `jk2020459` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk2020459', 1, 'pen', 5, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jk20204510`
--

CREATE TABLE `jk20204510` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_no` varchar(30) NOT NULL,
  `product_id` int(5) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_count` float DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk20204510`
--

INSERT INTO `jk20204510` (`id`, `bill_no`, `product_id`, `product_name`, `product_price`, `product_count`, `total`) VALUES
(1, 'jk20204510', 2, 'pencil', 4, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `jk202044`
--
ALTER TABLE `jk202044`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk202045`
--
ALTER TABLE `jk202045`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020451`
--
ALTER TABLE `jk2020451`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020452`
--
ALTER TABLE `jk2020452`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020453`
--
ALTER TABLE `jk2020453`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020454`
--
ALTER TABLE `jk2020454`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020455`
--
ALTER TABLE `jk2020455`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020456`
--
ALTER TABLE `jk2020456`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020458`
--
ALTER TABLE `jk2020458`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk2020459`
--
ALTER TABLE `jk2020459`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk20204510`
--
ALTER TABLE `jk20204510`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jk202044`
--
ALTER TABLE `jk202044`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jk202045`
--
ALTER TABLE `jk202045`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jk2020451`
--
ALTER TABLE `jk2020451`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jk2020452`
--
ALTER TABLE `jk2020452`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jk2020453`
--
ALTER TABLE `jk2020453`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jk2020454`
--
ALTER TABLE `jk2020454`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jk2020455`
--
ALTER TABLE `jk2020455`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jk2020456`
--
ALTER TABLE `jk2020456`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jk2020458`
--
ALTER TABLE `jk2020458`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jk2020459`
--
ALTER TABLE `jk2020459`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jk20204510`
--
ALTER TABLE `jk20204510`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
