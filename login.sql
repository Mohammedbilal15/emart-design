-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 10:01 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `ord_type` varchar(20) NOT NULL,
  `ord_id` int(20) NOT NULL,
  `ordname` varchar(20) NOT NULL,
  `ord_dat` varchar(200) NOT NULL,
  `quan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`ord_type`, `ord_id`, `ordname`, `ord_dat`, `quan`) VALUES
('paid shipping', 2, 'manju', '2019-11-17', 123),
('paid shipping', 4, 'manju', '2019-11-17', 12),
('paid shipping', 22, 'manju', '2019-11-17', 12),
('free shipping', 56, 'bilal', '2019-11-18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_type` varchar(20) NOT NULL,
  `pro_id` int(20) NOT NULL,
  `proname` varchar(20) NOT NULL,
  `avail` varchar(20) NOT NULL,
  `quantity` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_type`, `pro_id`, `proname`, `avail`, `quantity`) VALUES
('fashion', 1, 'tshirt', 'yes', 100),
('fashion', 2, 'tshirt', 'yes', 100),
('electronics', 3, 'mobile', 'yes', 200),
('fashion', 4, 'jacket', 'yes', 100),
('fashion', 6, 'jacket', 'yes', 100),
('fashion', 10, 'tshirt', 'yes', 200);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_text` text NOT NULL,
  `sales` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `username`, `password`, `gender`, `email`, `phone`, `image`, `image_text`, `sales`) VALUES
(0, 'h', '59', 'm', 'maaz@gmail.com', 6655, '', '', 0),
(1, 'user', 'user', 'm', 'manju@gmail.com', 2147483647, '', '', 0),
(2, 'admin', 'admin', 'm', 'mhdbilal015@gmail.com', 2147483647, '', '', 0),
(3, 'manju', 'manju', 'm', 'manju@gmail.com', 7654667, '', '', 0),
(5, 'misba', 'ad', 'f', 'miaba@gmail.com', 7838939, '', '', 0),
(7, 'admi1n', 'admin', 'm', 'mfdj@gmail.com', 2333331, '', '', 0),
(15, 'admin2', 'admin45', 'm', 'mhdbilal015@gmail.com', 2147483647, '', '', 0),
(56, 'g', '56', 'm', 'jj@gmail.com', 5566, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'user', 'user', 'user'),
(2, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
