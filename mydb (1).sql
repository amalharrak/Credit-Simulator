-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2020 at 03:09 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tclient`
--

DROP TABLE IF EXISTS `tclient`;
CREATE TABLE IF NOT EXISTS `tclient` (
  `NumCli` int(20) NOT NULL AUTO_INCREMENT,
  `NomCli` varchar(30) NOT NULL,
  `AdrCli` varchar(30) NOT NULL,
  `VilCli` varchar(30) NOT NULL,
  `TelCli` varchar(30) NOT NULL,
  `PassCli` varchar(30) NOT NULL,
  `MailCli` varchar(30) NOT NULL,
  PRIMARY KEY (`NumCli`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tclient`
--

INSERT INTO `tclient` (`NumCli`, `NomCli`, `AdrCli`, `VilCli`, `TelCli`, `PassCli`, `MailCli`) VALUES


(27, 'amal harrak', 'sale ,hay salam', 'rabat', '0623161742', '123', 'amalharrak77@gmail.com'),
(28, 'yaya', 'sale ,hay salam', 'rabat', '0623161742', '123', 'yaya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tcredit`
--

DROP TABLE IF EXISTS `tcredit`;
CREATE TABLE IF NOT EXISTS `tcredit` (
  `NumCred` int(20) NOT NULL AUTO_INCREMENT,
  `MonCre` float NOT NULL,
  `DurCre` float NOT NULL,
  `TauCre` float NOT NULL,
  `AnnCred` float NOT NULL,
  `NumCli` int(11) NOT NULL,
  `DatCred` date NOT NULL,
  PRIMARY KEY (`NumCred`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tcredit`
--

INSERT INTO `tcredit` (`NumCred`, `MonCre`, `DurCre`, `TauCre`, `AnnCred`, `NumCli`, `DatCred`) VALUES


(53, 39.081, 10, 10, 10, 27, '2020-11-04'),
(54, 5, 0, 3, 50, 27, '2020-11-04'),
(55, 128.964, 50, 50, 50, 28, '2020-11-04'),
(56, 60, 2, 70, 50, 28, '2020-11-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
