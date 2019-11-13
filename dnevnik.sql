-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 07:21 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dnevnik`
--

-- --------------------------------------------------------

--
-- Table structure for table `račun`
--

CREATE TABLE `račun` (
  `ID` int(11) NOT NULL,
  `Korisničko_ime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Lozinka` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `E-mail` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tekst_dnevnika`
--

CREATE TABLE `tekst_dnevnika` (
  `ID` int(11) NOT NULL,
  `Tekst` longtext COLLATE utf8_unicode_ci NOT NULL,
  `račun_id` int(11) NOT NULL,
  `highscore` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `račun`
--
ALTER TABLE `račun`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Korisničko_ime` (`Korisničko_ime`);

--
-- Indexes for table `tekst_dnevnika`
--
ALTER TABLE `tekst_dnevnika`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dnevnik_račun_id_FK` (`račun_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `račun`
--
ALTER TABLE `račun`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tekst_dnevnika`
--
ALTER TABLE `tekst_dnevnika`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tekst_dnevnika`
--
ALTER TABLE `tekst_dnevnika`
  ADD CONSTRAINT `dnevnik_račun_id_FK` FOREIGN KEY (`račun_id`) REFERENCES `račun` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
