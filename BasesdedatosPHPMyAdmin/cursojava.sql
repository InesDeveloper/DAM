-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 20-05-2023 a las 17:16:07
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
-- Base de datos: `cursojava`
--
CREATE DATABASE IF NOT EXISTS `cursojava` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `cursojava`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`Identificador`, `nombre`, `telefono`, `email`) VALUES
(1, 'Juan', '1234', 'juan@correo.com'),
(2, 'Pepita', '1235', 'pepita@correo.com'),
(3, 'Jairo', '4567', 'jairo@correo.com'),
(8, 'Juan', '1234', 'juan@correo.com'),
(9, 'Hola', 'Hola', 'Hola'),
(10, 'Eclipe', '123654987', 'eclipse@prueba.com'),
(12, 'Ejemplo', '786675456', 'email@ejemplo.com'),
(13, 'Ejemplo', '987564123', 'ajax@ejemplo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apellidos`
--

CREATE TABLE `apellidos` (
  `Identificador` int(255) NOT NULL,
  `id` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `ap1` int(255) NOT NULL,
  `ap2` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `apellidos`
--

INSERT INTO `apellidos` (`Identificador`, `id`, `apellido`, `ap1`, `ap2`, `total`) VALUES
(1, '1', 'GARCIA', 1462923, '1480844', '78393'),
(2, '2', 'MARTINEZ', 832525, '838318', '38330'),
(3, '3', 'SANCHEZ', 816968, '816968', '3816968');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(2) DEFAULT NULL,
  `codigo` varchar(26) DEFAULT NULL,
  `nombre` varchar(61) DEFAULT NULL,
  `frasedescriptiva` varchar(190) DEFAULT NULL,
  `FK_profesores_nombrecompleto` int(1) DEFAULT NULL,
  `FK_directores_nombrecompleto` int(1) DEFAULT NULL,
  `imagen` varchar(40) DEFAULT NULL,
  `descripcion` varchar(380) DEFAULT NULL,
  `duracion` varchar(41) DEFAULT NULL,
  `precio` varchar(3) DEFAULT NULL,
  `precio2` varchar(10) DEFAULT NULL,
  `precio3` varchar(10) DEFAULT NULL,
  `url` varchar(10) DEFAULT NULL,
  `objetivos` varchar(343) DEFAULT NULL,
  `conocimientosprevios` varchar(83) DEFAULT NULL,
  `dirigidoa` varchar(201) DEFAULT NULL,
  `metodologia` varchar(132) DEFAULT NULL,
  `software` varchar(151) DEFAULT NULL,
  `tipodecurso` varchar(40) DEFAULT NULL,
  `preinscripcion` varchar(10) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `financiacion` varchar(10) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `gratuito` varchar(1) DEFAULT NULL,
  `visualizaciones` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `codigo`, `nombre`, `frasedescriptiva`, `FK_profesores_nombrecompleto`, `FK_directores_nombrecompleto`, `imagen`, `descripcion`, `duracion`, `precio`, `precio2`, `precio3`, `url`, `objetivos`, `conocimientosprevios`, `dirigidoa`, `metodologia`, `software`, `tipodecurso`, `preinscripcion`, `matricula`, `financiacion`, `activo`, `gratuito`, `visualizaciones`) VALUES
(1, 'joomla', 'Curso de Joomla 3', 'Aprende a crear tus propios sitios web completos con el gestor de contenido más completo', 1, 1, 'Joomla-flat-logo-en.png', 'Joomla es un gestor de contenido que te permite crear tu propia página web sin tener que programar. En este curso gratuito vas a aprender a crear tus propios sitios web de forma completamente sencilla pero con todo el control que te proporciona esta herramienta', 'Este curso tiene una duración de 15 horas', '0 €', '', '', '', 'El objetivo de este curso es que el alumno sea capaz de crear sus propios sitios web sin necesidad de programar, usando el software Joomla', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso tiene una metodología completamente práctica', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 497),
(2, 'blenderinicial', 'Curso Inicial de Blender', 'Aprende los fundamentos de Blender 3D ', 1, 1, 'BlenderDesktopLogo.png', 'Blender es el software de creación 3D de software libre con más capacidades del mercado. El objetivo de este curso es proporcionarte los conocimientos necesarios para que puedas realizar proyectos de cualquier tipo en este programa 3D', '25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar los conocimientos necesarios para realizar cualquier proyecto de animación en el sector de la arquitectura, los efectos especiales y la animación de personajes', 'Este curso no requiere conocimientos de base', 'Este curso esta dirigido a cualquier persona interesada en aprender a trabajar en 3D con Blender', 'Este curso se presenta en formato online, con ejercicios prácticos dirigidos paso a paso', 'Blender 3D', 'Curso online con soporte', '', '', '', 1, '0', 589),
(5, '3dsmax', 'Curso completo de 3dsmax', 'Crea tus propias animaciones 3D con 3dsmax', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación completa a través de cuatro módulos: inicial, arquitectura, animación de personajes y presentación de producto', 'Este curso tiene una duración de 25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar al alumno una formación completa acerca de 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en obtener una formación completa en cuando al uso de 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere el uso del software Autodesk 3dsmax', 'Este curso es de tipo online con soporte', '', '', '', 0, '', 345),
(4, 'wordpress', 'Curso de Wordpress', 'Aprende a crear tus propias páginas web con el gestor de contenido más potente', 1, 1, 'logo-wordpress_318-33553.jpg', 'Wordpress es el software de creación de sitios web más usado en el mercado. El objetivo de este curso es mostrarte, paso a paso, como usar Wordpress.', '15 hroas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda a usar el software Wordpress para crear sus propios sitios web sin programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear sitios web sin necesidad de programar', 'Este curso tiene una medología completamente práctica, mostrando el uso del software a partir de un ejercicio completamente práctico', 'Este curso no requiere ningun tipo de software', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(8, 'j2ee', 'Curso completo en desarrollo con Java y J2EE', 'Desarrolla aplicaciones web de escritorio y en el servidor con Java, Java Enterprise y MySQL', 1, 1, 'java-1.png', 'En este completo curso de Java y Java Enterprise, el alumno aprenderá tanto a crear aplicaciones de escritorio basadas en Java, como a crear aplicaciones web basadas en Java Enterprise. Además, tambien mostraremos como conectar tanto las aplicaciones de escritorio como las aplicaciones web a un servidor de bases de datos basado en MySQL', 'Este curso tiene una duración de 25 horas', '50', '', '', '', 'El objetivo de este curso es que el alumno aprenda a crear completas aplicaciones de escritorio y en la web, basadas en Java y Java Enterprise', 'Este curso empieza completamente desde cero y no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear aplicaciones basadas en Java en en Java Enterprise', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 576),
(7, 'aplicacionesweb', 'Curso en desarrollo de aplicaciones web', 'Desarrolla completas aplicaciones web 2.0 con HTML5, CSS3, PHP, Javascript y MySQL', 1, 1, 'aplicacionesweb.jpeg', 'Curso completo de creación de aplicaciones web, en el que aprenderás todo lo necesario para crear completas aplicaciones basadas en HTML5, CSS3, Javascript, PHP y MySQL', 'Este curso tiene una duración de 30 horas', '50', '', '', '', 'El curso tiene como objetivo mostrar al alumnado los procesos completos de creación de una web tanto en el lado del cliente como en el lado del servidor', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en conocer cómo se crean completas aplicaciones web', 'El curso muestra los contenidos teóricos constantemente aplicados en ejercicios practicos', 'Este curso requiere el uso de editores de código de software libre. Durante el curso se ofrecen las indicaciones necesarias para obtener estos editores', 'Este es un curso online con soporte', '', '', '', 0, '0', 597),
(9, 'html5css3', 'Curso en desarrollo de webs con HTML5 y CSS3', 'Desarrolla sitios web con HTML5 y CSS3', 1, 1, 'html5-logo-300.png', 'HTML5 y CSS3 son las tecnologías base para realizar cualquier web a dia de hoy. El objetivo de este curso es mostrar a los alumnos como desarrollar completas webs usando estos dos lenguajes de programacion', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear paginas web basadas en HTML5', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sitios web con HTML5 y CSS3', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 471),
(10, 'prestashop', 'Curso de PrestaShop', 'Crea tu propia tienda online con Prestashop sin necesidad de programar', 1, 1, 'descarga.png', 'El comercio online esta en auge, y todo parece indicar que esta tendencia se va a mantener a lo largo de los próximos años. PrestaShop es un software que te permite crear tu propia tienda virtual y publicarla online, sin tener que aprender a programar', 'Este curso tiene una duración de 15 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear su propia tienda online, de forma gratuita y sin tener que aprender a programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera crear su propia tienda virtual onlin', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 442),
(11, 'robotica', 'Curso de robotica con Arduino e impresión 3D', 'Crea tus propios robots usando Arduino como plataforma electrónica e imprimiendo tus propias piezas en 3D', 1, 1, 'Arduino_logo_pantone_2.png', 'Arduino es una plataforma de hardware libre que te permite crear tus propios sistemas animatrónicos de la forma más sencilla posible. ', 'Este curso tiene una duración de 25 horas', '49', '', '', '', 'El objetivo de este curso es mostrar a los alumnos como crear completos proyectos animatrónicos basados en Arduino e impresión 3D', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sistemas animatrónicos basados en Arduino para la parte electrónica y técnicas de impresión 3D para las piezas del ensamblaje', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 1254),
(12, 'sculptris', 'Escultura digital con Sculptris', 'Esculpe en 3D con el software gratuito más potente actualmente en el mercado', 1, 1, 'sculptris_logo.png', 'Sculptris es un programa de escultura digital 3D con un enfoque único, basado en Voxeles. Nos permite crear completos modelos 3D esculpidos con una técnica que nos ofrece resolución infinita, y un conjunto de herramientas que posibilitan el modelado sencillo de modelos 3D organicos', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a realizar escultura digital 3D usando Sculptris', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender técnicas de escultura digital 3D', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 510),
(14, '3dsmaxbasico', 'Curso inicial de 3D Studio MAX', 'Aprende los fundamentos de trabajo de 3d studio max', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación esencial de base para poder realizar cualquier tipo de proyecto', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es proporcionar una formación de base a cualquier persona interesada en realizar proyectos de infografía 3D con 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a usar 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere que el alumno tenga instalado el software 3dsmax en su ordenador', 'Este es un curso online con soporte', '', '', '', 0, '', 405),
(15, '3dsmaxarquitectura', 'Curso de modelado y render arquitectónico con 3dsmax', 'Crea tus propios proyectos de arquitectura e interiorismo en 3D ', 1, 1, '3ds-max-icon-400px-social.png', ' 3D Studio Max es el software más usado para la creación de proyectos de visualización arquitectónica en 3D. Gracias a este curso, podrás no solo modelar entre tus proyectos, sino también obtener representaciones foto realistas de los mismos ', '', '40', '', '', '', ' El objetivo de este curso es que el alumno aprenda a crear proyectos ártica arquitectónicos tridimensionales a partir de los planos proporcionados en dos dimensiones. A lo largo del curso se muestra tanto la fase de modelado, como la materialidad, como la iluminación, como las cámaras, así como realizar animaciones de  tipo arquitectónico ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 361),
(16, '3dsmaxpersonajes', 'Curso de modelado y animación de personajes con 3d studio max', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con 3dsmax 2014', 1, 1, '3ds-max-icon-400px-social.png', 'Tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales.  En este curso tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales. En este curso estaremos visualizando las herramientas necesarias para modelar, colocar esqueletos, y animar personajes en 3D ', '', '40', '', '', '', ' El objetivo de este curso es mostrar todas las herramientas y las técnicas necesarias para conseguir crear completas animaciones de personajes bípedos en 3D usando el software 3D Studio Max ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 412),
(17, 'blender', 'Curso completo de Blender', 'Aprende a crear todo tipo de proyectos 3D con el software libre más potente', 1, 1, 'BlenderDesktopLogo.png', ' En este curso completo aprenderás todos los aspectos del manejo de Blender, el programa de software libre de creación 3D más extendido actualmente. Este curso incluye tanto los módulos inicial, como el de modelado y representación arquitectónica, modelado y representación de personajes, efectos especiales, partículas, simulación de humo y fuego, y representación foto realista ', '', '40', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa al estudiante para que pueda afrontar cualquier proyecto en el que se requiera el uso del programa Blender 3D ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 554),
(18, 'blendercycles', 'Curso de render fotorrealista con Blender Cycles', 'Crea tus imágenes con el más alto grado de fotorrealismo con el motor de render integrado dentro de Blender', 1, 1, 'BlenderDesktopLogo.png', ' Blender incorpora un  Motor de representación física que nos permite obtener imágenes y animaciones de la máxima calidad. En este curso te enseñamos cómo crear diferentes tipos de escena para sacarle el máximo partido a este excelente motor de representación 3D ', '', '40', '', '', '', 'El objetivo de este curso consiste en proporcionar una formación completa en cuanto a generación de imágenes y animaciones foto realistas con Blender 3D', 'para realizar este curso se requiere tener conocimientos fluidos de base de Blender', ' Éste curso está dirigido a todas aquellas personas que desean realizar representaciones foto realistas de la máxima calidad utilizando Blender 3D ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 469),
(19, 'scratch', 'Curso de Scratch', 'Introdúcete en el mundo de la programación con el lenguaje Scratch', 1, 1, 'Scratch_Logo.png', 'Si deseas aprender a programar completamente desde cero, pero de la forma más sencilla, posible, este es el curso indicado para comenzar. Scratch es un entorno visual en el que se realizan programas de con nodos y bloques, de forma que cualquier persona, especialmente los más pequeños, pueden comenzar su camino en el mundo de la programación.', '12 horas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda los conceptos básicos necesarios para programar en cualquier lenguaje, a través del sistema de creación visual de Scratch', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera empezar a aprender a programar, y quiera realizar la tarea mediante un lenguaje visual', 'El curso está basado en ejercicios prácticos en los que se va aplicando la teoría necesaria', 'Para realizar este curso unicamente es necesario un ordenador con un navegador web y conexión a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 425),
(20, 'bluegriffon', 'Curso de desarrollo HTML5 con BlueGriffon', 'Bluegriffon es un editor web de código abierto', 1, 1, 'bluegriffon.png', 'Bluegriffon es un completo editor de código HTML de tipo WYSIWYG', '', '20', '', '', '', '', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 599),
(21, 'photoshop', 'Curso de Photoshop', 'Aprende a tratar imágenes basadas en pixeles', 1, 1, 'Photoshop.png', ' Photoshop es el programa comercial de retoque fotográfico y de imágenes más extendido del mercado. Gracias a este curso aprenderás a manejar este imprescindible programa que te permitirá crear, editar y retocar tus propias imágenes ', '', '20', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa, paso a paso y desde cero del programa Photoshop para permitir que el alumno pueda realizar proyectos gráficos en los que haya que realizar retoques de imágenes basadas en píxeles ', ' Este curso no requiere ningún conocimiento previo ', ' Éste curso está dirigido a todas aquellas personas que deseen formarse en el uso de la herramienta Photoshop ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 650),
(22, 'illustrator', 'Illustrator', 'Aprende a crear ilustraciones vectoriales', 1, 1, 'Illustrator_CC_icon.png', ' Si vas a generar ilustraciones vectoriales, este es el programa imprescindible que debes aprender, ya que contiene todas las herramientas necesarias para realizar cualquier proyecto gráfico basado en vectores ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno el conocimiento del uso de la herramienta, y a crear completas ilustraciones vectoriales por ordenador ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear ilustraciones vectoriales ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 435),
(23, 'inDesign', 'inDesign', 'Aprende a crear maquetaciones multipágina', 1, 1, 'Adobe_InDesign_CC_icon.svg.png', ' Esta es la herramienta imprescindible si quieres aprender a realizar maqueta aciones de documentos multi página. Esta herramienta es de uso imprescindible junto con una herramienta de edición de imágenes y otra de ilustración vectorial, para poder crear completos proyectos gráficos ', '', '20', '', '', '', ' El objetivo de esta formación es mostrarle al alumno los procesos y las metodologías involucrados en la creación de documentos multi página maqueta dos con este software. Además, se hace un refuerzo muy importante en la relación de este programa con Photoshop e illustrator ', 'Este curso requiere conocimientos previos del uso de herramientas de Adobe', ' Éste curso está dirigido a cualquier persona interesada en aprender a realizar maquetación es multi página usando Adobe InDesign ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(24, 'proyectosgraficos', 'Proyectos gráficos con Adobe Creative Cloud', 'En este curso desarrollamos proyectos prácticos mediante la combinación de Photoshop, Illustrator e inDesign', 1, 1, 'adobecs.jpeg', 'En este curso te mostramos cómo crear proyectos gráficos mediante la combinación de herramientas de diseño de Adobe', '', '20', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 410),
(25, 'flashcs5', 'Crea sitios web con Flash', 'Aprende a crear tus propios sitios web con Adobe Flash', 1, 1, 'flashlogo.jpg', ' Flash es una tecnología de Adobe que nos permite crear páginas web dinámicas interactivas. Éste cursos que te muestra paso a paso cómo realizar un sitio web usando la tecnología de Adobe flash ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno los conocimientos necesarios para desarrollar cualquier proyecto de desarrollo de sitio web usando la tecnología de Adobe flash. Se muestran las herramientas principales de la interfaz de usuario, así como una introducción a la programación en el lenguaje específico de la tecnología flash ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear sitios web usando la tecnología de Adobe flash ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 448),
(26, 'gimp', 'GIMP', 'Edita imágenes con el editor de código libre más potente', 1, 1, 'GIMP.jpg', ' En este curso aprenderás a editar tus propias imágenes y a retocar imágenes existentes usando el software libre más utilizado del sector. Este programa te permite crear tus propios proyectos gráficos utilizando un software completamente abierto, y sin tener que pagar por una licencia ', '', '0 €', '', '', '', ' El objetivo de este curso es proporcionar los conocimientos necesarios para crear cualquier proyecto gráfico utilizando software libre ', ' Este curso no requiere conocimientos previos ', ' Este curso está dirigido a cualquier persona interesada en aprender a crear proyectos gráficos basados en imágenes de mapas de bits utilizando uso fuera abierto ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 499),
(27, 'inikscape', 'Inkscape', 'Creación de ilustraciones vectoriales con software libre', 1, 1, '1024px-Inkscape_Logo.svg.png', 'Con este curso aprenderás a crear ilustraciones vectoriales con el software libre Inkscape. Las ilustraciones vectoriales tienen una calidad ilimitada, ya que no se basan en píxeles, y son esenciales para el trabajo de ilustracion', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender diseño gráfico', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 445),
(28, 'access', 'Access 2010', 'Creación de bases de datos con Access 2010', 1, 1, 'microsoft-access-logo.png', 'La gestión de bases de datos es un proceso imprescindible en cualquier empresa moderna. A través de este curso aprenderás a gestionar bases de datos de una forma eficiente, usando el software Microsoft Access', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona que desee aprender a trabajar con bases de datos empresariales', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 408),
(29, 'php', 'Curso de PHP', 'Aprende a crear aplicaciones en el lado del servidor', 1, 1, 'php.png', 'PHP es el lenguaje de programación del lado del servidor más utilizado para aplicaciones web 2.0. Aprende todo lo necesario para programar aplicaciones web con este curso de PHP', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender a programar en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 499),
(30, 'phpprogramarunblog', 'Taller: Como programar un blog en PHP', 'Taller para aprender a programar un blog en PHP', 1, 1, 'php.png', 'En este taller te mostramos un ejemplo práctico de programación con PHP, para crear un blog con contenido', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este taller esta dirigido a personas que quieran profundizar en sus conocimientos en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 365),
(31, 'html5portafolio', 'Creación de un portafolio con HTML5', 'Taller de creación de un portafolio en HTML5 y CSS3', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', 'Este taller te mostrará cómo crear un blog de portafolio, ussando tecnologías nativas como HTML5 y Javascript', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a personas que quieran aprender a hacer un portafolio con html5 y javascript', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 400),
(32, 'htmlmaquetacionmovil', 'Taller de maquetación móvil en HTML5', 'Taller en el que aprenderás como maquetar una aplicación móvil en HTML5', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 387),
(33, 'mysql', 'MySQL', 'Curso para aprender a trabajar con bases de datos MySQL a través de phpMyAdmin', 1, 1, 'My-SqlLogo.png', '', '', '', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(34, 'dreamweavercs5', 'Dreamweaver CS5', 'Crea tus propios sitios web con Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(35, 'dreamweaverphp', 'PHP con dreamweaver', 'Aprende a crear aplicaciones del lado del servidor con PHP en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(36, 'dreamweavertiendaonline', 'Creación de una tienda online con Dreamweaver', 'Aprende a maquetar una tienda online con HTML5 y CSS3 en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 431),
(37, 'dreamweaverjquery', 'jQuery con Dreamweaver', 'Aprende a trabajar con la librería jQuery en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 405),
(38, 'webapps', 'Curso de creación de Webapps', 'Aprende a crear apps móviles web con este completo curso', 1, 1, 'webapplogo.png', '', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 424),
(39, 'html5css3-2', 'Curso de creación de sitios web con HTML5 y CSS3', 'Aprende a crear sitios web con las ultimas tecnologías', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 403),
(40, 'windowsserver2012', 'Windows Server 2012', 'Instala y administra tu servidor con Windows Server versión 2012', 1, 1, 'windows-server-blue-a517bed8722d2e78.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 565),
(41, 'phpsqlite', 'Bases de datos SQLite con PHP', 'aprende a crear tus propias bases de datos SQLite y gestionarlas con PHP', 1, 1, 'Sqlite-square-icon.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 627),
(42, 'phpcrearcms', 'Crea un CMS con PHP', 'Con este taller aprenderás a crear un CMS con PHP', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 477),
(43, 'phpintroduccion', 'Introducción a PHP', 'Introdúcete en el mundo de la programación de aplicaciones en el servidor', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 397),
(44, 'introduccionseo', 'Introducción al SEO', 'Conoce las técnicas que te permitirán posicionar tu sitio web', 1, 1, '577034-106vxE1514532250.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(45, 'analyticsintroduccion', 'Introducción a Analytics', 'Aprende a analizar a los visitantes de tus sitios web', 1, 1, 'google_analytics_oficial.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(47, 'mysql56', 'MySQL 5.6', 'Apende a trabajar con bases de datos MySQL a través del gestor phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(48, 'mysql558', 'MySQL 5.5', 'Aprende a crear bases de datos con MySQL y a administrarlas con phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 379),
(49, 'mysqlconexionphp', 'Conexión de MySQL con PHP', 'Aprende a conectar tus aplicaciones PHP con un servidor de bases de datos MySQL', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(50, 'blendersatelites', 'Taller de creación de animación con Blender', 'El objetivo de este taller es ofrecerte una aplicación práctica de la creación de proyectos con Blender a través de una animación sobre una nave espacial que se acerca a la órbita de saturno', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 368),
(51, 'blenderarquitectura', 'Taller de arquitectura 3D con Blender', 'Aprede a crear y representar edificios en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 392),
(52, 'blenderanimacionpersonajes', 'Taller de animación de personajes 3D con Blender', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(53, 'wordpress41', 'Curso de Wordpress 4.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(54, 'wordpress31', 'Curso de Wordpress 3.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(55, 'wordpressconstructor', 'Plugin Constructor para Wordpress', 'Crea tus propias plantillas sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 371),
(56, 'wordpress35', 'Curso de Wordpress 3.5', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 367),
(57, 'wordpress342', 'Wordpress 3.4.2', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 331),
(58, 'wordpress351', 'Wordpress 3.5.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 381),
(59, 'suscripcion', 'Suscripcion', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `identificador` int(255) NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`identificador`, `usuario`, `contrasena`, `nombre`) VALUES
(1, 'efreya', 'efreya', 'Inés Sanchez'),
(3, 'juan', 'juan', 'Juan López'),
(4, 'pepe', 'pepe', 'José'),
(6, 'fran', 'fran', 'Francisco');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `apellidos`
--
ALTER TABLE `apellidos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `apellidos`
--
ALTER TABLE `apellidos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
