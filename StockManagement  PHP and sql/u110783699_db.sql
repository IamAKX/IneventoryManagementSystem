
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2017 at 06:27 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u110783699_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT`
--

CREATE TABLE IF NOT EXISTS `CLIENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `COMPANY` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PHONE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ADDRESS` longtext COLLATE utf8_unicode_ci NOT NULL,
  `FAVOURITE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `CLIENT`
--

INSERT INTO `CLIENT` (`ID`, `NAME`, `COMPANY`, `PHONE`, `ADDRESS`, `FAVOURITE`) VALUES
(11, 'Akash Giri', 'Akash Applications Ltd.', '9804945122', '48, babupara,\nKolkata 700093,\nWest Bengal, India', 'Yes'),
(16, 'Abc', 'Abc Ltd.', '5142989865', '45, Nothern Winds,\nFork Street,\nCalifornia CA 78513, USA.', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `STOCK`
--

CREATE TABLE IF NOT EXISTS `STOCK` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `DESIGN` longtext COLLATE utf8_unicode_ci NOT NULL,
  `RACK` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `SUBRACK` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TEXTURE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `QUANTITY` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `BARCODE` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=73 ;

--
-- Dumping data for table `STOCK`
--

INSERT INTO `STOCK` (`ID`, `PID`, `DESIGN`, `RACK`, `SUBRACK`, `TEXTURE`, `QUANTITY`, `BARCODE`) VALUES
(56, '111', '111', '111', '111', '111', '111', 'Barcodes/111.jpg'),
(55, '44', '44', '44', '44', '44', '44', 'Barcodes/44.jpg'),
(54, '33', '33', '33', '33', '33', '33', 'Barcodes/33.jpg'),
(53, '22', '22', '22', '22', '22', '22', 'Barcodes/22.jpg'),
(52, '11', '11', '11', '11', '11', '11', 'Barcodes/11.jpg'),
(51, '9', '9', '9', '9', '9', '9', 'Barcodes/9.jpg'),
(50, '8', '8', '8', '8', '8', '8', 'Barcodes/8.jpg'),
(49, '7', '7', '7', '7', '7', '7', 'Barcodes/7.jpg'),
(48, '6', '6', '6', '6', '6', '6', 'Barcodes/6.jpg'),
(46, '4', '4', '4', '4', '4', '4', 'Barcodes/4.jpg'),
(47, '5', '5', '5', '5', '5', '5', 'Barcodes/5.jpg'),
(45, '3', '3', '3', '3', '3', '3', 'Barcodes/3.jpg'),
(41, 'V123 456', '130 mm Century Plywood', '120', '35', 'Smooth finish', '1520', 'Barcodes/V123 456.jpg'),
(44, '2', '12', '12', '2', '2', '2', 'Barcodes/2.jpg'),
(43, '1', '1', '1', '1', '1', '1', 'Barcodes/1.jpg'),
(57, '231', '32', '12', '321', '231', '213', 'Barcodes/231.jpg'),
(58, '123', '321', '12', '213', '23', '321', 'Barcodes/123.jpg'),
(59, '321', '3212', '231', '123', '123', '213', 'Barcodes/321.jpg'),
(60, '213', '231', '231', '213', '321', '312', 'Barcodes/213.jpg'),
(61, '45', '54', '43', '54', '54', '45', 'Barcodes/45.jpg'),
(62, '213132', '2', '321', '32', '321', '123', 'Barcodes/213132.jpg'),
(63, '56', '56', '64', '546', '56', '56', 'Barcodes/56.jpg'),
(64, '324', '56', '324', '564', '342', '65', 'Barcodes/324.jpg'),
(65, '23', '45', '23', '4543', '234', '45', 'Barcodes/23.jpg'),
(66, '87', '56', '231', '87', '56', '78', 'Barcodes/87.jpg'),
(67, '876', '786', '78', '86', '765', '685', 'Barcodes/876.jpg'),
(68, '43345', '54', '54334', '433', '334', '45', 'Barcodes/43345.jpg'),
(69, '45534', '545', '5434', '435545', '5543', '543', 'Barcodes/45534.jpg'),
(70, '4353', '43534', '5445', '435', '33435', '45454', 'Barcodes/4353.jpg'),
(71, '5345', '43', '4', '453', '4534', '435', 'Barcodes/5345.jpg'),
(72, '34534', '3435', '453', '435', '4334', '543', 'Barcodes/34534.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
