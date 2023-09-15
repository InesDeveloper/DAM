-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 19-01-2023 a las 12:35:32
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

--
-- Volcado de datos para la tabla `Donaciones`
--

INSERT INTO `Donaciones` (`id`, `entidad`, `cantidad`, `fecha`, `idUsuario`) VALUES
(4, 'Reforesta', 23, '2022-01-03', 1),
(5, 'CO2 Gestión', 9.95, '2022-01-05', 1),
(6, 'Reforesta', 23, '2022-02-01', 1),
(8, 'WWF', 50, '2022-03-03', 1),
(9, 'Reforesta', 23, '2022-04-04', 1),
(11, 'Reforesta', 23, '2022-05-03', 1),
(12, 'Asociación Plantamos árboles', 30, '2022-06-04', 1),
(13, 'WWF', 50, '2022-07-19', 1),
(14, 'Reforesta', 23, '2022-08-12', 1),
(15, 'CO2 Gestión', 9.95, '2022-09-19', 1),
(16, 'Reforesta', 23, '2022-09-01', 1),
(17, 'Reforesta', 23, '2022-10-29', 1),
(18, 'Asociación Plantamos árboles', 50, '2022-11-19', 1),
(19, 'CO2 Gestión', 8.5, '2022-11-20', 1),
(20, 'WWF', 80, '2022-12-22', 1),
(21, 'Reforesta', 23, '2023-01-02', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ejemplo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ejemplo` (
`id` int(255)
,`concepto` varchar(255)
,`gasto` double
,`tipo` varchar(255)
,`fecha` date
,`redondeo` double
,`idUsuario` int(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gastosenero22_id1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `gastosenero22_id1` (
`Total` double
);

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
(6, 'Alquiler', 700, 'Fijo', '2022-01-01', 0, 1),
(8, 'Comida', 243.21, 'Fijo', '2022-01-04', 0.79, 1),
(9, 'Agua', 30.5, 'Fijo', '2022-01-04', 0.5, 1),
(10, 'Luz', 78.8, 'Fijo', '2022-01-04', 0.2, 1),
(11, 'Donacion', 23, 'Variable', '2022-01-03', 0, 1),
(12, 'Compras', 143.48, 'Variable', '2022-01-05', 0.52, 1),
(13, 'Donacion', 9.95, 'Variable', '2022-01-05', 0.05, 1),
(14, 'Internet', 45, 'Fijo', '2022-01-10', 0, 1),
(15, 'Comida', 41.17, 'Fijo', '2022-01-12', 0.83, 1),
(16, 'Ocio', 36.3, 'Variable', '2022-01-19', 0.7, 1),
(17, 'Amazon', 49.9, 'Variable', '2022-01-21', 0.1, 1),
(18, 'Netflix', 17.99, 'Variable', '2022-01-24', 0.01, 1),
(19, 'Netflix', 17.99, 'Fijo', '2023-01-01', 0.01, 2);

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
(5, 'Ver una serie', '21:45', '23:00', '01 horas 15 minutos', '2022-01-03', 1),
(7, 'Amigos', '22:00', '23:45', '01 horas 45 minutos', '2022-01-04', 1),
(8, 'Comprar regalos', '16:00', '18:00', '02 horas 0 minutos', '2022-01-05', 1),
(9, 'Familia', '20:00', '23:00', '03 horas 0 minutos', '2022-01-05', 1),
(10, 'Ruta familiar', '10:00', '17:00', '07 horas 0 minutos', '2022-01-06', 1),
(11, 'Pelicula', '20:00', '23:30', '03 horas 30 minutos', '2022-01-06', 1),
(12, 'Cenar fuera', '19:30', '23:00', '03 horas 30 minutos', '2022-01-07', 1),
(13, 'Leer', '11:00', '13:00', '02 horas 0 minutos', '2022-01-08', 1),
(14, 'Descansar', '15:00', '17:00', '02 horas 0 minutos', '2022-01-08', 1),
(15, 'Salir', '19:00', '23:30', '04 horas 30 minutos', '2022-01-08', 1),
(16, 'Ir a la playa', '12:00', '18:30', '06 horas 30 minutos', '2022-01-09', 1);

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
(3, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-03', 1),
(5, 'Cocinar', '15:00', '15:30', '00 horas 30 minutos', '2022-01-03', 1),
(6, 'Limpiar', '16:00', '17:30', '01 horas 30 minutos', '2022-01-03', 1),
(7, 'Clase de Ingles', '18:00', '19:30', '01 horas 30 minutos', '2022-01-03', 1),
(8, 'Comprar', '19:30', '20:00', '00 horas 30 minutos', '2022-01-03', 1),
(10, 'Cenar', '21:00', '21:45', '00 horas 45 minutos', '2022-01-03', 1),
(11, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-04', 1),
(12, 'Cocinar', '15:00', '15:30', '00 horas 30 minutos', '2022-01-04', 1),
(13, 'Ejercicio', '18:00', '20:00', '02 horas 0 minutos', '2022-01-04', 1),
(14, 'Cenar', '21:00', '21:30', '00 horas 30 minutos', '2022-01-04', 1),
(15, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-05', 1),
(16, 'Cocinar', '15:00', '16:00', '01 horas 0 minutos', '2022-01-05', 1),
(17, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-07', 1),
(18, 'Cocinar', '15:00', '15:30', '00 horas 30 minutos', '2022-01-07', 1),
(19, 'Limpiar', '16:00', '18:00', '02 horas 0 minutos', '2022-01-07', 1),
(20, 'Clase de Ingles', '18:00', '19:30', '01 horas 30 minutos', '2022-01-07', 1),
(21, 'Trabajo', '07:00', '15:00', '08 horas 0 minutos', '2022-01-10', 1),
(22, 'Natacion', '18:00', '19:00', '01 horas 0 minutos', '2022-01-10', 1),
(23, 'Cenar', '21:00', '21:30', '00 horas 30 minutos', '2022-01-10', 1);

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

-- --------------------------------------------------------

--
-- Estructura para la vista `ejemplo`
--
DROP TABLE IF EXISTS `ejemplo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ejemplo`  AS SELECT `kakebo`.`id` AS `id`, `kakebo`.`concepto` AS `concepto`, `kakebo`.`gasto` AS `gasto`, `kakebo`.`tipo` AS `tipo`, `kakebo`.`fecha` AS `fecha`, `kakebo`.`redondeo` AS `redondeo`, `kakebo`.`idUsuario` AS `idUsuario` FROM `kakebo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `gastosenero22_id1`
--
DROP TABLE IF EXISTS `gastosenero22_id1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gastosenero22_id1`  AS SELECT sum(`kakebo`.`gasto`) AS `Total` FROM `kakebo` WHERE (`kakebo`.`idUsuario` = 1) ;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `Kakebo`
--
ALTER TABLE `Kakebo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `Ocio`
--
ALTER TABLE `Ocio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `Organizaciones`
--
ALTER TABLE `Organizaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Rutina`
--
ALTER TABLE `Rutina`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
