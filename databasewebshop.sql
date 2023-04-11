-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 11 apr 2023 om 10:56
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `databasewebshop`
--

CREATE TABLE `databasewebshop` (
  `id` int(255) NOT NULL,
  `naam` text NOT NULL,
  `kleur` text NOT NULL,
  `prijs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `databasewebshop`
--

INSERT INTO `databasewebshop` (`id`, `naam`, `kleur`, `prijs`) VALUES
(1, 'white sweater', 'white ', '78'),
(2, 'black sweater', 'black', '900'),
(3, 'purple sweater', 'purple', '700'),
(4, 'yellow sweater', 'yellow', '788'),
(5, 'pink sweater', 'pink', '899'),
(6, 'brown sweater', 'brown', '7878'),
(7, 'black hoodie', 'black', '1244'),
(8, 'pink hoodie', 'pink', '324'),
(9, 'green sweater', 'green', '989'),
(10, 'white jacket', 'white', '2323');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `databasewebshop`
--
ALTER TABLE `databasewebshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `databasewebshop`
--
ALTER TABLE `databasewebshop`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
