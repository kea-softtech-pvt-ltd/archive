-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 04:41 PM
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
  `p_id` int(12) NOT NULL COMMENT 'property id ',
  `name` text NOT NULL,
  `font_awaesome` text,
  `images` longtext NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `p_id`, `name`, `font_awaesome`, `images`, `created_at`, `modified_at`, `status`) VALUES
(1, 0, 'car parking', 'fa fa-car', '', '2021-03-22', '2021-03-22', '1'),
(2, 0, 'Airploat', 'fa fa-plean', '', '2021-03-22', '2021-03-22', '1'),
(3, 0, 'home', 'fa fa-home', '', '2021-03-22', '2021-03-22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `image`, `status`, `created_date`, `modified_date`) VALUES
(1, 'Builder', '1615019077_bui.jpg,1615019077_bui1.jpg,1615019077_bui2.jpg,1615019077_bui4.jpg,1615019077_bui5.jpg,1615019077_bui7.jpg,1615019077_images.jpg', '1', '2021-03-06 11:43:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `builders`
--

CREATE TABLE `builders` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `register_number` varchar(100) NOT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `street_address` text,
  `landmark` text,
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

INSERT INTO `builders` (`id`, `name`, `register_number`, `telephone`, `email`, `password`, `avatar`, `city`, `street_address`, `landmark`, `state`, `zip`, `properties`, `create_at`, `modified_at`, `status`, `user_name`, `m_con`, `role`) VALUES
(1, 'Roshan ', 'E1234568888', '2147483647', 'roshandeorukhkar@gmail.com', '5555', '1613792156_images (1).png', '1', 'Ganesh Colony, Shiv Nagar, Hadapsar, Pune.', 'GK mobile shop.', '1', 411013, 0, '2021-02-18', '2021-02-26', '1', 'Roshan ', '', 3),
(2, 'Gaurav v', 'E98234238933', '2147483647', 'gaurav@gmail.com', '5570', '1613792171_download (2).png', '1', 'a/p: nahre mansi viswas nager ', 'RKS hotel ', '1', 415002, 0, '2021-02-18', '2021-03-08', '1', 'Gaurav v', '', 3),
(9, 'Laxman ', 'E9823423888', '9876555555', 'laxman@gmail.com', '7806', '1616859463_bg1.jpg', '1', 'mansi hall near abc collage pune', 'sadf', '1', 686878, 0, '2021-03-27', '2021-03-27', '1', 'Laxman ', '', 3);

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
(3, 6, 'Satara', '1', '2021-03-04 06:50:45'),
(4, 1, 'Nashik', '1', '2021-03-05 05:35:50');

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
(3, 'Chaina', '1', '2021-02-27 05:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `f_id` int(11) NOT NULL,
  `p_id` int(12) NOT NULL,
  `wing` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `specality` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`f_id`, `p_id`, `wing`, `floor`, `flat`, `specality`, `status`, `created_date`) VALUES
(1, 1, 'A', '1', '6', 'a wing big hall that floor', '1', '2021-03-27 15:40:38'),
(2, 1, 'B', '2', '6', 'b wing secand floor big hall and rooms.', '1', '2021-03-27 15:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `neighbourhoods`
--

CREATE TABLE `neighbourhoods` (
  `id` int(11) NOT NULL,
  `p_id` int(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `geolocations` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `neighbourhoods`
--

INSERT INTO `neighbourhoods` (`id`, `p_id`, `name`, `geolocations`, `status`, `created_date`) VALUES
(1, 0, 'Bus Stop', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-03-22 12:02:41'),
(2, 0, 'Collage', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-03-22 10:43:29'),
(3, 0, 'Rks Hotel', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-03-22 10:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `properties_address`
--

CREATE TABLE `properties_address` (
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties_address`
--

INSERT INTO `properties_address` (`a_id`, `p_id`, `address`, `description`) VALUES
(1, 1, 'mansi viswas nager pune', 'pune');

-- --------------------------------------------------------

--
-- Table structure for table `properties_other`
--

CREATE TABLE `properties_other` (
  `o_id` int(12) NOT NULL,
  `p_id` int(12) NOT NULL,
  `amenities` text NOT NULL,
  `image` text NOT NULL,
  `neighbourhoods` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties_other`
--

INSERT INTO `properties_other` (`o_id`, `p_id`, `amenities`, `image`, `neighbourhoods`, `status`, `created_date`) VALUES
(1, 1, 'car parking,Airploat', '1616859684_bg1.jpg,1616859684_WIN_20171228_20_19_26_Pro.jpg', 'Bus Stop,Collage', '1', '2021-03-27 15:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `properties_type`
--

CREATE TABLE `properties_type` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties_type`
--

INSERT INTO `properties_type` (`id`, `name`, `status`, `created_date`) VALUES
(1, 'Flat', '1', '2021-03-19 10:16:29'),
(2, 'villa', '1', '2021-03-23 10:45:29'),
(3, 'Shop', '1', '2021-03-19 10:44:04');

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
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `builder_name`, `started_date`, `possession_date`, `address`, `rera_number`, `description`, `specification`, `images`, `videos`, `units`, `amenities`, `neighbourhoods`, `created_date`, `modified_date`, `status`) VALUES
(1, 'magarpatha city', 'Roshan ', '2021-03-27', '2021-03-27', '', 1234567, '', '', '', '', '', 0, 0, '0000-00-00', '0000-00-00', '1');

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
(6, 1, 'Behar', '1', '2021-03-05 05:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `u_id` int(10) NOT NULL,
  `p_id` int(12) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `wing` varchar(100) NOT NULL,
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

INSERT INTO `units` (`u_id`, `p_id`, `floor`, `wing`, `type`, `title`, `size`, `price`, `carpet_area`, `built_area`, `2d_plan_images`, `3d_plan_images`, `images`, `created_at`, `modified_at`, `status`) VALUES
(1, 1, '1', 'A', '1bhk', 'Flat', 690, 33, 989, 444, '', '', '', '0000-00-00', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `unit_type`
--

CREATE TABLE `unit_type` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_type`
--

INSERT INTO `unit_type` (`id`, `name`, `status`, `created_date`) VALUES
(1, '1bhk', '1', '2021-03-22 08:13:48'),
(2, '2bhk', '1', '2021-03-22 08:13:48');

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

-- --------------------------------------------------------

--
-- Table structure for table `wing`
--

CREATE TABLE `wing` (
  `w_id` int(11) NOT NULL,
  `p_id` int(12) NOT NULL,
  `name` text NOT NULL,
  `totalFloor` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wing`
--

INSERT INTO `wing` (`w_id`, `p_id`, `name`, `totalFloor`, `status`, `created_date`) VALUES
(1, 1, 'A', '8', '1', '2021-03-27 15:39:40'),
(2, 1, 'B', '8', '1', '2021-03-27 15:39:41');

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
-- Indexes for table `banner`
--
ALTER TABLE `banner`
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
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties_address`
--
ALTER TABLE `properties_address`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `properties_other`
--
ALTER TABLE `properties_other`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `properties_type`
--
ALTER TABLE `properties_type`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `unit_type`
--
ALTER TABLE `unit_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wing`
--
ALTER TABLE `wing`
  ADD PRIMARY KEY (`w_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `builders`
--
ALTER TABLE `builders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `properties_address`
--
ALTER TABLE `properties_address`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `properties_other`
--
ALTER TABLE `properties_other`
  MODIFY `o_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `properties_type`
--
ALTER TABLE `properties_type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `s_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unit_type`
--
ALTER TABLE `unit_type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wing`
--
ALTER TABLE `wing`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
