-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 08:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bido`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AD_id` int(11) NOT NULL,
  `name` char(1) NOT NULL,
  `usname` varchar(25) NOT NULL,
  `psw` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cfm`
--

CREATE TABLE `cfm` (
  `c_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `telephone` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `c_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `c_pay`
--

CREATE TABLE `c_pay` (
  `p_id` int(11) NOT NULL,
  `wo_id` int(11) DEFAULT NULL,
  `p_amount` int(11) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `p_day` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metro`
--

CREATE TABLE `metro` (
  `m_id` int(11) NOT NULL,
  `wo_id` int(11) DEFAULT NULL,
  `m_date` date NOT NULL,
  `m_started` int(11) NOT NULL,
  `m_ended` int(11) NOT NULL,
  `m_income` int(11) NOT NULL,
  `m_profit` int(11) NOT NULL,
  `m_loss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `wo_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phoneno` varchar(30) NOT NULL,
  `type` varchar(25) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AD_id`);

--
-- Indexes for table `cfm`
--
ALTER TABLE `cfm`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `c_pay`
--
ALTER TABLE `c_pay`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `wo_id` (`wo_id`);

--
-- Indexes for table `metro`
--
ALTER TABLE `metro`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `wo_id` (`wo_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`wo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AD_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cfm`
--
ALTER TABLE `cfm`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_pay`
--
ALTER TABLE `c_pay`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metro`
--
ALTER TABLE `metro`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `wo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_pay`
--
ALTER TABLE `c_pay`
  ADD CONSTRAINT `c_pay_ibfk_1` FOREIGN KEY (`wo_id`) REFERENCES `worker` (`wo_id`);

--
-- Constraints for table `metro`
--
ALTER TABLE `metro`
  ADD CONSTRAINT `metro_ibfk_1` FOREIGN KEY (`wo_id`) REFERENCES `worker` (`wo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
