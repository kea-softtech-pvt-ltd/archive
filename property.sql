-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 01:59 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('1','2') DEFAULT NULL COMMENT '1-admin,2-subadmin',
  `is_active` enum('0','1') NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `full_name`, `mobile`, `password`, `role`, `is_active`, `created_date`) VALUES
(1, 'gaurav pawar', '1234567890', '098f6bcd4621d373cade4e832627b4f6', '1', '1', '2019-05-11 04:00:00'),
(2, 'Yogesh Korade', '1234567891', '098f6bcd4621d373cade4e832627b4f6', '2', '1', '2019-05-11 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `font_awaesome` varchar(100) DEFAULT NULL,
  `images` longtext NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `font_awaesome`, `images`, `created_at`, `modified_at`, `status`) VALUES
(2, 'pune university', 'fa fa-university', '', '2021-02-20', '2021-02-20', '1'),
(4, 'home', 'fa fa-home', '', '2021-02-23', '2021-02-23', '1');

-- --------------------------------------------------------

--
-- Table structure for table `builders`
--

CREATE TABLE `builders` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `register_number` int(20) NOT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(1000) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street_address` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` int(10) NOT NULL,
  `properties` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '1-active,0-delete',
  `user_name` varchar(40) DEFAULT NULL,
  `m_con` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT '3' COMMENT '3 - builder login'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builders`
--

INSERT INTO `builders` (`id`, `name`, `register_number`, `telephone`, `email`, `password`, `avatar`, `city`, `street_address`, `state`, `zip`, `properties`, `create_at`, `modified_at`, `status`, `user_name`, `m_con`, `role`) VALUES
(2, 'Roshan ', 123456, '2147483647', 'roshandeorukhkar@gmail.com', '5555', '1613792156_images (1).png', '1', 'Pune', '1', 411013, 0, '2021-02-18', '2021-02-25', '1', 'Roshan ', '', 3),
(27, 'Gaurav ', 345354, '2147483647', 'gaurav@gmail.com', '5570', '1613792171_download (2).png', '1', 'satara', '1', 415002, 0, '2021-02-18', '2021-02-25', '1', 'Gaurav ', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(12) NOT NULL,
  `s_id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `s_id`, `name`, `status`, `created_date`) VALUES
(1, 1, 'Pune', '1', '2021-02-19 06:29:02'),
(2, 1, 'Karad', '1', '2021-02-19 06:29:12'),
(3, 1, 'Satara', '1', '2021-02-19 06:29:22'),
(4, 2, 'panji', '0', '2021-02-19 06:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `c_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`c_id`, `name`, `status`, `created_date`) VALUES
(1, 'India', '1', '2021-02-19 08:45:37'),
(2, 'USA', '1', '2021-02-19 08:45:45'),
(3, 'Japan', '0', '2021-02-19 08:46:29'),
(4, 'Chaina', '1', '2021-02-19 08:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `neighbourhoods`
--

CREATE TABLE `neighbourhoods` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `geolocations` varchar(30) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `builder_name` varchar(40) NOT NULL,
  `started_date` date NOT NULL,
  `possession_date` date NOT NULL,
  `address` longtext NOT NULL,
  `rera_number` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `specification` longtext NOT NULL,
  `images` longtext NOT NULL,
  `videos` longtext NOT NULL,
  `units` longtext NOT NULL,
  `amenities` int(11) NOT NULL,
  `neighbourhoods` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `s_id` int(12) NOT NULL,
  `c_id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`s_id`, `c_id`, `name`, `status`, `created_date`) VALUES
(1, 1, 'Maharashtra', '1', '2021-02-19 06:38:42'),
(2, 1, 'Goa', '1', '2021-02-19 06:10:19'),
(4, 2, 'Abcc', '0', '2021-02-19 06:10:53'),
(6, 1, 'Beharr', '1', '2021-02-19 06:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `size` float NOT NULL,
  `price` float NOT NULL,
  `carpet_area` float NOT NULL,
  `built_area` float NOT NULL,
  `2d_plan_images` longtext NOT NULL,
  `3d_plan_images` longtext NOT NULL,
  `images` longtext NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `type`, `title`, `size`, `price`, `carpet_area`, `built_area`, `2d_plan_images`, `3d_plan_images`, `images`, `created_at`, `modified_at`, `status`) VALUES
(1, '1bhk', 'Flat', 670, 23, 430, 290, '', '', '1613366982_1bhk.jpg,1613366982_1bhk1.jpg,1613366982_1bhk2.jpg', '2021-02-15', '2021-02-15', '1'),
(2, '3bhk', 'villa', 12000, 90, 4367, 9090, '', '', '', '2021-02-17', '2021-02-17', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `builders`
--
ALTER TABLE `builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `builders`
--
ALTER TABLE `builders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `s_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

