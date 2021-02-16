-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 02:47 PM
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
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `images` longtext NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `builders`
--

CREATE TABLE `builders` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `partner_name` varchar(30) NOT NULL,
  `pan` int(20) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street_address` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` int(10) NOT NULL,
  `properties` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL,
  `user_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builders`
--

INSERT INTO `builders` (`id`, `name`, `partner_name`, `pan`, `telephone`, `email`, `password`, `avatar`, `city`, `street_address`, `state`, `zip`, `properties`, `create_at`, `modified_at`, `status`, `user_name`) VALUES
(2, 'Roshan', 'Deva', 123456, 2147483647, 'roshandeorukhkar@gmail.com', NULL, '', 'New York', 'Pune', 'Alaska', 411013, 0, '2021-02-05', '2021-02-05', '1', NULL),
(11, 'gaurav', 'abhi', 345354, 2147483647, 'gaurav@gmail.com', '4755', '', 'New York', 'satara', 'maharastra', 415002, 0, '2021-02-06', '2021-02-06', '1', 'gaurav');

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

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `builder_name`, `started_date`, `possession_date`, `address`, `rera_number`, `description`, `specification`, `images`, `videos`, `units`, `amenities`, `neighbourhoods`, `created_date`, `modified_date`, `status`) VALUES
(1, 'ytyt', '', '0000-00-00', '0000-00-00', '', 0, '', '', '', '', '', 0, 0, '0000-00-00', '0000-00-00', '1');

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
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `builders`
--
ALTER TABLE `builders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
