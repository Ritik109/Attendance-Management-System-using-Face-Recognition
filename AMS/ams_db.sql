-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2018 at 09:10 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

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

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `pr` decimal(2,0) NOT NULL,
  `orl` decimal(2,0) NOT NULL,
  `th` decimal(3,0) NOT NULL,
  `tw` decimal(2,0) NOT NULL,
  `ia` decimal(2,0) DEFAULT NULL,
  `totam` decimal(3,0) NOT NULL,
  `thcr` decimal(2,0) NOT NULL,
  `prcr` decimal(2,0) NOT NULL,
  `totcr` decimal(2,0) NOT NULL,
  `totalc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` varchar(10) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `middle_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `per_address` text NOT NULL,
  `res_address` text NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `email` varchar(60) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `experience` decimal(10,0) NOT NULL,
  `doj` date NOT NULL,
  `dob` date NOT NULL,
  `salary` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `first_name`, `middle_name`, `last_name`, `per_address`, `res_address`, `phoneno`, `email`, `qualification`, `experience`, `doj`, `dob`, `salary`) VALUES
('xsp_12', 'manish', 'xs-p', 'pila', 'grgvf', 'getgrtgt', '5689741', 'gygiug@frehfr.com', 'b.tech', '4', '2018-04-08', '2017-12-04', '46315'),
('xsp_123', 'manish', 'xs-p', 'pila', 'hufhgerufr]fwrfwrf', 'f35t4gtg', '9999999999', 'rhwlifherifer', '', '0', '0000-00-00', '0000-00-00', '0');

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
  `class` varchar(4) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `doa` date NOT NULL,
  `dob` date NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `dept` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `first_name`, `middle_name`, `last_name`, `address`, `class`, `sem`, `doa`, `dob`, `phoneno`, `dept`) VALUES
(1551258, 'manish', 'lal', 'pila', 'pata kar ke baate te hai', '1', '2', '2018-10-09', '2018-05-06', '5689471236', 'cse');

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

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `fac_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `year` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`year`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
