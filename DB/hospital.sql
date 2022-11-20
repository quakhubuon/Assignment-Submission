-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `caring_nurse`
--

CREATE TABLE `caring_nurse` (
  `Pa_ID` int(11) NOT NULL,
  `Caring nurse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Unique_code` int(11) NOT NULL,
  `A_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Unique_code`, `A_title`) VALUES
(45, 'Khoa nhi'),
(46, 'Khoa san'),
(47, 'Khoa cap cuu'),
(48, 'Khoa than khinh'),
(49, 'Khoa ho hap'),
(50, 'Khoa ho hap');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL,
  `Unique_code` varchar(10) DEFAULT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Full_name` varchar(100) GENERATED ALWAYS AS (concat(`First_name`,' ',`Last_name`)) STORED,
  `DoB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL COMMENT 'male/female',
  `Address` varchar(50) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `Related_name` varchar(50) DEFAULT NULL,
  `Degree_year` tinyint(4) DEFAULT NULL,
  `D_Unique_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `Unique_code`, `First_name`, `Last_name`, `DoB`, `Gender`, `Address`, `Start_date`, `Phone_number`, `Related_name`, `Degree_year`, `D_Unique_code`) VALUES
(0, 'DR0020', 'Nguyen ', 'A', '2022-11-05', 'male', 'Distric 1', '2022-11-05', '1234567890', 'Surgeon', 3, 48),
(20, 'DR0021', 'Tran ', 'B', '2022-11-05', 'female', 'Distric 2', '2022-11-05', '951238710', 'Psychologist', 2, 48),
(21, 'DR0022', 'Nguyen', 'P', '2022-11-07', 'female', 'Distric 11', '2022-11-07', '987653214', 'Surgeon', 3, 49);

--
-- Triggers `doctor`
--
DELIMITER $$
CREATE TRIGGER `getUQID_Doc` BEFORE INSERT ON `doctor` FOR EACH ROW BEGIN
	INSERT INTO id_value_doc VALUES (NULL);
    SET NEW.`Unique_code` = CONCAT('DR',LPAD(LAST_INSERT_ID(),4,'0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `doctorphone`
--

CREATE TABLE `doctorphone` (
  `E_Unique_code` int(11) NOT NULL,
  `Phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `E_Unique_code` int(11) NOT NULL,
  `P_ID` int(11) NOT NULL,
  `M_Unique_code` int(11) NOT NULL,
  `Examination_date` text NOT NULL,
  `The_next_expiration_date` text NOT NULL,
  `Diagnois` text NOT NULL,
  `Fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`E_Unique_code`, `P_ID`, `M_Unique_code`, `Examination_date`, `The_next_expiration_date`, `Diagnois`, `Fee`) VALUES
(0, 87, 19, '30/10/2022', '16/11/2022', 'Ho', 18),
(0, 90, 18, '01/03/2001', '06/11/2022', 'Sot', 21),
(20, 87, 20, '01/11/2022', '21/11/2022', 'Lao', 21),
(21, 87, 20, '01/11/2022', '21/11/2022', 'Lao', 21);

-- --------------------------------------------------------

--
-- Table structure for table `id_value_doc`
--

CREATE TABLE `id_value_doc` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_value_doc`
--

INSERT INTO `id_value_doc` (`id`) VALUES
(20),
(21),
(22);

-- --------------------------------------------------------

--
-- Table structure for table `id_value_nur`
--

CREATE TABLE `id_value_nur` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `id_value_patient`
--

