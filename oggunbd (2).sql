-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2015 a las 05:21:42
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `oggunbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE IF NOT EXISTS `amigos` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `idamigo` int(8) unsigned NOT NULL,
  `fechaamigos` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `idusuario`, `idamigo`, `fechaamigos`) VALUES
(1, 32, 49, '2014-05-11 23:26:12'),
(7, 32, 93, '2014-05-11 23:26:12'),
(9, 32, 34, '2014-05-12 01:07:14'),
(10, 34, 32, '2014-05-12 01:09:59'),
(11, 32, 39, '2014-05-12 01:13:53'),
(12, 32, 38, '2014-05-12 01:20:21'),
(13, 32, 98, '2014-05-12 01:21:11'),
(14, 32, 100, '2014-05-12 01:21:13'),
(15, 32, 96, '2014-05-12 01:21:16'),
(16, 32, 70, '2014-05-12 15:56:58'),
(17, 32, 75, '2014-05-12 16:06:23'),
(19, 32, 92, '2014-05-12 16:06:29'),
(20, 108, 107, '2015-08-04 16:13:53'),
(24, 108, 74, '2015-09-21 16:41:38'),
(25, 108, 46, '2015-09-24 17:03:09'),
(26, 110, 108, '2015-09-24 17:04:24'),
(27, 108, 110, '2015-09-24 17:08:04'),
(28, 108, 77, '2015-09-24 17:45:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
`id` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `nombre`, `fecha`, `idusuario`) VALUES
(2, 'prueba2', '2015-09-25 17:22:12', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatmensaje`
--

