-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 07:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(11, 'Rahul Dayal', 'sb-regsz15244207@business.example.com', '$2y$10$8bfiSj9TbGYYl5zbi1UCfuDdX5wDiZotKb/9q8kT1MXAkNdfk0wL2', '1'),
(12, 'Rahul', 'rahul.dayal16@gmail.com', '$2y$10$7UiiS/SgD4A1Sw60BEm9gOiNj9kr3FSdIdPIppb9glv6l91vkChdy', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(6, 'OnePlus+'),
(7, 'Exclusive'),
(8, 'Boat Headphones'),
(9, 'Woodlands'),
(10, 'Toys\r\n'),
(11, 'Homecook');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(26, 100, '::1', 7, 1),
(31, 2, '::1', 7, 1),
(32, 1, '::1', 7, 1),
(33, 4, '::1', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Electronics'),
(3, 'Home & Kitchen'),
(6, 'Clothings'),
(12, 'Mobiles'),
(14, 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(23, 9, 1, 1, '0LH74244CD5367512', 'Completed'),
(24, 9, 4, 1, '0LH74244CD5367512', 'Completed'),
(25, 9, 1, 1, '8XF15471X8249604H', 'Completed'),
(26, 9, 107, 1, '8XF15471X8249604H', 'Completed'),
(27, 9, 1, 1, '55682011J9218300E', 'Completed'),
(28, 9, 10, 1, '14397368DF258330J', 'Completed'),
(29, 9, 4, 2, '9KT07907W07311053', 'Completed'),
(30, 9, 2, 1, '9KT07907W07311053', 'Completed'),
(31, 9, 4, 15, '76J54590DW000352V', 'Completed'),
(32, 9, 103, 12, '9S817231WD1897904', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_image`, `product_keywords`) VALUES
(1, 12, 2, 'Samsung Galaxy Z Fold 2', 1998, 5, '1616500092_sm-zfold.jpg', 'samsung, mobile, galaxy fold'),
(2, 12, 3, 'Iphone 12 Pro Max', 997, 7, '1616499931_iph12pm.jpg', 'apple, iphone'),
(4, 12, 2, 'Samsung Galaxy S22 Ultra', 949, 10, '1616492395_Samsung-Galaxy-S22-Ultra-1608287647-0-0.jpg', 'samsung, s22, s22 ultra'),
(5, 12, 6, 'OnePlus 8T', 749, 13, '1616500410_OnePlus-8T-5G-Lunar-Silver-8GB-RAM-128GB-Storage-image-4.jpg', 'one plus, oneplus8'),
(10, 2, 8, 'Boat Wireless Headphones', 24, 6, '1616502854_hdphn.jpg', 'headphone, aduro'),
(11, 6, 9, 'Woodlands freestyle shoes size L', 150, 3, '1616503181_Dr. Martens.jpg', 'woodlands, shoes'),
(19, 6, 7, 'Women hoodie S', 40, 4, '1616504885_menshoodie.jpg', 'hood, hoodie'),
(20, 14, 10, 'Winning Fingers Flashing Cube', 34, 19, '1616506942_cube-hottoys.jpg', 'rubick, cube, toys, toys'),
(22, 2, 1, 'HP Pavilion 17 Laptop', 599, 21, 'hp_laptop.jpg', 'hp, laptop, pavillion'),
(102, 2, 2, 'Samsung Galaxy Chromebook 2', 550, 22, 'samsung_laptop.jpg', 'samsung, laptop, chromebook'),
(103, 14, 10, 'ALLCELE Robot Toys, Rechargeable RC Robots', 31, 4, 'walle.jpg', 'toys, walle'),
(107, 3, 11, '24\" Inch Glass Stove', 200, 10, 'gas_stove.jpg', 'gas, home, kitchen'),
(108, 6, 7, 'Women blue pants L', 30, 10, 'blue_pants.jpg', 'pants,women,clothes'),
(109, 6, 7, 'Super comfy Man\'s Pant L', 60, 20, 'man_pants.jpg', 'man,pant,clothes');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(9, 'Satyam', 'Kumar', 'sb-dkqzd15217860@personal.example.com', 'fc401914ed7aa8a6438cd3f314b0dbb3', '9773502047', 'Delhi', 'Delhi'),
(10, 'Rahul', 'dayal', 'rahul.dayal16@gmail.com', 'fc401914ed7aa8a6438cd3f314b0dbb3', '8448019738', 'Delhi', 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
