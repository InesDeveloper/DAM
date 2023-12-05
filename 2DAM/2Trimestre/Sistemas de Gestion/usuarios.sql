-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 05-12-2023 a las 13:12:27
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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(20) NOT NULL,
  `usuario` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Nombre del usuario","descripcion":"Introduce el nombre del usuario que vas a crear","placeholder":"ejem: Introduce un nombre de usuario","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-user","tipodato":"text"}\r\n',
  `contrasena` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Contraseña del usuario","descripcion":"Introduce la contraseña del usuario que estas creando","placeholder":"ejem: Introduce una contaseña","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-key","tipodato":"password"}',
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Nombre propio del usuario","descripcion":"Introduce el nombre propio del usuario que estas creando","placeholder":"ejem: Introduce un nombre","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-signature","tipodato":"text"}\r\n',
  `apellidos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Apellidos del usuario","descripcion":"Introduce el o los apellidos del usuario que estas creando","placeholder":"ejem: Introduce uno o varios apellidos","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-signature","tipodato":"text"}\r\n',
  `email` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Correo electronico del usuario","descripcion":"Introduce el correo electronico del usuario que estas creando","placeholder":"ejem: correo@correo.com","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-envelope-square","tipodato":"email"}\r\n',
  `nivel` int(4) NOT NULL COMMENT '{"titulo":"Nivel de usuario dentro de la plataforma","descripcion":"Introduce el nivel del usuario dentro de la plataforma actual","placeholder":"ejem: Especifica un nivel de la siguiente lista","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-layer-group","tipodato":"text"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `usuario`, `contrasena`, `nombre`, `apellidos`, `email`, `nivel`) VALUES
(1, 'Ines', 'Ines', 'Ines', 'Martinez', 'Ines@correo.com', 1),
(2, 'holi1', 'holi1', 'holi1nombre', 'holi1apellido', 'holi1@correo.com', 1),
(7, 'holi1modif', 'holi1', 'holi1nombre', 'holi1apellido', 'holi1@correo.com', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
