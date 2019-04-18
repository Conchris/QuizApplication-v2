-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2019 at 06:37 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_and_culture`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(250) NOT NULL,
  `ans_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `content`, `ans_id`) VALUES
(1, 'Gustave Eiffel', 1),
(2, 'Michelangelo', 1),
(3, 'Leonardo Da Vinci', 1),
(4, 'Bram Stoker', 2),
(5, 'Brad Pitt', 2),
(6, 'Leonardo Di Caprio', 2),
(7, 'Madrid', 3),
(8, 'Seville', 3),
(9, 'Barcelona', 3),
(10, 'A System of Jewish Mystical Beliefs', 4),
(11, 'A System of Chinise Mystical Beliefs', 4),
(12, 'A System of Indian Mystical Beliefs', 4),
(13, 'Berlin', 5),
(14, 'Brussels', 5),
(15, 'Dublin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(250) NOT NULL,
  `Ans_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content`, `Ans_id`) VALUES
(1, 'Who did the Mona Lisa paint?', 3),
(2, 'Who was the original Author of Dracula?', 4),
(3, 'In Which spanish city Did the Joan Miro Museum open in 1975?', 9),
(4, 'What is the Kabbalah?', 10),
(5, 'In Which city is the famous Manneken Pis fountain?', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
