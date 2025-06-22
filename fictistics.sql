-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 22, 2025 at 07:35 PM
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
-- Database: `fictistics`
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
  `category_id` int(11) DEFAULT NULL,
  `chapters` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `stars` int(11) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `date`, `fandom_id`, `ship_id`, `category_id`, `chapters`, `status_id`, `stars`, `summary`, `description`, `image_name`, `image`, `language_id`, `platform_id`, `link`) VALUES
(1, 'Miłość mimo wszystkich || Drapple', 'M_i_s_z_a', NULL, 1, 9, NULL, 5, 1, NULL, 'Jedno wielkie wtf chociaż czytałam to mega dawno temu xDDD.', 'To moja pierwsza historyja, więc postanowiłam, że będzie o najlepszym shipie w Harrym Potterze :P\r\n\r\nWyróżnienia:\r\n755 na #lovestory - sama nwm kiedy xd\r\n716 na #hp - też nwm kiedy\r\n4 na #drapple - ok. 15.08.2019r.\r\n1 na #apple !!¡! - 29.08.2019r.', 'milosc-mimo-wszystkich', 'assets/covers/milosc-mimo-wszystkich.jpg', 1, 2, 'https://www.wattpad.com/story/191416556-miłość-mimo-wszystkich-drapple'),
(2, '(prawie) NIETYKLANY', 'Mybichis', NULL, 1, 2, NULL, 10, 1, NULL, 'Chyba nie było takie złe ale zniknęły rozdziały', 'Harry Potter.... Złoty chłopiec? Czy na pewno? \r\n\r\nPo wstrząsających przeżyciach w ,,domu\" , Hogwarcie oraz śmierci Syriusza...Harry postanawia coś zmienić w swoim życiu... Pierwszym krokiem będzie zakończenie wojny z Voldemortem....', 'prawie-nietykalny', 'assets/covers/prawie-nietykalny.jpg', 1, 2, 'https://www.wattpad.com/story/224675612-prawie-nietyklany'),
(3, 'Gdy Umiera Dzisiaj', '_roksiaq', NULL, 1, 2, NULL, 70, 1, 8, 'To było dobre, ale nic nie pamiętam :3', 'Tłumaczenie „Death of Today\" Epic Solemnity. Slash HP/LV. AU: Wychowany w mugolskim sierocińcu Harry (Izar) przybywa do Hogwartu jako dość zgorzkniały chłopiec i dzięki niezwykłej inteligencji w młodym wieku zostaje Niewymownym oraz Śmierciożercą. Dorastając, zmuszony jest do zmagania się z manipulacyjnym Czarnym Panem, któremu wyraźną przyjemność sprawia granie na jego emocjach.\r\nTłumaczenie należy do Panna Mi oraz Ebony. \r\nJa tylko udostępniam.\r\n\r\n\r\n\r\nŻeby rozwiać wątpliwości pytałam się osobiście o możliwość udostępnienia tego tłumaczenia \r\nZgoda została udzielona już dawno temu. \r\nNiestety straciłam konto na Tumblr i nie mogę go odzyskać żeby pokazać są zgody \r\nA tłumaczka od jakiegoś czasu nie odpisuje ani nie publikuje żadnych postów .', 'gdy-umiera-dzisiaj', 'assets/covers/gdy-umiera-dzisiaj.jpg', 1, 2, 'https://www.wattpad.com/story/195078036-gdy-umiera-dzisiaj'),
(4, ' Harry Potter - Zaplątanie w czasie', 'Esencja', NULL, 1, 2, NULL, 14, 1, 8, 'Tłumaczenie więc było gittttt', 'utor: Paimpont\r\n\r\nTytuł oryginału: Twist in Time\r\n\r\nLink do oryginału: s/6021134/1/A-Twist-in-Time\r\n\r\nParring: Tomarry (Tom Riddle/Harry Potter\r\n\r\nDługość: 14 rozdziałów\r\n\r\nTłumacz: Akolitka\r\n\r\nHarry po śmierci Dumledora znajduje w jego gabinecie zmieniacz czasu. Czy uratuje świat jak sobie postanowił, czy los znów będzie wiedział lepiej od niego? \r\nOstrzeżenia: slash', 'zaplatanie-w-czasie', 'assets/covers/zaplatanie-w-czasie.jpg', 1, 2, 'https://www.wattpad.com/story/52387252-harry-potter-zaplątanie-w-czasie'),
(5, 'Jak światło w mroku tak i mrok w dobroci.', 'QueenofRiddle', NULL, 1, 2, NULL, 67, 1, 4, 'Złe chyba', 'Zakończone.\r\n\r\nHarry odkrywa... Nie, dochodzi do wniosku, że Dumbledore go okłamuje i bynajmniej się nim nie przejmuje. Po kolejnym wyczerpującym dniu u Dursleyów błąka się po okolicy. Niestety jest tak wyczerpany, że traci przytomność. Budzi się w obcym dla niego pokoju, a na dodatek pewien znajomy mężczyzna go obserwuje...\r\n\r\nUWAGA!\r\n* piszę na faktach książki i nie biorę pod uwagę filmów\r\n* Tomarry\r\n* pojawią się sceny erotyczne\r\n* Fluff', 'jak-swiatlo-w-mroku-tak-mrok-w-dobroci', 'assets/covers/jak-swiatlo-w-mroku-tak-mrok-w-dobroci.jpg', 1, 2, 'https://www.wattpad.com/story/89487130-jak-światło-w-mroku-tak-i-mrok-w-dobroci'),
(6, 'Kitty Love | Tomarry', 'ZapomnianaDama', NULL, 1, 2, NULL, 15, 1, 0, 'Ehm', 'Harry Potter po wybuchu eliksiru ląduje w wannie Voldemorta. Czarnoksiężnik po wielu próbach zaprzyjaźnia się z czarnym kotkiem, który zrujnował mu cały dom. Niestety nic nie trwa wiecznie i w końcu Tom odkrywa, że kicia to Potter. Jak zareaguje na wstrząsającą nowinę?\r\n\r\nTOM I\r\n\r\nOpowiadanie jest skopiowane tutaj dla łatwiejszego odczytu.\r\n\r\nZgoda: brak (nie ma kontaktu z autorką, ale jak napisze, że sobie tego nie życzy to usunę to ff)\r\n\r\nNA MOIM PROFILU SĄ KOLEJNE CZĘŚCI :D', 'kitty-love', 'assets/covers/kitty-love.jpg', 1, 2, 'https://www.wattpad.com/story/121966726-kitty-love-tomarry'),
(7, 'Kitty Trouble | Tomarry II', 'ZapomnianaDama', NULL, 1, 2, NULL, 22, 1, 0, 'Uhm', 'TOM II Kociej Trylogii', 'kitty-trouble', 'assets/covers/kitty-trouble.jpg', 1, 2, 'https://www.wattpad.com/story/122135650-kitty-trouble-tomarry-ii'),
(8, 'Kitty Paradise | Tomarry III', 'ZapomnianaDama', NULL, 1, 2, NULL, 16, 1, 0, 'Mhm', 'TOM III Kociej Trylogii', 'kitty-paradise', 'assets/covers/kitty-paradise.jpg', 1, 2, 'https://www.wattpad.com/story/122136197-kitty-paradise-tomarry-iii'),
(9, 'Mój Horkruks', '_hary_', NULL, 1, 2, NULL, 26, 1, 0, 'Heh', ',,Voldemort dowiaduję się prawdy o tym co stało się pamiętnej nocy, gdy świat ogłosił Harry\'ego chłopcem-który-przeżył. Przepowiednia okazuję się........kłamstwem.\"\r\n\r\n[tom riddle x harry potter- tomarry]\r\n\r\nTa opowiesc jest stara nie uważam jej za dobrą jest bo innym sie to podoba ja osobiście się do niej nie przyznaje', 'moj-horkruks', 'assets/covers/moj-horkruks.jpg', 1, 2, 'https://www.wattpad.com/story/222909079-mój-horkruks'),
(10, 'Signum Temporis', 'JoanneGabrielle', NULL, 1, 2, NULL, 44, 1, 7, 'Fajne ale meeega się dłużyło (wpisuję to już z 5 raz przez opis autora i sql injection AGHHHH OBY TERAZ ZADZIAŁAŁO BŁAGAM CZACIK)', 'Dzięki jasnowidzącej Kasandrze, Tom Riddle - uczeń Hogwartu, dowiaduje się, że ktoś jest mu Przeznaczony i to też ktoś ze szkoły. Pozostawia dla Przeznaczonego w skrytce dziennik, zabezpieczony za pomocą magii krwi. Harry w swoich czasach odnajduje jakiś dziennik, ale nie potrafi go przez pewien czas otworzyć. Jak Harry to rozwiąże? Czy otworzy dziennik? Jakie będą tego skutki? SLASH/Yaoi', 'signum-temporis', 'assets/covers/signum-temporis.jpg', 1, 2, 'https://www.wattpad.com/story/51712614-signum-temporis'),
(11, 'Nomen Nominandum', 'JoanneGabrielle', NULL, 1, 2, NULL, 2, 1, 5, 'CZEMU TO NIE JEST SKOŃCZONE PO TYM JAK SIĘ TYLE MĘCZYŁAM Z SIGNUM TEMPORIS!!! NIE CZYTAM TEGO NARA OSTATNIA AKTU W 2019!', 'Uwaga! Jest to kontynuacja \" Signum Temporis\" Przed rozpoczęciem czytania zapoznaj się proszę z pierwszą częścią!\r\n\r\nJak Aren poradzi sobie z starą/nową rzeczywistością? Jak bardzo zmieniła się teraźniejszość po krótkim, ale jakże potrafiącym zmienić innych, pobyt Greya w przeszłości? Z kim skrzyżuje swoje ścieżki i czy to będzie przyjaciel a może wróg? Kogo spotka ponownie a kogo już nigdy nie będzie mu dane ujrzeć?', 'nomen-nominandum', 'assets/covers/nomen-nominandum.jpg', 1, 2, 'https://www.wattpad.com/story/196310446-nomen-nominandum');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'soulmate');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fandom`
--

CREATE TABLE `fandom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fandom`
--

INSERT INTO `fandom` (`id`, `name`) VALUES
(1, 'Harry Potter'),
(2, 'boku no hero academia'),
(3, 'haikyuu'),
(4, 'Sherlock'),
(5, 'Wilkołaki i wampiry'),
(6, 'Miraculous'),
(7, 'Marvel'),
(8, 'Countryhumans'),
(9, 'Jak Wytresować Smoka'),
(10, 'Kamienie na szaniec'),
(11, 'Naruto'),
(12, 'Undertale'),
(13, 'Manhwy'),
(14, 'Inne'),
(15, 'Kuroshitsuji'),
(16, 'Disney'),
(17, 'Encanto'),
(18, 'bungou stray dogs');

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
-- Struktura tabeli dla tabeli `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fandom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `fandom_id`) VALUES
(1, 'Draco Malfoy', 1),
(2, 'Hermiona Granger', 1),
(3, 'Tom Marvolo Riddle', 1),
(4, 'Harry Potter', 1),
(5, 'Severus Snape', 1),
(6, 'Remus Lupin', 1),
(7, 'Syriusz Black', 1),
(8, 'James Potter', 1),
(9, 'Lily Evans', 1),
(10, 'Ron Weasley\r\n', 1),
(11, 'Jedzenie', 1),
(12, 'Midoriya Izuku', 2),
(13, 'Todoroki Shoto', 2),
(14, 'Bakugo Katsuki ', 2),
(15, 'Momo Yaoyorozu', 2),
(16, 'Kirishima Eijiro', 2),
(17, 'Shinso Hitoshi', 2),
(18, 'Kaminari Denki', 2),
(19, 'Aizawa Shouta', 2),
(20, 'Present Mic', 2),
(21, 'Uraraka Ochaco', 2),
(22, 'Dabi', 2),
(23, 'Kyoka Jiro\r\n', 2),
(24, 'Kageyama Tobio', 3),
(25, 'Hinata Shoyo', 3),
(26, 'Sherlock Holmes', 4),
(27, 'John Watson', 4),
(28, 'Wilkołak', 5),
(29, 'Wampir', 5),
(30, 'Anioł', 5),
(31, 'Smok', 5),
(32, 'Adrien Agreste', 6),
(33, 'Czarny Kot', 6),
(34, 'Marinette Dupain-Cheng', 6),
(35, 'Biedronka', 6),
(36, 'Luka Couffaine', 6),
(37, 'Spider-Man\r\n', 7),
(38, 'Deadpool', 7),
(39, 'Poland', 8),
(40, 'Germany', 8),
(41, 'Russia', 8),
(42, 'USA', 8),
(43, 'England', 8),
(44, 'Korea (South)', 8),
(45, 'Korea (North)', 8),
(46, 'Czkawka Haddock', 9),
(47, 'Astrid Hofferson', 9),
(48, 'Szczerbatek', 9),
(49, 'Rudy (Jan Bytnar)', 10),
(50, 'Zośka (Tadeusz Zawadzki)', 10),
(51, 'Alek (Maciej Aleksy Dawidowski)', 10),
(52, 'Naruto Uzumaki', 11),
(53, 'Hinata Hyūga', 11),
(54, 'Sasuke Uchiha', 11),
(55, 'Sakura Haruno', 11),
(56, 'Kakashi Hatake', 11),
(57, 'Iruka Umino', 11),
(58, 'Shikamaru Nara', 11),
(59, 'Sans', 12),
(60, 'Frisk', 12),
(61, 'Sebastian Michaelis', 15),
(62, 'Ciel Phantomhive', 15),
(63, 'Jack Frost', 16),
(64, 'Elsa', 16),
(65, 'Camilo Madrigal', 17),
(66, 'Dazai Osamu', 18),
(67, 'Chuya Nakahara', 18),
(68, 'Akutagawa Ryuunosuke', 18),
(69, 'Atsushi Nakajima', 18);

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
(1, 'Wattpad'),
(2, 'AO3'),
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
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`id`, `name`, `person1`, `person2`, `fandom_id`) VALUES
(1, 'Dramione', 1, 2, 1),
(2, 'Tomarry', 3, 4, 1),
(3, 'Drarry', 1, 4, 1),
(4, 'Snarry', 5, 4, 1),
(5, 'Tomione', 3, 2, 1),
(6, 'Wolfstar', 7, 6, 1),
(7, 'Snupin', 5, 6, 1),
(8, 'Snames', 5, 8, 1),
(9, 'Drapple', 1, 11, 1),
(10, 'Chickron', 10, 11, 1),
(11, 'Severitus', 5, 4, 1),
(12, 'Todobaku', 13, 14, 2),
(13, 'Bakudeku', 14, 12, 2),
(14, 'Tododeku', 13, 12, 2),
(15, 'Todomomo', 13, 15, 2),
(16, 'Kiribaku', 14, 16, 2),
(17, 'Shinkami', 17, 18, 2),
(18, 'Erasermic', 19, 20, 2),
(19, 'Kacchako', 14, 21, 2),
(20, 'Dabideku', 22, 12, 2),
(21, 'Kamijirou', 18, 23, 2),
(22, 'Kagehina', 24, 25, 3),
(23, 'Johnlock', 26, 27, 4),
(24, 'Wilkołaki', 28, 28, 5),
(25, 'Wampiry', 29, 29, 5),
(26, 'Anioły', 30, 30, 5),
(27, 'Smoki', 31, 31, 5),
(28, 'Wilkołak i wampir', 28, 29, 5),
(29, 'Marichat', 33, 34, 6),
(30, 'Adrienette', 32, 34, 6),
(31, 'Ladynoir', 33, 35, 6),
(32, 'Ladrien', 32, 35, 6),
(33, 'Lukanette', 36, 34, 6),
(34, 'Spideypool', 38, 37, 7),
(35, 'Gerpol', 40, 39, 8),
(36, 'Ruspol', 41, 39, 8),
(37, 'Rusame', 41, 42, 8),
(38, 'Angpol', 43, 39, 8),
(39, 'Koreas', 44, 45, 8),
(40, 'Hiccstrid', 46, 47, 9),
(41, 'Czkawka & Szczerbatek', 46, 48, 9),
(42, 'Rośka', 49, 50, 10),
(43, 'Naruhina', 52, 53, 11),
(44, 'Sasunaru', 54, 52, 11),
(45, 'Sasusaku', 54, 55, 11),
(46, 'Sasuhina', 54, 53, 11),
(47, 'Kakairu', 56, 57, 11),
(48, 'Frans', 59, 60, 12),
(49, 'Sebaciel', 61, 62, 15),
(50, 'Jelsa', 63, 64, 16),
(51, 'Soukoku', 66, 67, 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'zakończone'),
(2, 'czytane'),
(3, 'planowane');

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
  ADD KEY `platform_id` (`platform_id`),
  ADD KEY `books_ibfk_5` (`status_id`),
  ADD KEY `books_ibfk_6` (`category_id`);

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- Indeksy dla tabeli `notes`
--
ALTER TABLE `notes`
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
-- Indeksy dla tabeli `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fandom`
--
ALTER TABLE `fandom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ship`
--
ALTER TABLE `ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `books_ibfk_4` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`),
  ADD CONSTRAINT `books_ibfk_5` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `books_ibfk_6` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

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
