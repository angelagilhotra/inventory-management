-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 02:36 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_assets`
-- (See below for the actual view)
--
CREATE TABLE `all_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(11) unsigned
,`asset_type_code` int(11) unsigned
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `major_class` varchar(1) DEFAULT NULL,
  `sub_class` varchar(3) DEFAULT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`major_class`, `sub_class`, `asset_code`, `asset_name`) VALUES
('N', 'FUR', 001, 'chair'),
('N', 'FUR', 002, 'table'),
('F', 'EAP', 003, 'air conditioner'),
('C', 'EAC', 004, 'projector screen'),
('C', 'EAC', 005, 'USB cable'),
('C', 'EAC', 006, 'mouse'),
('C', 'ECP', 007, 'resistor'),
('C', 'ECP', 008, 'LED'),
('C', 'OFS', 009, 'stapler'),
('C', 'OFS', 010, 'ink cartridge');

-- --------------------------------------------------------

--
-- Table structure for table `chemistry_lab_chemicals`
--

CREATE TABLE `chemistry_lab_chemicals` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `chemistry_lab_chemicals_assets`
-- (See below for the actual view)
--
CREATE TABLE `chemistry_lab_chemicals_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `chemistry_lab_equipments`
--

CREATE TABLE `chemistry_lab_equipments` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `chemistry_lab_equipments_assets`
-- (See below for the actual view)
--
CREATE TABLE `chemistry_lab_equipments_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `electronic_accessory`
--

CREATE TABLE `electronic_accessory` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='for storing cables/peripherals of electronic items';

--
-- Dumping data for table `electronic_accessory`
--

INSERT INTO `electronic_accessory` (`asset_type_code`, `asset_code`, `asset_type_description`) VALUES
(001, 004, 'fixed'),
(002, 004, 'pull down'),
(003, 004, 'electric'),
(004, 004, 'portable'),
(005, 006, 'wired'),
(006, 006, 'wireless');

-- --------------------------------------------------------

--
-- Stand-in structure for view `electronic_accessory_assets`
-- (See below for the actual view)
--
CREATE TABLE `electronic_accessory_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `electronic_appliances`
--

CREATE TABLE `electronic_appliances` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electronic_appliances`
--

INSERT INTO `electronic_appliances` (`asset_type_code`, `asset_code`, `asset_type_description`) VALUES
(001, 003, 'split'),
(002, 003, 'window');

-- --------------------------------------------------------

--
-- Stand-in structure for view `electronic_appliances_assets`
-- (See below for the actual view)
--
CREATE TABLE `electronic_appliances_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `electronic_components`
--

CREATE TABLE `electronic_components` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electronic_components`
--

INSERT INTO `electronic_components` (`asset_type_code`, `asset_code`, `asset_type_description`) VALUES
(001, 007, 'fixed'),
(002, 007, 'variable'),
(003, 008, 'through - hole'),
(004, 008, 'SMD'),
(005, 008, 'Bi - color'),
(006, 008, 'RGB');

-- --------------------------------------------------------

--
-- Stand-in structure for view `electronic_components_assets`
-- (See below for the actual view)
--
CREATE TABLE `electronic_components_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`asset_type_code`, `asset_code`, `asset_type_description`) VALUES
(004, 001, 'long back'),
(005, 001, 'mid back'),
(006, 001, 'wheel'),
(007, 002, 'large'),
(008, 002, 'medium');

-- --------------------------------------------------------

--
-- Stand-in structure for view `furniture_assets`
-- (See below for the actual view)
--
CREATE TABLE `furniture_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `it_computers`
--

CREATE TABLE `it_computers` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `it_computers_assets`
-- (See below for the actual view)
--
CREATE TABLE `it_computers_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `it_hardware`
--

CREATE TABLE `it_hardware` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `it_hardware_assets`
-- (See below for the actual view)
--
CREATE TABLE `it_hardware_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `it_networking`
--

