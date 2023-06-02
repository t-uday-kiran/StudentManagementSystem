-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 04:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `april`
--

CREATE TABLE `april` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `april`
--

INSERT INTO `april` (`AttendeeCode`, `attendeeName`, `designation`, `totalDays`, `totalHolidays`, `workingDays`, `fulldayPresent`, `halfdayPresent`, `errors`, `totalAbsents`, `totalLeaves`, `weekOffs`, `onDuty`, `eligibleDays`, `attendancePercentage`) VALUES
('20M65A0514', 'BHANU PRAKASH', 'YEAR 1', 28, 26, 28, 25, 25, 0, 0, 1, 2, 25, 25, 76),
('22M61A0206', 'KORATLA NAVEEN', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0453', 'SHAIK AYESHA ANJUM', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0455', 'SHAIK MUHIB PASHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0464', 'VEMPATI ARUN', 'YEAR 1', 28, 26, 28, 12, 45, 0, 28, 85, 85, 5, 5, 0),
('22M61A04A0', 'MANDALOJU NAGA KALYANI', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 0, 0, 0),
('22M61A04B5', 'SANGOJU KARTHEEK', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A04B6', 'SHAIK ASRATH ALI', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0506', 'BAYYARAPU MOKSHAGNA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0522', 'GUNDA SOMA SIDDHARDHA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0528', 'KANCHARLA PRASAD', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0545', 'PILLI VENU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0568', 'TANNEERU CHARAN', 'YEAR 1', 28, 26, 28, 12, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A0572', 'VANGARU CHARITHA', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 5, 5, 98),
('22M61A0582', 'BIRY SOMESHWAR', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0588', 'CHERUKURI RUDHIRA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0598', 'GOGULA LAXMI DEVI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05A7', 'JAKKAMPUDI MADHURI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05B8', 'MATHAM SAI DEEPTHI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05C2', 'MOHAMMED SOWBIYA', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A05E9', 'VEMULA SOUMITH', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05I8', 'SYED ABDUL FURQAN', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A05I9', 'TEKUMATLA RAJEEV', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6623', 'GADDAM SUSHMITHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6636', 'KOTIPALLI HEMANTH', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6702', 'BANOTH SINDHU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6729', 'SUNKARA RAGHURAM', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `august`
--

CREATE TABLE `august` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `august`
--

INSERT INTO `august` (`AttendeeCode`, `attendeeName`, `designation`, `totalDays`, `totalHolidays`, `workingDays`, `fulldayPresent`, `halfdayPresent`, `errors`, `totalAbsents`, `totalLeaves`, `weekOffs`, `onDuty`, `eligibleDays`, `attendancePercentage`) VALUES
('20M65A0514', 'BHANU PRAKASH', 'YEAR 1', 28, 26, 28, 25, 25, 0, 0, 1, 2, 25, 25, 76),
('22M61A0206', 'KORATLA NAVEEN', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0453', 'SHAIK AYESHA ANJUM', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0455', 'SHAIK MUHIB PASHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0464', 'VEMPATI ARUN', 'YEAR 1', 28, 26, 28, 12, 45, 0, 28, 85, 85, 5, 5, 0),
('22M61A04A0', 'MANDALOJU NAGA KALYANI', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 0, 0, 0),
('22M61A04B5', 'SANGOJU KARTHEEK', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A04B6', 'SHAIK ASRATH ALI', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0506', 'BAYYARAPU MOKSHAGNA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0522', 'GUNDA SOMA SIDDHARDHA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0528', 'KANCHARLA PRASAD', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0545', 'PILLI VENU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0568', 'TANNEERU CHARAN', 'YEAR 1', 28, 26, 28, 12, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A0572', 'VANGARU CHARITHA', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 5, 5, 98),
('22M61A0582', 'BIRY SOMESHWAR', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0588', 'CHERUKURI RUDHIRA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0598', 'GOGULA LAXMI DEVI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05A7', 'JAKKAMPUDI MADHURI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05B8', 'MATHAM SAI DEEPTHI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05C2', 'MOHAMMED SOWBIYA', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A05E9', 'VEMULA SOUMITH', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05I8', 'SYED ABDUL FURQAN', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A05I9', 'TEKUMATLA RAJEEV', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6623', 'GADDAM SUSHMITHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6636', 'KOTIPALLI HEMANTH', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6702', 'BANOTH SINDHU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6729', 'SUNKARA RAGHURAM', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `december`
--

CREATE TABLE `december` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `december`
--

INSERT INTO `december` (`AttendeeCode`, `attendeeName`, `designation`, `totalDays`, `totalHolidays`, `workingDays`, `fulldayPresent`, `halfdayPresent`, `errors`, `totalAbsents`, `totalLeaves`, `weekOffs`, `onDuty`, `eligibleDays`, `attendancePercentage`) VALUES
('20M65A0514', 'BHANU PRAKASH', 'YEAR 1', 28, 26, 28, 25, 25, 0, 0, 1, 2, 25, 25, 76),
('22M61A0206', 'KORATLA NAVEEN', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0453', 'SHAIK AYESHA ANJUM', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0455', 'SHAIK MUHIB PASHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0464', 'VEMPATI ARUN', 'YEAR 1', 28, 26, 28, 12, 45, 0, 28, 85, 85, 5, 5, 0),
('22M61A04A0', 'MANDALOJU NAGA KALYANI', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 0, 0, 0),
('22M61A04B5', 'SANGOJU KARTHEEK', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A04B6', 'SHAIK ASRATH ALI', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0506', 'BAYYARAPU MOKSHAGNA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0522', 'GUNDA SOMA SIDDHARDHA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0528', 'KANCHARLA PRASAD', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0545', 'PILLI VENU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0568', 'TANNEERU CHARAN', 'YEAR 1', 28, 26, 28, 12, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A0572', 'VANGARU CHARITHA', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 5, 5, 98),
('22M61A0582', 'BIRY SOMESHWAR', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0588', 'CHERUKURI RUDHIRA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0598', 'GOGULA LAXMI DEVI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05A7', 'JAKKAMPUDI MADHURI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05B8', 'MATHAM SAI DEEPTHI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05C2', 'MOHAMMED SOWBIYA', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A05E9', 'VEMULA SOUMITH', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05I8', 'SYED ABDUL FURQAN', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A05I9', 'TEKUMATLA RAJEEV', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6623', 'GADDAM SUSHMITHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6636', 'KOTIPALLI HEMANTH', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6702', 'BANOTH SINDHU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6729', 'SUNKARA RAGHURAM', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `february`
--

CREATE TABLE `february` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `january`
--

CREATE TABLE `january` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `july`
--

CREATE TABLE `july` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `june`
--

CREATE TABLE `june` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `march`
--

CREATE TABLE `march` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `may`
--

CREATE TABLE `may` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `may`
--

INSERT INTO `may` (`AttendeeCode`, `attendeeName`, `designation`, `totalDays`, `totalHolidays`, `workingDays`, `fulldayPresent`, `halfdayPresent`, `errors`, `totalAbsents`, `totalLeaves`, `weekOffs`, `onDuty`, `eligibleDays`, `attendancePercentage`) VALUES
('20M65A0514', 'BHANU PRAKASH', 'YEAR 1', 28, 26, 28, 25, 25, 0, 0, 1, 2, 25, 25, 76),
('22M61A0206', 'KORATLA NAVEEN', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0453', 'SHAIK AYESHA ANJUM', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0455', 'SHAIK MUHIB PASHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0464', 'VEMPATI ARUN', 'YEAR 1', 28, 26, 28, 12, 45, 0, 28, 85, 85, 5, 5, 0),
('22M61A04A0', 'MANDALOJU NAGA KALYANI', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 0, 0, 0),
('22M61A04B5', 'SANGOJU KARTHEEK', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A04B6', 'SHAIK ASRATH ALI', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0506', 'BAYYARAPU MOKSHAGNA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0522', 'GUNDA SOMA SIDDHARDHA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0528', 'KANCHARLA PRASAD', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A0545', 'PILLI VENU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0568', 'TANNEERU CHARAN', 'YEAR 1', 28, 26, 28, 12, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A0572', 'VANGARU CHARITHA', 'YEAR 1', 28, 0, 28, 0, 45, 0, 28, 85, 85, 5, 5, 98),
('22M61A0582', 'BIRY SOMESHWAR', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A0588', 'CHERUKURI RUDHIRA', 'YEAR 1', 28, 26, 28, 12, 0, 0, 28, 85, 85, 0, 0, 0),
('22M61A0598', 'GOGULA LAXMI DEVI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05A7', 'JAKKAMPUDI MADHURI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05B8', 'MATHAM SAI DEEPTHI', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05C2', 'MOHAMMED SOWBIYA', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 0),
('22M61A05E9', 'VEMULA SOUMITH', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A05I8', 'SYED ABDUL FURQAN', 'YEAR 1', 28, 0, 28, 0, 45, 74, 28, 85, 85, 5, 5, 98),
('22M61A05I9', 'TEKUMATLA RAJEEV', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6623', 'GADDAM SUSHMITHA', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6636', 'KOTIPALLI HEMANTH', 'YEAR 1', 28, 26, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6702', 'BANOTH SINDHU', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0),
('22M61A6729', 'SUNKARA RAGHURAM', 'YEAR 1', 28, 0, 28, 0, 0, 0, 28, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `november`
--

CREATE TABLE `november` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `october`
--

CREATE TABLE `october` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `september`
--

CREATE TABLE `september` (
  `AttendeeCode` varchar(50) NOT NULL,
  `attendeeName` text NOT NULL,
  `designation` text NOT NULL,
  `totalDays` int(10) NOT NULL,
  `totalHolidays` int(5) NOT NULL,
  `workingDays` int(5) NOT NULL,
  `fulldayPresent` int(5) NOT NULL,
  `halfdayPresent` int(5) NOT NULL,
  `errors` int(5) NOT NULL,
  `totalAbsents` int(5) NOT NULL,
  `totalLeaves` int(5) NOT NULL,
  `weekOffs` int(5) NOT NULL,
  `onDuty` int(5) NOT NULL,
  `eligibleDays` int(5) NOT NULL,
  `attendancePercentage` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `april`
--
ALTER TABLE `april`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `august`
--
ALTER TABLE `august`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `december`
--
ALTER TABLE `december`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `february`
--
ALTER TABLE `february`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `january`
--
ALTER TABLE `january`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `july`
--
ALTER TABLE `july`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `june`
--
ALTER TABLE `june`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `may`
--
ALTER TABLE `may`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `november`
--
ALTER TABLE `november`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `october`
--
ALTER TABLE `october`
  ADD PRIMARY KEY (`AttendeeCode`);

--
-- Indexes for table `september`
--
ALTER TABLE `september`
  ADD PRIMARY KEY (`AttendeeCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
