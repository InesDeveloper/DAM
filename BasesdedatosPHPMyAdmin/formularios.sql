-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 20-05-2023 a las 17:17:12
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
-- Base de datos: `formularios`
--
CREATE DATABASE IF NOT EXISTS `formularios` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `formularios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desplegable`
--

CREATE TABLE `desplegable` (
  `Identificador` int(255) NOT NULL,
  `idformulario` varchar(255) NOT NULL,
  `idparent` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `desplegable`
--

INSERT INTO `desplegable` (`Identificador`, `idformulario`, `idparent`, `id`, `nombre`) VALUES
(1, 'animalvegetalmineral', '', '1', 'Animal, vegetal o mineral'),
(2, '', 'animal', 'tiposdeanimales', 'Tipos de animales'),
(3, 'mamiferos', 'mamiferos', 'tiposdemamiferos', 'Tipos de mamiferos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `Identificador` int(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`Identificador`, `clave`, `titulo`, `descripcion`) VALUES
(1, 'animalvegetalmineral', 'Animal, vegetal o mineral', 'Selecciona los campos correspondientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `Identificador` int(255) NOT NULL,
  `iddesplegable` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`Identificador`, `iddesplegable`, `id`, `nombre`) VALUES
(1, '1', 'mineral', 'mineral'),
(2, '1', 'animal', 'animal'),
(3, '1', 'vegetal', 'vegetal'),
(4, 'tiposdeanimales', 'mamiferos', 'mamiferos'),
(5, 'tiposdeanimales', 'aves', 'aves'),
(6, 'tiposdeanimales', 'reptiles', 'reptiles'),
(7, 'tiposdemamiferos', 'monotremas', 'monotremas'),
(8, 'tiposdemamiferos', 'marsupiales', 'marsupiales'),
(9, 'tiposdemamiferos', 'quiropteros', 'quiropteros'),
(10, 'tiposdemamiferos', 'primates', 'primates');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `desplegable`
--
ALTER TABLE `desplegable`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desplegable`
--
ALTER TABLE `desplegable`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
