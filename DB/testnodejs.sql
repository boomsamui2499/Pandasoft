-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 04:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testnodejs`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_INFO` (IN `id` INT(4))  SELECT fname,lname,username,status FROM user where no = id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `fname`, `lname`, `username`, `password`, `status`) VALUES
(1, 'กุ๊กไก่', 'นะจ๊ะ', '123', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 1),
(2, 'อุอิ', 'อุอิ', '789', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 1),
(3, 'คิคิ', 'คุคุ', '111', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 1),
(5, 'ftest1', 'ltest1', '987', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 1),
(7, 'testaaa', 'testbbb', '666', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 1),
(8, 'testaaa', 'testbbb', '555', '$2b$10$pTevmd6sqt8Kt9bqdV2Eg.o.YtvT1VObPTJrfU2HlLfpqRLCMSjPq', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
