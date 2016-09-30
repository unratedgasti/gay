-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2016 at 10:31 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_tabulation`
--

-- --------------------------------------------------------

--
-- Table structure for table `contestant`
--

CREATE TABLE IF NOT EXISTS `contestant` (
  `contcode` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `schlname` char(50) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `vstat` varchar(20) DEFAULT NULL,
  `contnmbr` int(11) DEFAULT NULL,
  `flug` int(1) DEFAULT NULL,
  PRIMARY KEY (`contcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `contestant`
--

INSERT INTO `contestant` (`contcode`, `fname`, `lname`, `mname`, `schlname`, `address`, `age`, `height`, `weight`, `vstat`, `contnmbr`, `flug`) VALUES
(1, 'Richard Horris Fama', 'Castones', '', 'Agusan Del Sur', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 'Plaveo', 'Pineda', '', 'Angeles City', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(3, 'Roland', 'Teves Jr.', '', 'Bacolod City', NULL, NULL, NULL, NULL, NULL, 3, NULL),
(4, 'John', 'Raspado', '', 'Baguio City', NULL, NULL, NULL, NULL, NULL, 4, NULL),
(5, 'Leo Andrew', 'Ponce', '', 'Batangas', NULL, NULL, NULL, NULL, NULL, 5, NULL),
(6, 'Kyle Go', 'Tecson', '', 'Cagayan', NULL, NULL, NULL, NULL, NULL, 6, NULL),
(7, 'John Jeffrey', 'Carlos', '', 'Cavite', NULL, NULL, NULL, NULL, NULL, 7, NULL),
(8, 'Jesse', 'Regin', '', 'Cebu', NULL, NULL, NULL, NULL, NULL, 8, NULL),
(9, 'Jerome', 'Mantilla', '', 'Davao City', NULL, NULL, NULL, NULL, NULL, 9, NULL),
(10, 'Jose Jade Dafielmoto', 'Ingay', '', 'Davao Del Sur', NULL, NULL, NULL, NULL, NULL, 10, NULL),
(11, 'Madrid Villagonzalo', 'Layan', '', 'Dumaguete City', NULL, NULL, NULL, NULL, NULL, 11, NULL),
(12, 'Peter Leary', 'Brown', '', 'General Santos City', NULL, NULL, NULL, NULL, NULL, 12, NULL),
(13, 'Erick Jay', 'Dario', '', 'Ilocos Sur', NULL, NULL, NULL, NULL, NULL, 13, NULL),
(14, 'Greg', 'Obcena', '', 'Laguna', NULL, NULL, NULL, NULL, NULL, 14, NULL),
(15, 'Omar', 'Naga', '', 'Lanao Del Sur', NULL, NULL, NULL, NULL, NULL, 15, NULL),
(16, 'Ronald', 'Lamson', '', 'Lawang Bato, Valenzuela', NULL, NULL, NULL, NULL, NULL, 16, NULL),
(17, 'Mark Errol', 'Casilihan', '', 'Mandaluyong City', NULL, NULL, NULL, NULL, NULL, 17, NULL),
(18, 'Gian Hendreson', 'Liangco', '', 'Manila', NULL, NULL, NULL, NULL, NULL, 18, NULL),
(19, 'Ian Roy Jamison', 'Paderanga', '', 'Misamis Occidental', NULL, NULL, NULL, NULL, NULL, 19, NULL),
(20, 'Erwin Javier', 'Ostos', '', 'North Bay Navotas', NULL, NULL, NULL, NULL, NULL, 20, NULL),
(21, 'Ronaldo', 'Ramos', '', 'Palawan', NULL, NULL, NULL, NULL, NULL, 21, NULL),
(22, 'John Bench', 'Ortiz', '', 'Pangasinan', NULL, NULL, NULL, NULL, NULL, 22, NULL),
(23, 'Jerome', 'Lacsa', '', 'Rizal', NULL, NULL, NULL, NULL, NULL, 23, NULL),
(24, 'Joemar', 'Narciso', '', 'Roxas City', NULL, NULL, NULL, NULL, NULL, 24, NULL),
(25, 'Rolando Asban', 'David, Jr.', '', 'San Fernando City', NULL, NULL, NULL, NULL, NULL, 25, NULL),
(26, 'Frankie', 'Chiu', '', 'San Juan City', NULL, NULL, NULL, NULL, NULL, 26, NULL),
(27, 'Paolo', 'Ferrer', '', 'Sorsogon', NULL, NULL, NULL, NULL, NULL, 27, NULL),
(28, 'Raffy', 'Gavina', '', 'Sultan Kudarat', NULL, NULL, NULL, NULL, NULL, 28, NULL),
(29, 'Saveno', 'Santillan', '', 'Surigao Del Sur', NULL, NULL, NULL, NULL, NULL, 29, NULL),
(30, 'Jaybee', 'Cana', '', 'Tacloban City', NULL, NULL, NULL, NULL, NULL, 30, NULL),
(31, 'Jessie', 'Quiteves', '', 'Taguig City', NULL, NULL, NULL, NULL, NULL, 31, NULL),
(32, 'Mark Anthony', 'Bacongan', '', 'Tanza, Navotas', NULL, NULL, NULL, NULL, NULL, 32, NULL),
(33, 'Godofredo Pascual', 'Dela Cruz', '', 'Valenzuela City', NULL, NULL, NULL, NULL, NULL, 33, NULL),
(34, 'Christian Khalil Gorospe', 'Vera', '', 'Zamboanga Del Sur', NULL, NULL, NULL, NULL, NULL, 34, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE IF NOT EXISTS `criteria` (
  `critcode` char(3) DEFAULT NULL,
  `critname` varchar(50) DEFAULT NULL,
  `critdesc` varchar(255) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=32;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`critcode`, `critname`, `critdesc`, `visible`) VALUES
('MCW', 'Casual Wear', 'Over-all Look / Stage Presence', 0),
('MSW', 'Swim Wear', 'Over-all Look / Stage Presence / Physique', 0),
('MFW', 'Formal Wear', '', 0),
('MGL', 'Looks', '', 1),
('MPI', 'Personality / Intelligence', '', 1),
('MGA', 'Attitude', '', 1),
('MNC', 'National Costume', '', 1),
('SWS', 'Swim Wear (15 Semi-finalists)', 'Over-all-Look/Stage Presence / Physique', 0),
('FWS', 'Formal Wear (Top 10)', 'Over-all Look/Stage Presence / Style(Attire)', 0),
('QLB', 'Looks and Bearing', '', 1),
('QPI', 'Personality/Intelligence', '', 1),
('FQA', 'Final Q and A', '', 1),
('NCC', 'National Costume', 'Over-all Look/Stage Presense/Creativity and Appropriateness of Attire', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `evntcode` char(3) DEFAULT NULL,
  `evntname` varchar(50) DEFAULT NULL,
  `typecode` varchar(10) DEFAULT NULL,
  `nmbrcont` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`evntcode`, `evntname`, `typecode`, `nmbrcont`) VALUES
('MGP', 'Mr. Gay World Philippines 2016 Preliminary', 'ALCRITSTRK', 34),
('MGC', 'National Costume', 'ALCRITSTRK', 34),
('SWC', 'Swimwear Competition (15 Semi-finalist)', 'ALCRITSTRK', 15),
('FWC', 'Formal Wear Competition (Top 10)', 'ALCRITSTRK', 10),
('QAJ', 'Q and A (Top 5)', 'ALCRITSTRK', 5),
('QAF', 'Q and A (Final)', 'ALCRITSTRK', 3);

-- --------------------------------------------------------

--
-- Table structure for table `events_contestant`
--

CREATE TABLE IF NOT EXISTS `events_contestant` (
  `evntcode` char(3) DEFAULT NULL,
  `contcode` int(11) DEFAULT NULL,
  `ordrnmbr` int(11) DEFAULT NULL,
  `scored` char(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_contestant`
--

INSERT INTO `events_contestant` (`evntcode`, `contcode`, `ordrnmbr`, `scored`) VALUES
('MGP', 1, 1, '0'),
('MGP', 2, 2, '0'),
('MGP', 3, 3, '0'),
('MGP', 4, 4, '0'),
('MGP', 5, 5, '0'),
('MGP', 6, 6, '0'),
('MGP', 7, 7, '0'),
('MGP', 8, 8, '0'),
('MGP', 9, 9, '0'),
('MGP', 10, 10, '0'),
('MGP', 11, 11, '0'),
('MGP', 12, 12, '0'),
('MGP', 13, 13, '0'),
('MGP', 14, 14, '0'),
('MGP', 15, 15, '0'),
('MGP', 16, 16, '0'),
('MGP', 17, 17, '0'),
('MGP', 18, 18, '0'),
('MGP', 19, 19, '0'),
('MGP', 20, 20, '0'),
('MGP', 21, 21, '0'),
('MGP', 22, 22, '0'),
('MGP', 23, 23, '0'),
('MGP', 24, 24, '0'),
('MGP', 25, 25, '0'),
('MGP', 26, 26, '0'),
('MGP', 27, 27, '0'),
('MGP', 28, 28, '0'),
('MGP', 29, 29, '0'),
('MGP', 30, 30, '0'),
('MGP', 31, 31, '0'),
('MGP', 32, 32, '0'),
('MGP', 33, 33, '0'),
('MGP', 34, 34, '0'),
('SWC', 1, 1, '0'),
('SWC', 2, 2, '0'),
('FWC', 2, 1, '0'),
('FWC', 3, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `events_criteria`
--

CREATE TABLE IF NOT EXISTS `events_criteria` (
  `evntcode` char(3) DEFAULT NULL,
  `critcode` char(3) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `ordrnum` int(1) NOT NULL,
  `percent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_criteria`
--

INSERT INTO `events_criteria` (`evntcode`, `critcode`, `weight`, `ordrnum`, `percent`) VALUES
('MGP', 'MCW', 10, 1, 100),
('MGP', 'MSW', 20, 2, 100),
('MGP', 'MFW', 10, 3, 100),
('MGP', 'MGL', 25, 4, 100),
('MGP', 'MPI', 20, 5, 100),
('MGP', 'MGA', 5, 6, 100),
('MGP', 'MNC', 10, 7, 100),
('MGC', 'NCC', 100, 1, 100),
('SWC', 'SWS', 100, 1, 100),
('FWC', 'FWS', 100, 1, 100),
('QAJ', 'QLB', 50, 1, 100),
('QAJ', 'QPI', 50, 2, 100),
('QAF', 'FQA', 100, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `events_judges`
--

CREATE TABLE IF NOT EXISTS `events_judges` (
  `evntcode` char(3) DEFAULT NULL,
  `judgcode` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_judges`
--

INSERT INTO `events_judges` (`evntcode`, `judgcode`) VALUES
('MGP', 12),
('MGC', 1),
('MGC', 2),
('MGC', 3),
('MGC', 4),
('MGC', 5),
('MGC', 6),
('MGC', 7),
('MGC', 8),
('MGC', 9),
('MGC', 10),
('MGC', 11);

-- --------------------------------------------------------

--
-- Table structure for table `events_scores`
--

CREATE TABLE IF NOT EXISTS `events_scores` (
  `eccode` int(11) DEFAULT NULL,
  `ecsource` char(3) DEFAULT NULL,
  `critcode` char(3) DEFAULT NULL,
  `ecdesti` char(3) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_timer`
--

CREATE TABLE IF NOT EXISTS `events_timer` (
  `evntcode` char(3) DEFAULT NULL,
  `contcode` int(11) DEFAULT NULL,
  `timer` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_type`
--

CREATE TABLE IF NOT EXISTS `events_type` (
  `typecode` varchar(10) DEFAULT NULL,
  `typename` varchar(100) DEFAULT NULL,
  `typedesc` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_type`
--

INSERT INTO `events_type` (`typecode`, `typename`, `typedesc`) VALUES
('ALCONT', 'All Contestant and Criteria - (Weight Scoring)', 'Score for all contestant and all criteria'),
('ALCRITSTRK', 'All Contestant and Criteria - (Percentage Scoring)', 'Score for 1 contestant and all the criteria');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE IF NOT EXISTS `judges` (
  `judgcode` int(3) NOT NULL,
  `judgname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`judgcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`judgcode`, `judgname`) VALUES
(1, 'JUDGE 1'),
(2, 'JUDGE 2'),
(3, 'JUDGE 3'),
(4, 'JUDGE 4'),
(5, 'JUDGE 5'),
(6, 'JUDGE 6'),
(7, 'JUDGE 7'),
(8, 'JUDGE 8'),
(9, 'JUDGE 9'),
(10, 'JUDGE 10'),
(11, 'JUDGE 11'),
(12, 'JUDGES');

-- --------------------------------------------------------

--
-- Table structure for table `keysettings`
--

CREATE TABLE IF NOT EXISTS `keysettings` (
  `kcode` varchar(15) DEFAULT NULL,
  `kval` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keysettings`
--

INSERT INTO `keysettings` (`kcode`, `kval`) VALUES
('G', 89),
('Q', 75),
('W', 76),
('E', 77),
('R', 78),
('T', 79),
('Y', 80),
('U', 81),
('I', 82),
('O', 83),
('P', 84),
('A', 85),
('S', 86),
('D', 87),
('F', 88),
('H', 90),
('J', 91),
('K', 92),
('L', 93),
('Z', 94),
('X', 95),
('C', 96),
('V', 97),
('B', 98),
('N', 99),
('M', 100);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `contcode` int(11) DEFAULT NULL,
  `evntcode` char(3) DEFAULT NULL,
  `judgcode` int(11) DEFAULT NULL,
  `critcode` char(3) DEFAULT NULL,
  `score` float(9,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`contcode`, `evntcode`, `judgcode`, `critcode`, `score`) VALUES
(22, 'MGP', 12, 'MSW', 19.20),
(21, 'MGP', 12, 'MSW', 16.97),
(20, 'MGP', 12, 'MSW', 15.94),
(19, 'MGP', 12, 'MSW', 16.54),
(18, 'MGP', 12, 'MSW', 17.57),
(17, 'MGP', 12, 'MSW', 16.60),
(16, 'MGP', 12, 'MSW', 16.97),
(15, 'MGP', 12, 'MSW', 15.79),
(14, 'MGP', 12, 'MSW', 16.11),
(13, 'MGP', 12, 'MSW', 16.26),
(12, 'MGP', 12, 'MSW', 16.71),
(11, 'MGP', 12, 'MSW', 16.33),
(10, 'MGP', 12, 'MSW', 16.73),
(9, 'MGP', 12, 'MSW', 16.34),
(8, 'MGP', 12, 'MSW', 16.86),
(7, 'MGP', 12, 'MSW', 18.06),
(6, 'MGP', 12, 'MSW', 15.77),
(5, 'MGP', 12, 'MSW', 17.47),
(4, 'MGP', 12, 'MSW', 18.89),
(3, 'MGP', 12, 'MSW', 16.09),
(2, 'MGP', 12, 'MSW', 16.14),
(1, 'MGP', 12, 'MSW', 15.77),
(1, 'MGP', 12, 'MCW', 7.97),
(2, 'MGP', 12, 'MCW', 8.16),
(3, 'MGP', 12, 'MCW', 8.14),
(4, 'MGP', 12, 'MCW', 9.21),
(5, 'MGP', 12, 'MCW', 8.51),
(6, 'MGP', 12, 'MCW', 8.17),
(7, 'MGP', 12, 'MCW', 9.06),
(8, 'MGP', 12, 'MCW', 8.54),
(9, 'MGP', 12, 'MCW', 8.23),
(10, 'MGP', 12, 'MCW', 8.16),
(11, 'MGP', 12, 'MCW', 8.03),
(12, 'MGP', 12, 'MCW', 8.84),
(13, 'MGP', 12, 'MCW', 8.50),
(14, 'MGP', 12, 'MCW', 8.36),
(15, 'MGP', 12, 'MCW', 8.21),
(16, 'MGP', 12, 'MCW', 8.36),
(17, 'MGP', 12, 'MCW', 8.39),
(18, 'MGP', 12, 'MCW', 8.57),
(19, 'MGP', 12, 'MCW', 8.33),
(20, 'MGP', 12, 'MCW', 8.36),
(21, 'MGP', 12, 'MCW', 8.47),
(22, 'MGP', 12, 'MCW', 9.51),
(23, 'MGP', 12, 'MCW', 8.19),
(24, 'MGP', 12, 'MCW', 8.27),
(25, 'MGP', 12, 'MCW', 8.29),
(26, 'MGP', 12, 'MCW', 8.19),
(27, 'MGP', 12, 'MCW', 7.93),
(28, 'MGP', 12, 'MCW', 8.34),
(29, 'MGP', 12, 'MCW', 8.19),
(30, 'MGP', 12, 'MCW', 8.44),
(31, 'MGP', 12, 'MCW', 8.34),
(32, 'MGP', 12, 'MCW', 8.27),
(33, 'MGP', 12, 'MCW', 8.66),
(34, 'MGP', 12, 'MCW', 8.78),
(23, 'MGP', 12, 'MSW', 16.00),
(24, 'MGP', 12, 'MSW', 15.77),
(25, 'MGP', 12, 'MSW', 17.00),
(26, 'MGP', 12, 'MSW', 16.63),
(28, 'MGP', 12, 'MSW', 17.11),
(29, 'MGP', 12, 'MSW', 16.83),
(30, 'MGP', 12, 'MSW', 15.91),
(31, 'MGP', 12, 'MSW', 16.46),
(32, 'MGP', 12, 'MSW', 17.06),
(33, 'MGP', 12, 'MSW', 16.83),
(34, 'MGP', 12, 'MSW', 17.43),
(27, 'MGP', 12, 'MSW', 15.71),
(1, 'MGP', 12, 'MFW', 8.33),
(2, 'MGP', 12, 'MFW', 8.10),
(3, 'MGP', 12, 'MFW', 8.16),
(4, 'MGP', 12, 'MFW', 9.17),
(5, 'MGP', 12, 'MFW', 8.51),
(6, 'MGP', 12, 'MFW', 8.25),
(7, 'MGP', 12, 'MFW', 9.26),
(8, 'MGP', 12, 'MFW', 8.73),
(9, 'MGP', 12, 'MFW', 8.24),
(10, 'MGP', 12, 'MFW', 8.37),
(11, 'MGP', 12, 'MFW', 8.47),
(12, 'MGP', 12, 'MFW', 9.06),
(13, 'MGP', 12, 'MFW', 8.21),
(14, 'MGP', 12, 'MFW', 8.29),
(15, 'MGP', 12, 'MFW', 8.27),
(16, 'MGP', 12, 'MFW', 8.23),
(17, 'MGP', 12, 'MFW', 8.27),
(18, 'MGP', 12, 'MFW', 8.90),
(19, 'MGP', 12, 'MFW', 8.64),
(20, 'MGP', 12, 'MFW', 8.39),
(21, 'MGP', 12, 'MFW', 8.54),
(22, 'MGP', 12, 'MFW', 8.94),
(23, 'MGP', 12, 'MFW', 8.30),
(24, 'MGP', 12, 'MFW', 8.09),
(25, 'MGP', 12, 'MFW', 8.46),
(26, 'MGP', 12, 'MFW', 8.43),
(27, 'MGP', 12, 'MFW', 8.26),
(28, 'MGP', 12, 'MFW', 8.50),
(29, 'MGP', 12, 'MFW', 8.47),
(30, 'MGP', 12, 'MFW', 8.29),
(31, 'MGP', 12, 'MFW', 8.91),
(32, 'MGP', 12, 'MFW', 8.33),
(33, 'MGP', 12, 'MFW', 8.79),
(34, 'MGP', 12, 'MFW', 9.43),
(1, 'SWC', 1, 'SWS', 10.10),
(1, 'SWC', 2, 'SWS', 8.20),
(2, 'FWC', 1, 'FWS', NULL),
(2, 'FWC', 2, 'FWS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `xkey` varchar(50) NOT NULL,
  `xvalue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`xkey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`xkey`, `xvalue`) VALUES
('currcrit', 'Swi'),
('currcont', ''),
('events_title', 'Mr. Gay World Philippines 2016'),
('currevnt', 'Mr. Gay World Philippines 2016 Preliminary'),
('eo3', 'BOB'),
('eo2', 'HS'),
('eo1', 'SI'),
('eo4', 'MRP'),
('eo5', 'MSP'),
('eo6', 'MRF'),
('eo7', 'MSF');

-- --------------------------------------------------------

--
-- Table structure for table `taggedcontestant`
--

CREATE TABLE IF NOT EXISTS `taggedcontestant` (
  `Event` char(50) DEFAULT NULL,
  `contcode` int(10) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblallotedtime`
--

CREATE TABLE IF NOT EXISTS `tblallotedtime` (
  `TimeCode` int(11) NOT NULL AUTO_INCREMENT,
  `evntcode` char(3) DEFAULT NULL,
  `TimeMin` int(3) DEFAULT NULL,
  `TimeSec` int(2) DEFAULT NULL,
  `PrepMin` int(3) DEFAULT NULL,
  `PrepSec` int(2) DEFAULT NULL,
  PRIMARY KEY (`TimeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontestantpenalty`
--

CREATE TABLE IF NOT EXISTS `tblcontestantpenalty` (
  `contCode` int(11) DEFAULT NULL,
  `evntCode` char(3) DEFAULT NULL,
  `penalty` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcritwinners`
--

CREATE TABLE IF NOT EXISTS `tblcritwinners` (
  `wincode` int(10) NOT NULL,
  `evntCode` char(3) DEFAULT NULL,
  `critcode` char(3) DEFAULT NULL,
  `rankcode` int(2) DEFAULT NULL,
  `rankname` varchar(50) DEFAULT NULL,
  `rankset` int(2) DEFAULT NULL,
  PRIMARY KEY (`wincode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcritwinners`
--

INSERT INTO `tblcritwinners` (`wincode`, `evntCode`, `critcode`, `rankcode`, `rankname`, `rankset`) VALUES
(1, 'MSP', 'MCW', 1, 'Best in casual wear', NULL),
(2, 'MRP', 'MCW', 1, 'Best in casual wear', NULL),
(3, 'MSP', 'MSW', 1, 'Best in sports wear', NULL),
(4, 'MRP', 'MSW', 1, 'Best in sports wear', NULL),
(5, 'MSP', 'MFW', 1, 'Best in formal wear', NULL),
(6, 'MRP', 'MFW', 1, 'Best in formal wear', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbloverallscores`
--

CREATE TABLE IF NOT EXISTS `tbloverallscores` (
  `contCode` int(11) DEFAULT NULL,
  `evntCode` char(3) DEFAULT NULL,
  `overAll` float DEFAULT NULL,
  `rank` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbloverallscores_mr`
--

CREATE TABLE IF NOT EXISTS `tbloverallscores_mr` (
  `contCode` int(11) DEFAULT NULL,
  `evntCode` char(3) DEFAULT NULL,
  `overAll` float DEFAULT NULL,
  `rank` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbloverallscores_ms`
--

CREATE TABLE IF NOT EXISTS `tbloverallscores_ms` (
  `contCode` int(11) DEFAULT NULL,
  `evntCode` char(3) DEFAULT NULL,
  `overAll` float DEFAULT NULL,
  `rank` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrankfinalistorder`
--

CREATE TABLE IF NOT EXISTS `tblrankfinalistorder` (
  `contCode` int(11) DEFAULT NULL,
  `evntcode` char(3) DEFAULT NULL,
  `OverAll` float DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `RankOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrankingtopwinners`
--

CREATE TABLE IF NOT EXISTS `tblrankingtopwinners` (
  `mVal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrankingtopwinners`
--

INSERT INTO `tblrankingtopwinners` (`mVal`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `tblscoresdeductions`
--

CREATE TABLE IF NOT EXISTS `tblscoresdeductions` (
  `contcode` int(11) DEFAULT NULL,
  `evntcode` char(3) DEFAULT NULL,
  `critcode` char(3) DEFAULT NULL,
  `judgcode` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `rawscore` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltempcontestantorder`
--

CREATE TABLE IF NOT EXISTS `tbltempcontestantorder` (
  `evntcode` char(3) DEFAULT NULL,
  `contcode` int(11) DEFAULT NULL,
  `ordernmber` int(11) DEFAULT NULL,
  `scored` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltimecount`
--

CREATE TABLE IF NOT EXISTS `tbltimecount` (
  `autocount` int(11) NOT NULL AUTO_INCREMENT,
  `contcode` int(11) DEFAULT NULL,
  `evntcode` char(3) DEFAULT NULL,
  `numSec` int(11) DEFAULT NULL,
  `UnderTime` int(11) DEFAULT NULL,
  `OverTime` int(11) DEFAULT NULL,
  `TIME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`autocount`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE IF NOT EXISTS `winners` (
  `wincode` int(10) NOT NULL AUTO_INCREMENT,
  `evntcode` char(3) DEFAULT NULL,
  `rankcode` int(2) DEFAULT NULL,
  `rankname` varchar(50) DEFAULT NULL,
  `rankset` int(2) DEFAULT NULL,
  PRIMARY KEY (`wincode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `winners_list`
--

CREATE TABLE IF NOT EXISTS `winners_list` (
  `evntcode` char(3) DEFAULT NULL,
  `rankcode` int(2) DEFAULT NULL,
  `contcode` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
