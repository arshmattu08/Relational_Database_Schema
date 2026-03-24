-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 12:28 AM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `as115_2_db`
--
CREATE DATABASE IF NOT EXISTS `as115_2_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `as115_2_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ALBUM`
--

DROP TABLE IF EXISTS `ALBUM`;
CREATE TABLE `ALBUM` (
  `ALBUM_ID` int(11) NOT NULL,
  `ALBUM_NAME` varchar(20) NOT NULL,
  `ALBUM_REL_DATE` date NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `COMPOSER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ALBUM`
--

INSERT INTO `ALBUM` (`ALBUM_ID`, `ALBUM_NAME`, `ALBUM_REL_DATE`, `SINGER_ID`, `COMPOSER_ID`) VALUES
(1, 'Moosetape', '2022-06-17', 1, 2),
(2, 'Admirin\' You', '2023-02-09', 2, 1),
(3, 'Patandar', '2024-11-10', 4, 2),
(4, 'LBE', '2024-04-01', 3, 3),
(5, 'NONAME', '2022-05-25', 1, 2),
(6, 'Elite', '2023-09-05', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `CONCERT`
--

DROP TABLE IF EXISTS `CONCERT`;
CREATE TABLE `CONCERT` (
  `CONCERT_ID` int(11) NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `CONC_VENUE` varchar(40) NOT NULL,
  `CONC_DATE` date NOT NULL,
  `CONC_ATTENDANCE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CONCERT`
--

INSERT INTO `CONCERT` (`CONCERT_ID`, `SINGER_ID`, `CONC_VENUE`, `CONC_DATE`, `CONC_ATTENDANCE`) VALUES
(1, 1, 'Kapurthala', '2020-02-02', 25433),
(2, 2, 'Vancouver', '2023-05-28', 19933),
(3, 6, 'Melbourne', '2024-06-03', 22300),
(4, 3, 'Chandigarh', '2022-03-17', 7905),
(5, 4, 'Lahore', '2024-01-08', 14000),
(6, 5, 'Pind', '2024-01-11', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `HIT_TRACK_LIST`
--

DROP TABLE IF EXISTS `HIT_TRACK_LIST`;
CREATE TABLE `HIT_TRACK_LIST` (
  `HIT_TRACK_ID` int(11) NOT NULL,
  `TRACK_CHART_POS` varchar(3) NOT NULL,
  `SONG_ID` int(11) NOT NULL,
  `TRACK_GENRE` varchar(15) NOT NULL,
  `TRACK_CERTIFICATION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HIT_TRACK_LIST`
--

INSERT INTO `HIT_TRACK_LIST` (`HIT_TRACK_ID`, `TRACK_CHART_POS`, `SONG_ID`, `TRACK_GENRE`, `TRACK_CERTIFICATION`) VALUES
(1, '5', 5, 'Romantic', 'Gold'),
(2, '1', 1, 'Hip-Hop', 'Diamond'),
(3, '2', 3, 'Hip-Hop', 'Multi-Platinum'),
(4, '3', 2, 'Pop', 'Platinum'),
(5, '1', 4, 'R&B', 'Multi-Platinum');

-- --------------------------------------------------------

--
-- Table structure for table `MUSIC_COMPOSER`
--

DROP TABLE IF EXISTS `MUSIC_COMPOSER`;
CREATE TABLE `MUSIC_COMPOSER` (
  `COMPOSER_ID` int(11) NOT NULL,
  `COMPOSER_LNAME` varchar(15) NOT NULL,
  `COMPOSER_FNAME` varchar(15) NOT NULL,
  `LABEL_ID` int(11) NOT NULL,
  `COMPOSER_DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MUSIC_COMPOSER`
--

INSERT INTO `MUSIC_COMPOSER` (`COMPOSER_ID`, `COMPOSER_LNAME`, `COMPOSER_FNAME`, `LABEL_ID`, `COMPOSER_DOB`) VALUES
(1, 'Jandu', 'Deep', 2, '1993-03-15'),
(2, 'Beats', 'Mxrci', 1, '2000-05-10'),
(3, 'Patar', 'Wazir', 3, '1992-10-08'),
(4, 'Music', 'Kidd', 5, '1995-10-18'),
(5, 'Beats', 'Gminxr', 5, '1996-12-02'),
(6, 'Dhillon', 'AP', 4, '1998-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `RECORD_LABEL`
--

DROP TABLE IF EXISTS `RECORD_LABEL`;
CREATE TABLE `RECORD_LABEL` (
  `LABEL_ID` int(11) NOT NULL,
  `LABEL_NAME` varchar(20) NOT NULL,
  `LABEL_OWNER_FNAME` varchar(15) NOT NULL,
  `LABEL_OWNER_LNAME` varchar(15) NOT NULL,
  `LABEL_ESTABLISHED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RECORD_LABEL`
--

INSERT INTO `RECORD_LABEL` (`LABEL_ID`, `LABEL_NAME`, `LABEL_OWNER_FNAME`, `LABEL_OWNER_LNAME`, `LABEL_ESTABLISHED`) VALUES
(1, 'EchoWave Records', 'Lena ', 'Strayfield', 2001),
(2, 'Silverline Sound', 'Maxwell', 'Vance', 2002),
(3, 'Crimson Beats', 'Maya', 'Rivers', 2003),
(4, 'VibeSphere Music', 'Zane', 'Quinn', 2004),
(5, 'Neon Pulse Records', 'Sophia', 'Hawke', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `SINGER`
--

DROP TABLE IF EXISTS `SINGER`;
CREATE TABLE `SINGER` (
  `SINGER_ID` int(11) NOT NULL,
  `SINGER_LNAME` varchar(15) NOT NULL,
  `SINGER_FNAME` varchar(15) NOT NULL,
  `LABEL_ID` int(11) NOT NULL,
  `SINGER_DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SINGER`
--

INSERT INTO `SINGER` (`SINGER_ID`, `SINGER_LNAME`, `SINGER_FNAME`, `LABEL_ID`, `SINGER_DOB`) VALUES
(1, 'Moosewala', 'Sidhu', 1, '1995-06-11'),
(2, 'Aujla', 'Karan', 2, '1998-02-04'),
(3, 'Pannu', 'Nirvair', 3, '1997-03-14'),
(4, 'Dhillon', 'Arjan', 4, '1994-09-05'),
(5, 'Maan', 'Amrit', 5, '1996-07-15'),
(6, 'Dosanjh', 'Diljit', 1, '1984-01-06'),
(7, 'Gill', 'Gurinder', 4, '1998-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `SINGER_AWARD`
--

DROP TABLE IF EXISTS `SINGER_AWARD`;
CREATE TABLE `SINGER_AWARD` (
  `AWARD_ID` int(11) NOT NULL,
  `AWARD_NAME` varchar(45) NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `AWARD_GIVEN_DATE` date NOT NULL,
  `AWARD_ORG` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SINGER_AWARD`
