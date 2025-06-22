-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2025 at 02:57 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `fandom_id` int(11) NOT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fandom`
--

CREATE TABLE `fandom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`) VALUES
(1, 'polski'),
(2, 'angielski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fandom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `name`) VALUES
(1, 'AO3'),
(2, 'wattpad'),
(3, 'blog'),
(4, 'inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ship`
--

CREATE TABLE `ship` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `person1` int(11) NOT NULL,
  `person2` int(11) NOT NULL,
  `fandom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fandom_id` (`fandom_id`),
  ADD KEY `ship_id` (`ship_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `platform_id` (`platform_id`);

--
-- Indeksy dla tabeli `fandom`
--
ALTER TABLE `fandom`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fandom_id` (`fandom_id`);

--
-- Indeksy dla tabeli `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person1` (`person1`),
  ADD KEY `person2` (`person2`),
  ADD KEY `fandom_id` (`fandom_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fandom`
--
ALTER TABLE `fandom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ship`
--
ALTER TABLE `ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`fandom_id`) REFERENCES `fandom` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`ship_id`) REFERENCES `ship` (`id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  ADD CONSTRAINT `books_ibfk_4` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`fandom_id`) REFERENCES `fandom` (`id`);

--
-- Constraints for table `ship`
--
ALTER TABLE `ship`
  ADD CONSTRAINT `ship_ibfk_1` FOREIGN KEY (`person1`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `ship_ibfk_2` FOREIGN KEY (`person2`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `ship_ibfk_3` FOREIGN KEY (`fandom_id`) REFERENCES `fandom` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
