-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 27-10-2023 a las 10:09:03
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supercrud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregas`
--

CREATE TABLE `entregas` (
  `Identificador` int(20) NOT NULL,
  `NIF` varchar(9) COLLATE utf8mb4_spanish_ci NOT NULL,
  `url` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'En este campo debes introducir la url de youtube',
  `practica` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'A continuación debes introducir la práctica que estás entregando',
  `epoch` int(12) DEFAULT NULL COMMENT 'En este campo aparecerá la marca de tiempo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `entregas`
--

INSERT INTO `entregas` (`Identificador`, `NIF`, `url`, `practica`, `epoch`) VALUES
(1, '12345678A', 'ggadgsagsda', 'fgdsgfhgf', 52353447),
(2, '87654321B', 'sadsfsdff', 'sdfsdff', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entregas`
--
ALTER TABLE `entregas`
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
