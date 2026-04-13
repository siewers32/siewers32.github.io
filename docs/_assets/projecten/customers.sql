-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 09 sep 2022 om 06:47
-- Serverversie: 5.7.34-log
-- PHP-versie: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcreator`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `address`, `postal_code`, `city`, `country_code`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Leon', 'Lauritsen', 'fjeremiassen@live.dk', 'Borch Have 30', '9428', 'Jerup', 'da_DK', '+385415834585', '2022-08-31 10:29:23', NULL),
(2, 'Kim', 'Voss', 'merete.borup@hotmail.com', 'Klarskov Boulevard 4, 6. mf.', '6873', 'Låsby', 'da_DK', '+37487824395', '2022-08-31 10:29:23', NULL),
(3, 'Elisabeth', 'Jeremiassen', 'johansson.ejgil@hotmail.dk', 'Koch Gade 7, 6. sal.', '2263', 'Bredebro', 'da_DK', '+3780273439214', '2022-08-31 10:29:23', NULL),
(4, 'Jon', 'Svenningsen', 'jakob.meldgaard@hotmail.com', 'Vestergaardgade 4Q, st. mf.', '2492', 'Regstrup', 'da_DK', '+351358191177', '2022-08-31 10:29:23', NULL),
(5, 'Vilhelm', 'Brodersen', 'mikkel42@yahoo.com', 'Juulgade 4 Z', '4898', 'Klampenborg', 'da_DK', '+80879937306', '2022-08-31 10:29:23', NULL),
(6, 'Willy', 'Abildgaard', 'ketty12@hotmail.dk', 'Lindegaardhaven 1', '8698', 'Vadum', 'da_DK', '+6795304680', '2022-08-31 10:29:23', NULL),
(7, 'Arne', 'Kofoed', 'sanne27@markussen.com', 'Krog Plads 7H', '6679', 'Maribo', 'da_DK', '+22807504112', '2022-08-31 10:29:23', NULL),
(8, 'Bernhard', 'Magnussen', 'hoffmann.philip@bjerrum.dk', 'Mose Allé 524, st.', '2855', 'Sjællands', 'da_DK', '+29099564', '2022-08-31 10:29:23', NULL),
(9, 'Ejler', 'Bjerg', 'samuelsen.mark@mail.dk', 'Svanegade 39, 6. tv.', '5338', 'Vonge', 'da_DK', '+212939539530', '2022-08-31 10:29:23', NULL),
(10, 'Gerda', 'Vinther', 'ibrahim.wagner@henningsen.dk', 'Nikolajsenhaven 9, 2. sal.', '3201', 'Auning', 'da_DK', '+996946329565', '2022-08-31 10:29:23', NULL),
(11, 'Jette', 'Pedersen', 'kaas.rikke@hotmail.com', 'Weber Allé 47, 4. sal.', '2424', 'Engesvang', 'da_DK', '+967217587463', '2022-08-31 10:29:23', NULL),
(12, 'Tommy', 'Bach', 'tbang@mail.dk', 'Haugaard Gade 6 J, 6.', '9194', 'Nordborg', 'da_DK', '+218502325394', '2022-08-31 10:29:23', NULL),
(13, 'Agnethe', 'Fabricius', 'bhaugaard@albrechtsen.dk', 'Fabricius Have 607', '6298', 'Tønder', 'da_DK', '+21695373388', '2022-08-31 10:29:23', NULL),
(14, 'Kent', 'Nicolajsen', 'margrete61@lindberg.net', 'Koldskov 42', '3590', 'Vejers', 'da_DK', '+2388577680', '2022-08-31 10:29:23', NULL),
(15, 'Steffen', 'Sand', 'geertsen.einar@gmail.com', 'Martinussen Plads 8 K', '2511', 'Vestervig', 'da_DK', '+994612872195', '2022-08-31 10:29:23', NULL),
(16, 'Irma', 'Bloch', 'pandersson@yahoo.com', 'Ploug Gade 9', '4995', 'Østermarie', 'da_DK', '+264222777743', '2022-08-31 10:29:23', NULL),
(17, 'Augusta', 'Iversen', 'ejohannessen@bertelsen.com', 'Ravn Plads 30, 6. th.', '2734', 'Værløse', 'da_DK', '+3813607125112', '2022-08-31 10:29:23', NULL),
(18, 'Laurine', 'Persson', 'sborg@rohde.dk', 'Lindgaardskov 4, st. th.', '3432', 'Højer', 'da_DK', '+903971721026', '2022-08-31 10:29:23', NULL),
(19, 'Thi', 'Husted', 'stokholm.ingrid@damgaard.com', 'Kaspersenvej 8', '9106', 'Sakskøbing', 'da_DK', '+420446342097', '2022-08-31 10:29:23', NULL),
(20, 'Frederik', 'Lorenzen', 'xhassan@andersson.info', 'Fiskergade 7, 1.', '2506', 'Nysted', 'da_DK', '+22680922359', '2022-08-31 10:29:23', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_country_code_foreign` (`country_code`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_country_code_foreign` FOREIGN KEY (`country_code`) REFERENCES `countries` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
