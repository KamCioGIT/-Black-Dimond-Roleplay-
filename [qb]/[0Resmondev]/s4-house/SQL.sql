-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 24 Eyl 2022, 07:57:47
-- Sunucu sürümü: 10.4.26-MariaDB
-- PHP Sürümü: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kibratest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `s4-house`
--

CREATE TABLE IF NOT EXISTS `s4-house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apartTypeID` varchar(50) DEFAULT NULL,
  `garage_in` text DEFAULT NULL,
  `house_in` text DEFAULT NULL,
  `owner` text NOT NULL,
  `name` text NOT NULL DEFAULT 'House for sale',
  `garage` text NOT NULL DEFAULT '[]',
  `friends` text NOT NULL DEFAULT '[]',
  `theme` text NOT NULL DEFAULT 'modern',
  `garageId` int(11) NOT NULL DEFAULT 1,
  `extends` text NOT NULL DEFAULT '[]',
  `props` text NOT NULL DEFAULT '[]',
  `prop` text NOT NULL DEFAULT 'esyali',
  `alarm` tinyint(1) NOT NULL DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `img` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `s4-house-cache`
--

CREATE TABLE IF NOT EXISTS `s4-house-cache` (
  `hid` int(11) NOT NULL,
  `identifier` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `s4-house`
--
ALTER TABLE `s4-house`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `s4-house-cache`
--
ALTER TABLE `s4-house-cache`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `s4-house-cache`
--
ALTER TABLE `s4-house-cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;