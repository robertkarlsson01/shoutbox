-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 07 okt 2020 kl 12:52
-- Serverversion: 10.4.10-MariaDB
-- PHP-version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `shoutbox`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `shoutbox_tabel`
--

CREATE TABLE `shoutbox_tabel` (
  `ID` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `shoutbox_tabel`
--

INSERT INTO `shoutbox_tabel` (`ID`, `username`, `comment`, `time`, `active`) VALUES
(0, 'robert', 'dsgfds', '2020-10-07 10:37:15', 0),
(0, 'robert', 'dsgfds', '2020-10-07 10:38:01', 0),
(0, 'robert', 'Enter dsatext here...', '2020-10-07 10:38:11', 0),
(0, 'robert', 'Enter dsatext here...', '2020-10-07 10:39:17', 0),
(0, 'robert', 'Enter dsatext here...', '2020-10-07 10:40:06', 0),
(0, 'r', 'Eanter text here...', '2020-10-07 10:45:29', 0),
(0, 'r', 'Eanter text here...', '2020-10-07 10:45:52', 0),
(0, 'r', 'Eanter text here...', '2020-10-07 10:48:31', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
