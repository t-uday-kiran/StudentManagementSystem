-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 13, 2023 at 04:39 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(4, 'Computer Science Engineering', 'CSE', '2023-04-12 07:19:11'),
(5, 'Electronics and Communication Engineering', 'ECE', '2023-04-12 07:20:00'),
(6, 'Mechanical Engineering', 'MEC', '2023-04-12 07:20:58'),
(7, 'Civil Engineering', 'CE', '2023-04-12 07:21:16'),
(8, 'Electrical & Electronics Engineering', 'EEE', '2023-04-12 07:29:00'),
(9, 'MBA', 'MBA', '2023-04-12 07:29:26'),
(10, 'COLLEGE', 'Principal', '2023-04-12 07:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
CREATE TABLE IF NOT EXISTS `tblemployees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`) VALUES
(13, 'Amith', 'Bindas', 'AmithBindas@gmail.com', '5fbeef621e6e9ff42afdf6968ae95c42', 'male', '01 January 1975', 'ECE', 'Khammam', '50', '8074606946', 1, '2023-04-12 07:24:32', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(14, 'Charan', 'Singh', 'CharanSingh@gmail.com', '4dadf69b85e8a9c19cb27ac58d9b39e0', 'male', '01 January 1975', 'CSE', 'Khammam', '52', '9505270597', 1, '2023-04-12 07:30:39', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(15, 'Srinivas', 'Rao', 'Srinivasrao@gmail.com', 'b0886992251607c66da2b532bc4ac6fb', 'male', '01 January 1975', 'CSE', 'Khammam', '50', '9391348832', 1, '2023-04-12 07:32:47', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(16, 'Ravi', 'Kumar', 'Ravikumar@gmail.com', 'b53c6683b10faeaa25eb27767b572e1b', 'male', '01 January 1980', 'MEC', 'Khammam', '50', '8888888888', 1, '2023-04-12 07:38:40', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(17, 'Srujan', 'Kumar', 'Srujankumar@gmail.com', 'f0a0ec4abf033fe7f9e5fe0e19579786', 'male', '01 January 1980', 'CE', 'Khammam', '50', '9999999999', 1, '2023-04-12 07:41:30', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(18, 'Raja', 'Kumar', 'sbitengg@gmail.com', 'f725e924c3117ef2f249b6f3028e91eb', 'male', '01 January 1985', 'Principal', 'Khammam', '50', '9396888826', 1, '2023-04-12 07:44:57', 'Admin', 'NO-IMAGE-AVAILABLE.jpg'),
(19, 'meena', 'kumari', 'meena@gmail.com', 'e465540add2f1cea04716f51efb79629', 'female', '01 January 1990', 'CSE', 'Khammam', '50', '111111115', 1, '2023-04-12 08:56:27', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(20, 'Ajay', 'Kumar', 'Ajaykumarg.me@gmail.com', 'f24a45efa6ddf9ddd9cedc2e00012d97', 'male', '18 November 2001', 'CSE', 'Khammam', '48', '9014598936', 1, '2023-04-12 09:19:28', 'Student', 'NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

DROP TABLE IF EXISTS `tblleaves`;
CREATE TABLE IF NOT EXISTS `tblleaves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` date NOT NULL,
  `AdminRemark` mediumtext,
  `registra_remarks` mediumtext NOT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int NOT NULL,
  `admin_status` int NOT NULL DEFAULT '0',
  `IsRead` int NOT NULL,
  `empid` int DEFAULT NULL,
  `num_days` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserEmail` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `registra_remarks`, `AdminRemarkDate`, `Status`, `admin_status`, `IsRead`, `empid`, `num_days`) VALUES
(13, 'Casual Leave', '2021-05-02', '2021-05-12', 'I want to take a leave.', '2021-05-20', 'Ok', 'ok', '2021-05-24 20:26:19 ', 1, 1, 1, 7, 3),
(14, 'Medical Leave', '08-05-2021', '11-05-2021', 'Noted', '0000-00-00', 'Not this time', '', '2021-05-21 0:31:10 ', 0, 0, 1, 6, 4),
(16, 'Casual Leave', '02-05-2021', '05-05-2021', 'Nice Leave', '2021-05-20', 'Ok', 'Noted', '2021-05-24 20:42:18 ', 1, 1, 1, 7, 4),
(17, 'Casual Leave', '11-05-2021', '15-05-2021', 'Just', '2021-05-21', 'Leave Approved', 'Noted', '2021-05-24 19:56:45 ', 1, 1, 1, 7, 5),
(18, 'Medical Leave', '10-04-2023', '11-04-2023', 'Medical Issues', '2023-04-10', 'ASDFG', '', '2023-04-10 14:42:41 ', 1, 0, 1, 10, 2),
(19, 'Casual Leave', '01-04-2023', '05-04-2023', 'fever', '2023-04-12', NULL, '', NULL, 0, 0, 0, 15, 5),
(20, 'Casual Leave', '12-04-2023', '13-04-2023', 'going to write AWS exam', '2023-04-12', 'all the best', 'All the best', '2023-04-12 15:15:21 ', 1, 1, 1, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

DROP TABLE IF EXISTS `tblleavetype`;
CREATE TABLE IF NOT EXISTS `tblleavetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(5, 'Casual Leave', 'Casual Leave', '2021-05-23', '2021-06-20', '2021-05-19 14:32:03'),
(6, 'Medical Leave', 'Medical Leave', '2021-05-05', '2021-05-28', '2021-05-19 15:29:05'),
(8, 'Other', 'Leave all staff', '31-05-2021', '04-06-2021', '2021-05-20 17:17:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
