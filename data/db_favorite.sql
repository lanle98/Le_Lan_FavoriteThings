-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 08, 2019 at 01:57 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favorite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

CREATE TABLE `tbl_card` (
  `ID` int(11) NOT NULL,
  `favID` tinyint(4) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hint` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `favID`, `title`, `image`, `hint`) VALUES
(1, 1, 'FOOD', 'images/fav1.jpg', 'Asian food'),
(2, 2, 'MOVIE', 'images/fav2.jpg', 'Movie about a clown'),
(3, 3, 'CITY', 'images/fav3.jpg', 'The place that I was born');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `ID` int(10) NOT NULL,
  `infoID` int(2) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `video` varchar(300) NOT NULL,
  `personal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `infoID`, `name`, `description`, `video`, `personal`) VALUES
(1, 1, 'Bun Bo Hue', 'Bún bò Huế or bún bò is a popular Vietnamese soup containing rice vermicelli and beef. Huế is a city in central Vietnam associated with the cooking style of the former royal court. ', 'https://www.youtube.com/embed/kJAKjvsyS6E', 'This underrated food used to be my favourite daily breakfast back when I was home.'),
(2, 2, 'Joker', 'Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he\'s part of the world around him. ', 'https://www.youtube.com/embed/zAGVQLHvwOY', 'I was obsessed with this movie for a week and cannot stop thinking about it because of its beauty'),
(3, 3, 'Ho Chi Minh City', 'Ho Chi Minh City is the financial centre of Vietnam and is classified as a Beta+ World City by Globalization and World Cities Research Network. It is home to the Ho Chi Minh City Stock Exchange, the largest stock exchange by total market capitalization in Vietnam and the headquarters of many national and international banks and companies.', 'https://www.youtube.com/embed/O724DTg6bAM', 'This is my home, love it or hate it, it will still always be part of my life.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_card`
--
ALTER TABLE `tbl_card`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_card`
--
ALTER TABLE `tbl_card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
