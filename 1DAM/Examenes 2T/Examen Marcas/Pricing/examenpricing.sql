-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 16-02-2023 a las 17:12:31
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenpricing`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Suscripciones`
--

CREATE TABLE `Suscripciones` (
  `id` int(255) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `propiedad1` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `propiedad2` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `propiedad3` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `propiedad4` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Suscripciones`
--

INSERT INTO `Suscripciones` (`id`, `tipo`, `precio`, `propiedad1`, `propiedad2`, `propiedad3`, `propiedad4`) VALUES
(1, 'Gratis', '0€', '2 usuarios incluidos', '500 MB de almacenamiento', 'Soporte de correo', 'Acceso al centro de ayuda'),
(2, 'Básico', '5€', '4 usuarios incluidos', '1 GB de almacenamiento', 'Soporte de correo', 'Acceso al centro de ayuda'),
(3, 'Profesional', '10€', '8 usuarios incluidos', '15 GB de almacenamiento', 'Soporte de correo', 'Acceso al centro de ayuda');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Suscripciones`
--
ALTER TABLE `Suscripciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Suscripciones`
--
ALTER TABLE `Suscripciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
