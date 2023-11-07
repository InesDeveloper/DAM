-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 07-11-2023 a las 18:40:51
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
  `Identificador` int(20) NOT NULL COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"false","tipodato":"number"}',
  `email` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true","icono":"fas fa-at","tipodato":"email"}',
  `url` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"URL del video","descripcion":"En este campo introduce la URL que has copiado y pegado al realizar la entrega del video","placeholder":"ejem:http://youtube.com?v=abc","mascara":"algo","min":"10","deshabilitado":"false","visible":"true","icono":"fab fa-youtube","tipodato":"URL"}',
  `practica` int(20) NOT NULL COMMENT '{"titulo":"Número de la práctica","descripcion":"Introduce el número de la práctica que vas a subir en esta entrega","placeholder":"ejem: Introduce un número","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-sort-numeric-up","tipodato":"number"}',
  `epoch` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '{"titulo":"Número de la práctica","descripcion":"Introduce el número de la práctica que vas a subir en esta entrega","placeholder":"ejem: Introduce un número","mascara":"algo","min":"1","deshabilitado":"false","visible":"false","tipodato":"text"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `entregas`
--

INSERT INTO `entregas` (`Identificador`, `email`, `url`, `practica`, `epoch`) VALUES
(5, 'ines@hotmail.com', 'asdsadasd', 2, '2023-11-02 12:01:21'),
(7, 'ines2@hotmail.com', 'kdoapajru', 3, '2023-11-04 17:12:02'),
(8, '1ejemplo@algo.com', 'https://youtu.be/yDp', 1, '2023-11-07 15:49:14'),
(9, 'efreya_sanchez@hotmail.com', 'https://youtudndkowow', 3, '2023-11-07 18:17:49');

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
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"false","tipodato":"number"}', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
