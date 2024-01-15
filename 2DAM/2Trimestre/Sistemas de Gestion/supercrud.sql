-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-01-2024 a las 21:10:26
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
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `Identificador` int(100) NOT NULL COMMENT '{"titulo":"Identificador","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true", "icono":"fas fa-at","tipodato":"number"}',
  `idmoodle` int(20) NOT NULL COMMENT '{"titulo":"ID de Moodle","descripcion":"descripción","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true", "icono":"fas fa-at","tipodato":"number"}',
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Nombre de la asignatura","descripcion":"descripción","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true", "icono":"fas fa-at","tipodato":"text"}',
  `shortname` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Codigo shortname de la plataforma","descripcion":"descripción","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true", "icono":"fas fa-at","tipodato":"text"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='{"titulo":"Asignaturas","descripcion":"Mantenimiento donde puedes ver el contenido de las asignaturas de los ciclos", "icono":"fas fa-chalkboard-teacher"}';

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`Identificador`, `idmoodle`, `nombre`, `shortname`) VALUES
(1, 1, 'Capitol ONLINE', 'Campus Capitol ONLINE'),
(2, 2, 'Atención Sociosanitaria a Personas Dependientes en Instituciones Sociales', 'ASPD'),
(3, 11, 'Recursos Humanos y Responsabilidad Social Corporativa (T1)', 'T1-AYF-RRHH Resp. Soc. Corpor'),
(4, 12, 'Proceso Integral de la Actividad Comercial (T1)', 'T1-AYF-PIAC'),
(5, 13, 'Comunicación y Atención al cliente (T1)', 'T1-AYF-Comun y At cliente'),
(6, 29, 'Educación infantil Inglés Técnico 1º', 'P1-EI1-ING TECN'),
(7, 30, 'Formación y Orientación Laboral (EI1)', 'P1-EI1-FOL'),
(8, 31, 'Didáctica de la educación infantil', 'P1-EI1-Did');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregas`
--

CREATE TABLE `entregas` (
  `Identificador` int(20) NOT NULL COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"false","tipodato":"number"}',
  `email` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true","icono":"fas fa-at","tipodato":"email"}',
  `url` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT '{"titulo":"URL del video","descripcion":"En este campo introduce la URL que has copiado y pegado al realizar la entrega del video","placeholder":"ejem:http://youtube.com?v=abc","mascara":"algo","min":"10","deshabilitado":"false","visible":"true","icono":"fab fa-youtube","tipodato":"URL"}',
  `practica` int(20) NOT NULL COMMENT '{"titulo":"Número de la práctica","descripcion":"Introduce el número de la práctica que vas a subir en esta entrega","placeholder":"ejem: Introduce un número","mascara":"algo","min":"1","deshabilitado":"false","visible":"true","icono":"fas fa-sort-numeric-up","tipodato":"number"}',
  `asignatura` int(20) NOT NULL COMMENT '{"titulo":"Código de la asignatura","descripción":"Especifica el código de la asignatura","placeholder":"ejem: 123","mascara":"algo","min":"1","deshabilitado":"true","visible":"true","icono":"fas fa-brain","tipodato":"number","parametroget":"idcurso","FKtabla":"asignaturas","FKclave":"idmoodle","FKmostrar":"nombre"}',
  `epoch` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '{"titulo":"Número de la práctica","descripcion":"Introduce el número de la práctica que vas a subir en esta entrega","placeholder":"ejem: Introduce un número","mascara":"algo","min":"1","deshabilitado":"false","visible":"false","tipodato":"text"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `entregas`
--

INSERT INTO `entregas` (`Identificador`, `email`, `url`, `practica`, `asignatura`, `epoch`) VALUES
(1, 'ines@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 1, 1, '2023-11-02 12:01:21'),
(2, 'ines2@hotmail.com', 'https://www.youtube.com/watch?v=egLMPbcs4co', 2, 2, '2023-11-04 17:12:02'),
(3, '1ejemplo@algo.com', 'https://www.youtube.com/watch?v=WUOtCLOXgm8', 1, 121, '2023-11-07 15:49:14'),
(4, 'codigo2@codigo.com', 'https://www.youtube.com/watch?v=fCbf4T4Zp5A', 2, 122, '2023-11-08 11:48:27'),
(5, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(6, 'efreya_sanchez@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 3, 123, '2023-11-08 12:35:03'),
(7, 'pruebademo@demo.com', 'https://www.youtube.com/watch?v=tAGnKpE4NCI', 1, 121, '2023-11-08 12:36:42'),
(8, 'pruebademo2@demo.com', 'https://www.youtube.com/watch?v=V1Pl8CzNzCw&list=RDq8ir8rVl2Z4&index=24', 2, 122, '2023-11-08 12:37:50'),
(9, 'pruebademo3@demo.com', 'https://www.youtube.com/watch?v=DQQRjFzB8gY&list=RDq8ir8rVl2Z4&index=36', 3, 123, '2023-11-08 12:41:47'),
(10, 'pruebademo4@demo.com', 'https://www.youtube.com/watch?v=7wtfhZwyrcc&list=RDq8ir8rVl2Z4&index=1', 4, 124, '2023-11-08 12:57:17'),
(11, 'efreya_sanchez@hotmail.com', 'https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO', 2, 122, '2023-11-08 18:52:01'),
(12, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(20, 'ines@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 1, 121, '2023-11-02 12:01:21'),
(21, 'ines2@hotmail.com', 'https://www.youtube.com/watch?v=egLMPbcs4co', 2, 122, '2023-11-04 17:12:02'),
(22, '1ejemplo@algo.com', 'https://www.youtube.com/watch?v=WUOtCLOXgm8', 1, 121, '2023-11-07 15:49:14'),
(23, 'codigo2@codigo.com', 'https://www.youtube.com/watch?v=fCbf4T4Zp5A', 2, 122, '2023-11-08 11:48:27'),
(24, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(25, 'efreya_sanchez@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 3, 123, '2023-11-08 12:35:03'),
(26, 'pruebademo@demo.com', 'https://www.youtube.com/watch?v=tAGnKpE4NCI', 1, 121, '2023-11-08 12:36:42'),
(27, 'pruebademo2@demo.com', 'https://www.youtube.com/watch?v=V1Pl8CzNzCw&list=RDq8ir8rVl2Z4&index=24', 2, 122, '2023-11-08 12:37:50'),
(28, 'pruebademo3@demo.com', 'https://www.youtube.com/watch?v=DQQRjFzB8gY&list=RDq8ir8rVl2Z4&index=36', 3, 123, '2023-11-08 12:41:47'),
(29, 'pruebademo4@demo.com', 'https://www.youtube.com/watch?v=7wtfhZwyrcc&list=RDq8ir8rVl2Z4&index=1', 4, 124, '2023-11-08 12:57:17'),
(30, 'efreya_sanchez@hotmail.com', 'https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO', 2, 122, '2023-11-08 18:52:01'),
(31, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(32, 'ines@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 1, 121, '2023-11-02 12:01:21'),
(33, 'ines2@hotmail.com', 'https://www.youtube.com/watch?v=egLMPbcs4co', 2, 122, '2023-11-04 17:12:02'),
(34, '1ejemplo@algo.com', 'https://www.youtube.com/watch?v=WUOtCLOXgm8', 1, 121, '2023-11-07 15:49:14'),
(35, 'codigo2@codigo.com', 'https://www.youtube.com/watch?v=fCbf4T4Zp5A', 2, 122, '2023-11-08 11:48:27'),
(36, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(37, 'efreya_sanchez@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 3, 123, '2023-11-08 12:35:03'),
(38, 'pruebademo@demo.com', 'https://www.youtube.com/watch?v=tAGnKpE4NCI', 1, 121, '2023-11-08 12:36:42'),
(39, 'pruebademo2@demo.com', 'https://www.youtube.com/watch?v=V1Pl8CzNzCw&list=RDq8ir8rVl2Z4&index=24', 2, 122, '2023-11-08 12:37:50'),
(40, 'pruebademo3@demo.com', 'https://www.youtube.com/watch?v=DQQRjFzB8gY&list=RDq8ir8rVl2Z4&index=36', 3, 123, '2023-11-08 12:41:47'),
(41, 'pruebademo4@demo.com', 'https://www.youtube.com/watch?v=7wtfhZwyrcc&list=RDq8ir8rVl2Z4&index=1', 4, 124, '2023-11-08 12:57:17'),
(42, 'efreya_sanchez@hotmail.com', 'https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO', 2, 122, '2023-11-08 18:52:01'),
(43, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(44, 'ines@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 1, 121, '2023-11-02 12:01:21'),
(45, 'ines2@hotmail.com', 'https://www.youtube.com/watch?v=egLMPbcs4co', 2, 122, '2023-11-04 17:12:02'),
(46, '1ejemplo@algo.com', 'https://www.youtube.com/watch?v=WUOtCLOXgm8', 1, 121, '2023-11-07 15:49:14'),
(47, 'codigo2@codigo.com', 'https://www.youtube.com/watch?v=fCbf4T4Zp5A', 2, 122, '2023-11-08 11:48:27'),
(48, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48'),
(49, 'efreya_sanchez@hotmail.com', 'https://www.youtube.com/watch?v=q8ir8rVl2Z4', 3, 123, '2023-11-08 12:35:03'),
(50, 'pruebademo@demo.com', 'https://www.youtube.com/watch?v=tAGnKpE4NCI', 1, 121, '2023-11-08 12:36:42'),
(51, 'pruebademo2@demo.com', 'https://www.youtube.com/watch?v=V1Pl8CzNzCw&list=RDq8ir8rVl2Z4&index=24', 2, 122, '2023-11-08 12:37:50'),
(52, 'pruebademo3@demo.com', 'https://www.youtube.com/watch?v=DQQRjFzB8gY&list=RDq8ir8rVl2Z4&index=36', 3, 123, '2023-11-08 12:41:47'),
(53, 'pruebademo4@demo.com', 'https://www.youtube.com/watch?v=7wtfhZwyrcc&list=RDq8ir8rVl2Z4&index=1', 4, 124, '2023-11-08 12:57:17'),
(54, 'efreya_sanchez@hotmail.com', 'https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO', 2, 122, '2023-11-08 18:52:01'),
(55, 'registro@regis.com', 'https://www.youtube.com/watch?v=DwuJeGYlYyw&list=RDq8ir8rVl2Z4&index=22', 1, 121, '2023-11-08 12:28:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `Identificador` int(11) NOT NULL,
  `tabla` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `consulta` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`Identificador`, `tabla`, `consulta`) VALUES
(1, 'asignaturas', 'SELECT * FROM entregas WHERE asignatura = [X] ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `Identificador` int(20) NOT NULL,
  `epoch` int(30) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ip` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `datos` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`Identificador`, `epoch`, `url`, `ip`, `browser`, `datos`) VALUES
