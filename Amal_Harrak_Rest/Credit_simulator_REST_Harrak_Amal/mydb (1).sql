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
(1, 'amalharrak', 'hay karima sale', 'rabat', '0623161742', 'amalharrak97', 'amalharrak77@gmail.com'),
(2, 'meryemharrak', 'hay karima sale', 'rabat', '0623161742', 'meryemharrak97', 'meryemharrak77@gmail.com'),
(3, 'badrhari', 'sale ,hay salam', 'rabat', '0623161742', 'badrhari97', 'badrhari77@gmail.com'),
(4, 'yaya', 'sale ,hay salam', 'rabat', '0623161742', 'yaya', 'yaya@gmail.com'),
(7, 'rayan', 'sale ,hay salam', 'rabat', '0623161742', 'rayan97', 'rayan@gmail.com'),
(8, 'amalharrak77@gmail.com', 'sale ,hay salam', 'rabat', '0623161742', 'amalharrak97', 'amalharrak77@gmail.com'),
(9, 'amalharrak77@gmail.com', 'sale ,hay salam', 'rabat', '0623161742', 'amalharrak97', 'amalharrak77@gmail.com'),
(10, 'fadwa', 'sale ,hay salam', 'rabat', '0623161742', 'fadwa97', 'fadwa@gmail.com'),
(11, 'amalharrak77@gmail.com', 'sale ,hay salam', 'rabat', '0623161742', 'amalharrak97', 'amalharrak77@gmail.com'),
(12, 'amal', 'sale ,hay salam', 'rabat', '0623161742', 'amal', 'amal@gmail.com'),
(13, '', '', '', '0623565623', '', ''),
(14, 'jtyjsrt', 'erhqer', 'erhr', '0623161742', 'erhr', 'trher'),
(15, 'aa', 'ilerghkerg', 'bjegzze', '0623161742', '06315', ''),
(16, '4535', 'tykty', 'ytit', '0623161742', 'riusr-i', ''),
(17, 'tht', 'y;iy', ',yi', '0623161742', ',èi', ''),
(18, '', '', '', '0623161742', '', ''),
(19, 'f', 'ezf', 'ef', '0623161742', 'ezf', 'zef'),
(20, 'Yassine', 'sale ,hay salam', 'rabat', '0623161742', 'yassine', 'amalharrak77@gmail.com'),
(21, 'amal harrak', 'sale ,hay salam', 'rabat', '0623161742', 'yassine', 'yassine@gmail.com'),
(22, 'yaya', 'sale ,hay salam', 'rabat', '0623161742', 'yaya', 'yoyo@gmail.com'),
(23, 'yahya', 'sale ,hay salam', 'rabat', '0623161742', 'yahya', 'yahya@gmail.com'),
(24, 'salim', 'sale ,hay salam', 'rabat', '0623161742', 'salim97', 'salim@gmail.com'),
(25, 'salma', 'sale ,hay salam', 'rabat', '0623161742', 'salma97', 'salma@gmail.com'),
(26, 'salwa', 'sale ,hay salam', 'rabat', '0623161742', 'salwa', 'salwa@gmail.com'),
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
(1, 12, 12, 12, 1.06274, 0, '2020-10-30'),
(2, 12, 12, 12, 1.06274, 0, '2020-10-30'),
(3, 2260.54, 45, 75, 123, 0, '2020-10-30'),
(4, 12, 12, 12, 1.06274, 0, '2020-10-30'),
(5, 1.3, 1, 1.3, 1.3014, 0, '2020-10-30'),
(6, 1, 1, 1, 1.00083, 2, '2020-10-30'),
(7, 10, 10, 10, 1.04438, 1, '2020-10-30'),
(8, 10, 10, 10, 1.04438, 1, '2020-10-30'),
(9, 10, 10, 10, 1.04438, 1, '2020-10-30'),
(10, 20, 20, 20, 1.16847, 1, '2020-10-30'),
(11, 157.485, 13, 13, 13, 1, '2020-10-30'),
(12, 1, 1, 12, 1.00949, 1, '2020-10-30'),
(13, 80, 80, 80, 4.09755, 2, '2020-10-30'),
(14, 2587.76, 90, 40, 80, 2, '2020-10-30'),
(15, 50, 50, 50, 2.10737, 6, '2020-10-30'),
(16, 50, 50, 50, 2.10737, 6, '2020-10-30'),
(17, 1478.21, 70, 70, 70, 6, '2020-10-30'),
(18, 60, 60, 60, 2.6493, 7, '2020-10-30'),
(47, 16.332, 5, 5, 5, 25, '2020-11-04'),
(20, 10, 10, 10, 1.04438, 11, '2020-10-31'),
(49, 16.332, 5, 5, 5, 25, '2020-11-04'),
(22, 60, 60, 60, 2.6493, 11, '2020-10-31'),
(48, 39.081, 10, 10, 10, 25, '2020-11-04'),
(33, 10, 10, 10, 1.04438, 24, '2020-11-04'),
(35, 342.328, 20, 20, 20, 24, '2020-11-04'),
(34, 10, 10, 10, 1.04438, 24, '2020-11-04'),
(27, 99, 99, 98, 5.81981, 23, '2020-11-01'),
(46, 50, 50, 5, 1.10734, 25, '2020-11-04'),
(29, 19, 1, 17, 18, 23, '2020-11-01'),
(30, 99, 99, 98, 5.81981, 23, '2020-11-01'),
(31, 99, 99, 98, 5.81981, 23, '2020-11-01'),
(32, 19, 1, 17, 18, 23, '2020-11-01'),
(36, 30, 1, 30, 30, 24, '2020-11-04'),
(37, 425.476, 90, 9, 90, 25, '2020-11-04'),
(38, 80, 2, 80, 80, 25, '2020-11-04'),
(39, 425.476, 90, 9, 90, 25, '2020-11-04'),
(40, 310.311, 50, 5, 50, 25, '2020-11-04'),
(41, 310.311, 50, 5, 50, 25, '2020-11-04'),
(42, 68.8192, 20, 20, 20, 25, '2020-11-04'),
(43, 68.8192, 20, 20, 20, 25, '2020-11-04'),
(44, 20, 1, 20, 20, 25, '2020-11-04'),
(45, 50, 50, 5, 1.10734, 25, '2020-11-04'),
(50, 8, 1, 8, 8, 25, '2020-11-04'),
(51, 128.964, 50, 50, 50, 26, '2020-11-04'),
(52, 50, 1, 50, 50, 26, '2020-11-04'),
(53, 39.081, 10, 10, 10, 27, '2020-11-04'),
(54, 5, 0, 3, 50, 27, '2020-11-04'),
(55, 128.964, 50, 50, 50, 28, '2020-11-04'),
(56, 60, 2, 70, 50, 28, '2020-11-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
