-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2019 at 01:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `userid` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `fac_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `take_id` int(11) NOT NULL,
  `dol` date NOT NULL,
  `presentee` tinyint(1) NOT NULL,
  `thOrpr` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`take_id`, `dol`, `presentee`, `thOrpr`) VALUES
(1, '2016-05-05', 111, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `sem` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `th` decimal(3,0) NOT NULL,
  `pr` decimal(2,0) NOT NULL,
  `orl` decimal(2,0) NOT NULL,
  `thcr` decimal(2,0) NOT NULL,
  `prcr` decimal(2,0) NOT NULL,
  `ocr` decimal(2,0) NOT NULL,
  `totcr` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `sem`, `th`, `pr`, `orl`, `thcr`, `prcr`, `ocr`, `totcr`) VALUES
('1', 'MATH', '1', '40', '30', '10', '5', '4', '1', '10'),
('2', 'CIRCUIT THEORY', '4', '1', '2', '1', '4', '6', '3', '20'),
('3', 'THEORY OF MACHINES', '3', '2', '3', '1', '3', '4', '6', '20');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(6) NOT NULL,
  `name` varchar(45) NOT NULL,
  `hod` varchar(10) NOT NULL,
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`, `hod`, `budget`) VALUES
('CSEN', 'COMPUTER SCINCE AND ENGINEERING', 'S.M DAS', 12),
('ECEN', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'P.K NAG', 13),
('MECH', 'MECHANICAL ENGINEERING', 'SN BANERJE', 14);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` int(10) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `middle_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `per_address` text NOT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `postal_code` varchar(10) NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `email` varchar(60) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `experience` decimal(10,0) NOT NULL,
  `doj` date NOT NULL,
  `dob` date NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `first_name`, `middle_name`, `last_name`, `username`, `password`, `per_address`, `city`, `state`, `country`, `postal_code`, `phoneno`, `email`, `qualification`, `experience`, `doj`, `dob`, `salary`, `dept`) VALUES
(1, 'Pratik', 'Kumar', 'Verma', 'pratik123', '12345', '300,Karol Bag', 'Delhi', 'Delhi', 'India', '778844', '2147483647', 'email@email.com', 'B-Tech', '3', '2017-01-10', '1983-02-15', '30000', 'CSE'),
(2, 'Bankim', '', 'Chandra', 'bnkc111', '12345', 'H11,Sector 2,Hill Park', 'Mumbai', 'Maharastra', 'India', '478596', '7845129635', 'email2@email.com', 'PHD', '25', '2011-05-08', '1970-10-05', '50000', 'Mech'),
(3, 'Akram', '', 'Mallik', 'akramml12', '12345', 'AliNagar', 'New Delhi', 'Delhi', 'India', '445577', '4578963214', 'email3@email.com', 'PHD', '14', '2010-05-16', '1975-01-05', '40000', 'IT'),
(4, 'ASHOK', '', 'JHA', 'JHA789', 'ASHK12', 'RML-98 SINDRI', 'DHANBAD', 'JHARKHAND', 'INDIA', '828122', '8957412563', 'ASHOKGRT@GMAIL.COM', 'M.TECH (ECE)', '5', '2014-09-11', '1980-05-06', '40000', 'ECE'),
(5, 'SHYAM', 'LAL', 'Chandra', 'LAL786', 'CHD43', '91/C PURBASAN', 'RANCHI', 'JHARKHAND', 'INDIA', '890845', '985471258', 'CHANDRASUFI@YAHOO.COM', 'M.TECH (CSE)', '2', '2014-09-11', '1990-08-11', '35000', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(3) NOT NULL,
  `room_number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` int(10) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `middle_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `sem` varchar(10) NOT NULL,
  `doa` date NOT NULL,
  `dob` date NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `dept` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `first_name`, `middle_name`, `last_name`, `address`, `sem`, `doa`, `dob`, `phoneno`, `dept`) VALUES
(1551226, 'RITIK', 'KUMAR', 'GUPTA', 'New Colony Nimdih', '3', '2016-10-10', '1996-10-10', '2147483647', 'CSE'),
(1551229, 'GAURAV ', 'RAJ', 'SINHA', '32,RR PLOT', '3', '2016-10-10', '1997-06-11', '2147483647', 'CSE'),
(1551258, 'MANISH', '', 'KUMAR', 'QTR-32 BISTUPUR, JAMSEDPUR', '3', '2016-10-10', '1996-03-08', '2147483647', 'CSE'),
(1551260, 'AMIT', 'KUMAR', 'MANDAL', 'FLAT N0.43,2nd FLOOR TEQUILA TOWER,\r\nJADAVPUR, KOLKATA', '4', '2016-10-04', '1998-03-10', '9965782456', 'CSE'),
(1551261, 'NAVEED', '', 'WANI', 'S/O VIJAY PRASAD, SINDRI (DHANBAD)', '4', '2017-05-21', '1996-05-10', '8954712563', 'ECE'),
(1551263, 'SHUBHAM', NULL, 'KUMAR', 'HOUSE NO 2, FITTER QTR. GARIAHAT ,KOLKATA', '4', '2017-05-30', '1996-04-19', '9455782457', 'ECE'),
(1551265, 'SHASHIKANT', '', 'PANDEY', 'FLAT_NO-56 ARCHANA ENCLAVE ,KASBA [KOLKATA]', '4', '2017-05-17', '1997-06-10', '9158647527', 'ECE'),
(1551267, 'AMAN', 'LAL', 'PANDA', 'HOUSE_N0-43 ,RR PLOT,KOLKATA', '5', '2017-06-17', '1995-05-13', '9365748521', 'MECH'),
(1551268, 'JAGDISH', 'KUMAR', 'MAHATO', '91/C ANANDPUR ,KOLKATA', '5', '2017-06-19', '1994-02-06', '9934119936', 'MECH'),
(1551269, 'ABHISHEK', 'KUMAR', 'JHA', 'PLOT_NO-90 JHARIA (DHANBAD),JHARKHAND', '5', '2017-06-12', '1996-09-03', '8409645171', 'MECH');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `take_id` int(11) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `year` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`take_id`, `rollno`, `course_id`, `year`) VALUES
(101, '1551258', '1', '2016'),
(102, '1551226', '1', '2016'),
(103, '1551229', '1', '2016'),
(104, '1551260', '1', '2016'),
(105, '1551261', '1', '2017'),
(106, '1551263', '2', '2017'),
(107, '1551265', '2', '2017'),
(108, '1551269', '3', '2017'),
(109, '1551268', '3', '2017'),
(110, '1551268', '3', '2017'),
(111, '1551267', '3', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `fac_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `year` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`fac_id`, `course_id`, `year`) VALUES
('1', '1', '2017'),
('1', '2', '2016'),
('3', '1', '2016'),
('3', '1', '2017'),
('4', '3', '2017'),
('5', '2', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `tlo`
--

CREATE TABLE `tlo` (
  `tlo_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `topic` text NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `topic_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`pass`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`take_id`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD UNIQUE KEY `fac_id` (`fac_id`,`course_id`,`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fac_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `rollno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1551270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
