-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 07:21 PM
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
-- Table structure for table `add_group`
--

CREATE TABLE `add_group` (
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL COMMENT 'user id ',
  `reciver` int(11) NOT NULL COMMENT 'user id  ',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_group`
--

INSERT INTO `add_group` (`a_id`, `p_id`, `sender`, `reciver`, `status`, `created_date`) VALUES
(1, 26, 3, 1, '1', '2021-07-19 12:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('1','2') DEFAULT NULL COMMENT '1-admin,2-subadmin',
  `is_active` enum('0','1') NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `full_name`, `mobile`, `email`, `password`, `role`, `is_active`, `created_date`) VALUES
(1, 'gaurav pawar', '1234567890', 'gsp@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '1', '1', '2019-05-11 04:00:00'),
(2, 'Yogesh Korade', '1234567891', '', '098f6bcd4621d373cade4e832627b4f6', '2', '1', '2019-05-11 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL,
  `office_phone` int(15) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` longtext NOT NULL,
  `fax` text NOT NULL,
  `description` text NOT NULL,
  `img` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `office_phone`, `phone`, `email`, `fax`, `description`, `img`, `status`, `created_date`) VALUES
(1, 'joni shing', 87679, 989898989, '', '32432-234-23', 'abcde dsafsdaf', '', '0', '2021-05-09 17:46:43'),
(2, 'sham sharma more', 55555, 1222222222, '', '45345-345-55', 'top ten agent in city in pune', '1620581502_IMG_20200809_171914636.jpg', '0', '2021-05-09 17:50:47'),
(3, 'Gaurav pawar', 2147483647, 2147483647, 'gsp@gmail.com', '7777-333-55', 'top agent in satara city', '1620643025_img.jpg', '1', '2021-05-10 10:37:05'),
(4, 'jon deo', 23424234, 2147483647, 'jon@gamil.com', '6446-999-999', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '1620641634_images.jpg', '1', '2021-05-10 10:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
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

INSERT INTO `amenities` (`id`, `name`, `font_awaesome`, `images`, `created_at`, `modified_at`, `status`) VALUES
(1, 'home', 'fa fa-home', '', '2021-04-04', '2021-04-04', '1'),
(2, 'car parking', 'fa fa-car', '', '2021-04-04', '2021-04-04', '1'),
(3, 'gym', 'fa-fa fa-gym', '', '2021-04-04', '2021-04-04', '1'),
(4, 'abc', 'fa fa-university', '', '2021-04-04', '2021-04-04', '1'),
(5, 'penmm', 'fa fa-file', '', '2021-06-07', '2021-06-07', '0');

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
  `user_name` text,
  `m_con` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT '3' COMMENT '3 - builder login'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builders`
--

INSERT INTO `builders` (`id`, `name`, `register_number`, `telephone`, `email`, `password`, `avatar`, `city`, `street_address`, `landmark`, `state`, `zip`, `properties`, `create_at`, `modified_at`, `status`, `user_name`, `m_con`, `role`) VALUES
(1, 'Roshan ', 'E123456777777', '2147483647', 'roshandeorukhkar@gmail.com', '5555', '1613792156_images (1).png', '1', 'Ganesh Colony, Shiv Nagar, Hadapsar, Pune.', 'Rks hotle', '1', 411013, 0, '2021-02-18', '2021-03-30', '1', 'Roshan ', '', 3),
(2, 'Gaurav ', 'E98234238933', '2147483647', 'gaurav@gmail.com', '5570', '1613792171_download (2).png', '1', 'a/p: nahre mansi viswas nager ', 'RKS hotel ', '1', 415002, 0, '2021-02-18', '2021-06-28', '1', 'Gaurav ', '', 3),
(3, 'Laxman', '87987897', '8789789789', 'laxman@gmail.com', '2222', '1617392129_bg1.jpg', '2', 'hghj', 'dgfhd', '1', 8789798, 0, '2021-04-03', '2021-06-28', '1', 'Laxman', '', 3),
(4, 'jon', 'E98234238888', '6666666668', 'joni@gmail.com', '9259', '1617612023_WIN_20171228_20_19_26_Pro.jpg', '1', 'Sai complex', 'ABC home', '1', 899234, 0, '2021-04-05', '2021-04-05', '0', 'joni@gmail.com', '', 3);

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
(4, 1, 'Nashik', '1', '2021-06-08 17:41:44'),
(5, 1, 'bbc', '0', '2021-06-08 17:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(12) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `address` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `name`, `email`, `subject`, `address`, `status`, `created_date`) VALUES
(1, 'joni', 'laxman@gmail.com', 'mmmm', 'jklllasf', '1', '2021-04-08 18:55:14'),
(2, 'nmo', 'nmo@gmail.com', 'is it flat is avliable in 5 bhk in pune', 'i want to flat in pune in fc rood near sk schoole', '1', '2021-04-09 14:06:21'),
(3, 'bbn', 'bbbbb@gmail.com', 'bbmull', 'hii bb mull', '1', '2021-05-10 13:06:40'),
(4, 'bala', 'bala@gamil.com', 'property sale', 'send best agent contact no to sale property in best prise', '1', '2021-05-13 13:07:14'),
(5, 'njk', 'njk@gmail.com', 'nklll', 'msndfmnsfm', '1', '2021-06-23 19:53:57'),
(6, 'helllo', 'sadf@gmail.com', 'asdf', 'nmnmnmnmn', '1', '2021-06-24 17:20:27'),
(7, 'jublihill', 'jms@gmail.com', 'jms', 'jms jms ', '1', '2021-07-08 17:04:58'),
(8, 'Gaurav pawar', 'gaurav.pawar.7218@gmail.com', 'asfasf', 'satara police line satara', '1', '2021-07-13 07:58:02');

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
(3, 'Chaina', '1', '2021-02-27 05:15:11'),
(4, 'nbnbbbb', '0', '2021-06-08 17:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `f_id` int(12) NOT NULL,
  `user_id` varchar(120) NOT NULL,
  `p_id` varchar(120) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requestGroup` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`f_id`, `user_id`, `p_id`, `user_name`, `status`, `created_date`, `requestGroup`) VALUES