CREATE TABLE `id_value_patient` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_value_patient`
--

INSERT INTO `id_value_patient` (`ID`) VALUES
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94);

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `M_Unique_code` int(11) NOT NULL,
  `Pro_Unique_code` int(11) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Price` double NOT NULL,
  `Imported_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

CREATE TABLE `inpatient` (
  `ID` int(11) NOT NULL,
  `Unique_code` varchar(15) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `type` varchar(5) NOT NULL COMMENT '''IP''',
  `DoB` text DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL COMMENT 'male/female',
  `Address` varchar(50) DEFAULT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `Date_of_admission` text DEFAULT NULL,
  `Diagnois` varchar(100) DEFAULT NULL,
  `Sickroom` varchar(50) DEFAULT '-',
  `Date_of_discharge` text DEFAULT NULL,
  `Fee` float DEFAULT NULL,
  `Full_name` varchar(100) GENERATED ALWAYS AS (concat(`First_name`,' ',`Last_name`)) STORED,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inpatient`
--

INSERT INTO `inpatient` (`ID`, `Unique_code`, `First_name`, `Last_name`, `type`, `DoB`, `Gender`, `Address`, `Phone_number`, `Date_of_admission`, `Diagnois`, `Sickroom`, `Date_of_discharge`, `Fee`, `status`) VALUES
(88, 'IP000000089', 'Nguyen', 'K', 'IP', '04/04/2003', 'male', 'Distric 6', '9874563210', '28/12/2020', 'Ho', 'A001', '08/06/2021', 10, 'unrecovery'),
(89, 'IP000000090', 'Nguyen', 'L', 'IP', '30/04/2003', 'male', 'Distric 1', '9874563210', '16/06/2021', 'Lao', 'A005', '19/01/2022', 30, 'recovered'),
(92, 'IP000000093', 'Nguyen', 'I', 'IP', '12/02/2004', 'male', 'Distric 11', '123456712', '01/11/2022', 'Sot', 'A002', '02/11/2022', 21, 'recovered'),
(93, 'IP000000094', 'Tran', 'E', 'IP', '30/01/2001', 'male', 'Distric 9', '123412345', '01/11/2022', 'Ho', '', '05/11/2022', 5, 'unrecovery');

