-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-01-2023 a las 21:54:09
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
-- Base de datos: `giratutiempo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Donaciones`
--

CREATE TABLE `Donaciones` (
  `id` int(255) NOT NULL,
  `entidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` double NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Kakebo`
--

CREATE TABLE `Kakebo` (
  `id` int(255) NOT NULL,
  `concepto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `gasto` double NOT NULL,
  `tipo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `redondeo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ocio`
--

CREATE TABLE `Ocio` (
  `id` int(255) NOT NULL,
  `ocio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaInicio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaFin` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `totalTiempo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Ocio`
--

INSERT INTO `Ocio` (`id`, `ocio`, `horaInicio`, `horaFin`, `totalTiempo`, `fecha`) VALUES
(3, 'Gym', '15:40', '16:34', '00 horas 54 minutos', '2023-01-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Organizaciones`
--

CREATE TABLE `Organizaciones` (
  `id` int(255) NOT NULL,
  `entidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rutina`
--

CREATE TABLE `Rutina` (
  `id` int(255) NOT NULL,
  `rutina` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaInicio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaFin` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `totalTiempo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Rutina`
--

INSERT INTO `Rutina` (`id`, `rutina`, `horaInicio`, `horaFin`, `totalTiempo`, `fecha`) VALUES
(2, 'Trabajo', '07:15', '18:09', '10 horas 54 minutos', '2023-01-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `nombre`, `apellidos`, `usuario`, `contrasena`, `email`) VALUES
(1, 'Ines', 'Martinez Sanchez', 'Efreya', '12345678', 'inesms@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UsuariosYSuscripciones`
--

CREATE TABLE `UsuariosYSuscripciones` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_suscripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Donaciones`
--
ALTER TABLE `Donaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Ocio`
--
ALTER TABLE `Ocio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Organizaciones`
--
ALTER TABLE `Organizaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Rutina`
--
ALTER TABLE `Rutina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `UsuariosYSuscripciones`
--
ALTER TABLE `UsuariosYSuscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_suscripcion` (`id_suscripcion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Donaciones`
--
ALTER TABLE `Donaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Ocio`
--
ALTER TABLE `Ocio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Organizaciones`
--
ALTER TABLE `Organizaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Rutina`
--
ALTER TABLE `Rutina`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `UsuariosYSuscripciones`
--
ALTER TABLE `UsuariosYSuscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `UsuariosYSuscripciones`
--
ALTER TABLE `UsuariosYSuscripciones`
  ADD CONSTRAINT `id_suscripcion` FOREIGN KEY (`id_suscripcion`) REFERENCES `kakebo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
