-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-04-2019 a las 11:53:15
-- Versión del servidor: 10.0.27-MariaDB-cll-lve
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `xat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `missatges`
--

CREATE TABLE IF NOT EXISTS `missatges` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuari` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `missatge`
--

INSERT INTO `missatges` (`id`, `usuari`, `text`, `hora`) VALUES
(1, 'Homer', 'I''m like that guy, that Spanish guy.\r\nYou know, he fought the windmills.', '10:34:13'),
(2, 'Marge', 'Don Quixote?', '10:36:22'),
(3, 'Homer', 'No, that''s not it. What''s his name?\r\n"The Man of La Mancha."', '10:36:49'),
(4, 'Marge', 'Don Quixote', '10:37:30'),
(5, 'Homer', 'No!', '10:38:04'),
(6, 'Marge', 'Adios!!!', '12:28:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_tresUltimos`
--

CREATE TABLE IF NOT EXISTS `vista_tresUltimos` (
  `id` int(10) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `text` text,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
