-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 11-05-2023 a las 07:52:39
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
-- Base de datos: `gestionempresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`Identificador`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`) VALUES
(1, 'Javier', 'Martinez', 'Calle Falsa 321', 123456789, 'javier@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `Identificador` int(255) NOT NULL,
  `id_cliente` int(255) NOT NULL,
  `id_producto` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pedidos`
--

INSERT INTO `Pedidos` (`Identificador`, `id_cliente`, `id_producto`, `cantidad`) VALUES
(1, 1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`Identificador`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Raton', 'Raton 4 botones', '24.99€');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `Identificador` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` int(255) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`Identificador`, `usuario`, `contrasena`, `nombre`, `apellidos`, `email`, `telefono`, `direccion`) VALUES
(1, 'Efreya', 'efreya', 'Ines', 'Martinez Sanchez', 'ines@correo.com', 123456789, 'Calle Falsa 123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `idCliente` (`id_cliente`),
  ADD KEY `idProducto` (`id_producto`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Productos`
--
ALTER TABLE `Productos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `idCliente` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`Identificador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idProducto` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`Identificador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
