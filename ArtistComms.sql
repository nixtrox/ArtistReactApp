-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2024. Már 13. 13:08
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ArtistComms`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `Commissions`
--

CREATE TABLE `Commissions` (
  `Id` int(11) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `Commissions`
--

INSERT INTO `Commissions` (`Id`, `Description`, `Price`) VALUES
(1, 'Beautiful mountain with a waterfall and a forest', 25000),
(2, 'An mk4 supra dropping out of a carrier helicopter', 30000),
(3, 'A cute penguin with an AR15 fighting aliens', 50000),
(4, 'asd', 100),
(5, 'Raccoon', 2000),
(6, 'dddd', 10000),
(7, 'asdasd', 10000),
(8, 'asdads', 101010),
(9, 'asdddd', 100),
(10, 'igen', 100);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `Commissions`
--
ALTER TABLE `Commissions`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `Commissions`
--
ALTER TABLE `Commissions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