CREATE TABLE IF NOT EXISTS `chatmensaje` (
`id` int(100) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `idpersona` int(10) NOT NULL,
  `fechamensaje` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idchat` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chatmensaje`
--

INSERT INTO `chatmensaje` (`id`, `mensaje`, `idpersona`, `fechamensaje`, `idchat`) VALUES
(1, 'sadsadsadasd', 108, '2015-09-25 16:03:48', 1),
(2, 'HOLA', 108, '2015-09-25 16:37:07', 1),
(3, 'que mas', 108, '2015-09-25 16:38:53', 1),
(4, 'asdsdsadsads', 108, '2015-09-25 16:39:07', 1),
(5, 'asdsadsadaads', 108, '2015-09-25 16:39:09', 1),
(6, 'asdsasad', 108, '2015-09-25 16:39:37', 1),
(7, 'ewwwwwwwwwwww..... eppah hijueputa', 108, '2015-09-25 16:39:49', 1),
(8, 'agysdaijdsdf', 108, '2015-09-25 16:42:24', 1),
(9, 'sadsadd', 108, '2015-09-25 16:42:27', 1),
(10, 'jhhjhujhi', 108, '2015-09-25 16:42:44', 1),
(11, 'hola', 108, '2015-09-25 17:36:23', 2),
(12, 'Hola muchachos Â¿como han estado?', 110, '2015-09-25 18:36:31', 1),
(13, 'su puta mandre', 108, '2015-09-25 18:36:43', 1),
(14, 'la suya', 110, '2015-09-25 18:36:48', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatpersona`
--

CREATE TABLE IF NOT EXISTS `chatpersona` (
`id` int(10) NOT NULL,
  `idchat` int(10) NOT NULL,
  `fechapersona` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idpersona` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chatpersona`
--

INSERT INTO `chatpersona` (`id`, `idchat`, `fechapersona`, `idpersona`) VALUES
(1, 1, '2015-09-25 14:31:07', 44),
(2, 1, '2015-09-25 14:31:07', 88),
(3, 1, '2015-09-25 14:43:40', 55),
(5, 1, '2015-09-25 18:32:31', 46),
(6, 1, '2015-09-25 18:32:31', 74),
(7, 1, '2015-09-25 18:32:31', 77),
(8, 1, '2015-09-25 18:32:31', 107),
(9, 1, '2015-09-25 18:32:31', 110);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
`id` int(10) NOT NULL,
  `idusuario` int(10) NOT NULL,
  `estado` varchar(2000) COLLATE latin1_general_ci NOT NULL,
  `fechaestado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `idusuario`, `estado`, `fechaestado`) VALUES
(9, 108, 'Mensaje de Muro', '2015-09-24 17:43:52'),
(10, 108, 'Mensaje de Muro', '2015-09-24 17:44:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tamano` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechafoto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `idusuario`, `nombre`, `tipo`, `foto`, `tamano`, `fechafoto`) VALUES
(61, 0, 'Defecto', 'image/jpeg', '../imgusers/default.jpg', 'width="300" height="300"', '2014-03-29 05:49:43'),
(62, 32, 'Diego Alejandro Clavijo Leal', 'image/jpeg', '../imgusers/139606981832.jpg', 'width="255" height="300"', '2014-03-29 06:10:19'),
(63, 33, 'Luis Pena', 'image/jpeg', '../imgusers/139612606933.jpg', 'width="512" height="384"', '2014-03-29 21:47:49'),
(65, 34, 'Jhon Carlos Charrupi', 'image/jpeg', '../imgusers/139613726834.jpg', 'width="304" height="351"', '2014-03-30 00:54:28'),
(66, 34, 'Jhon Carlos Charrupi', 'image/jpeg', '../imgusers/139613755934.jpeg', 'width="658" height="821"', '2014-03-30 00:59:19'),
(67, 33, 'Luis Pena', 'image/jpeg', '../imgusers/139621335033.jpg', 'width="255" height="300"', '2014-03-30 22:02:30'),
(68, 33, 'Luis Pena', 'image/jpeg', '../imgusers/139621335133.jpg', 'width="255" height="300"', '2014-03-30 22:02:31'),
(69, 33, 'Luis Pena', 'image/jpeg', '../imgusers/139637083833.jpg', 'width="723" height="639"', '2014-04-01 17:47:18'),
(70, 33, 'Luis Pena', 'image/jpeg', '../imgusers/139637092933.jpg', 'width="255" height="300"', '2014-04-01 17:48:49'),
(71, 36, 'Eddi Xavier BermÃºdez Marcelin', 'image/jpeg', '../imgusers/139662687736.JPG', 'width="558" height="558"', '2014-04-04 16:54:37'),
(72, 37, 'moise ntambwe', 'image/jpeg', '../imgusers/139699528737.jpg', 'width="720" height="960"', '2014-04-08 23:14:47'),
(73, 37, 'moise ntambwe', 'image/jpeg', '../imgusers/139699531837.jpg', 'width="255" height="300"', '2014-04-08 23:15:18'),
(74, 37, 'moise ntambwe', 'image/jpeg', '../imgusers/139699531937.jpg', 'width="255" height="300"', '2014-04-08 23:15:19'),
(75, 37, 'moise ntambwe', 'image/jpeg', '../imgusers/139699533537.jpg', 'width="720" height="960"', '2014-04-08 23:15:35'),
(76, 37, 'moise ntambwe', 'image/jpeg', '../imgusers/139699536737.jpg', 'width="255" height="300"', '2014-04-08 23:16:07'),
(77, 38, 'John  Clarke', 'image/jpeg', '../imgusers/139707367138.jpg', 'width="3333" height="1875', '2014-04-09 21:01:11'),
(78, 38, 'John  Clarke', 'image/jpeg', '../imgusers/139707379138.jpg', 'width="255" height="300"', '2014-04-09 21:03:11'),
(79, 38, 'John  Clarke', 'image/jpeg', '../imgusers/139707447738.jpg', 'width="4000" height="3000', '2014-04-09 21:14:37'),
(80, 39, 'Manuel DarÃ­o CÃ³rdoba Mosquera', 'image/jpeg', '../imgusers/139707450039.jpg', 'width="1280" height="960"', '2014-04-09 21:15:00'),
(81, 38, 'John  Clarke', 'image/jpeg', '../imgusers/139707456738.jpg', 'width="255" height="300"', '2014-04-09 21:16:08'),
(82, 39, 'Manuel DarÃ­o CÃ³rdoba Mosquera', 'image/jpeg', '../imgusers/139707520139.jpg', 'width="3264" height="2448', '2014-04-09 21:26:41'),
(83, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718101741.JPG', 'width="2592" height="3872', '2014-04-11 02:50:17'),
(84, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718104441.JPG', 'width="2592" height="3872', '2014-04-11 02:50:44'),
(85, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718110841.jpg', 'width="255" height="300"', '2014-04-11 02:51:48'),
(86, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718116941.JPG', 'width="3872" height="2592', '2014-04-11 02:52:49'),
(87, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718129541.JPG', 'width="3455" height="2313', '2014-04-11 02:54:55'),
(88, 41, 'Jimmy Romero Rodriguez', 'image/jpeg', '../imgusers/139718138541.jpg', 'width="255" height="300"', '2014-04-11 02:56:25'),
(89, 42, 'Natalia  Moore DÃ­az', 'image/jpeg', '../imgusers/139724856542.JPG', 'width="378" height="594"', '2014-04-11 21:36:05'),
(90, 42, 'Natalia  Moore DÃ­az', 'image/jpeg', '../imgusers/139724858642.jpg', 'width="255" height="300"', '2014-04-11 21:36:26'),
(91, 43, 'carlos augusto peÃ±a mina', 'image/jpeg', '../imgusers/139725646043.jpg', 'width="1477" height="739"', '2014-04-11 23:47:40'),
(92, 43, 'carlos augusto peÃ±a mina', 'image/jpeg', '../imgusers/139725668643.jpeg', 'width="254" height="357"', '2014-04-11 23:51:26'),
(93, 44, 'Leonell Hinestroza Hernandez', 'image/jpeg', '../imgusers/139726228744.jpg', 'width="530" height="530"', '2014-04-12 01:24:47'),
(94, 45, 'Nur Fannery Valencia  Mosquera', 'image/jpeg', '../imgusers/139727638745.jpg', 'width="144" height="242"', '2014-04-12 05:19:47'),
(95, 45, 'Nur Fannery Valencia  Mosquera', 'image/jpeg', '../imgusers/139727644345.jpg', 'width="255" height="300"', '2014-04-12 05:20:43'),
(96, 45, 'Nur Fannery Valencia  Mosquera', 'image/jpeg', '../imgusers/139727647145.jpg', 'width="255" height="300"', '2014-04-12 05:21:11'),
(97, 45, 'Nur Fannery Valencia  Mosquera', 'image/jpeg', '../imgusers/139727688645.jpg', 'width="917" height="917"', '2014-04-12 05:28:06'),
(98, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730838846.jpg', 'width="2048" height="1152', '2014-04-12 14:13:08'),
(99, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730847646.jpg', 'width="2048" height="1152', '2014-04-12 14:14:36'),
(100, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730867446.jpg', 'width="4128" height="2322', '2014-04-12 14:17:54'),
(101, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730880846.jpg', 'width="4128" height="2322', '2014-04-12 14:20:08'),
(102, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730886146.jpg', 'width="960" height="540"', '2014-04-12 14:21:01'),
(103, 46, 'Danitza Palacios Lozano', 'image/jpeg', '../imgusers/139730919546.jpg', 'width="255" height="300"', '2014-04-12 14:26:35'),
(104, 40, 'Juan Fernando  Quejada SÃ¡nchez ', 'image/jpeg', '../imgusers/139734638140.jpg', 'width="800" height="600"', '2014-04-13 00:46:21'),
(105, 47, 'Yully Andrea Moreno RodrÃ­guez ', 'image/jpeg', '../imgusers/139740134747.jpg', 'width="180" height="304"', '2014-04-13 16:02:27'),
(106, 47, 'Yully Andrea Moreno RodrÃ­guez ', 'image/jpeg', '../imgusers/139740148647.jpg', 'width="255" height="300"', '2014-04-13 16:04:46'),
(107, 47, 'Yully Andrea Moreno RodrÃ­guez ', 'image/jpeg', '../imgusers/139740871747.jpg', 'width="400" height="400"', '2014-04-13 18:05:17'),
(108, 47, 'Yully Andrea Moreno RodrÃ­guez ', 'image/jpeg', '../imgusers/139740876547.jpg', 'width="900" height="601"', '2014-04-13 18:06:05'),
(109, 47, 'Yully Andrea Moreno RodrÃ­guez ', 'image/jpeg', '../imgusers/139740881647.jpg', 'width="255" height="300"', '2014-04-13 18:06:56'),
(110, 50, 'Martha Juanita Nieto', 'image/jpeg', '../imgusers/139750958350.jpg', 'width="640" height="1136"', '2014-04-14 22:06:23'),
(111, 50, 'Martha Juanita Nieto', 'image/jpeg', '../imgusers/139750975250.jpg', 'width="365" height="365"', '2014-04-14 22:09:12'),
(112, 49, 'tata bonilla', 'image/png', '../imgusers/139751020149.png', 'width="505" height="597"', '2014-04-14 22:16:41'),
(113, 51, 'edwin chaverra', 'image/jpeg', '../imgusers/139757643751.jpg', 'width="540" height="720"', '2014-04-15 16:40:37'),
(114, 53, 'Ray Charrupi', 'image/jpeg', '../imgusers/139812310253.jpg', 'width="400" height="267"', '2014-04-22 00:31:42'),
(115, 53, 'Ray Charrupi', 'image/jpeg', '../imgusers/139812314053.jpg', 'width="255" height="300"', '2014-04-22 00:32:20'),
(116, 54, 'Maria del Pilar Rodriguez', 'image/jpeg', '../imgusers/139812365154.jpg', 'width="322" height="322"', '2014-04-22 00:40:51'),
(117, 55, 'Santiago  Pizza Varela', 'image/png', '../imgusers/139812370655.png', 'width="2362" height="2362', '2014-04-22 00:41:46'),
(118, 55, 'Santiago  Pizza Varela', 'image/jpeg', '../imgusers/139812375855.jpg', 'width="255" height="300"', '2014-04-22 00:42:38'),
(119, 57, 'cesar alexis obregon hurtado', 'image/jpeg', '../imgusers/139812456857.JPG', 'width="1280" height="720"', '2014-04-22 00:56:08'),
(120, 58, 'Carlos Andres Hurtado QuiÃ±ones', 'image/jpeg', '../imgusers/139812531358.jpg', 'width="960" height="960"', '2014-04-22 01:08:33'),
(121, 62, 'claudia ximena vasquez zuÃ±iga', 'image/jpeg', '../imgusers/139813267862.JPG', 'width="640" height="480"', '2014-04-22 03:11:18'),
(122, 63, 'Catalina CuenÃ¹ Mosquera', 'image/jpeg', '../imgusers/139813503163.jpg', 'width="540" height="540"', '2014-04-22 03:50:31'),
(123, 65, 'MarÃ­a Isabel  Tegue banguero', 'image/jpeg', '../imgusers/139813840765.jpg', 'width="960" height="960"', '2014-04-22 04:46:47'),
(124, 67, 'Enrique  Hurtado Garcia', 'image/jpeg', '../imgusers/139813921267.JPG', 'width="1662" height="2550', '2014-04-22 05:00:12'),
(125, 66, 'VICTOR ALFONSO  BARRERA MIRANDA', 'image/jpeg', '../imgusers/139813928166.JPG', 'width="180" height="180"', '2014-04-22 05:01:21'),
(126, 66, 'VICTOR ALFONSO  BARRERA MIRANDA', 'image/png', '../imgusers/139813939866.png', 'width="180" height="180"', '2014-04-22 05:03:18'),
(127, 66, 'VICTOR ALFONSO  BARRERA MIRANDA', 'image/jpeg', '../imgusers/139813941466.JPG', 'width="180" height="180"', '2014-04-22 05:03:34'),
(128, 69, 'Yefferson Santos Ortiz', 'image/jpeg', '../imgusers/139814276669.JPG', 'width="2448" height="3264', '2014-04-22 05:59:26'),
(129, 70, 'David  Sinza Salcedo', 'image/jpeg', '../imgusers/139814382570.jpg', 'width="417" height="433"', '2014-04-22 06:17:05'),
(130, 73, 'fabiola mosquera caicedo', 'image/jpeg', '../imgusers/139816556573.jpg', 'width="480" height="640"', '2014-04-22 12:19:25'),
(131, 74, 'LEYDI YULIETH  REYES GUAZA ', 'image/jpeg', '../imgusers/139816798674.jpg', 'width="640" height="480"', '2014-04-22 12:59:46'),
(132, 75, 'bria liana ibarguen mosquera', 'image/jpeg', '../imgusers/139817446975.jpg', 'width="232" height="312"', '2014-04-22 14:47:49'),
(133, 77, 'Jackeline  Salazar SÃ¡nchez ', 'image/jpeg', '../imgusers/139818252177.jpg', 'width="320" height="328"', '2014-04-22 17:02:01'),
(134, 39, 'Manuel DarÃ­o CÃ³rdoba Mosquera', 'image/jpeg', '../imgusers/139819856239.jpg', 'width="2448" height="3264', '2014-04-22 21:29:22'),
(135, 80, 'ligia maria beltran ibarra', 'image/jpeg', '../imgusers/139820633580.jpg', 'width="960" height="623"', '2014-04-22 23:38:55'),
(136, 80, 'ligia maria beltran ibarra', 'image/jpeg', '../imgusers/139820638880.jpg', 'width="960" height="623"', '2014-04-22 23:39:48'),
(137, 81, 'MARIO ALEJANDRO GOMEZ MINA', 'image/jpeg', '../imgusers/139820896481.jpg', 'width="1936" height="2592', '2014-04-23 00:22:44'),
(140, 34, 'Jhon Carlos Charrupi', 'image/jpeg', '../imgusers/139821006934.jpg', 'width="255" height="300"', '2014-04-23 00:41:09'),
(141, 82, 'Oscar Eduardo Mostacilla Perez', 'image/jpeg', '../imgusers/139821300882.jpeg', 'width="510" height="532"', '2014-04-23 01:30:08'),
(142, 82, 'Oscar Eduardo Mostacilla Perez', 'image/jpeg', '../imgusers/139821304882.jpeg', 'width="510" height="532"', '2014-04-23 01:30:48'),
(143, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822765285.jpg', 'width="417" height="676"', '2014-04-23 05:34:12'),
(144, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822769185.jpg', 'width="760" height="760"', '2014-04-23 05:34:51'),
(145, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822813385.jpg', 'width="417" height="676"', '2014-04-23 05:42:13'),
(146, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822813985.jpg', 'width="3202" height="2287', '2014-04-23 05:42:19'),
(147, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822815685.jpg', 'width="255" height="300"', '2014-04-23 05:42:36'),
(148, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822821485.jpg', 'width="576" height="864"', '2014-04-23 05:43:34'),
(149, 85, 'Stephy Loren Renteria', 'image/jpeg', '../imgusers/139822823785.jpg', 'width="255" height="300"', '2014-04-23 05:43:57'),
(150, 88, 'Henrry Yair  Auraad Rodriguez', 'image/jpeg', '../imgusers/139846040888.jpg', 'width="640" height="960"', '2014-04-25 22:13:28'),
(151, 88, 'Henrry Yair  Auraad Rodriguez', 'image/jpeg', '../imgusers/139846046188.jpg', 'width="255" height="300"', '2014-04-25 22:14:22'),
(155, 88, 'Henrry Yair  Auraad Rodriguez', 'image/jpeg', '../imgusers/139846052388.jpg', 'width="640" height="960"', '2014-04-25 22:15:23'),
(156, 88, 'Henrry Yair  Auraad Rodriguez', 'image/jpeg', '../imgusers/139846054788.jpg', 'width="255" height="300"', '2014-04-25 22:15:47'),
(157, 89, 'Luisa Fernanda Carabali Mosquera', 'image/jpeg', '../imgusers/139848103389.jpg', 'width="236" height="428"', '2014-04-26 03:57:13'),
(158, 89, 'Luisa Fernanda Carabali Mosquera', 'image/jpeg', '../imgusers/139848108989.jpg', 'width="1054" height="1502', '2014-04-26 03:58:09'),
(159, 89, 'Luisa Fernanda Carabali Mosquera', 'image/jpeg', '../imgusers/139848168889.jpg', 'width="539" height="960"', '2014-04-26 04:08:08'),
(160, 89, 'Luisa Fernanda Carabali Mosquera', 'image/jpeg', '../imgusers/139848172189.jpg', 'width="346" height="574"', '2014-04-26 04:08:41'),
(161, 90, 'Pedro Pablo Gutierrez Valencia', 'image/jpeg', '../imgusers/139854537190.jpg', 'width="396" height="351"', '2014-04-26 21:49:32'),
(162, 91, 'LUZ ANGELICA MORENO TOVAR', 'image/jpeg', '../imgusers/139861374491.jpg', 'width="199" height="247"', '2014-04-27 16:49:04'),
(163, 93, 'Vanessa  Alis', 'image/jpeg', '../imgusers/139882978693.jpg', 'width="1440" height="2560', '2014-04-30 04:49:46'),
(164, 93, 'Vanessa  Alis', 'image/jpeg', '../imgusers/139882979993.jpg', 'width="255" height="300"', '2014-04-30 04:49:59'),
(165, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890019794.jpg', 'width="720" height="539"', '2014-05-01 00:23:17'),
(166, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890021594.jpg', 'width="720" height="539"', '2014-05-01 00:23:35'),
(167, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890025794.jpg', 'width="255" height="300"', '2014-05-01 00:24:17'),
(168, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890026194.jpg', 'width="255" height="300"', '2014-05-01 00:24:21'),
(169, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890027594.jpg', 'width="255" height="300"', '2014-05-01 00:24:35'),
(170, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890040494.jpg', 'width="720" height="539"', '2014-05-01 00:26:44'),
(171, 94, 'Luis Abdel Pino', 'image/jpeg', '../imgusers/139890042394.jpg', 'width="255" height="300"', '2014-05-01 00:27:03'),
(172, 95, 'Lina  Moreno', 'image/jpeg', '../imgusers/139890723995.jpg', 'width="2048" height="1536', '2014-05-01 02:20:39'),
(173, 95, 'Lina  Moreno', 'image/jpeg', '../imgusers/139890728995.jpg', 'width="960" height="1280"', '2014-05-01 02:21:29'),
(174, 95, 'Lina  Moreno', 'image/jpeg', '../imgusers/139890736195.jpg', 'width="188" height="479"', '2014-05-01 02:22:41'),
(175, 95, 'Lina  Moreno', 'image/jpeg', '../imgusers/139890738395.jpg', 'width="255" height="300"', '2014-05-01 02:23:03'),
(176, 96, 'katheerin  paz pinzon', 'image/jpeg', '../imgusers/139907168296.jpg', 'width="556" height="417"', '2014-05-03 00:01:22'),
(177, 96, 'katheerin  paz pinzon', 'image/jpeg', '../imgusers/139907176096.jpg', 'width="255" height="300"', '2014-05-03 00:02:40'),
(178, 96, 'katheerin  paz pinzon', 'image/jpeg', '../imgusers/139907195896.jpg', 'width="663" height="960"', '2014-05-03 00:05:58'),
(179, 96, 'katheerin  paz pinzon', 'image/jpeg', '../imgusers/139907199996.jpg', 'width="255" height="300"', '2014-05-03 00:06:40'),
(182, 32, 'Diego Alejandro Clavijo Leal', 'image/jpeg', '../imgusers/139907786632.jpg', 'width="255" height="300"', '2014-05-03 01:44:26'),
(183, 49, 'tata bonilla', 'image/jpeg', '../imgusers/139923281849.jpg', 'width="428" height="478"', '2014-05-04 20:46:58'),
(198, 32, 'Diego Alejandro Clavijo Leal', 'image/jpeg', '../imgusers/139939024832.jpg', 'width="255" height="300"', '2014-05-06 16:30:48'),
(199, 98, 'Juvencio  Lozano JR', 'image/jpeg', '../imgusers/139948342398.jpg', 'width="1359" height="2048', '2014-05-07 18:23:51'),
(200, 98, 'Juvencio  Lozano JR', 'image/jpeg', '../imgusers/139948351298.jpg', 'width="255" height="300"', '2014-05-07 18:25:12'),
(201, 99, 'Nora Elena  Angulo Mina', 'image/jpeg', '../imgusers/139950936299.jpg', 'width="255" height="300"', '2014-05-08 01:36:02'),
(202, 99, 'Nora Elena  Angulo Mina', 'image/jpeg', '../imgusers/139950944399.jpg', 'width="255" height="300"', '2014-05-08 01:37:23'),
(203, 100, 'Rey Guerrero', 'image/jpeg', '../imgusers/1399510671100.JPG', 'width="533" height="800"', '2014-05-08 01:57:58'),
(204, 100, 'Rey Guerrero', 'image/jpeg', '../imgusers/1399510730100.JPG', 'width="533" height="800"', '2014-05-08 01:58:57'),
(206, 101, 'YUDI TATIANA  MINA MANCILLA ', 'image/jpeg', '../imgusers/1399515733101.jpg', 'width="255" height="300"', '2014-05-08 03:22:13'),
(207, 101, 'YUDI TATIANA  MINA MANCILLA ', 'image/jpeg', '../imgusers/1399515886101.JPG', 'width="1344" height="1792', '2014-05-08 03:25:42'),
(208, 102, 'MITCHELL  CARDONA', 'image/jpeg', '../imgusers/1399516057102.jpg', 'width="720" height="720"', '2014-05-08 03:27:48'),
(209, 101, 'YUDI TATIANA  MINA MANCILLA ', 'image/jpeg', '../imgusers/1399516600101.JPG', 'width="1344" height="1792', '2014-05-08 03:36:55'),
(210, 104, 'Luisa Fernanda Mina PeÃ±a', 'image/jpeg', '../imgusers/1399565534104.jpg', 'width="255" height="300"', '2014-05-08 17:12:14'),
(211, 105, 'luis miguel carabali chamorro', 'image/jpeg', '../imgusers/1399585643105.jpg', 'width="255" height="300"', '2014-05-08 22:47:23'),
(212, 106, 'JuliÃ¡n Angulo Angulo', 'image/jpeg', '../imgusers/1399660230106.jpg', 'width="480" height="640"', '2014-05-09 19:30:32'),
(213, 106, 'JuliÃ¡n Angulo Angulo', 'image/jpeg', '../imgusers/1399660303106.jpg', 'width="255" height="300"', '2014-05-09 19:31:43'),
(214, 88, 'Henrry Yair  Auraad Rodriguez', 'image/jpeg', '../imgusers/140009535788.jpg', 'width="255" height="300"', '2014-05-14 20:22:37'),
(216, 107, 'Paula Andrea Angulo Garcia', 'image/jpeg', '../imgusers/1400102312107.jpg', 'width="148" height="148"', '2014-05-14 22:18:36'),
(217, 107, 'Paula Andrea Angulo Garcia', 'image/jpeg', '../imgusers/1400102558107.jpg', 'width="255" height="300"', '2014-05-14 22:22:38'),
(218, 108, 'kevin andres ramirez alzate', 'image/jpeg', '../imgusers/1443100842108.jpg', 'width="255" height="300"', '2015-09-24 13:20:42'),
(219, 108, 'kevin andres ramirez alzate', 'image/jpeg', '../imgusers/1443100865108.jpg', 'width="255" height="300"', '2015-09-24 13:21:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaocupacion`
--

CREATE TABLE IF NOT EXISTS `listaocupacion` (
`id` int(4) unsigned NOT NULL,
  `masculino` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `femenino` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaocupacion`
--

INSERT INTO `listaocupacion` (`id`, `masculino`, `femenino`) VALUES
(1, '&nbsp;', '&nbsp;'),
(2, 'Emprendedor', 'Emprendedora'),
(3, 'Empresario', 'Empresaria'),
(4, 'SindicalÃ­sta', 'SindicalÃ­sta'),
(5, 'Activista', 'Activista'),
(7, 'Comerciante', 'Comerciante'),
(9, 'PolÃ­tico', 'PolÃ­tica'),
(10, 'Gestor Social', 'Gestora Social'),
(11, 'Otros', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaoficios`
--

CREATE TABLE IF NOT EXISTS `listaoficios` (
`id` int(8) unsigned NOT NULL,
  `masculino` varchar(100) DEFAULT NULL,
  `femenino` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listaoficios`
--

INSERT INTO `listaoficios` (`id`, `masculino`, `femenino`) VALUES
(1, '&nbsp;', '&nbsp;'),
(2, 'Aseador', 'Aseadora'),
(3, 'Carpintero', 'Carpintera'),
(4, 'Celador', 'Celadora'),
(5, 'Cocinero', 'Cocinera'),
(6, 'Conductor', 'Conductora'),
(7, 'DomÃ©stico', 'DomÃ©stico'),
(8, 'Electricista', 'Electricista'),
(9, 'Heladero', 'Heladera'),
(10, 'Herrero', 'Herrera'),
(11, 'Jardinero', 'Jardinera'),
(12, 'Maestro de ConstrucciÃ³n', 'Maestra de ConstrucciÃ³n'),
(13, 'Manicurista', 'Manicurista'),
(14, 'Maquinista', 'Maquinista'),
(15, 'Mesero', 'Mesera'),
(16, 'NiÃ±ero', 'NiÃ±era'),
(17, 'Panadero', 'Panadera'),
(18, 'Paseador de Perros', 'Paseadora de Perros'),
(19, 'Peluquero', 'Peluqiera'),
(20, 'Pescador', 'Pescadora'),
(21, 'Pizzero', 'Pizzera'),
(22, 'Plomero', 'Plomera'),
(23, 'Relojero', 'Relojera'),
(24, 'Sastre', 'Modista'),
(25, 'Todero', 'Todera'),
(26, 'Vendedor', 'Vendedora'),
(27, 'Zapatero', 'Zapatera'),
(28, 'Otros', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaotrasprofesiones`
--

CREATE TABLE IF NOT EXISTS `listaotrasprofesiones` (
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre2` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaotrasprofesiones`
--

INSERT INTO `listaotrasprofesiones` (`idusuario`, `nombre`, `nombre2`) VALUES
(32, 'Clases InglÃ©s', 'Desarrollador PÃ¡ginas Web'),
(34, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(40, '', ''),
(41, '', ''),
(42, 'Comunicadora social y Periodista', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(49, 'Actriz', ''),
(50, 'Fashion marketing+ blogger', ''),
(53, '', ''),
(54, '', ''),
(59, '', ''),
(65, '', ''),
(66, '', ''),
(67, 'Profesional en Finanzas y Negocios Internacionales', ''),
(69, '', ''),
(71, '', ''),
(72, '', ''),
(80, '', ''),
(81, '', ''),
(87, '', ''),
(90, '', ''),
(91, 'TERAPEUTA RESPIRATORIA', ''),
(93, '', ''),
(94, '', ''),
(95, '', ''),
(96, 'DISEÃ‘ADORA DE MODAS', ''),
(98, '', ''),
(99, '', ''),
(100, 'chef', 'Administrador Hotelero'),
(101, '', ''),
(102, '', 'docente '),
(103, '', ''),
(104, '', ''),
(106, 'Profesor', ''),
(107, '', 'Esteticista-cosmeatra'),
(108, '', ''),
(109, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaotrosocupacion`
--

CREATE TABLE IF NOT EXISTS `listaotrosocupacion` (
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaotrosocupacion`
--

INSERT INTO `listaotrosocupacion` (`idusuario`, `nombre`) VALUES
(92, 'Independiente'),
(108, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaotrosoficios`
--

CREATE TABLE IF NOT EXISTS `listaotrosoficios` (
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaotrosoficios`
--

INSERT INTO `listaotrosoficios` (`idusuario`, `nombre`) VALUES
(108, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaotrostalentos`
--

CREATE TABLE IF NOT EXISTS `listaotrostalentos` (
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaotrostalentos`
--

INSERT INTO `listaotrostalentos` (`idusuario`, `nombre`) VALUES
(58, ''),
(70, ''),
(85, ''),
(88, ''),
(89, ''),
(105, ''),
(108, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaotrostecnicos`
--

CREATE TABLE IF NOT EXISTS `listaotrostecnicos` (
  `idusuario` int(8) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaotrostecnicos`
--

INSERT INTO `listaotrostecnicos` (`idusuario`, `nombre`) VALUES
(51, ''),
(75, ''),
(82, ''),
(108, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaprofesiones`
--

CREATE TABLE IF NOT EXISTS `listaprofesiones` (
`id` int(8) unsigned NOT NULL,
  `masculino` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `femenino` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listaprofesiones`
--

INSERT INTO `listaprofesiones` (`id`, `masculino`, `femenino`) VALUES
(1, '&nbsp;', '&nbsp;'),
(2, 'Abogado', 'Abogada'),
(3, 'Administrador de Empresas', 'Administradora de Empresas'),
(4, 'AntropÃ³logo', 'AntropÃ³loga'),
(5, 'Arquitecto', 'Arquitecta'),
(6, 'BiÃ³logo', 'BiÃ³loga'),
(7, 'Contador PÃºblico', 'Contadora PÃºblica'),
(8, 'DiseÃ±ador GrÃ¡fico', 'DiseÃ±adora GrÃ¡fica'),
(9, 'DiseÃ±ador Industrial', 'DiseÃ±adora Industrial'),
(10, 'Economista', 'Economista'),
(11, 'Enfermero', 'Enfermera'),
(12, 'Estadistico', 'Estadistica'),
(13, 'FilÃ³sofo', 'FilÃ³sofa'),
(14, 'FÃ­sico', 'FÃ­sica'),
(15, 'Fisioterapeuta', 'Fisioterapeuta'),
(16, 'FonoaudiÃ³logo', 'FonoaudiÃ³loga'),
(17, 'GeÃ³grafo', 'GeÃ³grafa'),
(18, 'GeÃ³logo', 'GeÃ³loga'),
(19, 'Historiador', 'Historiadora'),
(20, 'Ingeniero AgrÃ­cola', 'Ingeniera AgrÃ­cola'),
(21, 'Ingeniero AgronÃ³mico', 'Ingeniera AgronÃ³mica'),
(22, 'Ingeniero Ambiental', 'Ingeniera Ambiental'),
(23, 'Ingeniero Civil', 'Ingeniera Civil'),
(24, 'Ingeniero de Minas', 'Ingeniera de Minas'),
(25, 'Ingeniero de PetrÃ³leos', 'Ingeniera de PetrÃ³leos'),
(26, 'Ingeniero de Sistemas y ComputaciÃ³n', 'Ingeniera de Sistemas y ComputaciÃ³n'),
(27, 'Ingeniero ElÃ©ctrico', 'Ingeniera ElÃ©ctrica'),
(28, 'Ingeniero ElectrÃ³nico', 'Ingeniera ElectrÃ³nica'),
(29, 'Ingeniero Industrial', 'Ingeniera Industrial'),
(30, 'Ingeniero MecÃ¡nico', 'Ingeniera MecÃ¡nica'),
(31, 'Ingeniero MecatrÃ³nico', 'Ingeniera MecatrÃ³nica'),
(32, 'Ingeniero QuÃ­mico', 'Ingeniera QuÃ­mica'),
(33, 'Licenciado en EspaÃ±ol y FilologÃ­a ClÃ¡sica', 'Licenciada en EspaÃ±ol y FilologÃ­a ClÃ¡sica'),
(34, 'Licenciado en FilologÃ­a e Idiomas', 'Licenciada en FilologÃ­a e Idiomas'),
(35, 'LingÃ¼Ã­sta', 'LingÃ¼Ã­sta'),
(36, 'Maestro en Artes PlÃ¡sticas', 'Maestra en Artes PlÃ¡sticas'),
(37, 'MatemÃ¡tico', 'MatemÃ¡tica'),
(38, 'MÃ©dico Cirujano', 'MÃ©dica Cirujano'),
(39, 'MÃ©dico Veterinario', 'MÃ©dica Veterinaria'),
(40, 'MÃºsico', 'MÃºsica'),
(41, 'MÃºsico Instrumental', 'MÃºsica Instrumental'),
(42, 'Nutricionista Dietista', 'Nutricionista Dietista'),
(43, 'OdontÃ³logo', 'OdontÃ³loga'),
(44, 'PolitÃ³logo', 'PolitÃ³loga'),
(45, 'Profesional en Estudios Literarios', 'Profesional en Estudios Literarios'),
(46, 'PsicÃ³logo', 'PsicÃ³loga'),
(47, 'QuÃ­mico', 'QuÃ­mica'),
(48, 'QuÃ­mico FarmacÃ©utico', 'QuÃ­mica FarmacÃ©utica'),
(49, 'Realizador de Cine y TelevisiÃ³n', 'Realizadora de Cine y TelevisiÃ³n'),
(50, 'SociÃ³logo', 'SociÃ³loga'),
(51, 'Terapeuta Ocupacional', 'Terapeuta Ocupacional'),
(52, 'Trabajador Social', 'Trabajadora Social'),
(53, 'Zootecnista', 'Zootecnista'),
(54, 'Otros', 'Otros'),
(55, 'Comunicador Social y Periodista', 'Comunicadora Social y Periodista'),
(56, 'Finanzas y Negocios Internacionales', 'Finanzas y Negocios Internacionales'),
(57, 'Fashion Marketing', 'Fashion Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listatalentos`
--

CREATE TABLE IF NOT EXISTS `listatalentos` (
`id` int(8) unsigned NOT NULL,
  `masculino` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `femenino` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listatalentos`
--

INSERT INTO `listatalentos` (`id`, `masculino`, `femenino`) VALUES
(1, '&nbsp;', '&nbsp;'),
(2, 'Actor', 'ActrÃ­z'),
(3, 'Artista', 'Artista'),
(4, 'BailarÃ­n', 'Bailarina'),
(5, 'Cantante', 'Cantante'),
(6, 'Caricaturista', 'Caricaturista'),
(7, 'Ciclista', 'Ciclista'),
(8, 'Clavadista', 'Clavadista'),
(9, 'Cuentero', 'Cuentero'),
(10, 'Deportista', 'Deportista'),
(11, 'Equilibrista', 'Equilibrista'),
(12, 'Escritor', 'Escritora'),
(13, 'Escultor', 'Escultora'),
(14, 'Futbolista', 'Futbolista'),
(15, 'Gimnasta', 'Gimnasta'),
(16, 'Guitarrista', 'Guitarrista'),
(17, 'Mago', 'Maga'),
(18, 'Malabarista', 'Malabarista'),
(19, 'Mimo', 'Mimo'),
(20, 'Modelo', 'Modelo'),
(21, 'MÃºsico', 'MÃºsico'),
(22, 'Nadador', 'Nadadora'),
(23, 'Patinador', 'Patinadora'),
(24, 'Payaso', 'Payaso'),
(25, 'Pintor', 'Pintora'),
(26, 'Poeta', 'Poetiza'),
(27, 'Productor Musical', 'Productora Musical'),
(28, 'Recreacionista', 'Recreacionista'),
(29, 'Saxofonista', 'Saxofonista'),
(30, 'Titiritero', 'Titiritera'),
(31, 'Otros', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listatecnicos`
--

CREATE TABLE IF NOT EXISTS `listatecnicos` (
`id` int(8) unsigned NOT NULL,
  `masculino` varchar(100) DEFAULT NULL,
  `femenino` varchar(10) NOT NULL DEFAULT '&nbsp;'
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listatecnicos`
--

INSERT INTO `listatecnicos` (`id`, `masculino`, `femenino`) VALUES
(1, '&nbsp;', '&nbsp;'),
(2, 'Agua y Saneamiento', '&nbsp;'),
(3, 'Alimentos', '&nbsp;'),
(4, 'AnimaciÃ³n', '&nbsp;'),
(5, 'Artes', '&nbsp;'),
(6, 'CarpinterÃ­a', '&nbsp;'),
(7, 'Cocina', '&nbsp;'),
(8, 'Compras y Suministros', '&nbsp;'),
(9, 'ConfecciÃ³n Industrial', '&nbsp;'),
(10, 'ConstrucciÃ³n de Estructuras en Concreto', '&nbsp;'),
(11, 'ConstrucciÃ³n de VÃ­as', '&nbsp;'),
(12, 'ConstrucciÃ³n de Viviendas', '&nbsp;'),
(13, 'ContadurÃ­a', '&nbsp;'),
(14, 'Control Ambiental', '&nbsp;'),
(15, 'DecoraciÃ³n de Espacios Interiores', '&nbsp;'),
(16, 'Desarrollo de Software', '&nbsp;'),
(17, 'Dibujo ArquitectÃ³nico', '&nbsp;'),
(18, 'DiseÃ±o de Mobiliario', '&nbsp;'),
(19, 'DiseÃ±o Moldes PlÃ¡sticos', '&nbsp;'),
(20, 'DiseÃ±o Multimedia', '&nbsp;'),
(21, 'EjecuciÃ³n Musical Con Instrumentos Funcionales', '&nbsp;'),
(22, 'Electricidad', '&nbsp;'),
(23, 'EnfermerÃ­a', '&nbsp;'),
(24, 'Entrenamiento Deportivo', '&nbsp;'),
(25, 'Finanzas', '&nbsp;'),
(26, 'GestiÃ³n Comercial', '&nbsp;'),
(27, 'GestiÃ³n de Mercados', '&nbsp;'),
(28, 'GestiÃ³n de Negocios', '&nbsp;'),
(29, 'GestiÃ³n de Recursos Naturales', '&nbsp;'),
(30, 'GestiÃ³n Hotelera', '&nbsp;'),
(31, 'InstalaciÃ³n de Redes de Computadores', '&nbsp;'),
(32, 'InstalaciÃ³n de Redes ElÃ©ctricas', '&nbsp;'),
(33, 'Instalaciones ElÃ©ctricas', '&nbsp;'),
(34, 'Instalaciones HidrÃ¡ulicas y de Gas', '&nbsp;'),
(35, 'Labores de Campo y Manejo de Cultivo', '&nbsp;'),
(36, 'Labores Mineras', '&nbsp;'),
(37, 'LogÃ­stica', '&nbsp;'),
(38, 'Manejo de Montacargas', '&nbsp;'),
(39, 'Mantenimiento de Artefactos a Gas', '&nbsp;'),
(40, 'Mantenimiento de Equipo BiomÃ©dico', '&nbsp;'),
(41, 'Mantenimiento de Equipos de CÃ³mputo', '&nbsp;'),
(42, 'Mantenimiento de Motocicletas', '&nbsp;'),
(43, 'Mantenimiento de Motores Diesel', '&nbsp;'),
(44, 'Mantenimiento de Motores Gasolina', '&nbsp;'),
(45, 'Mantenimiento ElectromecÃ¡nico Industrial', '&nbsp;'),
(46, 'Maquinista', '&nbsp;'),
(47, 'MecÃ¡nica', '&nbsp;'),
(48, 'Mesa y Bar', '&nbsp;'),
(49, 'Metalurgia', '&nbsp;'),
(50, 'MetrologÃ­a', '&nbsp;'),
(51, 'OperaciÃ³n de Call Center', '&nbsp;'),
(52, 'OperaciÃ³n de CÃ¡maras y Luces de TelevisiÃ³n', '&nbsp;'),
(53, 'OrganizaciÃ³n de Archivos', '&nbsp;'),
(54, 'PeluquerÃ­a', '&nbsp;'),
(55, 'Procesos Productivos de la Madera', '&nbsp;'),
(56, 'Procesos SerigrÃ¡ficos', '&nbsp;'),
(57, 'ProducciÃ³n AcuÃ­cola', '&nbsp;'),
(58, 'ProducciÃ³n AgrÃ­cola', '&nbsp;'),
(59, 'ProducciÃ³n de Abonos OrgÃ¡nicos', '&nbsp;'),
(60, 'ProducciÃ³n de Calzado y MarroquinerÃ­a', '&nbsp;'),
(61, 'ProducciÃ³n de Caprinos y Ovinos', '&nbsp;'),
(62, 'ProducciÃ³n de Conejos y Cuyes', '&nbsp;'),
(63, 'ProducciÃ³n de JoyerÃ­a', '&nbsp;'),
(64, 'ProducciÃ³n de PetrÃ³leo y gas', '&nbsp;'),
(65, 'ProducciÃ³n Equina', '&nbsp;'),
(66, 'ProducciÃ³n Ganadera', '&nbsp;'),
(67, 'ProducciÃ³n Panadera', '&nbsp;'),
(68, 'ProducciÃ³n Pastelera', '&nbsp;'),
(69, 'ProducciÃ³n Porcina', '&nbsp;'),
(70, 'ProgramaciÃ³n de Software', '&nbsp;'),
(71, 'QuÃ­mica', '&nbsp;'),
(72, 'RecreaciÃ³n', '&nbsp;'),
(73, 'Regencia de Farmacia', '&nbsp;'),
(74, 'Riego, Drenaje y Manejo de Suelos AgrÃ­colas', '&nbsp;'),
(75, 'Salud Oral', '&nbsp;'),
(76, 'Seguridad Ocupacional', '&nbsp;'),
(77, 'Servicios de Apoyo al Cliente', '&nbsp;'),
(78, 'Servicios en Almacenes de Cadena', '&nbsp;'),
(79, 'Servicios FarmacÃ©uticos', '&nbsp;'),
(80, 'Sistemas', '&nbsp;'),
(81, 'Soldadura', '&nbsp;'),
(82, 'Textil', '&nbsp;'),
(83, 'TintorerÃ­a', '&nbsp;'),
(84, 'TopografÃ­a', '&nbsp;'),
(85, 'Turismo', '&nbsp;'),
(86, 'Ventas', '&nbsp;'),
(87, 'Vigilancia', '&nbsp;'),
(88, 'Otros', '&nbsp;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `idremitente` int(8) unsigned NOT NULL,
  `mensaje` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publico` tinyint(1) NOT NULL DEFAULT '0',
  `fechamensaje` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leido` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `idusuario`, `idremitente`, `mensaje`, `publico`, `fechamensaje`, `leido`) VALUES
(1, 32, 32, 'Hola contactame mira mi perfil', 1, '2014-05-12 22:09:39', 0),
(4, 32, 32, 'mensaje privado 3', 0, '2014-05-12 22:23:52', 0),
(8, 34, 32, 'Que interesantes vÃ­deos, apoyo la red', 1, '2014-05-12 22:47:23', 0),
(9, 34, 32, 'Jhon Carlos nos vemos maÃ±ana', 0, '2014-05-12 22:55:24', 0),
(10, 34, 32, 'Ya estÃ¡n disponibles los mensajes privados en ingresar con su cuenta click su imagen arriba derecha mensajes', 0, '2014-05-13 03:09:41', 0),
(11, 100, 32, 'Hola que interesante tu restaurante, me podrÃ­as dar la direcciÃ³n? gracias.', 1, '2014-05-13 20:38:41', 0),
(12, 34, 32, 'Prueba de mensaje privado', 0, '2014-05-13 21:02:27', 0),
(13, 38, 32, 'Hola John, te escribo para que me aÃ±adas a tus contactos, y asÃ­ seguir hablando. Cordial saludo', 1, '2014-05-13 21:07:06', 0),
(14, 49, 88, 'hola tata como te fue en el casting ?', 0, '2014-05-14 20:14:24', 0),
(17, 108, 109, 'Hola,Â¿como has estado?', 1, '2015-09-24 14:29:11', 1),
(18, 46, 108, 'Hola', 1, '2015-09-18 16:36:39', 0),
(19, 36, 108, 'Hola prueba', 0, '2015-09-23 13:47:30', 0),
(20, 108, 88, 'LELE', 0, '2015-09-24 14:29:11', 1),
(21, 108, 44, 'LALA', 0, '2015-09-24 14:29:11', 1),
(22, 108, 88, 'LALA', 0, '2015-09-24 14:29:11', 1),
(23, 108, 88, 'jasndjsnsa', 0, '2015-09-24 14:29:11', 1),
(24, 108, 44, 'asdsadsadsasd', 0, '2015-09-24 14:44:04', 1),
(25, 108, 55, 'asdadasdsad', 0, '2015-09-24 14:53:10', 1),
(26, 108, 22, 'asddasdsadas', 0, '2015-09-24 14:53:10', 1),
(27, 108, 44, 'aedsadsadsa', 0, '2015-09-24 14:54:27', 1),
(28, 108, 44, 'adawdawdsad', 0, '2015-09-24 14:58:51', 1),
(29, 108, 44, 'awdadsdadaw', 0, '2015-09-24 15:01:31', 1),
(30, 108, 44, 'adadwdwadas', 0, '2015-09-24 15:01:51', 1),
(31, 108, 32, 'asdsadsad', 0, '2015-09-24 15:08:25', 1),
(32, 108, 44, 'asdsadsadsadsa', 0, '2015-09-24 15:34:44', 1),
(33, 108, 55, 'adasdqwdasdasdaw', 0, '2015-09-24 15:39:37', 1),
(34, 108, 36, 'adsdsad', 0, '2015-09-24 15:47:39', 1),
(35, 108, 44, 'sadsad', 0, '2015-09-25 14:08:49', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE IF NOT EXISTS `notificaciones` (
`id` int(100) NOT NULL,
  `idusuario` int(30) NOT NULL,
  `asunto` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `leido` varchar(150) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idremitente` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `idusuario`, `asunto`, `leido`, `fecha`, `idremitente`) VALUES
(1, 46, 'Te Sigue', '0', '0000-00-00 00:00:00', 108),
(2, 108, 'Te Sigue', '1', '2015-09-24 17:14:58', 110),
(3, 110, 'Te Sigue', '1', '2015-09-24 18:44:47', 108),
(4, 77, 'Te Sigue', '0', '2015-09-24 17:45:53', 108),
(5, 108, 'sadsadsa', '1', '2015-09-24 17:50:58', 44),
(6, 108, 'asdsadsdsad', '1', '2015-09-24 17:50:58', 44),
(7, 108, 'asda', '1', '2015-09-24 18:02:28', 4),
(8, 108, 'hacer red', '1', '2015-10-02 03:06:06', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE IF NOT EXISTS `ocupacion` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `ocupacion` int(4) unsigned NOT NULL,
  `experiencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechaocupacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `perfil2` int(10) NOT NULL,
  `profesion2` int(10) NOT NULL DEFAULT '1',
  `perfil3` int(10) NOT NULL,
  `profesion3` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ocupacion`
--

INSERT INTO `ocupacion` (`id`, `idusuario`, `ocupacion`, `experiencia`, `fechaocupacion`, `perfil2`, `profesion2`, `perfil3`, `profesion3`) VALUES
(1, 92, 2, '', '2014-04-29 00:56:36', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficios`
--

CREATE TABLE IF NOT EXISTS `oficios` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `oficio` int(4) unsigned NOT NULL DEFAULT '1',
  `experiencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechaoficios` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `perfil2` int(10) NOT NULL,
  `profesion2` int(10) NOT NULL DEFAULT '1',
  `perfil3` int(10) NOT NULL,
  `profesion3` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oficios`
--

INSERT INTO `oficios` (`id`, `idusuario`, `oficio`, `experiencia`, `fechaoficios`, `perfil2`, `profesion2`, `perfil3`, `profesion3`) VALUES
(9, 73, 26, 'trabajo 3 aÃ±o en cali', '2014-04-22 12:17:36', 0, 1, 0, 1),
(10, 84, 28, '', '2014-04-23 03:22:54', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `fechapersonal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nacimiento` date DEFAULT '0000-00-00',
  `sexo` tinyint(4) NOT NULL DEFAULT '0',
  `origen` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `residencia` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `perfil` tinyint(4) NOT NULL,
  `fotoprincipal` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '../imgusers/default.jpg',
  `idvideoprincipal` int(8) NOT NULL DEFAULT '1',
  `idvideocrowd` int(8) unsigned NOT NULL DEFAULT '1',
  `facebook` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `extras` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `idusuario`, `fechapersonal`, `nacimiento`, `sexo`, `origen`, `residencia`, `perfil`, `fotoprincipal`, `idvideoprincipal`, `idvideocrowd`, `facebook`, `twitter`, `extras`) VALUES
(32, 32, '2014-05-12 01:31:11', '1992-02-10', 1, 'BogotÃ¡, Cundinamarca, Colombia', 'BogotÃ¡, Cundinamarca, Colombia', 1, '../imgusers/139939024832.jpg', 3, 3, 'https://www.facebook.com/Yeyo69', 'https://twitter.com/Diego_Clavijo', ''),
(33, 33, '2014-04-01 17:48:50', '0000-00-00', 1, '', '', 1, '../imgusers/139637092933.jpg', 1, 1, '', '', ''),
(34, 34, '2014-05-08 02:10:31', '1984-12-16', 1, 'Cali - Valle del Cauca, Colombia', 'BogotÃ¡, Colombia', 1, '../imgusers/139821006934.jpg', 31, 33, 'https://www.facebook.com/jhon.charrupi', '', ''),
(35, 35, '2014-04-02 03:17:12', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(36, 36, '2014-04-12 04:55:40', '1984-04-01', 1, 'QuibdÃ³ - ChocÃ³, Colombia', 'Galerias, BogotÃ¡, Colombia', 1, '../imgusers/139662687736.JPG', 8, 1, '', '', ''),
(37, 37, '2014-04-08 23:16:08', '0000-00-00', 1, 'Kinshasa, RepÃºblica DemocrÃ¡tica del Congo', 'BogotÃ¡, Colombia', 1, '../imgusers/139699536737.jpg', 1, 1, '', '', ''),
(38, 38, '2014-04-09 21:16:08', '0000-00-00', 1, 'Houston, Texas, Estados Unidos', 'BogotÃ¡, Cundinamarca, Colombia', 1, '../imgusers/139707456738.jpg', 7, 1, '', '', ''),
(39, 39, '2014-04-22 21:29:22', '0000-00-00', 1, '', '', 1, '../imgusers/139819856239.jpg', 1, 1, '', '', ''),
(40, 40, '2014-04-22 04:03:46', '1983-09-03', 1, 'Quibdo - ChocÃ³, Colombia', 'Ciudad Salitre Oriental, BogotÃ¡, Colombia', 1, '../imgusers/139734638140.jpg', 1, 1, '', '', ''),
(41, 41, '2014-04-11 02:56:25', '1973-10-19', 1, 'Cali - Valle del Cauca, Colombia', 'Arboleda del Lili', 1, '../imgusers/139718138541.jpg', 1, 1, '', '', ''),
(42, 42, '2014-04-11 21:36:26', '1988-12-05', 0, 'BogotÃ¡, Colombia', 'Chico Navarra', 1, '../imgusers/139724858642.jpg', 1, 1, '', '', ''),
(43, 43, '2014-04-11 23:53:03', '1979-10-29', 1, 'cali', 'valle del lili cali', 1, '../imgusers/139725668643.jpeg', 1, 1, '', '', ''),
(44, 44, '2014-04-12 01:26:12', '1983-04-14', 1, 'Cali', 'Santa Barbara - Bogota D.C.', 1, '../imgusers/139726228744.jpg', 1, 1, '', '', ''),
(45, 45, '2014-04-12 05:28:06', '1985-11-07', 0, 'QuibdÃ³ - ChocÃ³, Colombia', 'Ciudad Salitre Oriental, BogotÃ¡, Colombia', 1, '../imgusers/139727688645.jpg', 1, 1, '', '', ''),
(46, 46, '2014-04-12 14:28:04', '0000-00-00', 0, 'Cali', '', 1, '../imgusers/139730919546.jpg', 1, 1, '', '', ''),
(47, 47, '2014-04-13 18:06:56', '1984-09-09', 0, 'Cali - Valle del Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/139740881647.jpg', 1, 1, '', '', ''),
(48, 48, '2014-04-22 23:00:18', '0000-00-00', 0, '', '', 1, '../imgusers/default2.jpg', 1, 1, '', '', ''),
(49, 49, '2014-05-04 20:46:58', '1989-11-28', 0, 'BogotÃ¡, Colombia', 'BogotÃ¡, Colombia', 1, '../imgusers/139923281849.jpg', 1, 1, 'https://www.facebook.com/tata.bonilla.9', '', ''),
(50, 50, '2014-04-28 23:10:24', '1981-09-24', 0, 'Cali - Valle del Cauca, Colombia', 'Milan, Italy', 1, '../imgusers/139750975250.jpg', 1, 1, '', '', ''),
(51, 51, '2014-04-15 16:49:44', '1982-12-01', 1, 'quibdo colombia', 'Galerias, BogotÃ¡, Colombia', 2, '../imgusers/139757643751.jpg', 1, 1, '', '', ''),
(52, 52, '2014-04-22 23:00:39', '0000-00-00', 0, '', '', 1, '../imgusers/default2.jpg', 1, 1, '', '', ''),
(53, 53, '2014-04-22 00:32:20', '1980-11-19', 0, 'Cali - Valle del Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/139812314053.jpg', 1, 1, '', '', ''),
(54, 54, '2014-04-22 00:45:07', '1973-06-14', 0, 'Buenaventura, Valle del Cauca, Colombia', 'Cali, Valle del Cauca, Colombia', 1, '../imgusers/139812365154.jpg', 1, 1, '', '', ''),
(55, 55, '2014-04-22 00:42:38', '0000-00-00', 1, '', '', 1, '../imgusers/139812375855.jpg', 1, 1, '', '', ''),
(56, 56, '2014-04-22 00:41:08', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(57, 57, '2014-04-22 00:56:08', '0000-00-00', 1, '', '', 1, '../imgusers/139812456857.JPG', 1, 1, '', '', ''),
(58, 58, '2014-04-22 01:10:15', '1994-12-22', 1, 'PopayÃ¡n - Cauca, Colombia', 'PopayÃ¡n - Cauca, Colombia', 3, '../imgusers/139812531358.jpg', 1, 1, '', '', ''),
(59, 59, '2014-04-22 23:00:46', '1977-06-03', 0, 'Tumaco- NariÃ±o', 'Santa Ana, BogotÃ¡ - Cundinamarca, Colombia', 1, '../imgusers/default2.jpg', 1, 1, '', '', ''),
(60, 60, '2014-04-22 02:25:53', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(61, 61, '2014-04-24 22:12:38', '1985-02-25', 1, 'Cartagena - BolÃ­var, Colombia', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(62, 62, '2014-04-22 03:11:18', '0000-00-00', 0, '', '', 2, '../imgusers/139813267862.JPG', 1, 1, '', '', ''),
(63, 63, '2014-04-22 03:50:31', '0000-00-00', 0, '', '', 2, '../imgusers/139813503163.jpg', 1, 1, '', '', ''),
(64, 64, '2014-04-22 04:05:31', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(65, 65, '2014-04-22 04:50:41', '1980-01-01', 0, 'Santander de Quilichao - Cauca Department, Colombia', 'Montreal, QC, Canada', 1, '../imgusers/139813840765.jpg', 1, 1, '', '', ''),
(66, 66, '2014-04-22 05:03:34', '1986-01-09', 1, 'CALI', 'BogotÃ¡, Colombia', 1, '../imgusers/139813941466.JPG', 1, 1, '', '', ''),
(67, 67, '2014-04-22 05:04:17', '1985-08-05', 1, 'Cali, Valle del Cauca, Colombia', '', 1, '../imgusers/139813921267.JPG', 1, 1, '', '', ''),
(68, 68, '2014-04-22 05:17:17', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(69, 69, '2014-04-22 05:59:26', '1990-05-25', 1, 'Quibdo - ChocÃ³, Colombia', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/139814276669.JPG', 1, 1, '', '', ''),
(70, 70, '2014-04-22 06:43:29', '1986-03-30', 1, 'Buenaventura, Valle del Cauca, Colombia', '', 3, '../imgusers/139814382570.jpg', 17, 20, '', '', ''),
(71, 71, '2014-04-22 08:02:21', '1960-06-10', 1, 'Colombia, Cali - Valle del Cauca', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(72, 72, '2014-04-22 11:11:56', '1985-06-05', 1, 'cali', 'cali', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(73, 73, '2014-04-22 12:19:25', '1967-04-10', 0, 'Buenaventura, Valle del Cauca, Colombia', 'Valle del Cauca, Colombia', 4, '../imgusers/139816556573.jpg', 1, 1, '', '', ''),
(74, 74, '2014-04-22 12:59:46', '0000-00-00', 0, '', '', 1, '../imgusers/139816798674.jpg', 1, 1, '', '', ''),
(75, 75, '2014-04-22 14:50:10', '1993-02-23', 0, 'Buenaventura, Valle del Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 2, '../imgusers/139817446975.jpg', 1, 1, '', '', ''),
(76, 76, '2014-04-22 15:42:52', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(77, 77, '2014-04-24 22:12:43', '0000-00-00', 0, 'Cali - Valle del Cauca, Colombia', '', 1, '../imgusers/139818252177.jpg', 1, 1, '', '', ''),
(78, 78, '2014-04-22 23:01:21', '0000-00-00', 0, '', '', 2, '../imgusers/default2.jpg', 1, 1, '', '', ''),
(79, 79, '2014-04-22 23:01:47', '0000-00-00', 0, '', '', 2, '../imgusers/default2.jpg', 1, 1, '', '', ''),
(80, 80, '2014-04-22 23:43:22', '1986-10-08', 0, 'popayÃ¡n (cauca)', 'Puerto Tejada, Cauca, Colombia', 1, '../imgusers/139820638880.jpg', 1, 1, '', '', ''),
(81, 81, '2014-04-23 00:22:44', '1984-02-05', 1, 'Miranda - Cauca, Colombia', 'Miranda - Cauca, Colombia', 1, '../imgusers/139820896481.jpg', 1, 1, '', '', ''),
(82, 82, '2014-04-23 01:34:35', '0000-00-00', 1, 'Miranda - Cauca, Colombia', 'Miranda', 2, '../imgusers/139821304882.jpeg', 1, 1, '', '', ''),
(83, 83, '2014-04-23 02:45:51', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(84, 84, '2014-04-23 03:22:54', '0000-00-00', 1, 'Buenaventura, Valle del Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 4, '../imgusers/default.jpg', 1, 1, '', '', ''),
(85, 85, '2014-04-23 05:43:57', '0000-00-00', 0, 'Cali - Valle del Cauca, Colombia', 'BogotÃ¡, Cundinamarca, Colombia', 3, '../imgusers/139822823785.jpg', 1, 1, '', '', ''),
(86, 86, '2014-04-23 17:57:42', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(87, 87, '2014-04-25 19:21:12', '1983-09-15', 1, 'Quibdo - ChocÃ³, Colombia', 'Calle 25 #6-54 nterior', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(88, 88, '2014-05-14 20:22:38', '0000-00-00', 1, 'Cartagena - BolÃ­var, Colombia', 'BogotÃ¡, Colombia', 3, '../imgusers/140009535788.jpg', 1, 1, '', '', ''),
(89, 89, '2014-04-26 04:29:05', '1997-07-14', 0, 'PopayÃ¡n - Cauca, Colombia', 'PopayÃ¡n - Cauca, Colombia', 3, '../imgusers/139848172189.jpg', 1, 1, '', '', ''),
(90, 90, '2014-04-26 21:49:32', '1984-05-05', 1, 'Quibdo - ChocÃ³, Colombia', 'Cll 23 # 68B - 32', 1, '../imgusers/139854537190.jpg', 1, 1, '', '', ''),
(91, 91, '2014-04-27 16:51:27', '0000-00-00', 0, 'Miranda - Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/139861374491.jpg', 1, 1, '', '', ''),
(92, 92, '2014-04-29 01:01:08', '0000-00-00', 1, '', '', 5, '../imgusers/default.jpg', 1, 1, 'https://www.facebook.com/Yeyo69', 'https://twitter.com/Diego_Clavijo', 'Arreglo Computadores'),
(93, 93, '2014-04-30 04:51:18', '1993-02-15', 0, 'Cali - Valle del Cauca, Colombia', 'San Fernando, Cali - Valle del Cauca, Colombia', 1, '../imgusers/139882979993.jpg', 1, 1, 'https://www.facebook.com/vanessitalis', '', ''),
(94, 94, '2014-05-01 00:27:03', '1984-07-09', 1, 'Quibdo - ChocÃ³, Colombia', 'BogotÃ¡, Colombia', 1, '../imgusers/139890042394.jpg', 1, 1, '', '', 'ExpresiÃ³n Tridimensional y AnimaciÃ³n de Proyecto'),
(95, 95, '2014-05-01 02:29:15', '1988-02-06', 0, 'BogotÃ¡', 'Granada Norte, BogotÃ¡, Colombia', 1, '../imgusers/139890738395.jpg', 1, 1, '', '', ''),
(96, 96, '2014-05-06 23:32:17', '0000-00-00', 0, '', '', 1, '../imgusers/139907199996.jpg', 1, 1, 'https://www.facebook.com/kathee.pazpinzon?ref=tn_tnmn', '', ''),
(97, 97, '2014-05-05 22:12:44', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', ''),
(98, 98, '2014-05-07 18:25:12', '1984-06-01', 1, 'Quibdo - ChocÃ³, Colombia', 'BogotÃ¡, Colombia', 1, '../imgusers/139948351298.jpg', 1, 1, 'https://www.facebook.com/juvencio.lozano.1?ref=tn_tnmn', 'https://twitter.com/JuVeLoMa', ''),
(99, 99, '2014-05-08 01:43:01', '1990-10-03', 0, 'Santander de Quilichao Colombia', 'Santa Anita Santander de Q. Colombia', 1, '../imgusers/139950944399.jpg', 1, 1, '', '', ''),
(100, 100, '2014-05-08 02:33:52', '1971-03-28', 1, 'Cali - Valle del Cauca, Colombia', 'BogotÃ¡, Colombia', 1, '../imgusers/1399510730100.JPG', 34, 1, 'facebook.com/reynaldo.guerrero2', '', ''),
(101, 101, '2014-05-08 03:38:59', '0000-00-00', 0, 'Santander de Quilichao - Cauca, Colombia', '', 1, '../imgusers/1399516600101.JPG', 1, 1, '', '', ''),
(102, 102, '2014-05-08 03:39:13', '0000-00-00', 1, 'Cali - Valle del Cauca, Colombia', 'Santander de Quilichao - Cauca, Colombia', 1, '../imgusers/1399516057102.jpg', 1, 1, 'https://www.facebook.com/mitchell.cardona', 'https://twitter.com/maicolsmith02', ''),
(103, 103, '2014-05-08 03:30:21', '1986-08-05', 1, 'PopayÃ¡n - Cauca, Colombia', 'Cali - Valle del Cauca, Colombia', 1, '../imgusers/default.jpg', 1, 1, '', 'https://twitter.com/juan8605', ''),
(104, 104, '2014-05-08 17:15:16', '1988-12-29', 0, 'Santander de Quilichao - Cauca Department, Colombia', 'Santander de Quilichao - Cauca Department, Colombia', 1, '../imgusers/1399565534104.jpg', 1, 1, 'https://www.facebook.com/luisamina', 'https://twitter.com/luisitamina', 'Community Manager, Relaciones Publicas, Manejo WEB'),
(105, 105, '2014-05-08 22:47:23', '1991-01-14', 1, 'Santander De Quilichao, Santander de Quilichao - Cauca, Colombia', 'BogotÃ¡, Colombia', 3, '../imgusers/1399585643105.jpg', 1, 1, 'https://www.facebook.com/luis.carabali.71', '', 'fanatico y jugador del buen futbol.'),
(106, 106, '2014-05-09 19:35:37', '1980-05-24', 1, 'Buenaventura - Valle del Cauca, Colombia', '', 1, '../imgusers/1399660303106.jpg', 1, 1, '', '', ''),
(107, 107, '2014-05-14 22:22:38', '1984-02-27', 0, 'Cali - Valle del Cauca, Colombia', 'Alambra-cali', 1, '../imgusers/1400102558107.jpg', 1, 1, '', '', 'terapias domiciliarias'),
(108, 108, '2015-09-24 13:21:20', '1996-03-29', 1, '', '', 1, '../imgusers/1443100865108.jpg', 1, 1, '', '', ''),
(110, 110, '2015-09-24 17:04:14', '0000-00-00', 1, '', '', 1, '../imgusers/default.jpg', 1, 1, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionales`
--

CREATE TABLE IF NOT EXISTS `profesionales` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `profesion` int(4) unsigned NOT NULL DEFAULT '1' COMMENT 'Profesion',
  `estudios` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Estudios',
  `experiencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Experiencia',
  `fechaprofesionales` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `perfil2` int(10) NOT NULL,
  `profesion2` int(10) NOT NULL DEFAULT '1',
  `perfil3` int(10) NOT NULL,
  `profesion3` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesionales`
--

INSERT INTO `profesionales` (`id`, `idusuario`, `profesion`, `estudios`, `experiencia`, `fechaprofesionales`, `perfil2`, `profesion2`, `perfil3`, `profesion3`) VALUES
(10, 32, 20, 'Diplomado en GestiÃ³n de Distritos de Riego <br>\r\nProgramaciÃ³n de pÃ¡ginas web en HTML5, CSS3, PHP, javaScript, jQuery, Ajax. \r\n<br> ProgramaciÃ³n de bases de Datos en MySQL <br> ProgramaciÃ³n de aplicaciones mÃ³viles en Android', 'Experiencia en diseÃ±o de sistemas de riego, sin embargo me especializo en la programaciÃ³n de sitios web y aplicaciones mÃ³viles por encargo.', '2014-05-06 18:22:23', 0, 1, 0, 1),
(11, 33, 28, '', '', '2014-03-30 22:03:05', 0, 1, 0, 1),
(12, 34, 2, '', '', '2014-03-30 00:55:36', 0, 1, 0, 1),
(13, 35, 1, '', '', '2014-04-02 03:17:12', 0, 1, 0, 1),
(14, 36, 44, '*Altos Estudios en  Gerencia PolÃ­tica y Gobernabilidad\r\n\r\n\r\n\r\n*Consulta Previa\r\n\r\n\r\n\r\n\r\n\r\n*Liderazgo y Estrategia\r\n\r\n', 'Egresado de la Facultad de Ciencias PolÃ­ticas y Gobierno de la Universidad del Rosario, Con experiencia en Diversidad, Cultura y PolÃ­tica. Con una estrecha relaciÃ³n al sector pÃºblico, cooperaciÃ³n Internacional y Organizaciones de la sociedad civil, apoyando iniciativas que promueven desde cada uno de estos sectores el fortalecimiento de capacidades en la comunidad, en el estado y en el sector privado, todo esto aplicado a la Mega Diversidad del paÃ­s', '2014-04-11 16:54:00', 0, 1, 0, 1),
(15, 37, 2, 'Profesional de Idiomas: FrancÃ©s e InglÃ©s', '8 aÃ±os, universidad CatÃ³lica, Universidad Santo TomÃ¡s', '2014-04-08 23:14:31', 0, 1, 0, 1),
(16, 38, 10, '', '', '2014-04-09 20:52:22', 0, 1, 0, 1),
(17, 39, 1, '', '', '2014-04-09 20:52:09', 0, 1, 0, 1),
(18, 40, 1, '', '', '2014-04-11 00:10:09', 0, 1, 0, 1),
(19, 41, 28, 'Especialista en gerencia de proyectos de ingenierÃ­a (Javeriana Cali)\r\nEspecialista en buen gobierno y prevenciÃ³n de fenomenos de corrupciÃ³n (UniValle y Universidad de Salamanca EspaÃ±a).', 'Ingeniero IT AeronÃ¡utica Civil de Colombia, Secretario de Telematica, GobernaciÃ³n del Valle, Docente Universidad AutÃ³noma de Occidente, Universidad San Buenaventura Cali.', '2014-04-11 03:01:31', 0, 1, 0, 1),
(20, 42, 55, '-Diplomado Marketing polÃ­tico y procesos electorales- Universidad de la Sabana.\r\n-Diplomado en Consulta previa - Universidad Nacional.', '', '2014-04-22 23:06:49', 0, 1, 0, 1),
(21, 43, 1, 'Ingeniero mecatronico especialista en gerencia', 'Gerente regional casa sueca hace 6 aÃ±os', '2014-04-11 23:53:03', 0, 1, 0, 1),
(22, 44, 28, '', 'Ingeniero Electronico con experiencia en  Petroleos, Telecomunicaciones y Automatizacion de Subestaciones Electricas.', '2014-04-22 02:44:05', 0, 1, 0, 1),
(23, 45, 2, '-Conciliadora en Derecho.\r\n-Especialista en GestiÃ³n JurÃ­dica Publica de la Universidad del Rosario.\r\n-Estudiante Ãºltimo aÃ±o de maestrÃ­a en Derecho Administrativo Universidad Externado de Colombia.\r\n', 'Asistente judicial, auxiliar administrativa de la H. CÃ¡mara de Representante, litigante en Derecho Administrativo.', '2014-04-12 05:15:57', 0, 1, 0, 1),
(24, 46, 1, 'EspecializaciÃ³n higiene y seguridad industrial', '', '2014-04-12 14:37:33', 0, 1, 0, 1),
(25, 47, 55, '', '', '2014-04-13 16:03:49', 0, 1, 0, 1),
(26, 48, 1, '', '', '2014-04-13 21:57:07', 0, 1, 0, 1),
(27, 49, 54, 'PsicÃ³loga, Universidad Nacional de Colombia\r\nEscritora Aficionada\r\n', '', '2014-05-04 20:54:23', 0, 1, 0, 1),
(28, 50, 57, 'EspecializaciÃ³n en marketing de moda', '10 aÃ±os de experiencia en marketing de moda (a un nivel internacional) con casas de moda italianas especializadas en ropa para mujer y hombre.', '2014-04-28 23:10:53', 0, 1, 0, 1),
(29, 52, 1, '', '', '2014-04-17 02:13:54', 0, 1, 0, 1),
(30, 53, 2, '', 'Presidente de Chao Racismo', '2014-04-22 00:09:09', 0, 1, 0, 1),
(31, 54, 46, 'Esp. CooperaciÃ³n Internacional y Gerencia Social.\r\nEstudiante- Maestria en Gobierno y PolÃ­ticas PÃºblicas. ICESI', 'AtenciÃ³n Humanitaria y Salud Mental.\r\nSalud Sexual y Reproductiva.', '2014-04-22 00:45:07', 0, 1, 0, 1),
(32, 55, 1, '', '', '2014-04-22 00:40:47', 0, 1, 0, 1),
(33, 56, 1, '', '', '2014-04-22 00:41:08', 0, 1, 0, 1),
(34, 57, 1, '', '', '2014-04-22 00:53:20', 0, 1, 0, 1),
(35, 59, 1, 'Especialista en DDHH y DIH', 'Naciones Unidas', '2014-04-22 01:18:58', 0, 1, 0, 1),
(36, 60, 1, '', '', '2014-04-22 02:25:53', 0, 1, 0, 1),
(37, 64, 1, '', '', '2014-04-22 04:05:31', 0, 1, 0, 1),
(38, 65, 1, 'Ing. ElectrÃ³nica, IT projet management', 'Ing. Mantenimiento, Ing. Conmutacion, coordinadora proyectos, Ing. ProducciÃ³n ', '2014-04-22 04:50:41', 0, 1, 0, 1),
(39, 66, 2, '', '', '2014-04-22 05:00:42', 0, 1, 0, 1),
(40, 67, 56, 'Magister en Informatica \r\nEspecialicacion en Finanzas', 'CEO FundaciÃ³n COINF  -\r\nDocente USC - UNICATOLICA -\r\nDirector Financiero - Oficina Siglo XXI -\r\nAsistente Consular - Ministerio de Relaciones Exteriores\r\n', '2014-04-27 21:48:39', 0, 1, 0, 1),
(41, 68, 1, '', '', '2014-04-22 05:17:17', 0, 1, 0, 1),
(42, 69, 7, '', 'aproximadamente 3 aÃ±os de experiencia laboral como auxiliar contable en empresas como Empaques Industriales de Colombia SAS, Liderautos y Super Giros SA', '2014-04-22 05:58:04', 0, 1, 0, 1),
(43, 71, 46, 'PROFESIONAL  EN FOLCLOR   , DIPLOMADO EN GERNTOLOGIA', '35  AÃ‘OS  COMO PROFESOR DE FOLCLOR  . 8 AÃ‘OS  COMO PSICOLO', '2014-04-22 08:02:21', 0, 1, 0, 1),
(44, 72, 1, 'Especializacion en mercado de capitales', 'Independiente', '2014-04-22 11:15:35', 0, 1, 0, 1),
(45, 74, 1, '', '', '2014-04-22 12:47:34', 0, 1, 0, 1),
(46, 76, 1, '', '', '2014-04-22 15:42:52', 0, 1, 0, 1),
(47, 80, 2, 'mercadeo y finanzas', 'trabaje 2 aÃ±os con skema promotora S.A.', '2014-04-22 23:43:22', 0, 1, 0, 1),
(48, 81, 28, 'Ingeniero en Electronica y Telecomunicaciones \r\nEsp. en electromedicina y gestion tecnologica Hospitalaria\r\nEsp, en Redes Telematicas', 'EMPRESARIO en el sector de Tecnologia, Telecomunicaciones, Obras Civil desde el aÃ‘o 2006', '2014-04-23 00:16:47', 0, 1, 0, 1),
(49, 83, 1, '', '', '2014-04-23 02:45:51', 0, 1, 0, 1),
(50, 86, 1, '', '', '2014-04-23 17:57:42', 0, 1, 0, 1),
(51, 61, 1, '', '', '2014-04-24 22:13:20', 0, 1, 0, 1),
(52, 77, 1, '', '', '2014-04-24 22:13:38', 0, 1, 0, 1),
(53, 87, 55, 'Especialista en Desarrollo y Marketing Territorial.', 'Trabajo hace 4 aÃ±os como Coordinador de Comunicaciones de la CorporaciÃ³n AutÃ³noma Regional Para el Desarrollo Sostenible del ChocÃ³, Ademas de trabajar durante varios aÃ±os en el sector pÃºblico y organizaciones no gubernamentales en el sector salud, media ambiente y humanitario.  ', '2014-04-25 19:21:12', 0, 1, 0, 1),
(54, 90, 26, '', '', '2014-04-26 21:47:39', 0, 1, 0, 1),
(55, 91, 54, 'ESPECIALISTA EN AUDITORIA EN SALUD', '', '2014-04-27 16:51:27', 0, 1, 0, 1),
(56, 93, 55, 'tecnica en diseÃ±o grafico', '', '2014-04-30 04:51:18', 0, 1, 0, 1),
(57, 94, 23, 'Magister en IngenirÃ­a Ãrea: Civil\r\n\r\nEsp. IngenierÃ­a y Gerencia de ConstrucciÃ³n', 'Proyectos Inmobiliarios', '2014-05-01 00:20:14', 0, 1, 0, 1),
(58, 95, 9, 'InglÃ©s, Nivel intemediate Education First, Ciudad del\r\nCabo. SudÃ¡frica, Agosto 8 de 2011 â€“ Diciembre 23 de\r\n2011.', '-Estibol S.A , asesora comercial \r\n-Hoyos y  Hoyos , asistente de comunicaciÃ³n ', '2014-05-01 02:29:15', 0, 1, 0, 1),
(59, 96, 54, '', '', '2014-05-06 23:31:09', 0, 1, 0, 1),
(60, 97, 1, '', '', '2014-05-05 22:12:44', 0, 1, 0, 1),
(61, 98, 9, '', '', '2014-05-07 18:20:44', 0, 1, 0, 1),
(62, 99, 1, '', '', '2014-05-08 01:28:45', 0, 1, 0, 1),
(63, 100, 54, 'Ingles', 'intermedio', '2014-05-08 02:24:01', 0, 1, 0, 1),
(64, 101, 46, 'Especialista en Desarrollo humano y organizacional ', '', '2014-05-08 03:11:57', 0, 1, 0, 1),
(65, 102, 38, 'docente ciencias exactas e ingles', '', '2014-05-08 03:30:39', 0, 1, 0, 1),
(66, 103, 28, 'FotografÃ­a, Desarrollo Web', '', '2014-05-08 03:30:21', 0, 1, 0, 1),
(67, 104, 55, '', 'Asistente Personal CÃ³nsul de Colombia en San Francisco, Asistente en Notaria Tercera de Buenaventura', '2014-05-08 17:15:16', 0, 1, 0, 1),
(68, 106, 54, 'MaestrÃ­a en Ciencias de la EducaciÃ³n', '5 aÃ±os trabajando en instituciones universitarias', '2014-05-09 19:35:37', 0, 1, 0, 1),
(69, 107, 15, 'salud ocupacional-sena', 'Centro QuirÃºrgico de la Belleza', '2014-05-14 22:16:23', 0, 1, 0, 1),
(71, 109, 3, '', '', '2015-08-03 17:15:43', 0, 1, 0, 1),
(81, 110, 1, '', '', '2015-09-24 17:04:14', 0, 1, 0, 1),
(80, 108, 2, '', '', '2015-09-18 16:13:00', 1, 6, 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE IF NOT EXISTS `sesiones` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `ingreso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `salida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `idusuario`, `ingreso`, `salida`) VALUES
(17, 32, '2014-03-29 06:06:26', '0000-00-00 00:00:00'),
(18, 33, '2014-03-29 21:46:29', '2014-04-04 01:36:02'),
(19, 32, '2014-03-30 00:05:50', '0000-00-00 00:00:00'),
(20, 32, '2014-03-30 00:06:20', '2014-03-30 00:33:22'),
(21, 34, '2014-03-30 00:52:07', '0000-00-00 00:00:00'),
(22, 32, '2014-03-30 02:07:37', '0000-00-00 00:00:00'),
(23, 32, '2014-03-30 03:24:31', '2014-03-30 03:26:32'),
(24, 32, '2014-03-30 03:27:17', '2014-03-30 03:27:42'),
(25, 32, '2014-03-30 04:54:40', '2014-03-30 04:55:18'),
(26, 32, '2014-03-30 20:53:46', '0000-00-00 00:00:00'),
(27, 32, '2014-03-30 22:51:16', '0000-00-00 00:00:00'),
(28, 32, '2014-03-31 22:43:31', '2014-03-31 22:43:50'),
(29, 32, '2014-03-31 22:45:24', '2014-03-31 22:45:29'),
(30, 34, '2014-04-01 03:29:11', '2014-04-10 09:49:46'),
(31, 33, '2014-04-01 17:34:15', '2014-04-01 18:04:35'),
(32, 35, '2014-04-02 03:17:12', '2014-04-02 04:12:09'),
(33, 34, '2014-04-04 01:04:10', '2014-04-04 01:07:16'),
(34, 32, '2014-04-04 16:53:12', '0000-00-00 00:00:00'),
(35, 36, '2014-04-04 16:54:13', '2014-04-04 16:58:23'),
(36, 32, '2014-04-04 21:24:28', '2014-04-04 21:31:58'),
(37, 34, '2014-04-04 22:14:36', '0000-00-00 00:00:00'),
(38, 32, '2014-04-07 19:44:26', '2014-04-07 19:44:37'),
(39, 32, '2014-04-07 19:45:17', '2014-04-07 19:45:20'),
(40, 32, '2014-04-07 19:45:29', '2014-04-07 19:45:36'),
(41, 32, '2014-04-07 19:45:53', '0000-00-00 00:00:00'),
(42, 32, '2014-04-07 19:51:50', '2014-04-07 19:51:54'),
(43, 32, '2014-04-07 19:52:07', '2014-04-07 19:52:14'),
(44, 32, '2014-04-07 19:58:42', '2014-04-07 20:44:30'),
(45, 32, '2014-04-07 20:45:16', '2014-04-07 22:38:12'),
(46, 37, '2014-04-08 23:03:53', '2014-04-08 23:05:42'),
(47, 37, '2014-04-08 23:06:20', '0000-00-00 00:00:00'),
(48, 33, '2014-04-09 19:57:43', '2014-04-09 19:58:27'),
(49, 38, '2014-04-09 20:48:18', '2014-04-09 23:15:59'),
(50, 39, '2014-04-09 20:52:09', '2014-04-09 20:52:41'),
(51, 39, '2014-04-09 20:57:18', '2014-04-09 21:12:39'),
(52, 39, '2014-04-09 21:14:00', '0000-00-00 00:00:00'),
(53, 39, '2014-04-09 21:25:26', '0000-00-00 00:00:00'),
(54, 39, '2014-04-09 21:28:46', '2014-04-09 21:37:10'),
(55, 34, '2014-04-10 20:25:32', '2014-04-10 20:30:29'),
(56, 34, '2014-04-10 20:37:18', '0000-00-00 00:00:00'),
(57, 40, '2014-04-11 00:10:09', '0000-00-00 00:00:00'),
(58, 41, '2014-04-11 02:41:39', '2014-04-11 03:02:10'),
(59, 36, '2014-04-11 16:30:17', '2014-04-11 17:55:49'),
(60, 42, '2014-04-11 16:44:41', '0000-00-00 00:00:00'),
(61, 43, '2014-04-11 23:46:42', '0000-00-00 00:00:00'),
(62, 32, '2014-04-11 23:47:54', '2014-04-12 02:10:46'),
(63, 44, '2014-04-12 01:23:56', '0000-00-00 00:00:00'),
(64, 36, '2014-04-12 04:55:13', '2014-04-12 04:58:30'),
(65, 45, '2014-04-12 05:04:33', '2014-04-12 05:30:33'),
(66, 36, '2014-04-12 08:54:55', '0000-00-00 00:00:00'),
(67, 43, '2014-04-12 13:59:03', '0000-00-00 00:00:00'),
(68, 46, '2014-04-12 14:02:27', '0000-00-00 00:00:00'),
(69, 46, '2014-04-12 14:07:53', '0000-00-00 00:00:00'),
(70, 44, '2014-04-12 23:46:27', '0000-00-00 00:00:00'),
(71, 40, '2014-04-13 00:43:02', '0000-00-00 00:00:00'),
(72, 40, '2014-04-13 01:29:56', '0000-00-00 00:00:00'),
(73, 47, '2014-04-13 16:01:35', '0000-00-00 00:00:00'),
(74, 34, '2014-04-13 17:52:04', '2014-04-13 17:58:01'),
(75, 48, '2014-04-13 21:57:07', '0000-00-00 00:00:00'),
(76, 34, '2014-04-14 04:48:21', '0000-00-00 00:00:00'),
(77, 49, '2014-04-14 22:04:07', '2014-04-15 02:06:29'),
(78, 50, '2014-04-14 22:04:38', '0000-00-00 00:00:00'),
(79, 50, '2014-04-14 22:20:50', '0000-00-00 00:00:00'),
(80, 50, '2014-04-14 22:23:20', '0000-00-00 00:00:00'),
(81, 51, '2014-04-15 16:34:50', '0000-00-00 00:00:00'),
(82, 51, '2014-04-15 16:38:17', '0000-00-00 00:00:00'),
(83, 38, '2014-04-16 05:55:54', '2014-04-16 05:57:03'),
(84, 52, '2014-04-17 02:13:54', '0000-00-00 00:00:00'),
(85, 38, '2014-04-19 00:04:16', '0000-00-00 00:00:00'),
(86, 53, '2014-04-22 00:05:53', '0000-00-00 00:00:00'),
(87, 54, '2014-04-22 00:38:00', '0000-00-00 00:00:00'),
(88, 55, '2014-04-22 00:40:47', '0000-00-00 00:00:00'),
(89, 56, '2014-04-22 00:41:08', '0000-00-00 00:00:00'),
(90, 57, '2014-04-22 00:53:20', '0000-00-00 00:00:00'),
(91, 54, '2014-04-22 01:00:15', '2014-04-22 01:01:38'),
(92, 58, '2014-04-22 01:08:04', '2014-04-22 01:39:43'),
(93, 59, '2014-04-22 01:14:30', '0000-00-00 00:00:00'),
(94, 59, '2014-04-22 01:16:15', '0000-00-00 00:00:00'),
(95, 60, '2014-04-22 02:25:53', '0000-00-00 00:00:00'),
(96, 36, '2014-04-22 02:31:02', '0000-00-00 00:00:00'),
(97, 61, '2014-04-22 02:31:40', '0000-00-00 00:00:00'),
(98, 44, '2014-04-22 02:42:00', '0000-00-00 00:00:00'),
(99, 62, '2014-04-22 03:10:36', '2014-04-22 03:13:26'),
(100, 63, '2014-04-22 03:48:43', '2014-04-22 03:56:08'),
(101, 40, '2014-04-22 04:00:50', '0000-00-00 00:00:00'),
(102, 64, '2014-04-22 04:05:31', '0000-00-00 00:00:00'),
(103, 65, '2014-04-22 04:45:39', '0000-00-00 00:00:00'),
(104, 66, '2014-04-22 04:58:44', '2014-04-22 05:03:53'),
(105, 67, '2014-04-22 04:59:12', '0000-00-00 00:00:00'),
(106, 68, '2014-04-22 05:17:17', '0000-00-00 00:00:00'),
(107, 69, '2014-04-22 05:52:56', '0000-00-00 00:00:00'),
(108, 70, '2014-04-22 06:13:59', '0000-00-00 00:00:00'),
(109, 71, '2014-04-22 07:57:22', '2014-04-22 08:04:49'),
(110, 72, '2014-04-22 11:10:34', '0000-00-00 00:00:00'),
(111, 73, '2014-04-22 12:08:41', '0000-00-00 00:00:00'),
(112, 74, '2014-04-22 12:47:34', '2014-04-22 13:00:39'),
(113, 70, '2014-04-22 13:53:48', '0000-00-00 00:00:00'),
(114, 75, '2014-04-22 14:46:34', '2014-04-22 14:50:48'),
(115, 75, '2014-04-22 14:51:05', '2014-04-22 16:15:04'),
(116, 76, '2014-04-22 15:42:52', '0000-00-00 00:00:00'),
(117, 77, '2014-04-22 16:58:37', '0000-00-00 00:00:00'),
(118, 78, '2014-04-22 18:03:00', '0000-00-00 00:00:00'),
(119, 79, '2014-04-22 18:05:17', '0000-00-00 00:00:00'),
(120, 54, '2014-04-22 19:39:43', '2014-04-22 19:41:57'),
(121, 58, '2014-04-22 19:51:53', '2014-04-22 19:59:32'),
(122, 39, '2014-04-22 21:26:03', '2014-04-22 21:33:14'),
(123, 34, '2014-04-22 22:43:23', '2014-04-23 01:09:06'),
(124, 80, '2014-04-22 23:37:56', '2014-04-22 23:57:38'),
(125, 47, '2014-04-22 23:44:10', '0000-00-00 00:00:00'),
(126, 81, '2014-04-23 00:11:06', '0000-00-00 00:00:00'),
(127, 82, '2014-04-23 01:27:56', '2014-04-23 01:36:50'),
(128, 82, '2014-04-23 01:37:24', '0000-00-00 00:00:00'),
(129, 83, '2014-04-23 02:45:51', '0000-00-00 00:00:00'),
(130, 84, '2014-04-23 02:50:10', '2014-04-23 03:24:27'),
(131, 70, '2014-04-23 04:08:43', '0000-00-00 00:00:00'),
(132, 58, '2014-04-23 04:14:18', '2014-04-23 04:17:12'),
(133, 85, '2014-04-23 05:33:09', '0000-00-00 00:00:00'),
(134, 86, '2014-04-23 17:57:42', '0000-00-00 00:00:00'),
(135, 58, '2014-04-24 00:03:40', '2014-04-24 00:09:38'),
(136, 43, '2014-04-24 10:15:03', '0000-00-00 00:00:00'),
(137, 32, '2014-04-24 16:49:03', '0000-00-00 00:00:00'),
(138, 34, '2014-04-24 18:55:48', '2014-04-24 22:36:56'),
(139, 58, '2014-04-25 01:49:21', '2014-04-25 01:50:47'),
(140, 87, '2014-04-25 19:05:06', '0000-00-00 00:00:00'),
(141, 39, '2014-04-25 19:50:39', '0000-00-00 00:00:00'),
(142, 39, '2014-04-25 19:51:51', '0000-00-00 00:00:00'),
(143, 39, '2014-04-25 19:52:26', '2014-04-25 19:55:42'),
(144, 88, '2014-04-25 22:05:42', '2014-04-26 01:50:17'),
(145, 58, '2014-04-25 23:18:59', '2014-04-25 23:28:41'),
(146, 89, '2014-04-26 03:56:29', '2014-04-26 04:19:48'),
(147, 89, '2014-04-26 04:22:27', '2014-04-26 04:29:20'),
(148, 78, '2014-04-26 20:55:46', '2014-04-26 21:09:41'),
(149, 90, '2014-04-26 21:46:11', '2014-04-26 21:49:44'),
(150, 88, '2014-04-26 21:52:13', '2014-04-26 21:54:38'),
(151, 85, '2014-04-27 04:24:23', '0000-00-00 00:00:00'),
(152, 91, '2014-04-27 16:44:18', '0000-00-00 00:00:00'),
(153, 38, '2014-04-28 05:17:13', '0000-00-00 00:00:00'),
(154, 92, '2014-04-28 15:06:40', '0000-00-00 00:00:00'),
(155, 32, '2014-04-28 15:19:40', '2014-04-28 15:20:49'),
(156, 92, '2014-04-28 15:20:59', '0000-00-00 00:00:00'),
(157, 34, '2014-04-28 20:54:19', '2014-04-28 22:31:11'),
(158, 58, '2014-04-28 23:19:20', '2014-04-28 23:20:15'),
(159, 73, '2014-04-29 01:22:38', '0000-00-00 00:00:00'),
(160, 93, '2014-04-30 04:48:53', '0000-00-00 00:00:00'),
(161, 34, '2014-04-30 05:29:52', '0000-00-00 00:00:00'),
(162, 58, '2014-04-30 08:02:07', '2014-04-30 08:02:39'),
(163, 34, '2014-04-30 22:22:35', '2014-05-01 00:00:08'),
(164, 94, '2014-05-01 00:13:20', '0000-00-00 00:00:00'),
(165, 95, '2014-05-01 02:17:42', '0000-00-00 00:00:00'),
(166, 32, '2014-05-02 21:17:50', '0000-00-00 00:00:00'),
(167, 34, '2014-05-02 23:37:58', '0000-00-00 00:00:00'),
(168, 96, '2014-05-02 23:57:14', '2014-05-03 00:07:12'),
(169, 96, '2014-05-03 00:09:58', '2014-05-03 00:11:16'),
(170, 34, '2014-05-04 01:04:48', '0000-00-00 00:00:00'),
(171, 34, '2014-05-04 01:26:30', '2014-05-05 19:22:27'),
(172, 58, '2014-05-04 19:20:53', '2014-05-04 19:22:19'),
(173, 49, '2014-05-04 20:42:25', '2014-05-04 21:12:55'),
(174, 34, '2014-05-05 19:26:15', '2014-05-05 19:27:37'),
(175, 97, '2014-05-05 22:12:44', '2014-05-05 22:18:48'),
(176, 32, '2014-05-05 22:29:39', '0000-00-00 00:00:00'),
(177, 32, '2014-05-05 23:59:09', '2014-05-06 00:02:36'),
(178, 32, '2014-05-06 00:02:53', '0000-00-00 00:00:00'),
(179, 32, '2014-05-06 03:25:53', '0000-00-00 00:00:00'),
(180, 96, '2014-05-06 23:29:33', '2014-05-06 23:32:25'),
(181, 39, '2014-05-06 23:33:19', '2014-05-06 23:34:45'),
(182, 34, '2014-05-07 00:59:37', '2014-05-07 01:19:18'),
(183, 32, '2014-05-07 18:08:58', '0000-00-00 00:00:00'),
(184, 98, '2014-05-07 18:15:21', '2014-05-07 19:45:34'),
(185, 32, '2014-05-07 18:16:39', '0000-00-00 00:00:00'),
(186, 34, '2014-05-07 18:18:07', '2014-05-07 19:26:23'),
(187, 32, '2014-05-07 18:18:37', '0000-00-00 00:00:00'),
(188, 34, '2014-05-07 21:01:57', '2014-05-07 22:16:10'),
(189, 99, '2014-05-08 01:28:45', '0000-00-00 00:00:00'),
(190, 34, '2014-05-08 01:48:06', '2014-05-08 02:02:41'),
(191, 100, '2014-05-08 01:52:24', '0000-00-00 00:00:00'),
(192, 34, '2014-05-08 02:07:38', '0000-00-00 00:00:00'),
(193, 34, '2014-05-08 02:16:33', '0000-00-00 00:00:00'),
(194, 32, '2014-05-08 02:30:32', '0000-00-00 00:00:00'),
(195, 101, '2014-05-08 03:10:13', '2014-05-08 03:37:20'),
(196, 102, '2014-05-08 03:18:41', '0000-00-00 00:00:00'),
(197, 103, '2014-05-08 03:26:58', '0000-00-00 00:00:00'),
(198, 101, '2014-05-08 03:37:47', '2014-05-08 03:43:01'),
(199, 104, '2014-05-08 17:07:51', '0000-00-00 00:00:00'),
(200, 36, '2014-05-08 18:26:32', '0000-00-00 00:00:00'),
(201, 100, '2014-05-08 18:34:26', '2014-05-08 23:03:21'),
(202, 105, '2014-05-08 22:40:56', '2014-05-09 00:40:58'),
(203, 32, '2014-05-09 00:14:10', '0000-00-00 00:00:00'),
(204, 32, '2014-05-09 00:16:18', '0000-00-00 00:00:00'),
(205, 32, '2014-05-09 01:03:55', '0000-00-00 00:00:00'),
(206, 58, '2014-05-09 02:14:23', '2014-05-09 02:18:00'),
(207, 106, '2014-05-09 19:26:29', '0000-00-00 00:00:00'),
(208, 33, '2014-05-09 21:44:34', '2014-05-09 21:47:26'),
(209, 58, '2014-05-10 16:07:09', '2014-05-10 16:07:53'),
(210, 58, '2014-05-10 16:08:03', '2014-05-10 16:10:11'),
(211, 49, '2014-05-11 21:25:07', '2014-05-11 21:27:26'),
(212, 32, '2014-05-11 22:15:26', '0000-00-00 00:00:00'),
(213, 34, '2014-05-12 01:31:12', '0000-00-00 00:00:00'),
(214, 32, '2014-05-12 15:45:18', '0000-00-00 00:00:00'),
(215, 32, '2014-05-12 20:24:05', '0000-00-00 00:00:00'),
(216, 81, '2014-05-13 01:13:43', '0000-00-00 00:00:00'),
(217, 32, '2014-05-13 18:01:17', '2014-05-13 20:30:40'),
(218, 34, '2014-05-13 18:10:17', '2014-05-14 02:01:51'),
(219, 32, '2014-05-13 20:30:55', '2014-05-13 21:37:22'),
(220, 34, '2014-05-14 05:10:03', '0000-00-00 00:00:00'),
(221, 88, '2014-05-14 20:10:41', '2014-05-14 20:11:11'),
(222, 88, '2014-05-14 20:12:10', '2014-05-14 20:12:19'),
(223, 88, '2014-05-14 20:12:37', '2014-05-14 20:12:53'),
(224, 88, '2014-05-14 20:13:05', '2014-05-14 20:24:40'),
(225, 32, '2014-05-14 21:34:07', '0000-00-00 00:00:00'),
(226, 34, '2014-05-14 21:35:04', '0000-00-00 00:00:00'),
(227, 107, '2014-05-14 22:05:27', '2014-05-14 22:43:47'),
(228, 108, '2015-07-31 15:17:53', '0000-00-00 00:00:00'),
(229, 108, '2015-08-03 15:14:09', '2015-08-03 15:41:52'),
(230, 109, '2015-08-03 15:42:20', '0000-00-00 00:00:00'),
(231, 108, '2015-08-04 16:10:48', '2015-08-04 16:15:00'),
(232, 108, '2015-08-05 20:15:57', '2015-08-05 20:16:12'),
(233, 109, '2015-08-05 20:16:44', '2015-08-05 20:19:12'),
(234, 108, '2015-08-05 20:19:17', '2015-08-05 22:41:08'),
(235, 108, '2015-08-05 22:26:44', '2015-08-05 22:31:35'),
(236, 109, '2015-08-05 22:31:40', '2015-08-05 22:32:09'),
(237, 108, '2015-08-05 22:32:15', '0000-00-00 00:00:00'),
(238, 109, '2015-08-05 22:41:13', '2015-08-05 23:44:07'),
(239, 108, '2015-09-01 17:21:06', '0000-00-00 00:00:00'),
(240, 108, '2015-09-03 00:53:08', '0000-00-00 00:00:00'),
(241, 78, '2015-09-03 16:30:53', '0000-00-00 00:00:00'),
(242, 108, '2015-09-03 16:31:01', '0000-00-00 00:00:00'),
(243, 78, '2015-09-03 22:25:43', '0000-00-00 00:00:00'),
(244, 108, '2015-09-03 22:25:51', '2015-09-03 22:27:17'),
(245, 108, '2015-09-03 22:29:55', '0000-00-00 00:00:00'),
(246, 108, '2015-09-09 14:14:19', '2015-09-09 14:16:25'),
(247, 108, '2015-09-09 14:17:48', '0000-00-00 00:00:00'),
(248, 108, '2015-09-10 13:11:04', '0000-00-00 00:00:00'),
(249, 108, '2015-09-11 14:17:58', '2015-09-11 14:39:23'),
(250, 108, '2015-09-11 16:44:21', '2015-09-11 16:44:27'),
(251, 108, '2015-09-14 13:19:52', '0000-00-00 00:00:00'),
(252, 108, '2015-09-15 16:36:26', '2015-09-15 17:50:01'),
(253, 108, '2015-09-16 17:01:56', '0000-00-00 00:00:00'),
(254, 108, '2015-09-18 13:28:58', '0000-00-00 00:00:00'),
(255, 108, '2015-09-18 15:50:36', '0000-00-00 00:00:00'),
(256, 108, '2015-09-21 13:23:27', '0000-00-00 00:00:00'),
(257, 108, '2015-09-22 16:05:35', '2015-09-22 17:19:37'),
(258, 108, '2015-09-23 13:47:01', '2015-09-23 14:21:43'),
(259, 108, '2015-09-23 14:21:55', '0000-00-00 00:00:00'),
(260, 108, '2015-09-24 13:19:05', '2015-09-24 17:03:33'),
(261, 110, '2015-09-24 17:04:14', '2015-09-24 17:06:03'),
(262, 108, '2015-09-24 17:04:50', '2015-09-24 17:06:51'),
(263, 108, '2015-09-24 17:06:07', '0000-00-00 00:00:00'),
(264, 110, '2015-09-24 17:06:55', '0000-00-00 00:00:00'),
(265, 108, '2015-09-25 01:31:42', '0000-00-00 00:00:00'),
(266, 108, '2015-09-25 14:02:37', '2015-09-25 15:24:18'),
(267, 108, '2015-09-25 15:25:08', '0000-00-00 00:00:00'),
(268, 110, '2015-09-25 18:36:13', '0000-00-00 00:00:00'),
(269, 108, '2015-09-26 17:52:28', '0000-00-00 00:00:00'),
(270, 108, '2015-10-02 02:01:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talentos`
--

CREATE TABLE IF NOT EXISTS `talentos` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `talento` int(4) unsigned DEFAULT '1',
  `experiencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechatalentos` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `perfil2` int(10) NOT NULL,
  `profesion2` int(10) NOT NULL DEFAULT '1',
  `perfil3` int(10) NOT NULL,
  `profesion3` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `talentos`
--

INSERT INTO `talentos` (`id`, `idusuario`, `talento`, `experiencia`, `fechatalentos`, `perfil2`, `profesion2`, `perfil3`, `profesion3`) VALUES
(7, 58, 12, 'Periodista en una agencia de noticias.', '2014-04-22 01:10:15', 0, 1, 0, 1),
(8, 70, 27, '', '2014-04-22 06:30:46', 0, 1, 0, 1),
(9, 85, 3, 'Reina Afrodescendiente 2012-2013, vocalista de la banda TIMKA y  BOGOTÃ D.C FUNK, bailarina, actriz y presentadora', '2014-04-23 05:41:20', 0, 1, 0, 1),
(10, 88, 2, 'Modelo y Boxeador', '2014-04-25 22:17:11', 0, 1, 0, 1),
(11, 89, 20, '', '2014-04-26 04:29:05', 0, 1, 0, 1),
(12, 105, 4, 'coreografo, instructor y bailarÃ­n profesional en diferentes ritmos, con un gran enfasis en salsa, con una trayectoria de mas de 10 aÃ±os.', '2014-05-08 22:45:43', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE IF NOT EXISTS `tecnicos` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `area` int(4) unsigned NOT NULL DEFAULT '1' COMMENT 'Tecnicoen',
  `experiencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'experiencia',
  `fechatecnicos` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `perfil2` int(10) NOT NULL,
  `profesion2` int(10) NOT NULL DEFAULT '1',
  `perfil3` int(10) NOT NULL,
  `profesion3` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `idusuario`, `area`, `experiencia`, `fechatecnicos`, `perfil2`, `profesion2`, `perfil3`, `profesion3`) VALUES
(9, 51, 1, 'En Edwin sport. Tibiritabara. Saboreo spress. La clave salsa bar. Como propietario..', '2014-04-15 16:49:44', 0, 1, 0, 1),
(10, 62, 1, '', '2014-04-22 03:10:36', 0, 1, 0, 1),
(11, 63, 1, '', '2014-04-22 03:48:43', 0, 1, 0, 1),
(12, 75, 37, 'Trabaje 9 meses en envÃ­a colvanes', '2014-04-22 14:50:10', 0, 1, 0, 1),
(13, 78, 1, '', '2014-04-22 18:03:01', 0, 1, 0, 1),
(14, 79, 1, '', '2014-04-22 18:05:17', 0, 1, 0, 1),
(15, 82, 1, 'Primera Infancia', '2014-04-23 01:34:35', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(8) unsigned NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `clave` char(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechausuarios` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Solo creacion, no se actualiza',
  `recuperarcontra` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `fechausuarios`, `recuperarcontra`) VALUES
(32, 'Diego Alejandro', 'Clavijo Leal', 'daclavijol@unal.edu.co', 'Oga2lI1unZqu6', '2014-03-29 06:06:26', ''),
(33, 'Luis', 'Pena', 'lupena1980@gmail.com', 'OgyVfhQERejxM', '2014-03-29 21:46:29', ''),
(34, 'Jhon Carlos', 'Charrupi', 'jcchp0@gmail.com', 'OgE0U9DMccZ.U', '2014-03-30 00:52:07', ''),
(35, 'Rey', 'Guerrero', 'fundecan@hotmail.com', 'OgSr0Thh60gDY', '2014-04-02 03:17:12', ''),
(36, 'Eddi Xavier', 'BermÃºdez Marcelin', 'eddi_xavier@yahoo.com', 'Og6bJjggH4F8c', '2014-04-04 16:54:12', ''),
(37, 'moise', 'ntambwe', 'moisentambwe2005@yahoo.fr', 'OgyirN1NBECIM', '2014-04-08 23:03:53', ''),
(38, 'John ', 'Clarke', 'johnclarke2002@gmail.com', 'OgbFfuanveCwo', '2014-04-09 20:48:18', ''),
(39, 'Manuel DarÃ­o', 'CÃ³rdoba Mosquera', 'manuel.cordoba@sieh.com.co', 'OgYgmi61ibVa2', '2014-04-09 20:52:09', ''),
(40, 'Juan Fernando ', 'Quejada SÃ¡nchez ', 'negro_juanfer@hotmail.com', 'Og0VZjBKBjSzc', '2014-04-11 00:10:09', ''),
(41, 'Jimmy', 'Romero Rodriguez', 'maxpenjr@hotmail.com', 'Og6Jo1p6fH.Ms', '2014-04-11 02:41:39', ''),
(42, 'Natalia ', 'Moore DÃ­az', 'nmoore054@gmail.com', 'Og7pKmv1KKiiM', '2014-04-11 16:44:41', ''),
(43, 'carlos augusto', 'peÃ±a mina', 'capm19@hotmail.com', 'Og0d5VB6jPX3g', '2014-04-11 23:46:42', ''),
(44, 'Leonell', 'Hinestroza Hernandez', 'leonhines@gmail.com', 'OgbkjR1N4QdNU', '2014-04-12 01:23:56', ''),
(45, 'Nur Fannery', 'Valencia  Mosquera', 'nufavamo@gmail.com', 'Og2cTc0KQxW5M', '2014-04-12 05:04:33', ''),
(46, 'Danitza', 'Palacios Lozano', 'dapalo238@hotmail.com', 'Og3M/VpxdtIaE', '2014-04-12 14:02:26', ''),
(47, 'Yully Andrea', 'Moreno RodrÃ­guez ', 'yullyand.mo@gmail.com', 'OgWFy0CLOm15c', '2014-04-13 16:01:35', ''),
(48, 'Alejandra', 'Nieto', 'alejandraenieto@gmail.com', 'OgyI4kTSsl9/E', '2014-04-13 21:57:07', ''),
(49, 'Tatiana ', 'Bonilla', 'tanbose1@gmail.com', 'OguiQlZdtueSs', '2014-04-14 22:04:07', ''),
(50, 'Martha Juanita', 'Nieto', 'marthajnieto@gmail.com', 'Og6uQKM.uktzQ', '2014-04-14 22:04:38', ''),
(51, 'edwin', 'chaverra', 'edwinanamaria26@hotmail.com', 'OgEADBa7A4G5M', '2014-04-15 16:34:50', ''),
(52, 'Olga Luz', 'Atencia Herrera', 'olah30@gmail.com', 'OgwIRlVZXb6dY', '2014-04-17 02:13:54', ''),
(53, 'Ray', 'Charrupi', 'rayabogado@gmail.com', 'OgZ6fNenbgeds', '2014-04-22 00:05:53', ''),
(54, 'Maria del Pilar', 'Rodriguez', 'mapyrodriguezs@yahoo.com', 'Og0tMdPj1vHIg', '2014-04-22 00:38:00', ''),
(55, 'Santiago ', 'Pizza Varela', 'music-films@hotmail.com', 'OgnakBwt.qvM6', '2014-04-22 00:40:47', ''),
(56, 'Francis', 'Palacios', 'francix@outlook.com', 'OgXMhgJ9s6iJU', '2014-04-22 00:41:08', ''),
(57, 'cesar alexis', 'obregon hurtado', 'ceaoh@hotmail.com', 'OgMHfPO3B2h06', '2014-04-22 00:53:20', ''),
(58, 'Carlos Andres', 'Hurtado QuiÃ±ones', 'misterclear13@gmail.com', 'Ogb9lqcCbDMKc', '2014-04-22 01:08:04', ''),
(59, 'Catherine', 'Mina Santana', 'catherine.mina@gmail.com', 'OgV37Q.7f432.', '2014-04-22 01:14:30', ''),
(60, 'Genyer', 'Manyoma', 'genyerman@yahoo.com', 'OgaNl4tFZuN56', '2014-04-22 02:25:53', ''),
(61, 'Alfredo', 'Lorduy Bolivar', 'alfredolorduy@gmail.com', 'Ogr32cpRel9WE', '2014-04-22 02:31:40', ''),
(62, 'claudia ximena', 'vasquez zuÃ±iga', 'claximena980@gmail.com', 'OgVbfHtETj/po', '2014-04-22 03:10:36', ''),
(63, 'Catalina', 'CuenÃ¹ Mosquera', 'catalinacuenu@hotmail.com', 'OggqSvsup2uK.', '2014-04-22 03:48:43', ''),
(64, 'Luciano ', 'popÃ³ GonzÃ¡lez ', 'lucianopopog2471@hotmail.com', 'Og8QFmfUBnaFg', '2014-04-22 04:05:31', ''),
(65, 'MarÃ­a Isabel ', 'Tegue banguero', 'isabelbanguero@hotmail.com', 'OgiuFf6fUDSx.', '2014-04-22 04:45:39', ''),
(66, 'VICTOR ALFONSO ', 'BARRERA MIRANDA', 'VICTORBMA@HOTMAIL.COM', 'OgEtK9fKrg6ds', '2014-04-22 04:58:44', ''),
(67, 'Enrique ', 'Hurtado Garcia', 'enrikehurtado@gmail.com', 'OgH.vy99fAVb.', '2014-04-22 04:59:12', ''),
(68, 'oscar arnul', 'fernandez', 'osarfe@hotmail.com', 'Og7TH5QOFp5ZY', '2014-04-22 05:17:17', ''),
(69, 'Yefferson', 'Santos Ortiz', 'Santosmzbt@hotmail.com', 'OgBahHVN7tHrI', '2014-04-22 05:52:56', ''),
(70, 'David ', 'Sinza Salcedo', 'realdave@hotmail.es', 'Ogra4mNEnHXCw', '2014-04-22 06:13:59', ''),
(71, 'HORACIO ANTONIO ', 'LEITON CORTEZ', 'hoalco2006@yahoo.es', 'Og1w7nJzOQpN6', '2014-04-22 07:57:22', ''),
(72, 'johnny', 'sanchez', 'johnsas45@gmail.com', 'OgPrpBi1hCM1k', '2014-04-22 11:10:34', ''),
(73, 'fabiola', 'mosquera caicedo', 'fabiolacaicedo2@hotmail.com', 'Oggfrm2haieoU', '2014-04-22 12:08:41', ''),
(74, 'LEYDI YULIETH ', 'REYES GUAZA ', 'alexleydi18@hotmail.com', 'OgNBsjWXvD56M', '2014-04-22 12:47:34', ''),
(75, 'bria liana', 'ibarguen mosquera', 'bria_eliana@hotmail.com', 'Ogjwk7Y9yc8aU', '2014-04-22 14:46:34', ''),
(76, 'Diego', 'Castillo', 'castillo_diego@hotmail.com', 'OgF7liSQmeQyk', '2014-04-22 15:42:52', ''),
(77, 'Jackeline ', 'Salazar SÃ¡nchez ', 'jackelinesas@yahoo.com', 'OgHeziBrmDf9U', '2014-04-22 16:58:37', ''),
(110, 'kevin', 'ramirez', 'kevin@hotmail.com', 'OgT7BQihtCgNE', '2015-09-24 17:04:14', ''),
(79, 'adriana ', 'Torres Rodriguez', 'adrito6231@hotmail.com', 'Ogh9/aU4IKBdM', '2014-04-22 18:05:17', ''),
(80, 'ligia maria', 'beltran ibarra', 'lima_beltran@hotmail.com', 'OgaBQ1WwrR5Is', '2014-04-22 23:37:56', ''),
(81, 'MARIO ALEJANDRO', 'GOMEZ MINA', 'wariosa8405@gmail.com', 'OgFFE3TF2dDTU', '2014-04-23 00:11:06', ''),
(82, 'Oscar Eduardo', 'Mostacilla Perez', 'oscar_eduar08@yahoo.es', 'Ogrxg879FUJCI', '2014-04-23 01:27:56', ''),
(83, 'Eduard', 'Mina', 'eduardmina@gmail.com', 'Og6JnpcEV5zsU', '2014-04-23 02:45:51', ''),
(84, 'janner', 'MORENO HURTADO', 'jannerhurtado@hotmail.com', 'OgHvHM37zVnlg', '2014-04-23 02:50:09', ''),
(85, 'Stephy Loren', 'Renteria', 'stephyloren99@hotmail.com', 'OgCiHF7UI5HCo', '2014-04-23 05:33:09', ''),
(86, 'MIGUEL', 'OBESO MIRANDA', 'obeso.miguel@gmail.com', 'OgV3f7IfYXof2', '2014-04-23 17:57:42', ''),
(87, 'Jose Manuel ', 'Perea GarcÃ©s', 'josemanuelperea@hotmail.com', 'Ogc7idsgWHpjE', '2014-04-25 19:05:06', ''),
(88, 'Henrry Yair ', 'Auraad Rodriguez', 'mambabox25@hotmail.com', 'Ogx1Cz0.qnjeI', '2014-04-25 22:05:42', ''),
(89, 'Luisa Fernanda', 'Carabali Mosquera', 'hermesindamosquera@gmail.com', 'Og4mLTnFSOgRc', '2014-04-26 03:56:29', ''),
(90, 'Pedro Pablo', 'Gutierrez Valencia', 'pedrogutierrezv@gmail.com', 'Og6twWwJm8t.k', '2014-04-26 21:46:11', ''),
(91, 'LUZ ANGELICA', 'MORENO TOVAR', 'LUZANGELICA19831@HOTMAIL.COM', 'Ogil5pbDEpRek', '2014-04-27 16:44:18', ''),
(92, 'Diego', 'Clavijo', 'ing.diego.clavijo@gmail.com', 'Oga2lI1unZqu6', '2014-04-28 15:06:40', ''),
(93, 'Vanessa ', 'Alis', 'vanessita_ao@hotmail.com', 'OgICo54JBUww2', '2014-04-30 04:48:53', ''),
(94, 'Luis Abdel', 'Pino Copete', 'ing.lpino@gmail.com', 'Ogzsh86oC.l/c', '2014-05-01 00:13:20', ''),
(95, 'Lina ', 'Moreno', 'lina.morenorodriguez@gmail.com', 'OgE9NC/.xIuWA', '2014-05-01 02:17:42', ''),
(96, 'Katheerin', 'Paz', 'morenpaus@gmail.com', 'Og6R6xPyzjTnw', '2014-05-02 23:57:14', ''),
(97, 'henrry yair ', 'auraad rodriguez ', 'MAMABOX25@HOTMAIL.COM', 'Og0IOiuPtELLQ', '2014-05-05 22:12:44', ''),
(98, 'Juvencio ', 'Lozano JR', 'jlozanomaya@gmail.com', 'OgJGUpJa/Pl9A', '2014-05-07 18:15:21', ''),
(99, 'Nora Elena ', 'Angulo Mina', 'neam310@hotmail.com', 'OgI2MRo.TV5JI', '2014-05-08 01:28:45', ''),
(100, 'Rey', 'Guerrero', 'fundecan08@hotmail.com', 'OgSr0Thh60gDY', '2014-05-08 01:52:24', ''),
(101, 'YUDI TATIANA ', 'MINA MANCILLA ', 'yuta829@hotmail.com', 'OgGgo4/YOqmlw', '2014-05-08 03:10:13', ''),
(102, 'MITCHELL ', 'CARDONA', 'mitchellcardona01@gmail.com', 'OgA4.t6dcOx4M', '2014-05-08 03:18:41', ''),
(103, 'Juan', 'Silva', 'juan@8605.co', 'OgH3kSpR7UGfw', '2014-05-08 03:26:58', ''),
(104, 'Luisa Fernanda', 'Mina PeÃ±a', 'luisis129@hotmail.com', 'OgtlqPqmZlupQ', '2014-05-08 17:07:51', ''),
(105, 'luis miguel', 'carabali chamorro', 'luismicarabalo@hotmail.com', 'OgHh7Gh6wiMSI', '2014-05-08 22:40:56', ''),
(106, 'JuliÃ¡n', 'Angulo Angulo', 'julian.angulo@upr.edu', 'OgJlWsfKtg8kk', '2014-05-09 19:26:29', ''),
(107, 'Paula Andrea', 'Angulo Garcia', 'paulan.84@hotmail.com', 'OgMUrHY0giyI6', '2014-05-14 22:05:27', ''),
(108, 'kevin andres', 'ramirez alzate', 'kramirez70@misena.edu.co', 'OgT7BQihtCgNE', '2015-07-31 15:17:53', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `puntuacion` int(8) unsigned NOT NULL DEFAULT '0',
  `video` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechavideos` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `idusuario`, `titulo`, `descripcion`, `lugar`, `puntuacion`, `video`, `fechavideos`) VALUES
(1, 0, 'Proyecto Oggun', '', '', 100, '', '2014-03-30 21:32:38'),
(3, 32, 'Look Inside', 'Un video de Intel muy interesante. No es de mi propiedad.', 'Sudan, Africa', 2, 'ol19tt3VWhQ', '2014-05-14 22:43:30'),
(7, 38, 'African American Universities', 'The Morehouse Experience. ', 'Washington D. C., Distrito de Columbia, Estados Unidos', 0, 'Ng20KTQ9yno', '2014-04-09 20:55:39'),
(8, 36, 'Arte y Cultura motores de desarrollo SocioEconÃ³mi', 'Entrevista realizada en el marco del Simposio Arte y Cultura, motores de desarrollo socio econÃ³mico que tuvo lugar el 6 Diciembre de 2013, se abre un espacio al pÃºblico e invitados locales, nacionales e internacionales, para presentar sus puntos de vist', 'Cali - Valle del Cauca, Colombia', 0, 'F728uvDC1rQ', '2014-04-11 16:56:02'),
(16, 70, 'VÃ­deo Sin TÃ­tulo', '', '', 0, '', '2014-04-22 06:36:33'),
(17, 70, 'VÃ­deo Sin TÃ­tulo', '', '', 0, 'hrLVCqVyado', '2014-04-22 06:43:29'),
(18, 70, 'Tura Style 2', 'Este producto esta enfatizado en la problemÃ¡tica que viene enfrentando la ciudad de Buenaventura. Dirigido a forÃ¡neos  y nativos Bonaverenses que directa e indirectamente se encuentran afligidos por este conflicto armado, econÃ³mico, polÃ­tico y cultura', 'Buenaventura, Valle del Cauca, Colombia', 0, 'LavP8MwjdEE', '2014-04-22 06:40:01'),
(19, 70, 'Tura Style ', 'This is da Tura Style, es una produccion audiovisual urbana que refleja la incoformidad de los artistas urbanos de la ciudad ante la mala imagen que tiene Buenaventura para el mundo.', 'Buenaventura, Valle del Cauca, Colombia', 0, 'V3VxK_u6ULs', '2014-04-22 06:35:59'),
(20, 70, 'Documental Hip Hop Vivencias / Buenaventura', '', 'Buenaventura, Valle del Cauca, Colombia', 3, 'hrLVCqVyado', '2014-04-24 21:34:41'),
(21, 34, 'QuÃ© es OGGUN', 'Esta es una breve explicaciÃ³n de quÃ© es OGGUN, cÃ³mo funciona, y todas las ventajas que ofrece', 'BogotÃ¡', 100, 'rTXFWL76bKY', '2014-04-24 22:00:08'),
(31, 34, 'QuÃ© puedes hacer en Oggun', 'Una descripciÃ³n animada de lo que puedes hacer y lograr por medio de OGGUN', 'BogotÃ¡, Colombia', 0, 'sAR78QZtnjA', '2014-04-24 18:58:06'),
(33, 34, 'QuÃ© es OGGUN', 'quÃ© puedes hacer en OGGUN y cÃ³mo funciona', 'BogotÃ¡, Colombia', 0, '6VPNbJuO-nw', '2014-04-30 22:40:47'),
(34, 100, 'REY GUERRERO PESCADERIA', 'COMIDA DEL PACIFICO GOURMET', 'BogotÃ¡, Colombia', 0, '93OCFKCUdes', '2014-05-08 02:33:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votosvideos`
--

CREATE TABLE IF NOT EXISTS `votosvideos` (
`id` int(8) unsigned NOT NULL,
  `idvideo` int(8) unsigned NOT NULL,
  `idusuario` int(8) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `votosvideos`
--

INSERT INTO `votosvideos` (`id`, `idvideo`, `idusuario`, `fecha`) VALUES
(4, 3, 32, '2014-04-04 17:42:57'),
(6, 3, 34, '2014-04-04 22:27:26'),
(7, 17, 70, '2014-04-22 06:40:55'),
(8, 3, 73, '2014-04-22 12:36:43'),
(9, 21, 34, '2014-04-22 23:55:31'),
(10, 20, 34, '2014-04-23 00:03:37'),
(11, 20, 32, '2014-04-24 21:34:41'),
(12, 3, 107, '2014-05-14 22:43:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `id_3` (`id`,`idusuario`,`idamigo`), ADD UNIQUE KEY `idusuario_2` (`idusuario`,`idamigo`), ADD KEY `id_2` (`id`), ADD KEY `idusuario` (`idusuario`), ADD KEY `idamigo` (`idamigo`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chatmensaje`
--
ALTER TABLE `chatmensaje`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chatpersona`
--
ALTER TABLE `chatpersona`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_2` (`id`,`idusuario`), ADD UNIQUE KEY `id_3` (`id`,`idusuario`), ADD KEY `id` (`id`), ADD KEY `id_4` (`id`,`idusuario`);

--
-- Indices de la tabla `listaocupacion`
--
ALTER TABLE `listaocupacion`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `listaoficios`
--
ALTER TABLE `listaoficios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `listaotrasprofesiones`
--
ALTER TABLE `listaotrasprofesiones`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `idusuario` (`idusuario`), ADD KEY `idusuario_2` (`idusuario`);

--
-- Indices de la tabla `listaotrosocupacion`
--
ALTER TABLE `listaotrosocupacion`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `idusuario` (`idusuario`), ADD UNIQUE KEY `idusuario_4` (`idusuario`), ADD KEY `idusuario_2` (`idusuario`), ADD KEY `idusuario_3` (`idusuario`), ADD KEY `idusuario_5` (`idusuario`), ADD KEY `idusuario_6` (`idusuario`);

--
-- Indices de la tabla `listaotrosoficios`
--
ALTER TABLE `listaotrosoficios`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `idusuario_2` (`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `listaotrostalentos`
--
ALTER TABLE `listaotrostalentos`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `idusuario` (`idusuario`), ADD KEY `idusuario_2` (`idusuario`);

--
-- Indices de la tabla `listaotrostecnicos`
--
ALTER TABLE `listaotrostecnicos`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `idusuario` (`idusuario`), ADD KEY `idusuario_2` (`idusuario`);

--
-- Indices de la tabla `listaprofesiones`
--
ALTER TABLE `listaprofesiones`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `id_3` (`id`);

--
-- Indices de la tabla `listatalentos`
--
ALTER TABLE `listatalentos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `listatecnicos`
--
ALTER TABLE `listatecnicos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `id_3` (`id`), ADD KEY `idusuario` (`idusuario`), ADD KEY `idremitente` (`idremitente`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idusuario` (`idusuario`), ADD KEY `id` (`id`), ADD KEY `idusuario_2` (`idusuario`);

--
-- Indices de la tabla `oficios`
--
ALTER TABLE `oficios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`,`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `id_2` (`id`,`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `profesionales`
--
ALTER TABLE `profesionales`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`,`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `talentos`
--
ALTER TABLE `talentos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`,`idusuario`), ADD UNIQUE KEY `id_2` (`id`,`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`,`idusuario`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_2` (`id`,`correo`), ADD KEY `id` (`id`), ADD KEY `correo` (`correo`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_3` (`id`), ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `votosvideos`
--
ALTER TABLE `votosvideos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `idvideo` (`idvideo`), ADD KEY `idusuario` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amigos`
--
ALTER TABLE `amigos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `chatmensaje`
--
ALTER TABLE `chatmensaje`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `chatpersona`
--
ALTER TABLE `chatpersona`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT de la tabla `listaocupacion`
--
ALTER TABLE `listaocupacion`
MODIFY `id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `listaoficios`
--
ALTER TABLE `listaoficios`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `listaprofesiones`
--
ALTER TABLE `listaprofesiones`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `listatalentos`
--
ALTER TABLE `listatalentos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `listatecnicos`
--
ALTER TABLE `listatecnicos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `oficios`
--
ALTER TABLE `oficios`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `profesionales`
--
ALTER TABLE `profesionales`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT de la tabla `talentos`
--
ALTER TABLE `talentos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `votosvideos`
--
ALTER TABLE `votosvideos`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