CREATE TABLE `it_networking` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `it_networking_assets`
-- (See below for the actual view)
--
CREATE TABLE `it_networking_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `it_software`
--

CREATE TABLE `it_software` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `it_software_assets`
-- (See below for the actual view)
--
CREATE TABLE `it_software_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `major_class`
--

CREATE TABLE `major_class` (
  `major_class_code` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major_class`
--

INSERT INTO `major_class` (`major_class_code`, `description`) VALUES
('C', 'Consumable'),
('F', 'Fixed Asset'),
('N', 'Non - Consumable');

-- --------------------------------------------------------

--
-- Table structure for table `office_supplies`
--

CREATE TABLE `office_supplies` (
  `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL,
  `asset_type_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office_supplies`
--

INSERT INTO `office_supplies` (`asset_type_code`, `asset_code`, `asset_type_description`) VALUES
(001, 009, 'desktop'),
(002, 009, 'hand - held'),
(003, 009, 'heavy duty'),
(004, 009, 'long reach'),
(005, 009, 'mini'),
(006, 009, 'upright'),
(007, 010, 'mono'),
(008, 010, 'color');

-- --------------------------------------------------------

--
-- Stand-in structure for view `office_supplies_assets`
-- (See below for the actual view)
--
CREATE TABLE `office_supplies_assets` (
`major_class` varchar(1)
,`sub_class` varchar(3)
,`asset_code` int(3) unsigned zerofill
,`asset_type_code` int(3) unsigned zerofill
,`asset_name` varchar(45)
,`asset_type_description` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `sub_class`
--

CREATE TABLE `sub_class` (
  `sub_class_code` varchar(3) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Dumping data for table `sub_class`
--

INSERT INTO `sub_class` (`sub_class_code`, `description`) VALUES
('CLC', 'Chemistry Lab - Chemicals'),
('CLE', 'Chemistry Lab - Equipments'),
('EAC', 'Electronic Accessory'),
('EAP', 'Electronic Appliance'),
('ECP', 'Electronic Component'),
('FUR', 'Furniture'),
('ITC', 'IT - Computers'),
('ITH', 'IT - Hardware'),
('ITN', 'IT - Networking'),
('ITS', 'IT - Software'),
('OFS', 'Office Supplies');

-- --------------------------------------------------------

--
-- Structure for view `all_assets`
--
DROP TABLE IF EXISTS `all_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_assets`  AS  select `electronic_accessory_assets`.`major_class` AS `major_class`,`electronic_accessory_assets`.`sub_class` AS `sub_class`,`electronic_accessory_assets`.`asset_code` AS `asset_code`,`electronic_accessory_assets`.`asset_type_code` AS `asset_type_code`,`electronic_accessory_assets`.`asset_name` AS `asset_name`,`electronic_accessory_assets`.`asset_type_description` AS `asset_type_description` from `electronic_accessory_assets` union select `electronic_appliances_assets`.`major_class` AS `major_class`,`electronic_appliances_assets`.`sub_class` AS `sub_class`,`electronic_appliances_assets`.`asset_code` AS `asset_code`,`electronic_appliances_assets`.`asset_type_code` AS `asset_type_code`,`electronic_appliances_assets`.`asset_name` AS `asset_name`,`electronic_appliances_assets`.`asset_type_description` AS `asset_type_description` from `electronic_appliances_assets` union select `electronic_components_assets`.`major_class` AS `major_class`,`electronic_components_assets`.`sub_class` AS `sub_class`,`electronic_components_assets`.`asset_code` AS `asset_code`,`electronic_components_assets`.`asset_type_code` AS `asset_type_code`,`electronic_components_assets`.`asset_name` AS `asset_name`,`electronic_components_assets`.`asset_type_description` AS `asset_type_description` from `electronic_components_assets` union select `furniture_assets`.`major_class` AS `major_class`,`furniture_assets`.`sub_class` AS `sub_class`,`furniture_assets`.`asset_code` AS `asset_code`,`furniture_assets`.`asset_type_code` AS `asset_type_code`,`furniture_assets`.`asset_name` AS `asset_name`,`furniture_assets`.`asset_type_description` AS `asset_type_description` from `furniture_assets` union select `office_supplies_assets`.`major_class` AS `major_class`,`office_supplies_assets`.`sub_class` AS `sub_class`,`office_supplies_assets`.`asset_code` AS `asset_code`,`office_supplies_assets`.`asset_type_code` AS `asset_type_code`,`office_supplies_assets`.`asset_name` AS `asset_name`,`office_supplies_assets`.`asset_type_description` AS `asset_type_description` from `office_supplies_assets` union select `it_software_assets`.`major_class` AS `major_class`,`it_software_assets`.`sub_class` AS `sub_class`,`it_software_assets`.`asset_code` AS `asset_code`,`it_software_assets`.`asset_type_code` AS `asset_type_code`,`it_software_assets`.`asset_name` AS `asset_name`,`it_software_assets`.`asset_type_description` AS `asset_type_description` from `it_software_assets` union select `it_hardware_assets`.`major_class` AS `major_class`,`it_hardware_assets`.`sub_class` AS `sub_class`,`it_hardware_assets`.`asset_code` AS `asset_code`,`it_hardware_assets`.`asset_type_code` AS `asset_type_code`,`it_hardware_assets`.`asset_name` AS `asset_name`,`it_hardware_assets`.`asset_type_description` AS `asset_type_description` from `it_hardware_assets` union select `it_networking_assets`.`major_class` AS `major_class`,`it_networking_assets`.`sub_class` AS `sub_class`,`it_networking_assets`.`asset_code` AS `asset_code`,`it_networking_assets`.`asset_type_code` AS `asset_type_code`,`it_networking_assets`.`asset_name` AS `asset_name`,`it_networking_assets`.`asset_type_description` AS `asset_type_description` from `it_networking_assets` union select `it_computers_assets`.`major_class` AS `major_class`,`it_computers_assets`.`sub_class` AS `sub_class`,`it_computers_assets`.`asset_code` AS `asset_code`,`it_computers_assets`.`asset_type_code` AS `asset_type_code`,`it_computers_assets`.`asset_name` AS `asset_name`,`it_computers_assets`.`asset_type_description` AS `asset_type_description` from `it_computers_assets` union select `chemistry_lab_chemicals_assets`.`major_class` AS `major_class`,`chemistry_lab_chemicals_assets`.`sub_class` AS `sub_class`,`chemistry_lab_chemicals_assets`.`asset_code` AS `asset_code`,`chemistry_lab_chemicals_assets`.`asset_type_code` AS `asset_type_code`,`chemistry_lab_chemicals_assets`.`asset_name` AS `asset_name`,`chemistry_lab_chemicals_assets`.`asset_type_description` AS `asset_type_description` from `chemistry_lab_chemicals_assets` union select `chemistry_lab_equipments_assets`.`major_class` AS `major_class`,`chemistry_lab_equipments_assets`.`sub_class` AS `sub_class`,`chemistry_lab_equipments_assets`.`asset_code` AS `asset_code`,`chemistry_lab_equipments_assets`.`asset_type_code` AS `asset_type_code`,`chemistry_lab_equipments_assets`.`asset_name` AS `asset_name`,`chemistry_lab_equipments_assets`.`asset_type_description` AS `asset_type_description` from `chemistry_lab_equipments_assets` ;

-- --------------------------------------------------------

--
-- Structure for view `chemistry_lab_chemicals_assets`
--
DROP TABLE IF EXISTS `chemistry_lab_chemicals_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chemistry_lab_chemicals_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`chemistry_lab_chemicals`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`chemistry_lab_chemicals`.`asset_type_description` AS `asset_type_description` from (`asset` join `chemistry_lab_chemicals`) where (`asset`.`asset_code` = `chemistry_lab_chemicals`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `chemistry_lab_equipments_assets`
--
DROP TABLE IF EXISTS `chemistry_lab_equipments_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chemistry_lab_equipments_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`chemistry_lab_equipments`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`chemistry_lab_equipments`.`asset_type_description` AS `asset_type_description` from (`asset` join `chemistry_lab_equipments`) where (`asset`.`asset_code` = `chemistry_lab_equipments`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `electronic_accessory_assets`
--
DROP TABLE IF EXISTS `electronic_accessory_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `electronic_accessory_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`electronic_accessory`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`electronic_accessory`.`asset_type_description` AS `asset_type_description` from (`asset` join `electronic_accessory`) where (`asset`.`asset_code` = `electronic_accessory`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `electronic_appliances_assets`
--
DROP TABLE IF EXISTS `electronic_appliances_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `electronic_appliances_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`electronic_appliances`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`electronic_appliances`.`asset_type_description` AS `asset_type_description` from (`asset` join `electronic_appliances`) where (`asset`.`asset_code` = `electronic_appliances`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `electronic_components_assets`
--
DROP TABLE IF EXISTS `electronic_components_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `electronic_components_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`electronic_components`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`electronic_components`.`asset_type_description` AS `asset_type_description` from (`asset` join `electronic_components`) where (`asset`.`asset_code` = `electronic_components`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `furniture_assets`
--
DROP TABLE IF EXISTS `furniture_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `furniture_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`furniture`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`furniture`.`asset_type_description` AS `asset_type_description` from (`asset` join `furniture`) where (`asset`.`asset_code` = `furniture`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `it_computers_assets`
--
DROP TABLE IF EXISTS `it_computers_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `it_computers_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`it_computers`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`it_computers`.`asset_type_description` AS `asset_type_description` from (`asset` join `it_computers`) where (`asset`.`asset_code` = `it_computers`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `it_hardware_assets`
--
DROP TABLE IF EXISTS `it_hardware_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `it_hardware_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`it_hardware`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`it_hardware`.`asset_type_description` AS `asset_type_description` from (`asset` join `it_hardware`) where (`asset`.`asset_code` = `it_hardware`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `it_networking_assets`
--
DROP TABLE IF EXISTS `it_networking_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `it_networking_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`it_networking`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`it_networking`.`asset_type_description` AS `asset_type_description` from (`asset` join `it_networking`) where (`asset`.`asset_code` = `it_networking`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `it_software_assets`
--
DROP TABLE IF EXISTS `it_software_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `it_software_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`it_software`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`it_software`.`asset_type_description` AS `asset_type_description` from (`asset` join `it_software`) where (`asset`.`asset_code` = `it_software`.`asset_code`) ;

-- --------------------------------------------------------

--
-- Structure for view `office_supplies_assets`
--
DROP TABLE IF EXISTS `office_supplies_assets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `office_supplies_assets`  AS  select `asset`.`major_class` AS `major_class`,`asset`.`sub_class` AS `sub_class`,`asset`.`asset_code` AS `asset_code`,`office_supplies`.`asset_type_code` AS `asset_type_code`,`asset`.`asset_name` AS `asset_name`,`office_supplies`.`asset_type_description` AS `asset_type_description` from (`asset` join `office_supplies`) where (`asset`.`asset_code` = `office_supplies`.`asset_code`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`asset_code`),
  ADD KEY `sub_idx` (`sub_class`);

--
-- Indexes for table `chemistry_lab_chemicals`
--
ALTER TABLE `chemistry_lab_chemicals`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-clc_idx` (`asset_code`);

--
-- Indexes for table `chemistry_lab_equipments`
--
ALTER TABLE `chemistry_lab_equipments`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-cle_idx` (`asset_code`);

--
-- Indexes for table `electronic_accessory`
--
ALTER TABLE `electronic_accessory`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-eac_idx` (`asset_code`);

--
-- Indexes for table `electronic_appliances`
--
ALTER TABLE `electronic_appliances`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-fur_idx` (`asset_code`);

--
-- Indexes for table `electronic_components`
--
ALTER TABLE `electronic_components`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-ecp_idx` (`asset_code`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-fur_idx` (`asset_code`);

--
-- Indexes for table `it_computers`
--
ALTER TABLE `it_computers`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-itc_idx` (`asset_code`);

--
-- Indexes for table `it_hardware`
--
ALTER TABLE `it_hardware`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-ith_idx` (`asset_code`);

--
-- Indexes for table `it_networking`
--
ALTER TABLE `it_networking`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-itn_idx` (`asset_code`);

--
-- Indexes for table `it_software`
--
ALTER TABLE `it_software`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-its_idx` (`asset_code`);

--
-- Indexes for table `major_class`
--
ALTER TABLE `major_class`
  ADD PRIMARY KEY (`major_class_code`);

--
-- Indexes for table `office_supplies`
--
ALTER TABLE `office_supplies`
  ADD PRIMARY KEY (`asset_type_code`),
  ADD KEY `asset-code-ofs_idx` (`asset_code`);

--
-- Indexes for table `sub_class`
--
ALTER TABLE `sub_class`
  ADD PRIMARY KEY (`sub_class_code`),
  ADD UNIQUE KEY `sub_class_code_UNIQUE` (`sub_class_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `asset_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chemistry_lab_chemicals`
--
ALTER TABLE `chemistry_lab_chemicals`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemistry_lab_equipments`
--
ALTER TABLE `chemistry_lab_equipments`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `electronic_accessory`
--
ALTER TABLE `electronic_accessory`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `electronic_appliances`
--
ALTER TABLE `electronic_appliances`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `electronic_components`
--
ALTER TABLE `electronic_components`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `it_computers`
--
ALTER TABLE `it_computers`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `it_hardware`
--
ALTER TABLE `it_hardware`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `it_networking`
--
ALTER TABLE `it_networking`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `it_software`
--
ALTER TABLE `it_software`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_supplies`
--
ALTER TABLE `office_supplies`
  MODIFY `asset_type_code` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `major` FOREIGN KEY (`major_class`) REFERENCES `major_class` (`major_class_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sub` FOREIGN KEY (`sub_class`) REFERENCES `sub_class` (`sub_class_code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chemistry_lab_chemicals`
--
ALTER TABLE `chemistry_lab_chemicals`
  ADD CONSTRAINT `asset-code-clc` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chemistry_lab_equipments`
--
ALTER TABLE `chemistry_lab_equipments`
  ADD CONSTRAINT `asset-code-cle` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electronic_accessory`
--
ALTER TABLE `electronic_accessory`
  ADD CONSTRAINT `asset-code-eac` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electronic_appliances`
--
ALTER TABLE `electronic_appliances`
  ADD CONSTRAINT `asset-code-eca` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electronic_components`
--
ALTER TABLE `electronic_components`
  ADD CONSTRAINT `asset-code-ecp` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `furniture`
--
ALTER TABLE `furniture`
  ADD CONSTRAINT `asset-code-fur` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `it_computers`
--
ALTER TABLE `it_computers`
  ADD CONSTRAINT `asset-code-itc` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `it_hardware`
--
ALTER TABLE `it_hardware`
  ADD CONSTRAINT `asset-code-ith` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `it_networking`
--
ALTER TABLE `it_networking`
  ADD CONSTRAINT `asset-code-itn` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `it_software`
--
ALTER TABLE `it_software`
  ADD CONSTRAINT `asset-code-its` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `office_supplies`
--
ALTER TABLE `office_supplies`
  ADD CONSTRAINT `asset-code-ofs` FOREIGN KEY (`asset_code`) REFERENCES `asset` (`asset_code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
