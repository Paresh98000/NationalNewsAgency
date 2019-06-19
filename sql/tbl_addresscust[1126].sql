-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 05:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addresscust`
--

CREATE TABLE `tbl_addresscust` (
  `adre_id` int(11) NOT NULL,
  `buswebsite` varchar(50) NOT NULL,
  `busemail` varchar(50) NOT NULL,
  `busphone` varchar(10) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcodecust` varchar(30) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addresscust`
--

INSERT INTO `tbl_addresscust` (`adre_id`, `buswebsite`, `busemail`, `busphone`, `street`, `city`, `state`, `zipcodecust`, `country`, `continent`, `datecreated`, `systdate`) VALUES
(9, 'http://www.infotech.com', 'adamumh@gmail.com', '0541708169', 'Shell Service Station Opposite Sunyani Jubilee Park', 'Sunyani', 'Brong Ahafo - Sunyani', '', 'Ghana', 'Asia', '2018-12-04 19:57:51', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addresscust`
--
ALTER TABLE `tbl_addresscust`
  ADD PRIMARY KEY (`adre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addresscust`
--
ALTER TABLE `tbl_addresscust`
  MODIFY `adre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