--
-- Triggers `inpatient`
--
DELIMITER $$
CREATE TRIGGER `getUQID_Paitient` BEFORE INSERT ON `inpatient` FOR EACH ROW BEGIN
	INSERT INTO id_value_patient VALUES (NULL);
    SET NEW.`Unique_code` = CONCAT(NEW.`type`,LPAD(LAST_INSERT_ID(),9,'0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `M_Unique_code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Expiration_date` date NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`M_Unique_code`, `Name`, `Expiration_date`, `Price`) VALUES
(18, 'Panadol', '2021-10-12', 10),
(19, 'Paracetamol', '2022-10-05', 15),
(20, 'Efferalgan', '2022-10-03', 20),
(21, 'Suppressant', '2022-10-03', 20);

-- --------------------------------------------------------

--
-- Table structure for table `meffect`
--

CREATE TABLE `meffect` (
  `M_Unique_code` int(11) NOT NULL,
  `Effect` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m_provider`
--

CREATE TABLE `m_provider` (
  `P_Unique_code` int(11) NOT NULL,
  `M_Unique_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `ID` int(11) NOT NULL,
  `Unique_code` varchar(10) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Full_name` varchar(100) GENERATED ALWAYS AS (concat(`First_name`,' ',`Last_name`)) VIRTUAL,
  `DoB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL COMMENT 'male/female',
  `Address` varchar(50) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `Degree_year` year(4) DEFAULT NULL,
  `D_Unique_code` int(11) NOT NULL,
  `Related_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `nurse`
--
DELIMITER $$
CREATE TRIGGER `getUQID_Nur` BEFORE INSERT ON `nurse` FOR EACH ROW BEGIN
	INSERT INTO id_value_nur VALUES (NULL);
    SET NEW.`Unique_code` = CONCAT('Nur',LPAD(LAST_INSERT_ID(),4,'0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `nursephone`
--

CREATE TABLE `nursephone` (
  `E_Unique_code` int(11) NOT NULL,
  `Phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `outpatient`
--

CREATE TABLE `outpatient` (
  `ID` int(11) NOT NULL,
  `Unique_code` varchar(25) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `DoB` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Phone_number` text NOT NULL,
  `type` varchar(2) NOT NULL,
  `Full_name` varchar(100) GENERATED ALWAYS AS (concat(`First_name`,' ',`Last_name`)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outpatient`
--

INSERT INTO `outpatient` (`ID`, `Unique_code`, `First_name`, `Last_name`, `DoB`, `Gender`, `Address`, `Phone_number`, `type`) VALUES
(0, 'OP000000085', 'Nguyen ', 'D', '15/09/2008', 'male', 'Distric 3', '836947120', 'OP'),
(86, 'OP000000087', 'Nguyen ', 'F', '03/01/2000', 'male', 'Distric 11', '87695410', 'OP'),
(87, 'OP000000088', 'Nguyen', 'J', '14/05/2001', 'female', 'Distric 7', '85697410', 'OP'),
(90, 'OP000000091', 'Nguyen', 'X', '05/05/2008', 'female', 'Distric 4', '789603541', 'OP'),
(91, 'OP000000092', 'Tran', 'M', '30/01/2002', 'male', 'Distric 10', '9863214789', 'OP');

--
-- Triggers `outpatient`
--
DELIMITER $$
CREATE TRIGGER `getUQID_Paitient1` BEFORE INSERT ON `outpatient` FOR EACH ROW BEGIN
	INSERT INTO id_value_patient VALUES (NULL);
    SET NEW.`Unique_code` = CONCAT(NEW.`type`,LPAD(LAST_INSERT_ID(),9,'0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `P_Unique_code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Phone_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treating_doctor`
--

CREATE TABLE `treating_doctor` (
  `P_ID` int(11) NOT NULL,
  `Treating_doctor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `E_Unique_code` int(11) NOT NULL,
  `P_ID` int(11) NOT NULL,
  `M_Unique_code` int(11) NOT NULL,
  `Result` text NOT NULL,
  `Start_date` text NOT NULL,
  `End_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`E_Unique_code`, `P_ID`, `M_Unique_code`, `Result`, `Start_date`, `End_date`) VALUES
(0, 88, 21, 'Ok', '16/05/2022', '06/11/2022'),
(0, 89, 18, 'Ok', '10/05/2021', '02/11/2022'),
(20, 93, 20, 'Ok', '01/11/2022', '03/11/2022'),
(21, 89, 21, 'Ok', '02/11/2022', '30/11/2022'),
(21, 92, 18, 'Sot', '31/10/2022', '02/11/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caring_nurse`
--
ALTER TABLE `caring_nurse`
  ADD PRIMARY KEY (`Pa_ID`),
  ADD KEY `caring_nurse_ibfk_4` (`Caring nurse`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Unique_code`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_doc_uqcode` (`Unique_code`),
  ADD UNIQUE KEY `uq_doc_uqcode1` (`Unique_code`),
  ADD KEY `doctor_ibfk_1` (`D_Unique_code`);

--
-- Indexes for table `doctorphone`
--
ALTER TABLE `doctorphone`
  ADD PRIMARY KEY (`E_Unique_code`,`Phone_number`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`E_Unique_code`,`P_ID`,`M_Unique_code`),
  ADD KEY `Pid` (`P_ID`),
  ADD KEY `Municode` (`M_Unique_code`),
  ADD KEY `E_Unique_code` (`E_Unique_code`);

--
-- Indexes for table `id_value_doc`
--
ALTER TABLE `id_value_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_value_nur`
--
ALTER TABLE `id_value_nur`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `id_value_patient`
--
ALTER TABLE `id_value_patient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`M_Unique_code`,`Pro_Unique_code`),
  ADD KEY `Pro_Unique_code` (`Pro_Unique_code`);

--
-- Indexes for table `inpatient`
--
ALTER TABLE `inpatient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_IP_uqcode` (`Unique_code`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`M_Unique_code`);

--
-- Indexes for table `meffect`
--
ALTER TABLE `meffect`
  ADD PRIMARY KEY (`M_Unique_code`,`Effect`);

--
-- Indexes for table `m_provider`
--
ALTER TABLE `m_provider`
  ADD PRIMARY KEY (`P_Unique_code`,`M_Unique_code`),
  ADD KEY `M_Unique_code` (`M_Unique_code`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_nur_uqcode` (`Unique_code`),
  ADD KEY `fk_nr_room` (`D_Unique_code`);

--
-- Indexes for table `nursephone`
--
ALTER TABLE `nursephone`
  ADD PRIMARY KEY (`E_Unique_code`,`Phone_number`);

--
-- Indexes for table `outpatient`
--
ALTER TABLE `outpatient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_OP_UqCode` (`Unique_code`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`P_Unique_code`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`E_Unique_code`,`P_ID`,`M_Unique_code`),
  ADD KEY `M_Unique_code` (`M_Unique_code`),
  ADD KEY `P_ID` (`P_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Unique_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `id_value_doc`
--
ALTER TABLE `id_value_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `id_value_nur`
--
ALTER TABLE `id_value_nur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_value_patient`
--
ALTER TABLE `id_value_patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `M_Unique_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `P_Unique_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caring_nurse`
--
ALTER TABLE `caring_nurse`
  ADD CONSTRAINT `caring_nurse_ibfk_1` FOREIGN KEY (`Pa_ID`) REFERENCES `outpatient` (`ID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`D_Unique_code`) REFERENCES `department` (`Unique_code`);

--
-- Constraints for table `doctorphone`
--
ALTER TABLE `doctorphone`
  ADD CONSTRAINT `doctorphone_ibfk_1` FOREIGN KEY (`E_Unique_code`) REFERENCES `doctor` (`ID`);

--
-- Constraints for table `examination`
--
ALTER TABLE `examination`
  ADD CONSTRAINT `examination_ibfk_3` FOREIGN KEY (`M_Unique_code`) REFERENCES `medication` (`M_Unique_code`),
  ADD CONSTRAINT `examination_ibfk_4` FOREIGN KEY (`E_Unique_code`) REFERENCES `doctor` (`ID`),
  ADD CONSTRAINT `examination_ibfk_5` FOREIGN KEY (`P_ID`) REFERENCES `outpatient` (`ID`);

--
-- Constraints for table `import`
--
ALTER TABLE `import`
  ADD CONSTRAINT `import_ibfk_1` FOREIGN KEY (`M_Unique_code`) REFERENCES `medication` (`M_Unique_code`),
  ADD CONSTRAINT `import_ibfk_2` FOREIGN KEY (`Pro_Unique_code`) REFERENCES `provider` (`P_Unique_code`);

--
-- Constraints for table `meffect`
--
ALTER TABLE `meffect`
  ADD CONSTRAINT `meffect_ibfk_1` FOREIGN KEY (`M_Unique_code`) REFERENCES `medication` (`M_Unique_code`);

--
-- Constraints for table `m_provider`
--
ALTER TABLE `m_provider`
  ADD CONSTRAINT `m_provider_ibfk_1` FOREIGN KEY (`M_Unique_code`) REFERENCES `medication` (`M_Unique_code`),
  ADD CONSTRAINT `m_provider_ibfk_2` FOREIGN KEY (`P_Unique_code`) REFERENCES `provider` (`P_Unique_code`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`D_Unique_code`) REFERENCES `department` (`Unique_code`);

--
-- Constraints for table `nursephone`
--
ALTER TABLE `nursephone`
  ADD CONSTRAINT `nursephone_ibfk_1` FOREIGN KEY (`E_Unique_code`) REFERENCES `nurse` (`ID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`E_Unique_code`) REFERENCES `doctor` (`ID`),
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`M_Unique_code`) REFERENCES `medication` (`M_Unique_code`),
  ADD CONSTRAINT `treatment_ibfk_3` FOREIGN KEY (`P_ID`) REFERENCES `inpatient` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
