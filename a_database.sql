-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 08:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `Id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`Id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'PHP: Hypertext Preprocessor'),
(2, 1, 0, 'Private Home Page'),
(3, 1, 0, 'Personal Home Page'),
(4, 1, 0, 'Personal Hypertext Preprocessor'),
(5, 2, 0, 'Athens'),
(6, 2, 0, 'Barcelona'),
(7, 2, 1, 'Rome'),
(8, 2, 0, 'Istanbul'),
(9, 3, 1, 'Rubin Carter'),
(10, 3, 0, 'Jack Lamotta'),
(11, 3, 0, 'Rocky Marciano'),
(12, 3, 0, 'Muhammad Ali'),
(13, 4, 1, 'Jupiter'),
(14, 4, 0, 'Earth'),
(15, 4, 0, 'Saturn'),
(16, 4, 0, 'Pluto'),
(17, 5, 0, 'Emily Deschanel'),
(18, 5, 0, 'Sofia Vergara'),
(19, 5, 0, 'Portia de Rossi'),
(20, 5, 1, 'Kaley Cuoco'),
(21, 6, 1, 'Skyfall'),
(22, 6, 0, 'Quantum of Solace'),
(23, 6, 0, 'From Russia With Love'),
(24, 6, 0, 'Casino Royale'),
(25, 7, 1, 'Dog'),
(26, 7, 0, 'Cat'),
(27, 7, 0, 'Monkey'),
(28, 7, 0, 'Human'),
(29, 8, 0, 'Greece'),
(30, 8, 1, 'Brazil'),
(31, 8, 0, 'China'),
(32, 8, 0, 'Spain'),
(33, 9, 1, '0'),
(34, 9, 0, '6'),
(35, 9, 0, '13'),
(36, 9, 0, '7'),
(37, 10, 1, 'Subway'),
(38, 10, 0, 'Taco Bell'),
(39, 10, 0, 'KFC'),
(40, 10, 0, 'McDonald\'s'),
(41, 11, 0, 'Cholera'),
(42, 11, 1, 'Smallpox'),
(43, 11, 0, 'Rabies'),
(44, 11, 0, 'Scarlet Fever'),
(45, 12, 0, '0°'),
(46, 12, 0, '+40°'),
(47, 12, 1, '-40°'),
(48, 12, 0, '+100°'),
(49, 13, 1, 'Ben-Hur'),
(50, 13, 0, 'Titanic'),
(51, 13, 0, 'La La Land'),
(52, 13, 0, 'Sound of Music'),
(53, 14, 0, 'Sikhism'),
(54, 14, 1, 'Hinduism'),
(55, 14, 0, 'Shinto'),
(56, 14, 0, 'Islam'),
(57, 15, 0, 'Green'),
(58, 15, 1, 'Red'),
(59, 15, 0, 'Blue'),
(60, 15, 0, 'Yellow'),
(61, 16, 0, 'Azerbaijan'),
(62, 16, 0, 'Moldova'),
(63, 16, 1, 'Serbia'),
(64, 16, 0, 'Kyrgyzstan'),
(65, 17, 0, 'RAV4'),
(66, 17, 0, 'CR-V'),
(67, 17, 0, 'Silverado 1500'),
(68, 17, 1, 'F-150'),
(69, 18, 0, 'Hatshepsut'),
(70, 18, 0, 'Kanaan'),
(71, 18, 0, 'Scheherazade'),
(72, 18, 0, 'Homer'),
(73, 19, 0, 'Kwanzaa'),
(74, 19, 0, 'Yom Kippur'),
(75, 19, 0, 'Hanukkah'),
(76, 19, 1, 'Rosh Hashanah'),
(77, 20, 0, 'Turkey'),
(78, 20, 0, 'Russia'),
(79, 20, 1, 'China'),
(80, 20, 0, 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Id` int(11) NOT NULL,
  `food` varchar(25) NOT NULL,
  `calories` int(11) NOT NULL,
  `healthy_unhealthy` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Id`, `food`, `calories`, `healthy_unhealthy`) VALUES
(1, 'Pizza', 1000, 'U'),
(2, 'Salad', 200, 'H'),
(3, 'Paneer', 500, 'H'),
(14, 'Paneer', 500, 'H'),
(15, 'Paneer', 500, 'H'),
(16, 'Paneer', 500, 'H'),
(17, 'Paneer', 500, 'H'),
(18, 'Paneer', 500, 'H'),
(19, 'Paneer', 500, 'H'),
(20, 'Paneer', 500, 'H'),
(21, 'Paneer', 500, 'H'),
(22, 'Paneer', 500, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'What does PHP stand for?'),
(2, 'Which city\'s landmarks include: The Pantheon, The Spanish Steps and Trevi Fountain?'),
(3, 'What is the name of the boxer whose life story is depicted in the 1999 movie \'The Hurricane\'?'),
(4, 'What is the largest planet in our Solar System?'),
(5, 'Which actress plays a major role on the TV show \'The Big Bang Theory\'?'),
(6, 'Adele performed the theme song to which James Bond film?'),
(7, 'Which mammal first reached Earth\'s orbit alive?'),
(8, 'Which country hosted the Summer Olympics in 2016?'),
(9, 'How many blue stripes does the United States of America national flag have?'),
(10, 'What restaurant franchise advises you to \'Eat Fresh\'?'),
(11, 'What was the first successful vaccine developed in history?'),
(12, 'What temperature is the same in Celsius and Fahrenheit?'),
(13, 'Which movie was the first to win 11 Academy Awards?'),
(14, 'What religion is the most practiced one in India?'),
(15, 'What is the color of Donald Duck\'s bowtie?'),
(16, 'Which of these countries was not a Soviet Republic in USSR?'),
(17, 'Which truck is produced by the Ford Motor Company?'),
(18, 'According to Persian folklore, who is the storyteller of \'One Thousand and One Nights\'?'),
(19, 'What is the name for the Jewish New Year?'),
(20, 'What is the largest country, by area, that has only one time zone?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `First_Name`, `Last_Name`) VALUES
(1, 'Vaibhav', 'Password', 'Vaibhav', 'Singh'),
(2, 'sumit', 'singh', 'Sumit', 'Singh'),
(3, 'Sumeshwar', 'mitthu', 'Sumeshwar', 'Singh'),
(10, 'Tapasya', '1234', 'Tapasya', 'Singh'),
(18, 'Sahil', 'abcxyz', 'Sahil', 'Khairnar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