--

INSERT INTO `SINGER_AWARD` (`AWARD_ID`, `AWARD_NAME`, `SINGER_ID`, `AWARD_GIVEN_DATE`, `AWARD_ORG`) VALUES
(1, 'Rising Star of the Year', 1, '2017-03-18', 'PTC Music'),
(2, 'Viral Artist of the Year', 6, '2023-03-17', 'IIFA Music Awards'),
(3, 'Best Vocalist', 2, '2021-04-03', 'Radio Mirchi'),
(4, 'Singer of the Year', 1, '2021-03-21', 'PTC Music'),
(5, 'Charts Camper', 6, '2023-09-27', 'Clef Music ');

-- --------------------------------------------------------

--
-- Table structure for table `SING_COMP_COLLAB`
--

DROP TABLE IF EXISTS `SING_COMP_COLLAB`;
CREATE TABLE `SING_COMP_COLLAB` (
  `SING_COMP_ID` int(11) NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `COMPOSER_ID` int(11) NOT NULL,
  `SING_COMP_COLLAB_DATE` date NOT NULL,
  `SONG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SING_COMP_COLLAB`
--

INSERT INTO `SING_COMP_COLLAB` (`SING_COMP_ID`, `SINGER_ID`, `COMPOSER_ID`, `SING_COMP_COLLAB_DATE`, `SONG_ID`) VALUES
(1, 1, 2, '2022-01-25', 1),
(2, 2, 2, '2023-08-29', 2),
(3, 1, 1, '2022-06-01', 3),
(4, 4, 6, '2021-02-15', 4),
(5, 6, 3, '2023-10-01', 5);

-- --------------------------------------------------------

--
-- Table structure for table `SING_WRITER_COLLAB`
--

DROP TABLE IF EXISTS `SING_WRITER_COLLAB`;
CREATE TABLE `SING_WRITER_COLLAB` (
  `SING_WRITE_ID` int(11) NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `WRITER_ID` int(11) NOT NULL,
  `SING_WRITE_COLLAB_DATE` date NOT NULL,
  `SONG_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SING_WRITER_COLLAB`
--

INSERT INTO `SING_WRITER_COLLAB` (`SING_WRITE_ID`, `SINGER_ID`, `WRITER_ID`, `SING_WRITE_COLLAB_DATE`, `SONG_NAME`) VALUES
(1, 1, 4, '2022-01-11', 'Never Fold'),
(2, 2, 2, '2023-08-12', 'Ice'),
(3, 1, 5, '2022-05-22', 'Invincible'),
(4, 4, 5, '2021-02-01', 'Toxic'),
(5, 6, 1, '2023-09-18', 'Kamlee');

-- --------------------------------------------------------

--
-- Table structure for table `SONG`
--

DROP TABLE IF EXISTS `SONG`;
CREATE TABLE `SONG` (
  `SONG_ID` int(11) NOT NULL,
  `SONG_REL_DATE` date NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `ALBUM_ID` int(11) NOT NULL,
  `WRITER_ID` int(11) NOT NULL,
  `SONG_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SONG`
--

INSERT INTO `SONG` (`SONG_ID`, `SONG_REL_DATE`, `SINGER_ID`, `ALBUM_ID`, `WRITER_ID`, `SONG_NAME`) VALUES
(1, '2022-05-25', 1, 5, 4, 'Never Fold'),
(2, '2023-09-05', 2, 6, 2, 'Ice'),
(3, '2022-06-22', 1, 1, 5, 'Invincible'),
(4, '2021-03-12', 4, 2, 5, 'Toxic'),
(5, '2023-10-15', 6, 3, 1, 'Kamlee');

-- --------------------------------------------------------

--
-- Table structure for table `SONGWRITER`
--

DROP TABLE IF EXISTS `SONGWRITER`;
CREATE TABLE `SONGWRITER` (
  `WRITER_ID` int(11) NOT NULL,
  `WRITER_FNAME` varchar(15) NOT NULL,
  `WRITER_LNAME` varchar(15) NOT NULL,
  `WRITER_DOB` date NOT NULL,
  `WRITER_DEBUT` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SONGWRITER`
--

INSERT INTO `SONGWRITER` (`WRITER_ID`, `WRITER_FNAME`, `WRITER_LNAME`, `WRITER_DOB`, `WRITER_DEBUT`) VALUES
(1, 'John', 'Smith', '1996-07-07', 2017),
(2, 'Happy', 'Raikoti', '1994-08-23', 2014),
(3, 'Satinder', 'Sartaj', '1993-01-13', 2014),
(4, 'Gill', 'Raunta', '1992-03-23', 2013),
(5, 'Shinda', 'Kahlon', '1998-04-22', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `STUDIO`
--

DROP TABLE IF EXISTS `STUDIO`;
CREATE TABLE `STUDIO` (
  `STUDIO_ID` int(11) NOT NULL,
  `STUDIO_NAME` varchar(20) NOT NULL,
  `COMPOSER_ID` int(11) NOT NULL,
  `STUDIO_LOCATION` varchar(20) NOT NULL,
  `STUDIO_ESTABLISHED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `STUDIO`
--

INSERT INTO `STUDIO` (`STUDIO_ID`, `STUDIO_NAME`, `COMPOSER_ID`, `STUDIO_LOCATION`, `STUDIO_ESTABLISHED`) VALUES
(1, 'Vibe Room', 1, 'Chandigarh', '2015-09-19'),
(2, 'Creative Sounds', 2, 'Birmingham', '2017-01-09'),
(3, 'Vehli Janta', 3, 'Surrey', '2019-09-01'),
(4, 'Beat House', 4, 'Vancouver', '2020-05-21'),
(5, 'Top Records', 5, 'Los Angeles', '2016-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ALBUM`
--
ALTER TABLE `ALBUM`
  ADD PRIMARY KEY (`ALBUM_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`),
  ADD KEY `COMPOSER_ID` (`COMPOSER_ID`);

--
-- Indexes for table `CONCERT`
--
ALTER TABLE `CONCERT`
  ADD PRIMARY KEY (`CONCERT_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`);

--
-- Indexes for table `HIT_TRACK_LIST`
--
ALTER TABLE `HIT_TRACK_LIST`
  ADD PRIMARY KEY (`HIT_TRACK_ID`),
  ADD KEY `SONG_ID` (`SONG_ID`);

--
-- Indexes for table `MUSIC_COMPOSER`
--
ALTER TABLE `MUSIC_COMPOSER`
  ADD PRIMARY KEY (`COMPOSER_ID`),
  ADD KEY `LABEL_ID` (`LABEL_ID`);

--
-- Indexes for table `RECORD_LABEL`
--
ALTER TABLE `RECORD_LABEL`
  ADD PRIMARY KEY (`LABEL_ID`);

--
-- Indexes for table `SINGER`
--
ALTER TABLE `SINGER`
  ADD PRIMARY KEY (`SINGER_ID`),
  ADD KEY `LABEL_ID` (`LABEL_ID`);

--
-- Indexes for table `SINGER_AWARD`
--
ALTER TABLE `SINGER_AWARD`
  ADD PRIMARY KEY (`AWARD_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`);

--
-- Indexes for table `SING_COMP_COLLAB`
--
ALTER TABLE `SING_COMP_COLLAB`
  ADD PRIMARY KEY (`SING_COMP_ID`),
  ADD UNIQUE KEY `SONG_ID` (`SONG_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`),
  ADD KEY `COMPOSER_ID` (`COMPOSER_ID`);

--
-- Indexes for table `SING_WRITER_COLLAB`
--
ALTER TABLE `SING_WRITER_COLLAB`
  ADD PRIMARY KEY (`SING_WRITE_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`),
  ADD KEY `WRITER_ID` (`WRITER_ID`);

--
-- Indexes for table `SONG`
--
ALTER TABLE `SONG`
  ADD PRIMARY KEY (`SONG_ID`),
  ADD KEY `SINGER_ID` (`SINGER_ID`),
  ADD KEY `ALBUM_ID` (`ALBUM_ID`),
  ADD KEY `WRITER_ID` (`WRITER_ID`);

--
-- Indexes for table `SONGWRITER`
--
ALTER TABLE `SONGWRITER`
  ADD PRIMARY KEY (`WRITER_ID`);

--
-- Indexes for table `STUDIO`
--
ALTER TABLE `STUDIO`
  ADD PRIMARY KEY (`STUDIO_ID`),
  ADD UNIQUE KEY `COMPOSER_ID` (`COMPOSER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ALBUM`
--
ALTER TABLE `ALBUM`
  MODIFY `ALBUM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `CONCERT`
--
ALTER TABLE `CONCERT`
  MODIFY `CONCERT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `HIT_TRACK_LIST`
--
ALTER TABLE `HIT_TRACK_LIST`
  MODIFY `HIT_TRACK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `MUSIC_COMPOSER`
--
ALTER TABLE `MUSIC_COMPOSER`
  MODIFY `COMPOSER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `RECORD_LABEL`
--
ALTER TABLE `RECORD_LABEL`
  MODIFY `LABEL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SINGER`
--
ALTER TABLE `SINGER`
  MODIFY `SINGER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `SINGER_AWARD`
--
ALTER TABLE `SINGER_AWARD`
  MODIFY `AWARD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SING_COMP_COLLAB`
--
ALTER TABLE `SING_COMP_COLLAB`
  MODIFY `SING_COMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SING_WRITER_COLLAB`
--
ALTER TABLE `SING_WRITER_COLLAB`
  MODIFY `SING_WRITE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SONG`
--
ALTER TABLE `SONG`
  MODIFY `SONG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SONGWRITER`
--
ALTER TABLE `SONGWRITER`
  MODIFY `WRITER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `STUDIO`
--
ALTER TABLE `STUDIO`
  MODIFY `STUDIO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ALBUM`
--
ALTER TABLE `ALBUM`
  ADD CONSTRAINT `ALBUM_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ALBUM_ibfk_2` FOREIGN KEY (`COMPOSER_ID`) REFERENCES `MUSIC_COMPOSER` (`COMPOSER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CONCERT`
--
ALTER TABLE `CONCERT`
  ADD CONSTRAINT `CONCERT_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `HIT_TRACK_LIST`
--
ALTER TABLE `HIT_TRACK_LIST`
  ADD CONSTRAINT `HIT_TRACK_LIST_ibfk_1` FOREIGN KEY (`SONG_ID`) REFERENCES `SONG` (`SONG_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MUSIC_COMPOSER`
--
ALTER TABLE `MUSIC_COMPOSER`
  ADD CONSTRAINT `MUSIC_COMPOSER_ibfk_1` FOREIGN KEY (`LABEL_ID`) REFERENCES `RECORD_LABEL` (`LABEL_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SINGER`
--
ALTER TABLE `SINGER`
  ADD CONSTRAINT `SINGER_ibfk_1` FOREIGN KEY (`LABEL_ID`) REFERENCES `RECORD_LABEL` (`LABEL_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SINGER_AWARD`
--
ALTER TABLE `SINGER_AWARD`
  ADD CONSTRAINT `SINGER_AWARD_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SING_COMP_COLLAB`
--
ALTER TABLE `SING_COMP_COLLAB`
  ADD CONSTRAINT `SING_COMP_COLLAB_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SING_COMP_COLLAB_ibfk_2` FOREIGN KEY (`COMPOSER_ID`) REFERENCES `MUSIC_COMPOSER` (`COMPOSER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SING_COMP_COLLAB_ibfk_3` FOREIGN KEY (`SONG_ID`) REFERENCES `SONG` (`SONG_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SING_WRITER_COLLAB`
--
ALTER TABLE `SING_WRITER_COLLAB`
  ADD CONSTRAINT `SING_WRITER_COLLAB_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SING_WRITER_COLLAB_ibfk_2` FOREIGN KEY (`WRITER_ID`) REFERENCES `SONGWRITER` (`WRITER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SONG`
--
ALTER TABLE `SONG`
  ADD CONSTRAINT `SONG_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`SINGER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SONG_ibfk_2` FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM` (`ALBUM_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SONG_ibfk_3` FOREIGN KEY (`WRITER_ID`) REFERENCES `SONGWRITER` (`WRITER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `STUDIO`
--
ALTER TABLE `STUDIO`
  ADD CONSTRAINT `STUDIO_ibfk_1` FOREIGN KEY (`COMPOSER_ID`) REFERENCES `MUSIC_COMPOSER` (`COMPOSER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
