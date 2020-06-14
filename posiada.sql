-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Maj 2020, 21:48
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `auta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posiada`
--

CREATE TABLE `posiada` (
  `VIN` varchar(17) COLLATE utf8mb4_polish_ci NOT NULL,
  `PESEL` varchar(11) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `posiada`
--

INSERT INTO `posiada` (`VIN`, `PESEL`) VALUES
('WDC1641771A228066', '22222222222'),
('WDC1641771A228066', '11111111111'),
('WF0DXXGAKDEP55816', '11111111111');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posiada`
--
ALTER TABLE `posiada`
  ADD KEY `VIN` (`VIN`),
  ADD KEY `PESEL` (`PESEL`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `posiada`
--
ALTER TABLE `posiada`
  ADD CONSTRAINT `posiada_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `samochod` (`VIN`),
  ADD CONSTRAINT `posiada_ibfk_2` FOREIGN KEY (`PESEL`) REFERENCES `wlasciciel` (`PESEL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
