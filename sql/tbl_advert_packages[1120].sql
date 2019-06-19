-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 01:27 PM
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
-- Table structure for table `tbl_advert_packages`
--

CREATE TABLE `tbl_advert_packages` (
  `pack_id` int(11) NOT NULL,
  `pack_name` varchar(100) DEFAULT NULL,
  `pack_amount` float NOT NULL,
  `pack_detail` varchar(255) DEFAULT NULL,
  `pack_benefits` varchar(2000) NOT NULL,
  `pack_datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pack_systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advert_packages`
--

INSERT INTO `tbl_advert_packages` (`pack_id`, `pack_name`, `pack_amount`, `pack_detail`, `pack_benefits`, `pack_datecreated`, `pack_systdate`) VALUES
(1, '90 Days Packages', 1000, 'For just 90 days', 'Random advert banner display on both National News Agency and news contents relating to your business for 90 days period', '2018-12-04 06:53:16', '0000-00-00 00:00:00'),
(2, '6 Months Package', 1950, 'For just 6 months', 'Random advert banner display on both National News Agency and news contents relating to your business with three more news categories out of your business for 6 months period', '2018-12-04 06:53:16', '0000-00-00 00:00:00'),
(5, '1 Year Package', 3500, 'For just one year', 'Random advert banner display on both National News Agency and news contents on all our news categories for 1 year period', '2018-12-04 06:57:56', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advert_packages`
--
ALTER TABLE `tbl_advert_packages`
  ADD PRIMARY KEY (`pack_id`),
  ADD UNIQUE KEY `name` (`pack_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advert_packages`
--
ALTER TABLE `tbl_advert_packages`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
