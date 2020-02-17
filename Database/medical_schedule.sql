-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2016 at 01:52 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medical_schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_Name` varchar(250) NOT NULL,
  `doc_Period` varchar(100) NOT NULL,
  `Start_Time` varchar(20) NOT NULL,
  `End_Time` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doc_Name`, `doc_Period`, `Start_Time`, `End_Time`, `status`) VALUES
(1, 'Joshua Mbanasor', 'Morning', '05:00:00 AM', '01:00:00 PM', ''),
(2, 'Anthony Awa', 'Afternoon', '01:00:00 PM', '09:00:00 PM', ''),
(3, 'Abdulraheem Sherif', 'Evening', '09:00:00 PM', '05:00:00 AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `expert_record`
--

CREATE TABLE IF NOT EXISTS `expert_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disease` varchar(200) NOT NULL,
  `symptoms` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `expert_record`
--

INSERT INTO `expert_record` (`id`, `disease`, `symptoms`) VALUES
(1, 'Malaria', 'Body Shaking'),
(2, 'Malaria', 'High Fever'),
(3, 'Malaria', 'Profuse Sweating'),
(4, 'Malaria', 'Headache'),
(5, 'Malaria', 'Nausea'),
(6, 'Malaria', ' Vomitting'),
(7, 'Malaria', 'Diarhea'),
(8, 'Malaria', 'Anemia'),
(9, 'Typhoid Fever', 'Poor Apetite'),
(10, 'Typhoid Fever', 'Abdominal Pain'),
(11, 'Typhoid Fever', 'Headache'),
(12, 'Typhoid Fever', 'Generalize Aches and Pains'),
(13, 'Typhoid Fever', 'Fever'),
(14, 'Typhoid Fever', 'Lethargy'),
(15, 'Typhoid Fever', 'Intestinal Bleeding or Perforation'),
(16, 'Typhoid Fever', 'Diarhea or Constipation'),
(17, 'HIV', 'Nausea'),
(18, 'HIV', 'Vomitting'),
(19, 'HIV', 'Persistent Diarhea'),
(20, 'HIV', 'Chonic Fatigue'),
(21, 'HIV', 'Rapid weight Loss'),
(22, 'HIV', 'Cough and Shortness of Breath'),
(23, 'HIV', 'Recurring Fever, Chills and Night Sweats');

-- --------------------------------------------------------

--
-- Table structure for table `num_temp`
--

CREATE TABLE IF NOT EXISTS `num_temp` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `period` varchar(200) NOT NULL,
  `last_no` int(5) NOT NULL,
  `status` varchar(5) NOT NULL,
  `last_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `num_temp`
--

INSERT INTO `num_temp` (`id`, `period`, `last_no`, `status`, `last_time`) VALUES
(1, 'Morning', 0, '0', '21:00:00'),
(2, 'Afternoon', 0, '0', '13:00:00'),
(3, 'Evening', 0, '0', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_record`
--

CREATE TABLE IF NOT EXISTS `patient_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_Schedule` varchar(20) NOT NULL,
  `patience_Name` varchar(250) NOT NULL,
  `complain` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `date_Reg` date NOT NULL,
  `date_Schedule` date NOT NULL,
  `date_Attend` date NOT NULL,
  `period` varchar(50) NOT NULL,
  `emergency` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
