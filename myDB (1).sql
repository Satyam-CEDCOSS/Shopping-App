-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Apr 07, 2023 at 02:00 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `ID` int NOT NULL,
  `Names` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passwords` varchar(50) NOT NULL,
  `Status` enum('approved','rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`ID`, `Names`, `Email`, `Passwords`, `Status`) VALUES
(1, 'Satyam', 'mail@mail.com', '123', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int NOT NULL,
  `product_id` int NOT NULL,
  `order_quantity` int NOT NULL,
  `order status` enum('Placed','In-process','Delivered','Denial') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `company`, `type`, `quantity`, `price`, `image`) VALUES
(1, '4K Action Camera', 'GoPro', 'Electronics', 100, 790, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/1.webp'),
(2, 'Canon camera', 'Canon', 'Electronics', 100, 320, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/2.webp'),
(3, 'Xiaomi Redmi 8', 'Redmi', 'Electronics', 100, 120, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/3.webp'),
(4, 'Apple iPhone 12 Pro', 'Apple', 'Electronics', 100, 1200, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/4.webp'),
(5, 'Apple Watch Series 1', 'Apple', 'Electronics', 100, 790, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/5.webp'),
(6, 'Digital Watch', 'FireBolt', 'Electronics', 100, 120, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/6.webp'),
(7, 'Gaming Headset', 'Cosmic Byte', 'Electronics', 100, 99, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/7.webp'),
(8, 'Blue Bag', 'Levis', 'Accessories', 100, 120, 'https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/8.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
