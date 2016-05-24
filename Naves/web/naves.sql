-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-05-2016 a las 09:15:31
-- Versión del servidor: 5.6.28-0ubuntu0.15.10.1
-- Versión de PHP: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `naves`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hangar`
--

CREATE TABLE IF NOT EXISTS `hangar` (
  `IdNave` int(11) NOT NULL,
  `modelo` varchar(50) COLLATE utf8_bin NOT NULL,
  `longitud` int(11) NOT NULL,
  `daño` int(11) NOT NULL,
  `escudo` int(11) DEFAULT NULL,
  `combustible` varchar(50) COLLATE utf8_bin NOT NULL,
  `arma` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `hangar`
--

INSERT INTO `hangar` (`IdNave`, `modelo`, `longitud`, `daño`, `escudo`, `combustible`, `arma`) VALUES
(1, 'x-wing', 20, 5, 0, 'gasolina', 'laser'),
(2, 'alcon milenario', 30, 34, 2, 'plasma', 'laser neutrinos'),
(4, 'jui-23', 30, 5, 5, 'plasma', 'cohetes'),
(5, 'lus', 45, 4, 5, 'plasma', 'cohetes'),
(6, '6n', 34, 4, 0, 'gasolina', 'laser'),
(7, '7n', 40, 56, 0, 'plasma', 'laser ionico'),
(8, '8n', 34, 3, 3, 'plasma', 'laser fotonico'),
(9, 'x-pablo', 40, 6, 0, 'plasma', 'cohetes ionicos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hangar`
--
ALTER TABLE `hangar`
  ADD PRIMARY KEY (`IdNave`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
