-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2018 at 12:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invmgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cables`
--

CREATE TABLE `cables` (
  `Inventory Type Code` int(1) NOT NULL,
  `Non Consumable Id` int(1) NOT NULL,
  `Fixed Asset Id` int(2) NOT NULL,
  `Networking id` int(1) NOT NULL,
  `Subtype id` int(1) NOT NULL,
  `Sub-category code` int(3) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Length` varchar(30) NOT NULL,
  `Connector Type` varchar(30) NOT NULL,
  `Mode` varchar(30) NOT NULL,
  `Core` varchar(30) DEFAULT NULL,
  `Remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cables`
--

INSERT INTO `cables` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset Id`, `Networking id`, `Subtype id`, `Sub-category code`, `Name`, `Type`, `Length`, `Connector Type`, `Mode`, `Core`, `Remarks`) VALUES
(1, 1, 10, 1, 0, 1, 'hdmi', 'Optical fibre', '789', 'LC/LC', 'multimode', '6787', 'esxj');

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `Inventory Type Code` int(1) NOT NULL,
  `Non Consumable Id` int(1) NOT NULL,
  `Fixed Asset ID` int(2) NOT NULL,
  `Networking ID` int(1) NOT NULL,
  `Subtype ID` int(1) NOT NULL,
  `Sub category ID` int(3) NOT NULL,
  `Type` text NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Make` text NOT NULL,
  `Processor speed` varchar(10) DEFAULT NULL,
  `processor type` varchar(10) NOT NULL,
  `Generation` varchar(10) DEFAULT NULL,
  `dimension` varchar(20) NOT NULL,
  `OS` varchar(10) DEFAULT NULL,
  `Harddisk size` varchar(10) DEFAULT NULL,
  `RAM size` varchar(10) DEFAULT NULL,
  `form factor` varchar(20) DEFAULT NULL,
  `remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype ID`, `Sub category ID`, `Type`, `Model`, `Make`, `Processor speed`, `processor type`, `Generation`, `dimension`, `OS`, `Harddisk size`, `RAM size`, `form factor`, `remarks`) VALUES
(1, 1, 10, 0, 1, 1, 'Laptop', 'dcc', 'kled', 'gfnfk', 'i5', '3', '56', 'dcn ljkdc ', 'cdop', 'cd', 'ITX', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `networking devices`
--

CREATE TABLE `networking devices` (
  `Inventory Type Code` int(1) NOT NULL,
  `Non Consumable Id` int(1) NOT NULL,
  `Fixed Asset ID` int(2) NOT NULL,
  `Networking ID` int(1) NOT NULL,
  `Subtype id` int(1) NOT NULL,
  `Sub-category code` int(3) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Model` varchar(30) DEFAULT NULL,
  `Type` varchar(11) DEFAULT NULL,
  `Specification` varchar(10) DEFAULT NULL,
  `remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networking devices`
--

INSERT INTO `networking devices` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype id`, `Sub-category code`, `Name`, `Make`, `Model`, `Type`, `Specification`, `remarks`) VALUES
(1, 1, 10, 0, 0, 3, 'wireless-controller', '2234', 'dc', NULL, NULL, NULL),
(1, 1, 10, 0, 0, 4, 'wireless-controller', '2234', 'dc', NULL, NULL, 'csvsfvb'),
(1, 1, 10, 0, 0, 5, 'server', 'ck', 'fg', '23', ' fd', NULL),
(1, 1, 10, 0, 0, 6, 'server', 'sfv', ' cfdsv', ' s', 'fs', NULL),
(1, 1, 10, 0, 0, 7, 'server', 'd ,m', ',mkdcn', 'qc', 'dwklj', NULL),
(1, 1, 10, 0, 0, 8, 'NMS', 'ewfje', 'scak', NULL, NULL, NULL),
(1, 1, 10, 0, 0, 9, 'NMS', 'ewfje', 'scak', NULL, NULL, 'dc'),
(1, 1, 10, 0, 0, 10, 'NMS', 'ewfje', 'scak', NULL, NULL, 'dc'),
(1, 1, 10, 0, 0, 11, 'Projector', 'ksd', 'caxk', 'acsk', NULL, 'kacs'),
(1, 1, 10, 0, 0, 12, 'Firewall', 'kjc ', 'kxaa', NULL, NULL, 'ladc'),
(1, 1, 10, 0, 0, 13, 'server', ',m', 'jk', 'jkl', 'kn', NULL),
(1, 1, 10, 0, 0, 14, 'Printer', 'm,', 'm ', ',.', ',klmnjnln', NULL),
(1, 1, 10, 0, 0, 15, 'wireless-controller', ', w', 'w ', '', '', ' g ');

-- --------------------------------------------------------

--
-- Table structure for table `other hardware`
--

CREATE TABLE `other hardware` (
  `Inventory Type Code` int(1) NOT NULL,
  `Non Consumable Id` int(1) NOT NULL,
  `Fixed Asset Id` int(2) NOT NULL,
  `Networking id` int(1) NOT NULL,
  `Subtype id` int(1) NOT NULL,
  `Sub-category code` int(3) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Size` int(3) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Port` int(3) DEFAULT NULL,
  `Remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other hardware`
--

INSERT INTO `other hardware` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset Id`, `Networking id`, `Subtype id`, `Sub-category code`, `Name`, `Size`, `Type`, `Port`, `Remarks`) VALUES
(1, 1, 10, 1, 1, 1, 'jn', 0, 'kjb', 0, 'hbk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cables`
--
ALTER TABLE `cables`
  ADD PRIMARY KEY (`Sub-category code`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`Sub category ID`);

--
-- Indexes for table `networking devices`
--
ALTER TABLE `networking devices`
  ADD PRIMARY KEY (`Sub-category code`);

--
-- Indexes for table `other hardware`
--
ALTER TABLE `other hardware`
  ADD PRIMARY KEY (`Sub-category code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cables`
--
ALTER TABLE `cables`
  MODIFY `Sub-category code` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `computer`
--
ALTER TABLE `computer`
  MODIFY `Sub category ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `networking devices`
--
ALTER TABLE `networking devices`
  MODIFY `Sub-category code` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `other hardware`
--
ALTER TABLE `other hardware`
  MODIFY `Sub-category code` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