(1, 1699446300, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(2, 1699446467, '//localhost:8888/supercrud/formulario.php/?idcurso1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso1234:|'),
(3, 1699446506, '//localhost:8888/supercrud/formulario.php/?idcurso=1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1234|'),
(4, 1699446528, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:registro@regis.com|url:https://youtu.be/yDpTD8BOg3k|practica:1|asignatura:1234|'),
(5, 1699446534, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(6, 1699446877, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(7, 1699446891, '//localhost:8888/supercrud/formulario.php/?idcurso=1236', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1236|'),
(8, 1699446903, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:efreya_sanchez@hotmail.com|url:https://youtu.be/yDpTD8BOg3k|practica:5|asignatura:1236|'),
(9, 1699446909, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(10, 1699446969, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(11, 1699446977, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(12, 1699447002, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:pruebademo@demo.com|url:https://youtu.be/yDpTD8BOg3k|practica:1|asignatura:12345|'),
(13, 1699447008, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(14, 1699447047, '//localhost:8888/supercrud/formulario.php/?idcurso=1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1234|'),
(15, 1699447070, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:pruebademo2@demo.com|url:https://youtu.be/yDpTD8BOg3k2a|practica:2|asignatura:1234|'),
(16, 1699447076, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(17, 1699447279, '//localhost:8888/supercrud/formulario.php/?idcurso=1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1234|'),
(18, 1699447289, '//localhost:8888/supercrud/formulario.php/?idcurso=157', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:157|'),
(19, 1699447307, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:pruebademo3@demo.com|url:https://youtu.be/yDpTD8BOg3kaei|practica:3|asignatura:157|'),
(20, 1699447313, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(21, 1699447800, '//localhost:8888/supercrud/formulario.php/?idcurso=1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1234|'),
(22, 1699447943, '//localhost:8888/supercrud/formulario.php/?idcurso=abc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:abc|'),
(23, 1699447970, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(24, 1699447998, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(25, 1699448237, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:pruebademo4@demo.com|url:https://youtu.be/yDpTD8BOg3k4|practica:4|asignatura:12345|'),
(26, 1699448243, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(27, 1699448692, '//localhost:8888/supercrud/formulario.php/?idcurso=abc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:abc|'),
(28, 1699469507, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(29, 1699469521, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:efreya_sanchez@hotmail.com|url:https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO|practica:2|asignatura:12345|'),
(30, 1699469521, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'clave:procesaformulario|tabla:entregas|email:efreya_sanchez@hotmail.com|url:https://youtu.be/x4VKuaP-Eo0?si=BK_OPli2lc1xVlOO|practica:2|asignatura:12345|'),
(31, 1699469527, '//localhost:8888/supercrud/formulario.php/?', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(32, 1699703567, '//localhost:8888/supercrud/formulario.php/?idcurso=1234', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:1234|'),
(33, 1699741616, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(34, 1699741999, '//localhost:8888/supercrud/formulario.php?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(35, 1699913513, '//localhost:8888/supercrud/formulario.php/?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(36, 1699913515, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(37, 1699916015, '//localhost:8888/supercrud/formulario.php?idcurso=12345', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'idcurso:12345|'),
(38, 1701678292, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(39, 1701717794, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(40, 1701718158, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(41, 1701767825, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(42, 1701769731, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi1|contrasena:holi1|nombre:holi1nombre|apellidos:holi1apellido|email:holi1@correo.com|nivel:1|'),
(43, 1701769751, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi1|contrasena:holi1|nombre:holi1nombre|apellidos:holi1apellido|email:holi1@correo.com|nivel:1|'),
(44, 1701769961, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi2|contrasena:holi2|nombre:holi2 nombre|apellidos:holi2 apellido|email:holi2@correo.com|nivel:1|'),
(45, 1701769976, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi2|contrasena:holi2|nombre:holi2 nombre|apellidos:holi2 apellido|email:holi2@correo.com|nivel:1|'),
(46, 1701771443, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(47, 1701771456, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(48, 1701771468, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(49, 1701771481, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(50, 1701771483, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(51, 1701771491, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(52, 1701771497, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=2', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:2|'),
(53, 1701771545, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(54, 1701771659, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(55, 1701772214, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(56, 1701772256, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(57, 1701772517, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(58, 1701772530, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(59, 1701772762, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(60, 1701772776, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(61, 1701772786, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:4|'),
(62, 1701772827, '//localhost:8888/supercrud/admin/index.php?tabla=usuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:4|'),
(63, 1701772828, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(64, 1701772829, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(65, 1701772830, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(66, 1701772831, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(67, 1701772832, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(68, 1701772833, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(69, 1701772834, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=2', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:2|'),
(70, 1701772834, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(71, 1701772835, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(72, 1701772835, '//localhost:8888/supercrud/admin/index.php?tablausuarios&delete=4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:4|'),
(73, 1701772848, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(74, 1701772880, '//localhost:8888/supercrud/formulario.php', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', ''),
(75, 1701772964, '//localhost:8888/supercrud/admin/?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi2|contrasena:holi2|nombre:holi2 nombre|apellidos:holi2 apellido|email:holi2@correo.com|nivel:2|'),
(76, 1701772983, '//localhost:8888/supercrud/admin/?tablausuarios&delete=6', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:6|'),
(77, 1701773006, '//localhost:8888/supercrud/admin/?tablausuarios&delete=6', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:6|'),
(78, 1701773095, '//localhost:8888/supercrud/admin/?tablausuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:3|'),
(79, 1701773336, '//localhost:8888/supercrud/admin/?tablausuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:3|'),
(80, 1701773364, '//localhost:8888/supercrud/admin/?tablausuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tablausuarios:|delete:3|'),
(81, 1701773663, '//localhost:8888/supercrud/admin/?delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'delete:3|'),
(82, 1701774497, '//localhost:8888/supercrud/admin/?tabla=usuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:3|'),
(83, 1701774506, '//localhost:8888/supercrud/admin/?tabla=usuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:3|'),
(84, 1701774524, '//localhost:8888/supercrud/admin/?tabla=usuarios&delete=3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:3|'),
(85, 1701776904, '//localhost:8888/supercrud/admin/?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi1modif|contrasena:holi1|nombre:holi1nombre|apellidos:holi1apellido|email:holi1@correo.com|nivel:4|'),
(86, 1701777518, '//localhost:8888/supercrud/admin/?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi1modif|contrasena:holi1|nombre:holi1nombre|apellidos:holi1apellido|email:holi1@correo.com|nivel:4|'),
(87, 1701777523, '//localhost:8888/supercrud/admin/?tabla=usuarios&delete=8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:8|'),
(88, 1701785403, '//localhost:8888/supercrud/admin/?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesainsertar|usuario:holi2|contrasena:holi2|nombre:holi2 nombre|apellidos:holi2 apellido|email:holi2@correo.com|nivel:3|'),
(89, 1701785423, '//localhost:8888/supercrud/admin/?tabla=usuarios&delete=7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|delete:7|'),
(90, 1701785446, '//localhost:8888/supercrud/admin/?tabla=usuarios', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'tabla:usuarios|clave:procesaupdate|identificador:9|usuario:holi2modificado|contrasena:holi2|nombre:holi2 nombre|apellidos:holi2 apellido|email:holi2@correo.com|nivel:3|');

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
(9, 'holi2modificado', 'holi2', 'holi2 nombre', 'holi2 apellido', 'holi2@correo.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `Identificador` int(100) NOT NULL AUTO_INCREMENT COMMENT '{"titulo":"Identificador","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"true", "icono":"fas fa-at","tipodato":"number"}', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `entregas`
--
ALTER TABLE `entregas`
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT COMMENT '{"titulo":"Introduce tu email","descripcion":"Introduce el email que sueles utilizar","placeholder":"ejem:persona@dominio.com","mascara":"algo","min":"5","deshabilitado":"false","visible":"false","tipodato":"number"}', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
