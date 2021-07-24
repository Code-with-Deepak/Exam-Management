-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 06:50 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`) VALUES
('Deepak', '123');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Id` int(10) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `opt1` varchar(250) NOT NULL,
  `opt2` varchar(250) NOT NULL,
  `opt3` varchar(250) NOT NULL,
  `opt4` varchar(250) NOT NULL,
  `Answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `Answer`) VALUES
(1, 'Who invented C Language.?', 'Charles Babbage', 'Grahambel', 'Dennis Ritchie', 'Steve Jobs', 'Charles Babbage'),
(2, 'C is a which level language.?', 'High Level', 'Low Level', 'Low + high', 'Medium', 'High Level');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S.no` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Dept` varchar(30) NOT NULL,
  `RegNo` varchar(30) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S.no`, `Name`, `Dept`, `RegNo`, `Email`, `Mobile`, `Password`, `Marks`) VALUES
(2, 'Sunil', 'ECE', '19ECE023', 'sunil.r.m20025@gmail.com', '9489347988', '123', 0),
(1, 'Deepak', 'IT', '19IT013', 'rmdeepakkumar19it@srishakthi.ac.in', '9443820773', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserName`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RegNo`,`Email`,`Mobile`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
