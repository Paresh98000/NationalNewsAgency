-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 05:04 PM
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
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `clients_id` int(11) NOT NULL,
  `busregname` varchar(100) NOT NULL,
  `busregnumber` varchar(50) NOT NULL,
  `natofbus` varchar(50) NOT NULL,
  `bustartdate` date NOT NULL,
  `bustype` varchar(50) NOT NULL,
  `headoffice` varchar(50) NOT NULL,
  `busactivity` varchar(100) NOT NULL,
  `nofbranch` int(11) NOT NULL,
  `logopath` varchar(30) NOT NULL,
  `title` varchar(20) NOT NULL,
  `firstname` varchar(35) DEFAULT NULL,
  `midlename` varchar(35) DEFAULT NULL,
  `lastname` varchar(35) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `pofcphone` varchar(20) NOT NULL,
  `positionheld` varchar(80) NOT NULL,
  `client_adre` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `datejoin` datetime DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`clients_id`, `busregname`, `busregnumber`, `natofbus`, `bustartdate`, `bustype`, `headoffice`, `busactivity`, `nofbranch`, `logopath`, `title`, `firstname`, `midlename`, `lastname`, `gender`, `pofcphone`, `positionheld`, `client_adre`, `package_id`, `datejoin`, `systdate`) VALUES
(1, 'Info Tech', 'BUS2241432', 'Consultancy', '0000-00-00', 'Partnership', 'Rajkot', 'Software', 5, '', 'Mr.', 'Mohammed', 'Issac', 'Adamu', 'Male', '0541708169', 'Manager', 9, 2, '2018-12-05 01:27:51', '2018-12-04 19:57:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`clients_id`),
  ADD UNIQUE KEY `busregname` (`busregname`),
  ADD UNIQUE KEY `busregnumber` (`busregnumber`),
  ADD KEY `address` (`client_adre`),
  ADD KEY `empttype` (`package_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD CONSTRAINT `tbl_clients_ibfk_1` FOREIGN KEY (`client_adre`) REFERENCES `tbl_addresscust` (`adre_id`),
  ADD CONSTRAINT `tbl_clients_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `tbl_advert_packages` (`pack_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
