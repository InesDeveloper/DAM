-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-05-2023 a las 14:30:24
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `growtowngarden`
--
CREATE DATABASE IF NOT EXISTS `growtowngarden` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `growtowngarden`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desplegable`
--

CREATE TABLE `desplegable` (
  `Identificador` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `desplegable`
--

INSERT INTO `desplegable` (`Identificador`, `id`, `nombre`, `tipo`, `imagen`) VALUES
(1, 'tiposdetomate', 'Tomate', 'hortalizas', 'images/Tomate.jpg'),
(2, 'tiposdepepino', 'Pepino', 'hortalizas', 'images/Pepino.jpg'),
(3, 'tiposdelechuga', 'Lechuga', 'hortalizas', 'images/Lechuga.jpg'),
(4, 'tiposdecanonigo', 'Canónigo', 'hortalizas', 'images/canonigos.jpg'),
(5, 'tiposdeendivia', 'Endivia', 'hortalizas', 'images/endivias.jpg'),
(6, 'tiposdeescarola', 'Escarola', 'hortalizas', 'images/escarola.jpg'),
(7, 'tiposdeberros', 'Berros', 'hortalizas', 'images/berros.jpg'),
(8, 'tiposdeacelgas', 'Acelgas', 'hortalizas', 'images/acelga.jpg'),
(9, 'tiposdeespinacas', 'Espinacas', 'hortalizas', 'images/espinaca.jpg'),
(10, 'tiposdecebolla', 'Cebolla', 'hortalizas', 'images/cebolla.jpg'),
(11, 'tiposdepatata', 'Patata', 'hortalizas', 'images/patata.jpg'),
(12, 'tiposdepimiento', 'Pimiento', 'hortalizas', 'images/Pimiento.jpg'),
(13, 'tiposdezanahoria', 'Zanahoria', 'hortalizas', 'images/zanahoria.jpg'),
(14, 'tiposdepuerro', 'Puerro', 'hortalizas', 'images/puerro.jpg'),
(15, 'tiposderabano', 'Rábano', 'hortalizas', 'images/rabano.jpg'),
(16, 'tiposdejudia', 'Judía', 'hortalizas', 'images/judia.jpg'),
(17, 'tiposdeguisante', 'Guisante', 'hortalizas', 'images/guisante.jpg'),
(18, 'tiposdecalabacin', 'Calabacín', 'hortalizas', 'images/calabacin.jpg'),
(19, 'tiposdeajo', 'Ajo', 'hortalizas', 'images/ajo.jpg'),
(20, 'tiposdeberenjena', 'Berenjena', 'hortalizas', 'images/Berenjena.jpg'),
(21, 'tiposdeboniato', 'Boniato', 'hortalizas', 'images/Boniato.jpg'),
(22, 'tiposdehabas', 'Habas', 'hortalizas', 'images/habas.jpg'),
(23, 'tiposdefresas', 'Fresas', 'frutas', 'images/fresas.jpg'),
(24, 'tiposdemoras', 'Moras', 'frutas', 'images/moras.jpg'),
(25, 'tiposdeuva', 'Uva', 'frutas', 'images/uva.jpg'),
(26, 'tiposdeoregano', 'Orégano', 'aromaticas', 'images/oregano.jpg'),
(27, 'tiposdeperejil', 'Perejil', 'aromaticas\r\n', 'images/perejil.jpg'),
(28, 'tiposdemanzanilla', 'Manzanilla', 'aromaticas', 'images/manzanilla.jpg'),
(29, 'tiposdemejorana', 'Mejorana', 'aromaticas', 'images/mejorana.jpg'),
(30, 'tiposderomero', 'Romero', 'aromaticas', 'images/romero.jpg'),
(31, 'tiposdealbahaca', 'Albahaca', 'aromaticas', 'images/albahaca.jpg'),
(32, 'tiposdementa', 'Menta', 'aromaticas', 'images/menta.jpg'),
(33, 'tiposdehierbabuena', 'Hierbabuena', 'aromaticas', 'images/hierbabuena.jpg'),
(34, 'tiposderegaliz', 'Regaliz', 'aromaticas', 'images/regaliz.jpg'),
(35, 'tiposdecebollino', 'Cebollino', 'aromaticas', 'images/cebollino.jpg'),
(36, 'tiposdecilantro', 'Cilantro', 'aromaticas', 'images/cilantro.jpg'),
(37, 'tiposdeeneldo', 'Eneldo', 'aromaticas', 'images/eneldo.jpg'),
(38, 'tiposdetomillo', 'Tomillo', 'aromaticas', 'images/tomillo.jpg'),
(39, 'tiposdeostra', 'Ostra', 'setas', 'images/ostra.jpg'),
(40, 'tiposdechampiñon', 'Champiñón', 'setas', 'images/champiñon.jpg'),
(41, 'tiposdecardo', 'Cardo', 'setas', 'images/cardo.jpg'),
(42, 'tiposdechopo', 'Chopo', 'setas', 'images/chopo.jpg'),
(43, 'tiposdeboletus', 'Boletus', 'setas', 'images/boletus.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `iddesplegable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`Identificador`, `nombre`, `iddesplegable`) VALUES
(1, 'Tomate cherry', 'tiposdetomate'),
(2, 'Iceberg', 'tiposdelechuga'),
(3, 'Lechuga', 'tiposdelechuga'),
(4, 'Romana', 'tiposdelechuga'),
(5, 'Cogollos', 'tiposdelechuga'),
(6, 'Baby leaf', 'tiposdelechuga'),
(7, 'Canónigo', 'tiposdecanonigo'),
(8, 'Endivia', 'tiposdeendivia'),
(9, 'Escarola', 'tiposdeescarola'),
(10, 'Berros', 'tiposdeberros'),
(11, 'Acelgas', 'tiposdeacelgas'),
(12, 'Espinacas', 'tiposdeespinacas'),
(13, 'Holandes', 'tiposdepepino'),
(14, 'Español', 'tiposdepepino'),
(15, 'Kiwano', 'tiposdepepino'),
(16, 'Pepinillos', 'tiposdepepino'),
(17, 'Cebolla', 'tiposdecebolla'),
(18, 'Patata', 'tiposdepatata'),
(19, 'Padron', 'tiposdepimiento'),
(20, 'Morron', 'tiposdepimiento'),
(21, 'Guindillas', 'tiposdepimiento'),
(22, 'Chile', 'tiposdepimiento'),
(23, 'Dulce', 'tiposdepimiento'),
(24, 'Piquillo', 'tiposdepimiento'),
(25, 'Cayena', 'tiposdepimiento'),
(26, 'California', 'tiposdepimiento'),
(27, 'Zanahoria', 'tiposdezanahoria'),
(28, 'Pera', 'tiposdetomate'),
(29, 'Rama', 'tiposdetomate'),
(30, 'Kumato', 'tiposdetomate'),
(31, 'Canario', 'tiposdetomate'),
(32, 'Puerro', 'tiposdepuerro'),
(33, 'Rábano', 'tiposderabano'),
(34, 'Judía', 'tiposdejudia'),
(35, 'Guisante', 'tiposdeguisante'),
(36, 'Calabacín', 'tiposdecalabacin'),
(37, 'Ajo', 'tiposdeajo'),
(38, 'Berenjena', 'tiposdeberenjena'),
(39, 'Boniato', 'tiposdeboniato'),
(40, 'Habas', 'tiposdehabas'),
(41, 'Fresas', 'tiposdefresas'),
(42, 'Moras', 'tiposdemoras'),
(43, 'En parra', 'tiposdeuva'),
(44, 'Orégano', 'tiposdeoregano'),
(45, 'Perejil', 'tiposdeperejil'),
(46, 'Manzanilla', 'tiposdemanzanilla'),
(47, 'Mejorana', 'tiposdemejorana'),
(48, 'Romero', 'tiposderomero'),
(49, 'Albahaca', 'tiposdealbahaca'),
(50, 'Menta', 'tiposdementa'),
(51, 'Hierbabuena', 'tiposdehierbabuena'),
(52, 'Regaliz', 'tiposderegaliz'),
(53, 'Cebollino', 'tiposdecebollino'),
(54, 'Cilantro', 'tiposdecilantro'),
(55, 'Eneldo', 'tiposdeeneldo'),
(56, 'Tomillo', 'tiposdetomillo'),
(57, 'Ostra', 'tiposdeostra'),
(58, 'Champiñón', 'tiposdechampiñon'),
(59, 'Cardo', 'tiposdecardo'),
(60, 'Chopo', 'tiposdechopo'),
(61, 'Boletus', 'tiposdeboletus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vegetales`
--

CREATE TABLE `vegetales` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `epocasiembra` varchar(255) NOT NULL,
  `frecuenciariego` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vegetales`
--

INSERT INTO `vegetales` (`Identificador`, `nombre`, `epocasiembra`, `frecuenciariego`) VALUES
(1, 'Tomate cherry', 'Primavera/verano', 'Cada dos o tres días, dependiendo del clima'),
(2, 'Iceberg', 'Primavera', 'una vez por cada tres días'),
(3, 'Lechuga', 'Finales de invierno, principios de primavera', 'Dos o tres días'),
(4, 'Romana', 'Otoño y principios de primavera', 'Dos o tres días'),
(5, 'Cogollos', 'Finales de invierno, principios de primavera', 'Dos o tres días'),
(6, 'Baby leaf', 'Primavera y otoño', 'Dos o tres días'),
(7, 'Canónigo', 'Otoño o invierno', 'Diario o cada dos días. Depende de la zona.'),
(8, 'Endivia', 'Primavera', 'Una o dos veces a la semana'),
(9, 'Escarola', 'Abril a septiembre', 'Uno o dos veces a la semana'),
(10, 'Berros', 'Finales de otoño y principios de primavera', 'Cada tres días'),
(11, 'Acelgas', 'Marzo y octubre', 'Dos o tres veces a la semana'),
(12, 'Espinacas', 'Principios de primavera', 'Una o dos veces a la semana'),
(13, 'Holandes', 'Septiembre', 'Cada dos dias'),
(14, 'Español', 'Abril', 'Cada cuatro o cinco días. Depende de la zona.'),
(15, 'Kiwano', 'Finales de invierno, principios de primavera', 'Tres veces a la semana'),
(16, 'Pepinillos', 'Abril', 'Cada cuatro o cinco días'),
(17, 'Cebolla', 'Septiembre hasta diciembre', 'Cada seis u ocho días'),
(18, 'Patata', 'Marzo y abril', 'Dos veces a la semana. Depende de la zona.'),
(19, 'Padron', 'De enero hasta mayo', 'Dos veces a la semana'),
(20, 'Morron', 'De Julio a septiembre', 'Cada dos días'),
(21, 'Guindillas', 'Desde Enero o febrero hasta mayo', 'Cada 3 días. Según la zona.'),
(22, 'Chile', 'Desde Septiembre hasta finales de noviembre', 'Cada siete o 4 días. Depende de la zona'),
(23, 'Dulce', 'Marzo y Mayo', 'Cada uno o dos días'),
(24, 'Piquillo', 'Febrero a Marzo', 'Cada uno o dos días'),
(25, 'Cayena', 'Febrero a Abril', 'Dos veces a la semana. En invierno a riego espaciado.'),
(26, 'California', 'Julio', 'Dos o tres veces a la semana. Depende de la zona'),
(27, 'Zanahoria', 'De Abril a julio', 'Dos o tres veces por semana'),
(28, 'Pera', 'Principios de Primavera', 'Dos veces a la semana'),
(29, 'Rama', 'Marzo y abril', 'Dos o tres veces a la semana'),
(30, 'Kumato', 'Marzo y abril', 'Dos a cuatro días a la semana. Depende de la zona'),
(31, 'Canario', 'Todo el año', 'Una vez a la semana'),
(32, 'Puerro', 'Finales de febrero', 'Cada siete días'),
(33, 'Rábano', 'Primavera', 'Cada dos o tres días'),
(34, 'Judía', 'Mayo en zonas frías y Marzo en zonas templadas', 'Dos o tres veces a la semana'),
(35, 'Guisante', 'Otoño', 'Una vez a la semana'),
(36, 'Calabacín', 'Abril y mayo', 'Dos o tres veces a la semana'),
(37, 'Ajo', 'Noviembre', 'Cada cuatro o cinco días'),
(38, 'Berenjena', 'De marzo a mayo', 'Cada tres días'),
(39, 'Boniato', 'De abril a julio', 'Cada tres días'),
(40, 'Habas', 'Finales de otoño principios de Invierno', 'Cada dos semanas'),
(41, 'Fresas', 'Noviembre a marzo', 'Una o dos veces a la semana'),
(42, 'Moras', 'Finales de otoño principios de invierno', 'Según tipo de suelo y clima. 3cm de agua aproximadamente una o dos veces a la semana'),
(43, 'En parra', 'Primavera', 'Una o dos veces a la semana'),
(44, 'Orégano', 'Otoño o primavera', 'Una o dos veces a la semana'),
(45, 'Perejil', 'Todo el año', 'Cada dos o tres días'),
(46, 'Manzanilla', 'Finales de otoño', 'Cada tres o cuatro días'),
(47, 'Mejorana', 'Abril y mayo', 'Dos veces a la semana'),
(48, 'Romero', 'Otoño', 'Una o tres veces a la semana. Según la zona.'),
(49, 'Albahaca', 'Finales de invierno principios de primavera', 'A diario'),
(50, 'Menta', 'Primavera u otoño', 'Cuatro o cinco veces a la semana'),
(51, 'Hierbabuena', 'Todo el año', 'Dos o tres veces a la semana'),
(52, 'Regaliz', 'Primavera y verano', 'Dos veces a la semana'),
(53, 'Cebollino', 'Todo el año. En interior.', 'Una vez a la semana'),
(54, 'Cilantro', 'Primavera', 'Tres o cuatro días a la semana'),
(55, 'Eneldo', 'Finales de invierno principios de primavera', 'Una vez cada cinco días.'),
(56, 'Tomillo', 'Primavera', 'Cada dos días'),
(57, 'Ostra', 'Todo el año', 'Riego moderado. Le gusta la humedad'),
(58, 'Champiñón', 'Otoño y primavera', 'Con frecuencia. Le va bien la humedad. No encharcar.'),
(59, 'Cardo', 'Todo el año, pero principalmente en épocas húmedas ', 'Todos los días sin encharcar'),
(60, 'Chopo', 'Todo el año en lugar húmedo', 'Riego moderado manteniendo la humedad '),
(61, 'Boletus', 'Todo el año. Prefieren suelos fríos', 'Riego moderado manteniendo la humedad ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `desplegable`
--
ALTER TABLE `desplegable`
  ADD PRIMARY KEY (`Identificador`) USING BTREE;

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`Identificador`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vegetales`
--
ALTER TABLE `vegetales`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desplegable`
--
ALTER TABLE `desplegable`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vegetales`
--
ALTER TABLE `vegetales`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
