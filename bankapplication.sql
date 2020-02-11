-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2019 at 02:20 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `Admin_Username` varchar(50) DEFAULT NULL,
  `Admin_id` int(11) NOT NULL,
  `Admin_Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`),
  UNIQUE KEY `Admin_Username` (`Admin_Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register1`
--

DROP TABLE IF EXISTS `register1`;
CREATE TABLE IF NOT EXISTS `register1` (
  `account_number` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_naame` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register1`
--

INSERT INTO `register1` (`account_number`, `first_name`, `last_naame`, `mobile_number`, `dateofbirth`, `gender`, `address`, `city`, `state`, `Username`, `Password`) VALUES
(181047, 'mg', 'we', '88796', '1999-10-21', 'male', 'db realty', 'mira road', 'maharashtra', 'mg01', 'mg01');

-- --------------------------------------------------------

--
-- Table structure for table `register_part2`
--

DROP TABLE IF EXISTS `register_part2`;
CREATE TABLE IF NOT EXISTS `register_part2` (
  `nominee` varchar(100) DEFAULT NULL,
  `acc_number` int(11) NOT NULL,
  `account_pin` smallint(6) DEFAULT NULL,
  `addharnumber` bigint(20) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  PRIMARY KEY (`acc_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_part2`
--

INSERT INTO `register_part2` (`nominee`, `acc_number`, `account_pin`, `addharnumber`, `account_type`, `Balance`) VALUES
('Raj Shah', 181047, 1234, 123123123, 'Savings Account', 5520);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
