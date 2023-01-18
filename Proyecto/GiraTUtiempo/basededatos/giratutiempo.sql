-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 18-01-2023 a las 23:28:38
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
  `fecha` date NOT NULL,
  `idUsuario` int(255) NOT NULL
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
  `redondeo` double NOT NULL,
  `idUsuario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Kakebo`
--

INSERT INTO `Kakebo` (`id`, `concepto`, `gasto`, `tipo`, `fecha`, `redondeo`, `idUsuario`) VALUES
(6, 'Alquiler', 700, 'Fijo', '2022-01-01', 0, 1);

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
  `fecha` date NOT NULL,
  `idUsuario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Ocio`
--

INSERT INTO `Ocio` (`id`, `ocio`, `horaInicio`, `horaFin`, `totalTiempo`, `fecha`, `idUsuario`) VALUES
(4, 'Gym', '16:00', '17:00', '01 horas 0 minutos', '2022-01-03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Organizaciones`
--

CREATE TABLE `Organizaciones` (
  `id` int(255) NOT NULL,
  `entidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Organizaciones`
--

INSERT INTO `Organizaciones` (`id`, `entidad`, `direccion`, `contacto`) VALUES
(1, 'Reforesta', 'https://reforesta.es/', 'info@reforesta.es'),
(2, 'WWF', 'https://www.wwf.es/nuestro_trabajo/bosques/', 'info@wwf.es'),
(3, 'CO2 Gestión', 'https://co2gestion.com/apadrinar-bosque/', 'hola@co2gestion.com'),
(4, 'Asociación Plantamos árboles', 'https://plantamosarboles.org/', 'plantaarboles@hotmail.com');

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
  `fecha` date NOT NULL,
  `idUsuario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Rutina`
--

INSERT INTO `Rutina` (`id`, `rutina`, `horaInicio`, `horaFin`, `totalTiempo`, `fecha`, `idUsuario`) VALUES
(3, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-03', 1);

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
(1, 'Ines', 'Martinez Sanchez', 'Efreya', '12345678', 'inesms@correo.com'),
(2, 'Javier', 'Martínez Montilla', 'Qibokki', '12345678', 'jmm@correo.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Donaciones`
--
ALTER TABLE `Donaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsuarioDonaciones` (`idUsuario`);

--
-- Indices de la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsuarioKakebo` (`idUsuario`);

--
-- Indices de la tabla `Ocio`
--
ALTER TABLE `Ocio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsuarioOcio` (`idUsuario`);

--
-- Indices de la tabla `Organizaciones`
--
ALTER TABLE `Organizaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Rutina`
--
ALTER TABLE `Rutina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsuarioRutina` (`idUsuario`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Donaciones`
--
ALTER TABLE `Donaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Ocio`
--
ALTER TABLE `Ocio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Organizaciones`
--
ALTER TABLE `Organizaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Rutina`
--
ALTER TABLE `Rutina`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Donaciones`
--
ALTER TABLE `Donaciones`
  ADD CONSTRAINT `UsuarioDonaciones` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  ADD CONSTRAINT `UsuarioKakebo` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Ocio`
--
ALTER TABLE `Ocio`
  ADD CONSTRAINT `UsuarioOcio` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Rutina`
--
ALTER TABLE `Rutina`
  ADD CONSTRAINT `UsuarioRutina` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