(1, '1', '27', 'gaurav', '1', '2021-07-19 11:54:04', '0'),
(2, '1', '26', 'gaurav', '1', '2021-07-19 11:54:17', '0');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `f_id` int(11) NOT NULL,
  `p_id` int(12) NOT NULL,
  `wing` varchar(100) NOT NULL COMMENT 'wing id',
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
(1, 1, '1', '1', '6', 'a wing', '1', '2021-04-08 15:59:00'),
(2, 2, '2', '1', '6', 'a wing', '1', '2021-04-12 15:23:16'),
(3, 3, '5', '1', '6', 'a wing', '1', '2021-05-11 09:58:26'),
(4, 4, '6', '1', '6', 'a wing', '1', '2021-06-07 16:10:29'),
(5, 5, '9', '1', '8', 'garden facing', '1', '2021-06-24 08:37:26'),
(6, 5, '9', '2', '8', 'garden facing', '1', '2021-06-24 08:37:26'),
(7, 22, '13', '1', '6', 'awing frist floor', '1', '2021-07-07 13:35:52'),
(8, 24, '19', '1', '6', 'asf a wingggg', '1', '2021-07-08 15:23:07'),
(9, 25, '20', '2', '6', 'a wing 2 floor', '1', '2021-07-08 15:47:07'),
(10, 26, '21', '1', '6', 'a wing', '1', '2021-07-08 15:51:19'),
(11, 27, '22', '1', '2', 'a wing', '1', '2021-07-13 10:29:15'),
(12, 28, '23', '1', '6', 'asdf', '1', '2021-07-13 10:42:09'),
(13, 29, '24', '1', '1', ' a wing', '1', '2021-07-13 10:45:24'),
(14, 29, '24', '2', '1', ' a wing dscfda', '1', '2021-07-13 11:37:57');

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
(1, 0, 'Sai hotel', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-04-04 08:49:58'),
(2, 0, 'shop', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-04-04 08:52:19'),
(3, 0, 'Kk Mobile', 'https://www.google.com/maps/search/rks+restaurant/@18.5182891,73.7402512,11z/data=!3m1!4b1', '1', '2021-04-04 08:52:30'),
(4, 0, '1bhk', 'lklklk', '0', '2021-05-15 11:45:26'),
(5, 0, 'asdfggggggggggggggggggg', 'asdfasdf dasfasdfmmmmmmmmmmmmmmm', '0', '2021-06-07 18:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(12) NOT NULL,
  `p_id` int(12) NOT NULL,
  `sender` text NOT NULL,
  `reciver` int(12) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requestGroup` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-not accept ,1- accept',
  `admin_noti` enum('0','1','2') NOT NULL,
  `user_noti` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `p_id`, `sender`, `reciver`, `status`, `created_date`, `requestGroup`, `admin_noti`, `user_noti`) VALUES
(1, 27, '3', 1, '1', '2021-07-19 11:56:10', '0', '0', '0'),
(9, 26, '3', 1, '1', '2021-07-19 12:08:31', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `properties_address`
--

CREATE TABLE `properties_address` (
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` varchar(500) NOT NULL,
  `lng` varchar(500) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties_address`
--

INSERT INTO `properties_address` (`a_id`, `p_id`, `address`, `lat`, `lng`, `description`) VALUES
(1, 1, 'Amnora, Amanora Town Centre, Amanora Park Town, Hadapsar, Pune, Maharashtra, India', '18.5190344', '73.93364439999999', 'pune'),
(2, 2, 'mansi viswas nager pune', '', '', 'pune'),
(3, 3, 'P K Biryani House, 45, Baner, Pune, Maharashtra, India', '18.5493019', '73.77260009999999', 'satara'),
(4, 5, 'Pearl Square, Handewadi Road, Satav Nagar, Hadapsar, Pune, Maharashtra, India', '', '', ''),
(8, 17, 'Mansi Vishwas Nagar, Narhe Road, Wadgaon Budruk, Narhe, Pune, Maharashtra, India', '18.4580739', '73.81615599999999', ''),
(9, 20, 'Australia Post - Marrickville South LPO, Illawarra Road, Marrickville NSW, Australia', '-33.91557909999999', '151.1510557', ''),
(10, 21, 'Mansi Vishwas Nagar, Narhe Road, Wadgaon Budruk, Narhe, Pune, Maharashtra, India', '18.4580739', '73.81615599999999', ''),
(11, 22, 'satara', '', '', 'satara'),
(12, 23, 'satara', '', '', 'pune'),
(13, 25, 'satara', '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(14, 26, 'Indian Oil Nagar Govandi Guest House Cum Quarters, Indian Oil Nagar, Shivaji Nagar, Mumbai, Maharashtra, India', '19.06396089999999', '72.91421729999999', ''),
(15, 27, 'Pune, Maharashtra', '18.5577446', '73.9124674', 'SGM Schoole'),
(16, 28, 'ASDFGHJK, Tunghotel Road, Wat Ket, Mueang Chiang Mai District, Chiang Mai, Thailand', '18.7922755', '99.01781319999999', 'asdf'),
(17, 29, 'Las Vegas, NV, USA', '36.1699412', '-115.1398296', 'pune');

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
(1, 1, '3', '', '2', '1', '2021-07-12 07:54:26'),
(2, 2, '1', '', '2', '1', '2021-04-12 15:23:56'),
(3, 3, '1,2', '1620727223_download.jpg,1620727223_images (1).jpg', '2', '1', '2021-05-11 10:00:23'),
(4, 4, '1', '', '2', '1', '2021-06-07 16:12:28'),
(5, 5, '2,3', '', '1,3', '1', '2021-06-24 08:38:53'),
(6, 22, '1,2', '', '2', '1', '2021-07-07 13:36:45');

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
(1, 'Apartment', '1', '2021-06-24 08:29:28'),
(2, 'Villa', '1', '2021-04-01 08:30:29'),
(3, 'Shop', '1', '2021-04-12 16:32:18'),
(4, 'vvvv', '0', '2021-06-07 18:58:44'),
(5, 'Land', '1', '2021-06-24 08:29:15');

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
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `patnership` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `builder_name`, `started_date`, `possession_date`, `address`, `rera_number`, `description`, `specification`, `images`, `videos`, `units`, `amenities`, `neighbourhoods`, `created_date`, `modified_date`, `status`, `patnership`) VALUES
(1, 'magarpatha city', '2', '2021-04-09', '2021-04-10', '', 234234, '', '', '1626330062_chair.jpg,1626330062_office.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '0'),
(2, 'SUNSINE', '2', '2021-04-09', '2021-04-21', '', 234234, '', '', '1620812046_images2.jpg,1620812046_images3.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '1'),
(3, 'Sky villa', '1', '2021-05-12', '2021-05-13', '', 345345, '', '', '1620836973_download5.jpg,1620836973_gym.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '1'),
(4, 'MOONmm', '5', '2021-06-05', '2021-06-09', '', 234234, '', '', '1623082181_gym.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '1'),
(5, 'Mayur Geminus', '2', '2017-09-01', '2021-06-10', '', 23, '', '', '1625034923_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '0'),
(17, 'Naksh', '3', '2021-06-26', '2021-06-26', '', 234234, '', '', '1624884324_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '0'),
(18, 'asdf', '1', '2021-04-04', '2021-04-04', '', 1234567, '', '', '1625152598_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '0'),
(19, 'toni', '1', '2021-07-10', '2021-07-10', '', 1234567, '', '', '1625162700_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '0'),
(20, 'mno', '2', '2021-07-03', '2021-07-16', '', 1234567, '', '', '1625162847_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '0'),
(21, 'komal', '2', '2021-07-10', '2021-07-10', '', 1234567, '', '', '1625162996_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '0'),
(22, 'TopVilla', '2', '2021-07-08', '2021-07-09', '', 1234567, '', '', '1626341915_images (1).jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '1'),
(23, 'Tara', '1', '2021-07-16', '2021-07-17', '', 54543, '', '', '1625665126_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '0'),
(24, 'Amanora', '2', '2021-07-10', '2021-07-10', '', 454545, '', '', '1625757516_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '1'),
(25, 'nemo', '1', '2021-07-09', '2021-07-09', '', 1234567, '', '', '1625759178_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '1'),
(26, 'Grand View', '2', '2021-07-10', '2021-07-10', '', 54543, '', '', '1625759440_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '1'),
(27, 'Super matrix', '1', '2021-07-13', '2021-07-14', '', 234234, '', '', '1626172103_bg1.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '1', '0'),
(30, 'llllpnpn', '2', '2021-07-09', '2021-07-15', '', 2147483647, '', '', '1626254301_WIN_20171228_20_19_26_Pro.jpg', '', '', 0, 0, '0000-00-00', '0000-00-00', '0', '0');

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
(6, 1, 'Behar', '1', '2021-03-05 05:36:59'),
(7, 1, 'hai', '0', '2021-06-08 17:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `title`, `description`, `status`, `created_date`, `img`) VALUES
(1, 'gaurav pawar', 'admin', 'afdsasfsafdasfasf', '0', '2021-05-09 17:48:06', 'abc.pnj'),
(2, 'joni  deo', 'Chief Executive Officer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '1', '2021-05-10 06:49:44', '1620629384_images (1).jpg'),
(3, 'Amit  pawar', 'Chief Technology Officer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '1', '2021-05-10 06:50:51', '1620629451_images (5).jpg'),
(4, 'Julia', 'Chief Financial Officer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '1', '2021-05-10 06:51:55', '1620629515_images (4).jpg'),
(5, 'Marry Jane', 'Chief Information Officer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '0', '2021-05-10 06:54:55', '1620629591_download.jpg'),
(6, 'Kim Jong', 'Chief Security Officer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '0', '2021-05-10 06:54:51', '1620629654_images (2).jpg'),
(7, 'mnooonmnmnm', 'kjkjk', 'jkjkj', '0', '2021-06-07 17:43:17', '1623087229_download4.jpg');

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
  `status` enum('0','1') NOT NULL,
  `tares` text NOT NULL,
  `bath` text NOT NULL,
  `parking` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`u_id`, `p_id`, `floor`, `wing`, `type`, `title`, `size`, `price`, `carpet_area`, `built_area`, `2d_plan_images`, `3d_plan_images`, `images`, `created_at`, `modified_at`, `status`, `tares`, `bath`, `parking`) VALUES
(1, 1, '1', '1', '2', '1', 0, 4000, 989, 444, '', '', '', '2021-07-08', '2021-07-08', '0', '3', '3', '3'),
(2, 2, '1', '2', '1', '2', 0, 798, 989, 444, '', '', '', '2021-04-12', '2021-04-12', '0', '2', '2', '2'),
(3, 3, '1', '5', '1', '1', 0, 8000, 989, 700, '', '', '', '2021-07-13', '2021-07-13', '0', '2', '2', '1'),
(4, 4, '1', '6', '2', '2', 0, 798, 989, 898, '', '', '', '2021-06-07', '2021-06-07', '0', '2', '1', '1'),
(5, 5, '1', '9', '2', '1', 0, 4000, 300, 450, '', '', '', '2021-06-24', '2021-06-24', '0', '2', '1', '1'),
(6, 22, '1', '13', '1', '1', 0, 4000, 989, 444, '', '', '', '2021-07-07', '2021-07-07', '0', '1', '1', '1'),
(7, 24, '1', '19', '1', '1', 0, 3300, 989, 444, '', '', '', '2021-07-08', '2021-07-08', '0', '2', '1', '1'),
(8, 25, '2', '20', '1', '2', 0, 330, 989, 444, '', '', '', '2021-07-08', '2021-07-08', '0', '2', '1', '1'),
(9, 26, '1', '21', '1', '5', 0, 33, 989, 444, '', '', '', '2021-07-08', '2021-07-08', '0', '2', '1', '1'),
(10, 27, '1', '22', '1', '1', 0, 6000, 989, 444, '', '', '', '2021-07-13', '2021-07-13', '0', '2', '1', '1'),
(11, 28, '1', '23', '1', '1', 0, 33, 989, 444, '', '', '', '2021-07-13', '2021-07-13', '0', '2', '1', '1'),
(12, 29, '1', '24', '1', '1', 0, 33, 989, 8987990, '', '', '', '2021-07-13', '2021-07-13', '0', '2', '1', '1'),
(13, 29, '2', '24', '2', '5', 0, 33, 989, 700, '', '', '', '2021-07-13', '2021-07-13', '0', '2', '1', '1');

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
-- Table structure for table `user_chat`
--

CREATE TABLE `user_chat` (
  `u_id` int(11) NOT NULL,
  `sender` int(12) NOT NULL,
  `reciver` int(12) NOT NULL,
  `p_id` int(12) NOT NULL,
  `message` longtext NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `image` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `otp` int(12) NOT NULL,
  `username` text NOT NULL,
  `role` int(12) NOT NULL DEFAULT '4' COMMENT '4-user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `name`, `email`, `password`, `image`, `status`, `otp`, `username`, `role`) VALUES
(1, '', 'gaurav@gmail.com', 'gaurav', '1624943854_bg1.jpg', '1', 182532, 'gaurav', 4),
(2, '', 'amit@gmail.com', 'amit', '1624943986_bg1.jpg', '1', 750032, 'amit', 4),
(3, '', 'ram@gmail.com', 'ram', '1624944015_bg1.jpg', '1', 190436, 'ram', 4),
(4, '', 'laxman@gmail.com', 'laxman', '1624944037_bg1.jpg', '1', 985962, 'laxman', 4),
(5, '', 'suraj@gmail.com', 'suraj', '1625039321_WIN_20171228_20_19_26_Pro.jpg', '1', 388432, 'suraj', 4),
(8, '', 'kfc@gmail.com', 'kfc', '1625747278_bg1.jpg', '1', 107093, 'kfc', 4),
(9, '', 'lpg', 'lpg', '1625757881_bg1.jpg', '1', 91071, 'lpg', 4),
(10, '', 'js@gmail.com', 'js', '1625758848_bg1.jpg', '1', 85609, 'js', 4);

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
(1, 1, 'A', '5', '1', '2021-04-08 15:58:41'),
(2, 2, 'A', '5', '1', '2021-04-12 15:22:56'),
(3, 2, 'B', '5', '1', '2021-04-12 15:22:56'),
(4, 3, 'A', '5', '1', '2021-05-11 09:58:03'),
(5, 3, 'B', '5', '1', '2021-05-11 09:58:03'),
(6, 4, 'A', '5', '1', '2021-06-07 16:10:08'),
(7, 6, 'A', '6', '1', '2021-06-08 17:07:49'),
(8, 6, 'B', '7', '1', '2021-06-08 17:07:49'),
(9, 5, 'A', '11', '1', '2021-06-24 08:36:27'),
(10, 21, 'A', '5', '1', '2021-07-07 13:32:10'),
(11, 20, 'A', '8', '1', '2021-07-07 13:32:59'),
(12, 3, 'C', '8', '1', '2021-07-07 13:33:51'),
(13, 22, 'A', '5', '1', '2021-07-07 13:35:27'),
(14, 22, 'C', '8', '1', '2021-07-07 13:37:07'),
(15, 22, 'D', '4', '1', '2021-07-07 13:37:30'),
(16, 23, 'A', '5', '1', '2021-07-07 13:39:30'),
(17, 23, 'c', '5', '1', '2021-07-07 13:40:16'),
(18, 23, 'c', '5', '1', '2021-07-07 13:42:16'),
(19, 24, 'b', '3', '1', '2021-07-08 15:18:53'),
(20, 25, 'A', '5', '1', '2021-07-08 15:46:41'),
(21, 26, 'bbc', '5', '1', '2021-07-08 15:51:00'),
(22, 27, 'A', '5', '1', '2021-07-13 10:28:57'),
(23, 28, 'A', '5', '1', '2021-07-13 10:41:52'),
(24, 29, 'A', '4', '1', '2021-07-13 10:45:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_group`
--
ALTER TABLE `add_group`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`f_id`);

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
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`);

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
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wing`
--
ALTER TABLE `wing`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_group`
--
ALTER TABLE `add_group`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `builders`
--
ALTER TABLE `builders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `f_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `neighbourhoods`
--
ALTER TABLE `neighbourhoods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `properties_address`
--
ALTER TABLE `properties_address`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `properties_other`
--
ALTER TABLE `properties_other`
  MODIFY `o_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `properties_type`
--
ALTER TABLE `properties_type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `s_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
-- AUTO_INCREMENT for table `user_chat`
--
ALTER TABLE `user_chat`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wing`
--
ALTER TABLE `wing`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
