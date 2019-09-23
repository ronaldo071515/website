-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2019 a las 00:49:22
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agrocontable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(50) DEFAULT NULL,
  `tipo` char(20) DEFAULT NULL,
  `numero` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `telefono` bigint(11) DEFAULT NULL,
  `direccion` char(50) DEFAULT NULL,
  `representante` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `tipo`, `numero`, `email`, `telefono`, `direccion`, `representante`) VALUES
(1, 'Ronaldo', 'Cedula', '1093887224', 'rtorres66@misena.edu.co', 2147483647, 'AV-4', 'legal'),
(2, 'SAN EDUARDO', 'tipo', '1111', 'sanedu@gmail.com', 11111, 'calle-4', 'eduard'),
(3, 'SAN EDUARDO', 'tipo', '11221', 'caceresderonaldo2015@gmail.com', 21221, '22121', 'ffffffffff'),
(4, 'SAN EDUARDO', 'Nit', '121', 'sanedu@gmail.com', 222, 'av -4-N-P Sol', 'eduard'),
(5, 'Ronal', 'Cedula', '1', '11', 11, '111', 'll'),
(6, 'Juan', 'Cedula', '100090081', 'juan@gmail.com', 2147483647, 'av 4-54 calle 1', 'juan'),
(7, 'Juan', 'Cedula', '100090081', 'juan@gmail.com', 3114811701, 'av 4-54 calle 1', 'juan'),
(8, 'Sergio', 'Cedula', '1094', 'miempresa@gmail.com', 32213, 'av-4 n 9-9', 'yo'),
(9, 'g', 'Cedula', '1221', 'caceresderonaldo2015@gmail.com', 123, 'av-4 n 9-9', 'Raul Bustamante'),
(10, 'g', 'Cedula', '1221', 'caceresderonaldo2015@gmail.com', 123, 'av-4 n 9-9', 'Raul Bustamante'),
(11, 'g', 'Nit', '11', 'miempresa@gmail.com', 222, '111', 'yo'),
(12, 'Juan', 'Cedula', '1010', 'miempresa@gmail.com', 3222, '12223', 'rsk'),
(13, 'Juan', 'Cedula', '1010', 'miempresa@gmail.com', 3222, '12223', 'rsk');
--
-- Base de datos: `almacen_electrodomesticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `numero_factura_fk` int(10) DEFAULT NULL,
  `serial_fk` int(10) DEFAULT NULL,
  `cantidad_vendidad` int(10) DEFAULT NULL,
  KEY `numero_factura_fk` (`numero_factura_fk`),
  KEY `serial_fk` (`serial_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`numero_factura_fk`, `serial_fk`, `cantidad_vendidad`) VALUES
(3215, 1, 2),
(3215, 3, 2),
(3215, 4, 1),
(3216, 1, 1),
(3216, 2, 2),
(3216, 4, 1),
(3217, 3, 2),
(3217, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electrodomesticos`
--

CREATE TABLE IF NOT EXISTS `electrodomesticos` (
  `serial` int(10) NOT NULL,
  `nombre_electrodomestico` varchar(20) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `precio_compra` float DEFAULT NULL,
  `precio_venta` float DEFAULT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `electrodomesticos`
--

INSERT INTO `electrodomesticos` (`serial`, `nombre_electrodomestico`, `cantidad`, `precio_compra`, `precio_venta`) VALUES
(1, 'VENTILADOR', 5, 60000, 80000),
(2, 'TELEVISOR 20"', 10, 350000, 500000),
(3, 'TELEVISOR 24"', 8, 500000, 700000),
(4, 'LICUADORA', 15, 20000, 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `numero_factura` int(10) NOT NULL,
  `fecha_factura` date DEFAULT NULL,
  `forma_de_pago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numero_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`numero_factura`, `fecha_factura`, `forma_de_pago`) VALUES
(3215, '2001-02-01', 'EFECTIVO'),
(3216, '2001-02-12', 'EFECTIVO'),
(3217, '2001-03-02', 'TARJETA');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `numero_factura_fk` FOREIGN KEY (`numero_factura_fk`) REFERENCES `factura` (`numero_factura`),
  ADD CONSTRAINT `serial_fk` FOREIGN KEY (`serial_fk`) REFERENCES `electrodomesticos` (`serial`);
--
-- Base de datos: `bancoguia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `NumCuenta` int(11) NOT NULL,
  `numCedula` int(11) NOT NULL,
  `Titular` varchar(20) NOT NULL,
  `Saldo` int(11) NOT NULL,
  `FechaApertura` date NOT NULL,
  `Estado` varchar(15) NOT NULL,
  PRIMARY KEY (`NumCuenta`),
  KEY `numCedulafk` (`numCedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`NumCuenta`, `numCedula`, `Titular`, `Saldo`, `FechaApertura`, `Estado`) VALUES
(1234, 1093887224, 'Juanito', 2000, '2019-07-30', 'abierta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_in`
--

CREATE TABLE IF NOT EXISTS `usuarios_in` (
  `Cedula_Usu` int(11) NOT NULL,
  `Nombre_Usu` varchar(30) NOT NULL,
  `Apellido_Usu` varchar(30) NOT NULL,
  `Telefono_Usu` varchar(10) DEFAULT NULL,
  `Clave` varchar(50) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Tipo_Usu` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Cedula_Usu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_in`
--

INSERT INTO `usuarios_in` (`Cedula_Usu`, `Nombre_Usu`, `Apellido_Usu`, `Telefono_Usu`, `Clave`, `Usuario`, `Tipo_Usu`) VALUES
(1093887224, 'Ronaldo', 'Torres Caceres', '2147483647', '12345', 'elperro', 'administrador');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `numCedulafk` FOREIGN KEY (`numCedula`) REFERENCES `usuarios_in` (`Cedula_Usu`);
--
-- Base de datos: `bd`
--
--
-- Base de datos: `bibliotecar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `CodAutor` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`CodAutor`, `Nombre`, `Apellido`) VALUES
(10, 'juan', 'sin miedo'),
(11, 'elver', 'ga larga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallelibro`
--

CREATE TABLE IF NOT EXISTS `detallelibro` (
  `CodLibro_FK` int(11) DEFAULT NULL,
  `CodTemaFK` int(11) DEFAULT NULL,
  KEY `Cod_libro_FK` (`CodLibro_FK`),
  KEY `CodtemFK` (`CodTemaFK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallelibro`
--

INSERT INTO `detallelibro` (`CodLibro_FK`, `CodTemaFK`) VALUES
(1, 101),
(2, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
  `CodLibro` int(11) NOT NULL,
  `Titulo` varchar(30) DEFAULT NULL,
  `Pag` varchar(10) DEFAULT NULL,
  `Editorial` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`CodLibro`, `Titulo`, `Pag`, `Editorial`) VALUES
(1, 'la bella y la bestia', '10', 'norma'),
(2, 'de el amor y otros demonios', '15', 'normita'),
(3, 'java fx', '10', 'norma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libroautor`
--

CREATE TABLE IF NOT EXISTS `libroautor` (
  `CodLibro_fk` int(11) DEFAULT NULL,
  `CodAutorfk` int(11) DEFAULT NULL,
  KEY `CodLibroFK` (`CodLibro_fk`),
  KEY `CodAutorfk` (`CodAutorfk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libroautor`
--

INSERT INTO `libroautor` (`CodLibro_fk`, `CodAutorfk`) VALUES
(1, 10),
(2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE IF NOT EXISTS `prestamo` (
  `CodLibro_FK` int(11) DEFAULT NULL,
  `NumCedulaFK` int(11) DEFAULT NULL,
  `FechaPrestamo` date DEFAULT NULL,
  `FechaDevolucion` date DEFAULT NULL,
  KEY `CodLibro_FK` (`CodLibro_FK`),
  KEY `NumCedulaFK` (`NumCedulaFK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`CodLibro_FK`, `NumCedulaFK`, `FechaPrestamo`, `FechaDevolucion`) VALUES
(1, 1093887224, '2018-01-12', '2018-02-12'),
(2, 1093487225, '2018-02-10', '2018-02-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE IF NOT EXISTS `tema` (
  `CodTema` int(11) NOT NULL,
  `DetalleTema` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodTema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`CodTema`, `DetalleTema`) VALUES
(101, 'Matematicas'),
(102, 'Sql');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `NumCedula` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `TipoUsuario` varchar(30) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NumCedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`NumCedula`, `Nombre`, `Apellido`, `TipoUsuario`, `Edad`, `direccion`) VALUES
(1093487225, 'Benito', 'Camelas', 'Docente', 32, 'La Pastora'),
(1093887224, 'Ronaldo', 'Torres Cáceres', 'Estudiante', 18, 'prados del este');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallelibro`
--
ALTER TABLE `detallelibro`
  ADD CONSTRAINT `CodtemFK` FOREIGN KEY (`CodTemaFK`) REFERENCES `tema` (`CodTema`),
  ADD CONSTRAINT `Cod_libro_FK` FOREIGN KEY (`CodLibro_FK`) REFERENCES `libro` (`CodLibro`);

--
-- Filtros para la tabla `libroautor`
--
ALTER TABLE `libroautor`
  ADD CONSTRAINT `CodAutorfk` FOREIGN KEY (`CodAutorfk`) REFERENCES `autor` (`CodAutor`),
  ADD CONSTRAINT `CodLibroFK` FOREIGN KEY (`CodLibro_fk`) REFERENCES `libro` (`CodLibro`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `CodLibro_FK` FOREIGN KEY (`CodLibro_FK`) REFERENCES `libro` (`CodLibro`),
  ADD CONSTRAINT `NumCedulaFK` FOREIGN KEY (`NumCedulaFK`) REFERENCES `usuario` (`NumCedula`);
--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`usuario`, `clave`) VALUES
('ronaldo', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id_articulo` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `titulo_articulo` varchar(20) NOT NULL,
  `autor_articulo` varchar(10) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `contenido` varchar(999) NOT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `fecha`, `titulo_articulo`, `autor_articulo`, `imagen`, `contenido`) VALUES
(2, '2019-09-04', 'Nota', '', '../img/santiago4.JPG', 'Te explicamos quÃ© es un texto literario, su historia y los recursos expresivos que utiliza. AdemÃ¡s, su clasificaciÃ³n y caracterÃ­sticas. Los textos literarios ofrecen al lector abordajes subjetivos, libres y de contenido reflexivo.\r\nTe explicamos quÃ© es un texto literario, su historia y los recursos expresivos que utiliza. AdemÃ¡s, su clasificaciÃ³n y caracterÃ­sticas. Los textos literarios ofrecen al lector abordajes subjetivos, libres y de contenido reflexivo.\r\nTe explicamos quÃ© es un texto literario, su historia y los recursos expresivos que utiliza. AdemÃ¡s, su clasificaciÃ³n y caracterÃ­sticas. Los textos literarios ofrecen al lector abordajes subjetivos, libres y de contenido reflexivo.');
--
-- Base de datos: `colombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `ciudad`) VALUES
(1, 'cucuta'),
(2, 'bogota'),
(3, 'manizales');
--
-- Base de datos: `concesionario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automovil`
--

CREATE TABLE IF NOT EXISTS `automovil` (
  `placa` varchar(15) NOT NULL,
  `color` varchar(8) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `modelo` int(4) DEFAULT NULL,
  `precio_compra` int(12) DEFAULT NULL,
  `precio_venta` int(12) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `automovil`
--

INSERT INTO `automovil` (`placa`, `color`, `marca`, `modelo`, `precio_compra`, `precio_venta`) VALUES
('BUC-1222', 'verde', 'MAZDA', 1995, 10000000, 12000000),
('BUC-1234', 'gris', 'FIAT', 1992, 6000000, 7000000),
('CUC-1111', 'rojo', 'FIAT', 1990, 5000000, 6000000),
('CUC-1122', 'azul', 'CHEVETTE', 1993, 3000000, 4000000),
('TACHIRA-1235', 'gris', 'MAZDA', 1996, 15000000, 18000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `num_factura` int(6) NOT NULL,
  `placa` varchar(15) DEFAULT NULL,
  `fecha_factura` date DEFAULT NULL,
  `forma_pago` varchar(8) DEFAULT NULL,
  `cod_vendedor` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`num_factura`),
  KEY `placafk` (`placa`),
  KEY `cod_vendedor` (`cod_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_factura`, `placa`, `fecha_factura`, `forma_pago`, `cod_vendedor`) VALUES
(3215, 'BUC-1222', '1999-05-01', 'EFECTIVO', NULL),
(3216, 'CUC-1111', '1999-05-02', 'EFECTIVO', NULL),
(3217, 'TACHIRA-1235', '1999-05-02', 'EFECTIVO', NULL),
(3218, 'BUC-1234', '1999-05-03', 'TARJETA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE IF NOT EXISTS `vendedor` (
  `cod_vendedor` varchar(8) NOT NULL,
  `nombre_vendedor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cod_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`cod_vendedor`, `nombre_vendedor`) VALUES
('BUC0001', 'MARIO SOTO'),
('BUC0002', 'JAVIER PEÑARANDA'),
('CUC0001', 'JUAN PEREZ'),
('CUC0002', 'ANA BUSTAMANTE');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cod_vendedor`) REFERENCES `vendedor` (`cod_vendedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `placafk` FOREIGN KEY (`placa`) REFERENCES `automovil` (`placa`);
--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`id`, `titulo`, `descripcion`, `fecha`) VALUES
(2, 'Titulo', 'tarea 3', '2019-09-11 16:08:54');
--
-- Base de datos: `data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datas`
--

CREATE TABLE IF NOT EXISTS `datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `surename` varchar(40) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `fovorite_food` varchar(60) DEFAULT NULL,
  `favorite_sport` varchar(60) DEFAULT NULL,
  `level_education` varchar(15) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `temperament` varchar(20) DEFAULT NULL,
  `caracter` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `datas`
--

INSERT INTO `datas` (`id`, `name`, `surename`, `age`, `fovorite_food`, `favorite_sport`, `level_education`, `religion`, `temperament`, `caracter`) VALUES
(1, 'ronaldo', 'Torres Caceres', 20, 'arroz', 'ciclismo', 'tecnico', 'catolico', 'Alegre', 'Timido');
--
-- Base de datos: `database_link`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `description`, `user_id`, `create_at`) VALUES
(2, 'Youtube', 'https://youtube.com', 'mi herramienta de aprendizaje', NULL, '2019-08-22 13:21:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de datos: `excel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE IF NOT EXISTS `datos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `valor` varchar(10) DEFAULT NULL,
  `cantidad` varchar(10) DEFAULT NULL,
  `direccion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `grupo_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo_imp` varchar(255) DEFAULT NULL,
  `vlr_imp` int(11) DEFAULT NULL,
  `naturaleza` varchar(255) DEFAULT NULL,
  `clase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Base de datos: `facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  `precio_venta` int(11) NOT NULL,
  `precio_costo` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `cod_tipo_articulo` int(11) NOT NULL,
  `cod_proveedor` varchar(20) NOT NULL,
  `fecha_ingreso` varchar(15) NOT NULL,
  PRIMARY KEY (`id_articulo`),
  KEY `ref_tipo_articulo_idx` (`cod_tipo_articulo`),
  KEY `ref_prov_art_idx` (`cod_proveedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `descripcion`, `precio_venta`, `precio_costo`, `stock`, `cod_tipo_articulo`, `cod_proveedor`, `fecha_ingreso`) VALUES
(1, 'Bota Larga', 100000, 80000, 20, 19, '00003-A', '2012-11-03'),
(2, 'Bota corta', 70000, 50000, 55, 19, '00003-A', '2012-10-11'),
(3, 'Botin ', 150000, 130000, 18, 19, '00003-A', '2012-09-01'),
(4, 'Tenis ', 120000, 100000, 5, 20, '00002-2', '2012-10-02'),
(5, 'Zandalias', 50000, 30000, 59, 21, '00001-1', '2012-11-01'),
(6, 'Jeans', 90000, 70000, 18, 24, '00004-4', '2012-10-02'),
(7, 'Camisas', 50000, 30000, 12, 22, '00003-A', '2012-10-20'),
(8, 'Chaquetas', 70000, 50000, 8, 24, '00004-4', '2012-11-02'),
(9, 'Chaquetas sudadera', 60000, 40000, 20, 23, '00002-2', '2012-10-23'),
(10, 'Pantalon sudadera', 60000, 40000, 5, 23, '00002-2', '2012-10-23'),
(11, 'Sudadera completa', 100000, 80000, 20, 23, '00002-2', '2012-10-23'),
(12, 'Camisetas', 30000, 20000, 30, 24, '00005-F', '2012-10-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `Codigo_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_ciudad` varchar(30) NOT NULL,
  PRIMARY KEY (`Codigo_ciudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`Codigo_ciudad`, `Nombre_ciudad`) VALUES
(1, 'POPAYAN'),
(2, 'CALI'),
(3, 'PASTO'),
(4, 'MEDELLIN'),
(5, 'BOGOTA'),
(6, 'BARRANQUILLA'),
(7, 'CARTAGENA'),
(8, 'ARAUCA'),
(9, 'BALBOA'),
(10, 'BELALCAZAR'),
(11, 'BETANIA'),
(12, 'BOLIVAR'),
(13, 'BUCARAMANGA'),
(14, 'BUENAVENTURA'),
(15, 'CUCUTA'),
(16, 'CALDAS'),
(17, 'CAQUETA'),
(18, 'CERRITO'),
(19, 'CHIA'),
(20, 'CORDOBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Documento` varchar(15) NOT NULL,
  `cod_tipo_documento` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Direccion` varchar(20) DEFAULT NULL,
  `cod_ciudad` int(11) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Documento`),
  KEY `cod_tipodocumento_idx` (`cod_tipo_documento`),
  KEY `ref_ciudad_idx` (`cod_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Documento`, `cod_tipo_documento`, `Nombres`, `Apellidos`, `Direccion`, `cod_ciudad`, `Telefono`) VALUES
('000031', 1, 'Carlos', 'Perez', 'Carrera 23 N 34-34', 1, '3127654323'),
('000032', 1, 'dfdfff', 'ffff', 'fffff', 1, '77777'),
('0001', 1, 'Camilo', 'Lopez', 'Calle 23 N 12-43', 2, '8239578'),
('0002', 2, 'Maria', 'Arango', 'Carrera 5 N 23-12', 1, '8253478'),
('0003', 1, 'Andres', 'Florez', 'Carrera 23 N 12A 34', 4, '3127654323'),
('0004', 1, 'Carlos', 'Marin', 'Calle 3 N 98_21', 10, '8345623'),
('0005', 1, 'Elvira', 'Orozco', 'Centro', 15, '3219843543'),
('0006', 1, 'Kevin', 'Ayala', 'Carrera 23 N 4B 23', 1, '8354624'),
('0007', 1, 'Angela', 'Hoyos', 'Calle 4 N 23 34', 3, '3217654300'),
('0008', 2, 'Marcela', 'Gomez', 'Centro', 6, NULL),
('0009', 1, 'Andres', 'Orozco', 'Calle 34 N 89 00', 1, '8219876'),
('0010', 1, 'Marlon', 'Diaz', 'Carrera 23 N 78-00', 9, '3219870987'),
('0011', 1, 'Daniela', 'Ceron', 'Centro', 1, '8236543'),
('0012', 2, 'Camilo', 'Orozco', 'Calle 21 N 23-98', 10, '3119874534'),
('0013', 1, 'Daniela', 'Ramos', 'Centro', 2, '3217653400'),
('0014', 2, 'Camilo', 'Samboni', 'Carrera 23 N45A 12', 6, '8204587'),
('0015', 1, 'Alexander', 'Romero', 'Calle 34 N 23 B 12', 2, '8340976'),
('0016', 1, 'Sebastian', 'Naranjo', 'Carrera 23 N 2 A 1', 1, '8320912'),
('0017', 2, 'Sandra', 'Castillo', 'Centro', 3, '3218769988'),
('0018', 1, 'Nicolas', 'Ospina', 'Calle 23- N 76', 1, '8230954'),
('0019', 1, 'Santiago', 'Sanchez', 'Carrera 23 N 12-23', 1, '8236521'),
('0020', 1, 'Aleja', 'Dorado', 'Calle 34 N 23 B 4', 2, '8453234'),
('0021', 2, 'andrea', 'Ruiz', 'Centro', 1, '3238765456'),
('0022', 1, 'Andres', 'Perdomo', 'Centro', 3, '8456342'),
('0023', 1, 'Dolly', 'Joaqui', 'Calle 3 N 34-12', 1, '8230943'),
('0024', 2, 'Kevin', 'Rivera', 'Centro', 1, '8342309'),
('0025', 1, 'Camila', 'Maya', 'Carrera 23 n 65-4', 1, '3150987866'),
('0026', 1, 'Camilo', 'Coral', 'Centro', 1, NULL),
('0027', 2, 'Carlos', 'Paz', 'Centro', 1, NULL),
('0028', 1, 'Cristian', 'Paz', 'Calle 34 N b34', 1, '3219870045'),
('0029', 1, 'Daniela', 'Solarte', 'Centro', 1, '8345623'),
('0030', 1, 'Diana', 'Aponte', 'Centro', 15, '8234522'),
('1032', 2, 'andres', 'juan', 'calle 34-23', 2, '326589'),
('1093887224', 1, 'Ronaldo', 'Torres Caceres', 'av 8', 1, '3213213231'),
('12', 1, 'kerly andrea', 'samboni bolaños', 'los cimuneros', 1, '3113882177'),
('120', 1, 'andres', 'sanchez', 'carere 12-45', 2, '8202565'),
('123', 2, 'carlos', 'andres', 'calle 23.5', 2, '235645'),
('125', 2, 'andres', 'sanchez', 'calle 23', 2, '12545'),
('4115', 2, 'hhhhhhhh', 'hhhhhhhhhh', 'hhhhhhhhhhh', 1, 'hhhhhhhhh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `cod_factura` varchar(20) NOT NULL,
  `cod_articulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`cod_factura`,`cod_articulo`),
  KEY `ref_facturacion_idx` (`cod_factura`),
  KEY `ref_ar_fact_idx` (`cod_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`cod_factura`, `cod_articulo`, `cantidad`, `total`) VALUES
('FACT-71061089', 10, 12, '720000'),
('FACT-898778', 4, 3, '360000'),
('FACT-9910966', 3, 1, '150000'),
('FACT-9910966', 4, 2, '240000'),
('FACT-9910966', 5, 1, '47500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE IF NOT EXISTS `devolucion` (
  `cod_detallefactura` varchar(20) NOT NULL,
  `cod_detallearticulo` int(11) NOT NULL,
  `Motivo` varchar(15) NOT NULL,
  `Fecha_devolucion` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`cod_detallefactura`,`cod_detallearticulo`),
  KEY `ref_detallefactu_idx` (`cod_detallefactura`),
  KEY `ref_deta_art_idx` (`cod_detallearticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`cod_detallefactura`, `cod_detallearticulo`, `Motivo`, `Fecha_devolucion`, `cantidad`) VALUES
('FACT-9910966', 3, 'pequeño', '22/1/2013', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `Nnm_factura` varchar(20) NOT NULL,
  `cod_cliente` varchar(15) NOT NULL,
  `Nombre_empleado` varchar(30) NOT NULL,
  `Fecha_facturacion` varchar(15) NOT NULL,
  `cod_formapago` int(11) NOT NULL,
  `total_factura` decimal(10,0) DEFAULT NULL,
  `IVA` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Nnm_factura`),
  KEY `ref_cli_idx` (`cod_cliente`),
  KEY `ref_formapago_idx` (`cod_formapago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Nnm_factura`, `cod_cliente`, `Nombre_empleado`, `Fecha_facturacion`, `cod_formapago`, `total_factura`, `IVA`) VALUES
('FACT-71061089', '1093887224', 'yo', '24/8/2018', 1, '720000', '115200'),
('FACT-898778', '1093887224', 'tu', '24/8/2018', 1, '360000', '57600'),
('FACT-9910966', '125', 'jose', '22/1/2013', 1, '437500', '70000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_de_pago`
--

CREATE TABLE IF NOT EXISTS `forma_de_pago` (
  `id_formapago` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion_formapago` varchar(20) NOT NULL,
  PRIMARY KEY (`id_formapago`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `forma_de_pago`
--

INSERT INTO `forma_de_pago` (`id_formapago`, `Descripcion_formapago`) VALUES
(1, 'EFECTIVO'),
(2, 'BONO'),
(3, 'TARJETA DE CREDITO'),
(4, 'CHEQUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `No_documento` varchar(20) NOT NULL,
  `cod_tipo_documento` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Nombre_comercial` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `cod_ciudad` int(11) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`No_documento`),
  KEY `ref_prov_ciudad_idx` (`cod_ciudad`),
  KEY `proveedor_ibfk_1` (`cod_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`No_documento`, `cod_tipo_documento`, `Nombre`, `Apellido`, `Nombre_comercial`, `direccion`, `cod_ciudad`, `Telefono`) VALUES
('00001-1', 4, 'Carlos', 'Maya', 'Estilos', 'Calle 12-12', 1, NULL),
('00002-2', 4, 'Marino', 'Burbano', 'Sports', 'Centro', 2, NULL),
('00003-A', 7, 'Paola', 'Sanchez', 'Fashion', 'Veraneras', 3, NULL),
('00004-4', 4, 'Camilo', 'Muñoz', 'Jeans&Jackets', 'Centro', 2, NULL),
('00005-F', 7, 'Marlon', 'Brandom', 'Bellas', 'Calle 34 B 12', 1, NULL),
('00006-6', 1, 'Carlos', 'sanchez diaz', 'jeans&&jeans', 'calle 45 N 23-23', 1, '8213423'),
('2222', 1, 'cccc', 'ddfff', 'ffff', 'dddd', 1, '56566'),
('43434', 7, 'fdsfdsfdsfds', 'fdsfsfds', 'fsdfdsfds', 'fsdfdsfds', 1, '543534543');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_articulo`
--

CREATE TABLE IF NOT EXISTS `tipo_articulo` (
  `id_tipoarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_articulo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipoarticulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `tipo_articulo`
--

INSERT INTO `tipo_articulo` (`id_tipoarticulo`, `descripcion_articulo`) VALUES
(19, 'ZAPATO FORMAL'),
(20, 'ZAPATO DEPORTIVO'),
(21, 'ZAPATO INFORMAL '),
(22, 'PRENDA FORMAL'),
(23, 'PRENDA DEPORTIVA'),
(24, 'PRENDA INFORMAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_de_documento` (
  `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tipo_de_documento`
--

INSERT INTO `tipo_de_documento` (`id_tipo_documento`, `Descripcion`) VALUES
(1, 'CC'),
(2, 'TI'),
(3, 'RC'),
(4, 'NIT'),
(5, 'PASAPORTE'),
(6, 'CE'),
(7, 'RUT');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `ref_prov_art` FOREIGN KEY (`cod_proveedor`) REFERENCES `proveedor` (`No_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_tipo_articulo` FOREIGN KEY (`cod_tipo_articulo`) REFERENCES `tipo_articulo` (`id_tipoarticulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `ref_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`Codigo_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_tipo_doc` FOREIGN KEY (`cod_tipo_documento`) REFERENCES `tipo_de_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `ref_ar_fact` FOREIGN KEY (`cod_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_facturacion` FOREIGN KEY (`cod_factura`) REFERENCES `factura` (`Nnm_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `ref_detallefactu` FOREIGN KEY (`cod_detallefactura`) REFERENCES `detalle_factura` (`cod_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_deta_art` FOREIGN KEY (`cod_detallearticulo`) REFERENCES `detalle_factura` (`cod_articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `ref_cli` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`Documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_formapago` FOREIGN KEY (`cod_formapago`) REFERENCES `forma_de_pago` (`id_formapago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`cod_tipo_documento`) REFERENCES `tipo_de_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_prov_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`Codigo_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `formlogin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` char(50) DEFAULT NULL,
  `contrasena` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`) VALUES
(4, 'Usuario', 'Admin'),
(5, 'HOLA', 'mundo'),
(6, 'Hello', 'dejaelshow'),
(7, 'us', 'mx'),
(8, 'Ronaldo', '1234'),
(9, '1232187', 'hola'),
(10, 'Ronaldo', 'caceres'),
(11, 'hhhh', 'hhhhhhh'),
(12, 'Jhan', 'carlos'),
(13, 'luis', 'carlos');
--
-- Base de datos: `fuerse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(8) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `cuerpo` varchar(2000) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `img`, `cuerpo`, `fecha`) VALUES
(1, 'kkkkk', 'fuerse', '../img/lolita.jpg', 'kkkkk', '2019-09-20 16:37:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nameU` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Base de datos: `gymnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(10) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `Ntelefono` int(10) DEFAULT NULL,
  `Edad` int(3) DEFAULT NULL,
  `F_ingreso` date DEFAULT NULL,
  `peso` varchar(6) DEFAULT NULL,
  `masa_muscular` varchar(10) DEFAULT NULL,
  `id_instructorfk` int(10) DEFAULT NULL,
  `id_usufk` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idIns` (`id_instructorfk`),
  KEY `id_U` (`id_usufk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `Ntelefono`, `Edad`, `F_ingreso`, `peso`, `masa_muscular`, `id_instructorfk`, `id_usufk`) VALUES
(1345627, 'Maria Perez', 31287602, 28, '2014-03-12', '54 kg', '18', 2525, 1),
(2367890, 'Luis Martinez', 5763298, 23, '2014-05-26', '68 kg', '23', 2525, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `id_instructor` int(10) NOT NULL DEFAULT '0',
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`id_instructor`, `nombre`) VALUES
(2525, 'Fernando Delgado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_mensualidad`
--

CREATE TABLE IF NOT EXISTS `pago_mensualidad` (
  `num_pago` int(3) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `valor` int(5) DEFAULT NULL,
  `id_clientfk` int(10) DEFAULT NULL,
  KEY `id_cli` (`id_clientfk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pago_mensualidad`
--

INSERT INTO `pago_mensualidad` (`num_pago`, `fecha`, `valor`, `id_clientfk`) VALUES
(1, '2014-04-12', 50000, 1345627),
(2, '2014-05-12', 50000, 1345627),
(3, '2014-06-25', 50000, 2367890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recpcionista`
--

CREATE TABLE IF NOT EXISTS `recpcionista` (
  `id_recep` int(10) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `id_usufk` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_recep`),
  KEY `IdUsu` (`id_usufk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recpcionista`
--

INSERT INTO `recpcionista` (`id_recep`, `nombre`, `id_usufk`) VALUES
(2147483647, 'Laura Maldonado', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(4) NOT NULL,
  `usulogin` varchar(15) DEFAULT NULL,
  `usupassword` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usulogin`, `usupassword`) VALUES
(1, 'Maria123', '12345'),
(2, 'pedro', '9876'),
(3, 'Admin1', 'Admin98');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `idIns` FOREIGN KEY (`id_instructorfk`) REFERENCES `instructor` (`id_instructor`),
  ADD CONSTRAINT `id_U` FOREIGN KEY (`id_usufk`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `pago_mensualidad`
--
ALTER TABLE `pago_mensualidad`
  ADD CONSTRAINT `id_cli` FOREIGN KEY (`id_clientfk`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `recpcionista`
--
ALTER TABLE `recpcionista`
  ADD CONSTRAINT `IdUsu` FOREIGN KEY (`id_usufk`) REFERENCES `usuario` (`id_usuario`);
--
-- Base de datos: `imformatica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `clave_articulo` int(10) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` int(10) DEFAULT NULL,
  `clave_fabricantefk` int(10) DEFAULT NULL,
  PRIMARY KEY (`clave_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`clave_articulo`, `nombre`, `precio`, `clave_fabricantefk`) VALUES
(1, 'teclado', 100, 3),
(2, 'disco duro 300 gb', 500, 5),
(3, 'mouse', 80, 3),
(4, 'memoria usb', 140, 4),
(5, 'memoria ram', 290, 1),
(6, 'disco duro extraible 250 gb', 650, 5),
(7, 'memoria usb', 279, 1),
(8, 'dvd rom', 450, 2),
(9, 'cd rom', 200, 2),
(10, 'trajeta de red', 180, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE IF NOT EXISTS `fabricantes` (
  `clave_fabricante` int(10) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`clave_fabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`clave_fabricante`, `nombre`) VALUES
(1, 'kigston'),
(2, 'adata'),
(3, 'logitech'),
(4, 'lexar'),
(5, 'seagate');
--
-- Base de datos: `laboratoriosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id_art` int(10) NOT NULL,
  `tit_art` varchar(100) DEFAULT NULL,
  `aut_art` varchar(100) DEFAULT NULL,
  `edi_art` varchar(300) DEFAULT NULL,
  `prec_art` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_art`, `tit_art`, `aut_art`, `edi_art`, `prec_art`) VALUES
(1, 'redes cisco', 'ernesto arigasello', 'alfaomega rama', 60000),
(2, 'facebook y twitter para adultos', 'veloso claudio', 'alfaomega', 52000),
(3, 'creacion de un portal con php y mysql', 'jacobo pavon puertas', 'alfaomega rama', 40000),
(4, 'administracion de sistemas operativos', 'julio gomez lopez', 'alfaomega rama', 55000),
(5, 'Linux', 'Sergio Vega', 'alfaomega', 120000),
(6, 'Linux y Mac', 'Ronberts Sarperamta', 'alfaomega', 170000),
(7, 'El futuro', 'Ela bahimad', 'alfaomega rama', 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articuloxpedido`
--

CREATE TABLE IF NOT EXISTS `articuloxpedido` (
  `id_ped_artped` int(10) DEFAULT NULL,
  `id_art_artped` int(10) DEFAULT NULL,
  `can_art_artped` int(10) DEFAULT NULL,
  `val_ven_art_artped` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articuloxpedido`
--

INSERT INTO `articuloxpedido` (`id_ped_artped`, `id_art_artped`, `can_art_artped`, `val_ven_art_artped`) VALUES
(1, 3, 5, 40000),
(1, 4, 12, 55000),
(2, 1, 5, 65000),
(3, 2, 10, 55000),
(3, 3, 12, 45000),
(4, 1, 20, 65000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguramientos`
--

CREATE TABLE IF NOT EXISTS `aseguramientos` (
  `asecodigo` int(6) NOT NULL,
  `asefechainicio` date DEFAULT NULL,
  `asefechaexpiracion` date DEFAULT NULL,
  `asevalorasegurado` int(10) DEFAULT NULL,
  `aseestado` varchar(30) DEFAULT NULL,
  `asecosto` int(10) DEFAULT NULL,
  `aseplaca` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`asecodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aseguramientos`
--

INSERT INTO `aseguramientos` (`asecodigo`, `asefechainicio`, `asefechaexpiracion`, `asevalorasegurado`, `aseestado`, `asecosto`, `aseplaca`) VALUES
(1, '2012-09-30', '2013-09-30', 30000000, 'vigente', 500000, 'fll420'),
(2, '2013-09-27', '2013-09-27', 35000000, 'vigente', 600000, 'dkz820'),
(3, '2011-09-28', '2012-09-28', 50000000, 'vencido', 800000, 'kjq920');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automotores`
--

CREATE TABLE IF NOT EXISTS `automotores` (
  `autoplaca` varchar(6) NOT NULL,
  `automarca` varchar(30) DEFAULT NULL,
  `autotipo` int(10) DEFAULT NULL,
  `automodelo` int(10) DEFAULT NULL,
  `autonumpasajeros` int(10) DEFAULT NULL,
  `autocilindraje` int(10) DEFAULT NULL,
  `autonumchasis` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`autoplaca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `automotores`
--

INSERT INTO `automotores` (`autoplaca`, `automarca`, `autotipo`, `automodelo`, `autonumpasajeros`, `autocilindraje`, `autonumchasis`) VALUES
('dkz820', 'renault stepway', 1, 2008, 5, 1600, 'wywwzz157kk009d45'),
('fll420', 'chevrolet corsa', 1, 2003, 5, 1400, 'wywzzz167kk009d25'),
('kjq920', 'kia spotage', 2, 2009, 7, 2000, 'wywzzz157kk009d25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cli` varchar(11) NOT NULL,
  `nom_cli` varchar(30) DEFAULT NULL,
  `ape_cli` varchar(30) DEFAULT NULL,
  `dir_cli` varchar(100) DEFAULT NULL,
  `dep_cli` varchar(20) DEFAULT NULL,
  `mes_cum_cli` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cli`, `nom_cli`, `ape_cli`, `dir_cli`, `dep_cli`, `mes_cum_cli`) VALUES
('1098765789', 'catalina', 'zapata', 'av el libertador No 30-14', 'cauca', 'marzo'),
('13890234', 'roger', 'ariza', 'cra 30 No 13-45', 'antioquia', 'junio'),
('63502718', 'maritza', 'rojas', 'calle 34 No 14-45', 'santander', 'abril'),
('77191956', 'juan carlos', 'arenas', 'diagonal 23 No 12-34 apto 101', 'valle', 'marzo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE IF NOT EXISTS `compañia` (
  `comnit` varchar(11) NOT NULL,
  `comnombre` varchar(30) DEFAULT NULL,
  `comañofun` int(10) DEFAULT NULL,
  `comreplegal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`comnit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compañia`
--

INSERT INTO `compañia` (`comnit`, `comnombre`, `comañofun`, `comreplegal`) VALUES
('800890890-2', 'seguros atlantida', 1998, 'carlos lopez'),
('899999999-1', 'aseguradora rojas', 1991, 'luis fernando rojas'),
('899999999-5', 'seguros del estado', 2001, 'maria margarita perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `cod_curs` int(10) NOT NULL,
  `nom_curs` varchar(100) DEFAULT NULL,
  `horas_cur` int(10) DEFAULT NULL,
  `valor_cur` int(10) DEFAULT NULL,
  PRIMARY KEY (`cod_curs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`cod_curs`, `nom_curs`, `horas_cur`, `valor_cur`) VALUES
(149842, '  fundamentos de bases de datos ', 40, 500000),
(250067, 'fundamentos de sql', 20, 700000),
(289011, 'manejo de mysql', 45, 550000),
(345671, 'fundamentals of oracle', 60, 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `doc_est` varchar(11) NOT NULL,
  `nom_est` varchar(30) DEFAULT NULL,
  `ape_est` varchar(30) DEFAULT NULL,
  `edad_est` int(10) DEFAULT NULL,
  PRIMARY KEY (`doc_est`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`doc_est`, `nom_est`, `ape_est`, `edad_est`) VALUES
('1098098097', 'jonatan', 'ardila', 17),
('1098765678', 'carlos', 'martinez', 19),
('63502720', 'maria', 'perez', 23),
('91245678', 'carlos jose', 'lopez', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantexcurso`
--

CREATE TABLE IF NOT EXISTS `estudiantexcurso` (
  `cod_cur_estcur` int(10) DEFAULT NULL,
  `doc_est_estcur` varchar(30) DEFAULT NULL,
  `fec_ini_estcur` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantexcurso`
--

INSERT INTO `estudiantexcurso` (`cod_cur_estcur`, `doc_est_estcur`, `fec_ini_estcur`) VALUES
(289011, '1098765678', '2011-02-01'),
(250067, '63502720', '2011-03-01'),
(289011, '1098098097', '2011-02-01'),
(345671, '63502720', '2011-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidentes`
--

CREATE TABLE IF NOT EXISTS `incidentes` (
  `incicodigo` int(10) NOT NULL,
  `incifecha` date DEFAULT NULL,
  `inciplaca` varchar(6) DEFAULT NULL,
  `incilugar` varchar(40) DEFAULT NULL,
  `incicantheridos` int(10) DEFAULT NULL,
  `incicanfatalidades` int(10) DEFAULT NULL,
  `incicanautosinvolucrados` int(10) DEFAULT NULL,
  PRIMARY KEY (`incicodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidentes`
--

INSERT INTO `incidentes` (`incicodigo`, `incifecha`, `inciplaca`, `incilugar`, `incicantheridos`, `incicanfatalidades`, `incicanautosinvolucrados`) VALUES
(1, '2012-09-30', 'dkz820', 'bucaramanga', 0, 0, 2),
(2, '2012-09-27', 'fll420', 'giron', 1, 0, 1),
(3, '2011-09-28', 'fll420', 'bucaramanga', 1, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `id_ped` int(10) NOT NULL,
  `id_cli_ped` varchar(11) DEFAULT NULL,
  `fec_ped` date DEFAULT NULL,
  `val_ped` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_ped`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_ped`, `id_cli_ped`, `fec_ped`, `val_ped`) VALUES
(1, '63502718', '2012-02-25', 120000),
(2, '77191956', '2012-04-30', 55000),
(3, '63502718', '2011-12-10', 260000),
(4, '1098765789', '2012-02-25', 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `doc_prof` varchar(11) NOT NULL,
  `nom_prof` varchar(30) DEFAULT NULL,
  `ape_prof` varchar(30) DEFAULT NULL,
  `cate_prof` int(10) DEFAULT NULL,
  `sal_prof` int(10) DEFAULT NULL,
  PRIMARY KEY (`doc_prof`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`doc_prof`, `nom_prof`, `ape_prof`, `cate_prof`, `sal_prof`) VALUES
('1098765789', 'alejandra', 'torres', 4, 1100000),
('13826789', 'maritza', 'angarita', 1, 550000),
('63502720', 'martha', 'rojas', 2, 690000),
('91216904', 'carlos', 'perez', 3, 950000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposautomotores`
--

CREATE TABLE IF NOT EXISTS `tiposautomotores` (
  `auttipo` int(10) NOT NULL,
  `autnombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`auttipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiposautomotores`
--

INSERT INTO `tiposautomotores` (`auttipo`, `autnombre`) VALUES
(1, 'automoviles'),
(2, 'camperos'),
(3, 'camiones');
--
-- Base de datos: `loginejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre`, `correo`, `usuario`, `password`) VALUES
(2, 'Ronaldo', 'caceresderonaldo2015@gmail.com', 'ronaldo', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(3, 'Juan', 'caceresderonaldo2015@gmail.com', 'juan', '8cb2237d0679ca88db6464eac60da96345513964');
--
-- Base de datos: `loguin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Usuario` varchar(40) NOT NULL,
  `Clave` varchar(50) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Usuario`, `Clave`, `tipo`, `nombre`) VALUES
('root', '12347', 'administrador', 'juan'),
('user', '12345', 'usuario', 'pedro');
--
-- Base de datos: `loguinjsp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellidos`, `usuario`, `pass`) VALUES
(1, 'ronaldo', 'torres', 'ronaldotorres', '4321'),
(2, 'juan', 'torres', 'juatorre', '1234'),
(6, 'tu', 'sexi', 'tusexi', '1423'),
(7, 'juana', 'paraco', 'juancho', '0000'),
(8, 'Ximena', 'Farat', 'xime12', 'ximerico'),
(10, 'ronaldo', 'torres', 'elperro', '789'),
(11, 'Amigo', 'Amigo1', 'Hola', '1010'),
(12, 'Ronto', 'mangana', 'lalo', 'mango'),
(13, '', '', '', '');
--
-- Base de datos: `mi_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `articulo_id` int(4) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(4) DEFAULT NULL,
  `autor` varchar(40) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  `img` varchar(60) NOT NULL,
  PRIMARY KEY (`articulo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(40) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_dev` int(4) NOT NULL AUTO_INCREMENT,
  `email_dev` varchar(50) NOT NULL,
  `usuario_dev` varchar(80) NOT NULL,
  `password_dev` varchar(150) NOT NULL,
  PRIMARY KEY (`id_dev`),
  UNIQUE KEY `email_dev` (`email_dev`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_dev`, `email_dev`, `usuario_dev`, `password_dev`) VALUES
(1, 'juan@developero.com', 'Juan', '$2y$10$Cr6LiuLPEPqwePibULdJZ.UkKVYe2bgBPdzHYYvyw.n/5n3a/JxtG');
--
-- Base de datos: `multiplatafomasoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcargos`
--

CREATE TABLE IF NOT EXISTS `tblcargos` (
  `CargCodigo` int(11) NOT NULL,
  `CargNombre` varchar(25) DEFAULT NULL,
  `CargSalMax` int(11) DEFAULT NULL,
  `CargSalMin` int(11) DEFAULT NULL,
  PRIMARY KEY (`CargCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcargos`
--

INSERT INTO `tblcargos` (`CargCodigo`, `CargNombre`, `CargSalMax`, `CargSalMin`) VALUES
(125, 'gerente', 7000000, 3000000),
(126, 'asesor', 850000, 50000),
(127, 'contador', 850000, 50000),
(128, 'analista', 4000000, 150000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamentos`
--

CREATE TABLE IF NOT EXISTS `tbldepartamentos` (
  `DepId` int(11) NOT NULL,
  `DepNombre` varchar(25) DEFAULT NULL,
  `ZonCodigoFk` int(11) DEFAULT NULL,
  PRIMARY KEY (`DepId`),
  KEY `zona_fk` (`ZonCodigoFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbldepartamentos`
--

INSERT INTO `tbldepartamentos` (`DepId`, `DepNombre`, `ZonCodigoFk`) VALUES
(548, 'Gerencia', 789),
(550, 'Recursos Humanos', 787),
(587, 'Produccion', 786),
(589, 'Sistemas', 788);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblempleados`
--

CREATE TABLE IF NOT EXISTS `tblempleados` (
  `EmpCodigo` int(11) NOT NULL,
  `EmpNombre` varchar(25) DEFAULT NULL,
  `EmpApellido` varchar(25) DEFAULT NULL,
  `EmpEmail` varchar(45) DEFAULT NULL,
  `EmpFechaNac` date DEFAULT NULL,
  `EmpSalario` int(11) DEFAULT NULL,
  `CodigoJefe` int(11) DEFAULT NULL,
  `DepIdFk` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmpCodigo`),
  KEY `dep_fk` (`DepIdFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblempleados`
--

INSERT INTO `tblempleados` (`EmpCodigo`, `EmpNombre`, `EmpApellido`, `EmpEmail`, `EmpFechaNac`, `EmpSalario`, `CodigoJefe`, `DepIdFk`) VALUES
(325, 'andres', 'angarita', 'toddaqenodd-6376@yopmail.com', '1990-02-15', 6375000, 601, 550),
(328, 'marco', 'martinez', 'sewezallel-7669@yopmail.com', '1991-11-28', 6375000, 601, 589),
(333, 'leonel', 'perez', 'egeddarre-6855@yopmail.com', '1987-12-15', 30000000, 666, 548),
(345, 'paola', 'belalcazar', 'manniwummy-4212@yopmail.com', '1997-05-15', 7500000, 605, 589),
(359, 'jose', 'lopez', 'ilisepa-5374@yopmail.com', '1991-12-30', 375000, 603, 587),
(364, 'julian', 'gomez', 'ejadduryl-8460@yopmail.com', '1996-09-25', 15000000, 603, 548);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhistorialcargos`
--

CREATE TABLE IF NOT EXISTS `tblhistorialcargos` (
  `HistCodigo` int(11) NOT NULL,
  `HistFechaIni` date DEFAULT NULL,
  `HistFechaFin` date DEFAULT NULL,
  `CargoCodigoFk` int(11) DEFAULT NULL,
  `EmpCodigoFk` int(11) DEFAULT NULL,
  PRIMARY KEY (`HistCodigo`),
  KEY `emp_fk` (`EmpCodigoFk`),
  KEY `fk_car` (`CargoCodigoFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblhistorialcargos`
--

INSERT INTO `tblhistorialcargos` (`HistCodigo`, `HistFechaIni`, `HistFechaFin`, `CargoCodigoFk`, `EmpCodigoFk`) VALUES
(250, '2015-02-15', '2013-09-12', 125, 345),
(251, '2016-08-29', '2018-05-24', 127, 333),
(252, '2018-05-24', '2019-05-04', 127, 328),
(253, '2018-02-02', '2019-02-10', 128, 364),
(254, '2018-01-15', '2019-02-15', 125, 359),
(255, '2018-02-28', '2020-01-25', 126, 325);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhorasextras`
--

CREATE TABLE IF NOT EXISTS `tblhorasextras` (
  `HorId` int(11) NOT NULL,
  `EmpCodigo_Fk` int(11) DEFAULT NULL,
  `HorFecha` date DEFAULT NULL,
  `HorNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`HorId`),
  KEY `fk_emp` (`EmpCodigo_Fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblhorasextras`
--

INSERT INTO `tblhorasextras` (`HorId`, `EmpCodigo_Fk`, `HorFecha`, `HorNum`) VALUES
(450, 345, '2018-11-04', 15),
(452, 333, '2018-01-12', 50),
(454, 325, '2018-04-12', 12),
(456, 359, '2018-06-14', 14),
(458, 328, '2018-04-30', 24),
(460, 364, '2018-02-12', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblzonas`
--

CREATE TABLE IF NOT EXISTS `tblzonas` (
  `ZonCodigo` int(11) NOT NULL,
  `ZonCiudad` varchar(25) DEFAULT NULL,
  `ZonDepartamento` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ZonCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblzonas`
--

INSERT INTO `tblzonas` (`ZonCodigo`, `ZonCiudad`, `ZonDepartamento`) VALUES
(786, 'tunja', 'boyaca'),
(787, 'barranquilla', 'atlantico'),
(788, 'cucuta', 'norte de santander'),
(789, 'leticia', 'amazonas');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldepartamentos`
--
ALTER TABLE `tbldepartamentos`
  ADD CONSTRAINT `zona_fk` FOREIGN KEY (`ZonCodigoFk`) REFERENCES `tblzonas` (`ZonCodigo`);

--
-- Filtros para la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  ADD CONSTRAINT `dep_fk` FOREIGN KEY (`DepIdFk`) REFERENCES `tbldepartamentos` (`DepId`);

--
-- Filtros para la tabla `tblhistorialcargos`
--
ALTER TABLE `tblhistorialcargos`
  ADD CONSTRAINT `emp_fk` FOREIGN KEY (`EmpCodigoFk`) REFERENCES `tblempleados` (`EmpCodigo`),
  ADD CONSTRAINT `fk_car` FOREIGN KEY (`CargoCodigoFk`) REFERENCES `tblcargos` (`CargCodigo`);

--
-- Filtros para la tabla `tblhorasextras`
--
ALTER TABLE `tblhorasextras`
  ADD CONSTRAINT `fk_emp` FOREIGN KEY (`EmpCodigo_Fk`) REFERENCES `tblempleados` (`EmpCodigo`);
--
-- Base de datos: `paginacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`) VALUES
(1, 'Articulo 1'),
(2, 'Articulo 2'),
(3, 'Articulo 3'),
(4, 'Articulo 4'),
(5, 'Articulo 5'),
(6, 'Articulo 6'),
(7, 'Articulo 7'),
(8, 'Articulo 8'),
(9, 'Articulo 9'),
(10, 'Articulo 10'),
(11, 'Articulo 11'),
(12, 'Articulo 12'),
(13, 'Articulo 13'),
(14, 'Articulo 14'),
(15, 'Articulo 15');
--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cedula` int(10) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `nombre`, `apellido`, `direccion`, `telefono`, `fecha_de_nacimiento`) VALUES
(1090, 'juan j', 'perez', 'av-4', '321', '1999-07-12'),
(1093887224, 'Ronaldo', 'Torres', 'Calle 5', '3213073686', '1999-07-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `codigo_producto_fk` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `stock` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`codigo_producto_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`codigo_producto_fk`, `nombre_producto`, `stock`) VALUES
(10, 'papafritas', '174'),
(11, 'arroz', '91'),
(12, 'galletas', '37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `idcliente` int(11) NOT NULL,
  `cantidad` varchar(10) DEFAULT NULL,
  `producto` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cancelado` int(11) NOT NULL,
  `debo` int(11) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idcliente`, `cantidad`, `producto`, `fecha`, `cancelado`, `debo`) VALUES
(1010, '100', 'arroz', '2019-07-15', 120000, 50000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE IF NOT EXISTS `pedido_producto` (
  `pedido_id_cliente` int(10) DEFAULT NULL,
  `pedido_cliente_idcliente` int(10) DEFAULT NULL,
  `producto_codigo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `marca` varchar(30) NOT NULL,
  `precio_costo` int(10) DEFAULT NULL,
  `precio_venta` int(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `marca`, `precio_costo`, `precio_venta`) VALUES
(1, 'purinaGato', 'ohmycat', 1000000, 4000),
(10, 'papafritas', 'detodito', 1200, 1500),
(11, 'arroz', 'gelvez', 1200, 1500),
(12, 'galletas', 'festival', 700, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `nit` int(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nit`, `nombre`, `direccion`) VALUES
(1010, 'zulia', 'zulia nt de stder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `contraseña`) VALUES
('yo', '1sd1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `codigo_venta` varchar(40) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `codigo_productofk` int(11) DEFAULT NULL,
  `articulo` varchar(40) NOT NULL,
  `valor_unidad` int(11) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `total_venta` varchar(11) DEFAULT NULL,
  KEY `codigo_productofk` (`codigo_productofk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`codigo_venta`, `fecha`, `Nombre`, `Apellido`, `codigo_productofk`, `articulo`, `valor_unidad`, `cantidad`, `total_venta`) VALUES
('FACT-867979', '23/10/2018', 'Ronaldo', 'Torres Caceres', 1, 'purinaGato', 40000, 10, '80000'),
('FACT-867979', '23/10/2018', 'Ronaldo', 'Torres Caceres', 1, 'purinaGato', 40000, 10, '80000'),
('FACT-79710109', '12/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '12000'),
('FACT-79710109', '12/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 3000, 2, '12000'),
('FACT-79710109', '12/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 6000, 4, '12000'),
('FACT-79710109', '12/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '12000'),
('FACT-788696', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 3000, 2, '4500'),
('FACT-788696', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '4500'),
('FACT-8688108', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 6000, 4, '7500'),
('FACT-8688108', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '7500'),
('FACT-76101069', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '6000'),
('FACT-76101069', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '6000'),
('FACT-76101069', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '6000'),
('FACT-76101069', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '6000'),
('FACT-9910699', '14/7/2019', 'Ronaldo', 'Torres Caceres', 10, 'papafritas', 1500, 1, '6000'),
('FACT-9910699', '14/7/2019', 'Ronaldo', 'Torres Caceres', 11, 'papafritas', 1500, 1, '6000'),
('FACT-9910699', '14/7/2019', 'Ronaldo', 'Torres Caceres', 11, 'arroz', 3000, 2, '6000'),
('FACT-699776', '15/7/2019', 'juan j', 'perez', 12, 'galletas', 10000, 10, '13000'),
('FACT-699776', '15/7/2019', 'juan j', 'perez', 10, 'papafritas', 3000, 2, '13000'),
('FACT-9109787', '1/8/2019', 'juan j', 'perez', 10, 'papafritas', 4500, 3, '8500'),
('FACT-9109787', '1/8/2019', 'juan j', 'perez', 11, 'arroz', 3000, 2, '8500'),
('FACT-9109787', '1/8/2019', 'juan j', 'perez', 12, 'galletas', 1000, 1, '8500'),
('FACT-1069668', '1/8/2019', 'juan j', 'perez', 11, 'arroz', 3000, 2, '6000'),
('FACT-1069668', '1/8/2019', 'juan j', 'perez', 11, 'arroz', 3000, 2, '6000');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `codigo_productofk` FOREIGN KEY (`codigo_productofk`) REFERENCES `producto` (`codigo`);
--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`) VALUES
(1010, 'Juan M', 'jaimes E', 'juan@gmail.com'),
(1093887224, 'Ronaldo', 'Torres Caceres', 'rtorres66@misena.edu.co');
--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` varchar(25) DEFAULT NULL,
  `nombrearticulo` varchar(30) DEFAULT NULL,
  `precio` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombrearticulo`, `precio`) VALUES
('1', 'pantalon', 50);

--
-- Disparadores `producto`
--
DROP TRIGGER IF EXISTS `producto_AI`;
DELIMITER //
CREATE TRIGGER `producto_AI` AFTER INSERT ON `producto`
 FOR EACH ROW INSERT INTO reg_productos (codigo,nombrearticulo,precio,insertado) VALUES (NEW.codigo, NEW.nombrearticulo,NEW.precio,NOW())
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_productos`
--

CREATE TABLE IF NOT EXISTS `reg_productos` (
  `codigo` varchar(25) DEFAULT NULL,
  `nombrearticulo` varchar(30) DEFAULT NULL,
  `precio` int(4) DEFAULT NULL,
  `insertado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reg_productos`
--

INSERT INTO `reg_productos` (`codigo`, `nombrearticulo`, `precio`, `insertado`) VALUES
('1', 'pantalon', 50, '2019-07-23 17:08:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Base de datos: `pruebass`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_persona`
--

CREATE TABLE IF NOT EXISTS `t_persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `t_persona`
--

INSERT INTO `t_persona` (`id`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(3, 'Ronaldo', 'Torres', 'rtorres66@misena.edu.co', '3213073686'),
(4, 'Juan ', 'Strlin', 'juan@perez.com', '3213073686');
--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE IF NOT EXISTS `asiento` (
  `asiento_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cuenta_id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `debito_credito` varchar(1) NOT NULL,
  `comprobante_id` int(11) NOT NULL,
  `comprobante_tipo` varchar(255) NOT NULL,
  `tercero_id` bigint(20) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`asiento_id`),
  KEY `asiento_tercero_id_foreign` (`tercero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE IF NOT EXISTS `banco` (
  `banco_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `numero_cuenta` varchar(255) DEFAULT NULL,
  `subcuenta_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`banco_id`),
  KEY `banco_subcuenta_id_foreign` (`subcuenta_id`),
  KEY `banco_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE IF NOT EXISTS `clase` (
  `clase_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo_imp` varchar(255) DEFAULT NULL,
  `vlr_imp` int(11) DEFAULT NULL,
  `naturaleza` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`clase_id`, `nombre`, `descripcion`, `tipo_imp`, `vlr_imp`, `naturaleza`) VALUES
(1, 'Activo', NULL, NULL, NULL, NULL),
(2, 'Pasivo', NULL, NULL, NULL, NULL),
(3, 'Patrimonio', NULL, NULL, NULL, NULL),
(4, 'Ingresos', NULL, NULL, NULL, NULL),
(5, 'Gastos', NULL, NULL, NULL, NULL),
(6, 'Costos de Venta', NULL, NULL, NULL, NULL),
(7, 'Costos de Producción o de Operación', NULL, NULL, NULL, NULL),
(8, 'Cuentas de Orden Deudoras', NULL, NULL, NULL, NULL),
(9, 'Cuentas de Order Acreedoras', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE IF NOT EXISTS `comprobante` (
  `comprobante_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `total_debito` int(11) NOT NULL,
  `total_credito` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `asiento_en` timestamp NULL DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`comprobante_id`),
  KEY `comprobante_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`comprobante_id`, `codigo`, `tipo`, `concepto`, `total_debito`, `total_credito`, `estado`, `asiento_en`, `creado_en`, `empresa_id`) VALUES
(1, 1, 'ingreso', 'ingreso', 1000, 1000, 0, NULL, '2019-08-31 04:27:21', 123456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `cuenta_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo_imp` varchar(255) DEFAULT NULL,
  `vlr_imp` int(11) DEFAULT NULL,
  `naturaleza` varchar(255) DEFAULT NULL,
  `grupo_id` int(11) NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `cuenta_grupo_id_foreign` (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`cuenta_id`, `nombre`, `descripcion`, `tipo_imp`, `vlr_imp`, `naturaleza`, `grupo_id`) VALUES
(1105, 'Caja', NULL, NULL, NULL, NULL, 11),
(1110, 'Bancos', NULL, NULL, NULL, NULL, 11),
(1115, 'Remesas en Transito', NULL, NULL, NULL, NULL, 11),
(1120, 'Cuentas de Ahorro', NULL, NULL, NULL, NULL, 11),
(1125, 'Fondos', NULL, NULL, NULL, NULL, 11),
(1205, 'Acciones', NULL, NULL, NULL, NULL, 12),
(1210, 'Cuotas o Partes de Interés Social', NULL, NULL, NULL, NULL, 12),
(1215, 'Bonos', NULL, NULL, NULL, NULL, 12),
(1220, 'Cédulas', NULL, NULL, NULL, NULL, 12),
(1225, 'Certificados', NULL, NULL, NULL, NULL, 12),
(1230, 'Papeles Comerciales', NULL, NULL, NULL, NULL, 12),
(1235, 'Títulos', NULL, NULL, NULL, NULL, 12),
(1240, 'Aceptaciones Bancarias o Financieras', NULL, NULL, NULL, NULL, 12),
(1245, 'Derechos Fiduciarios', NULL, NULL, NULL, NULL, 12),
(1250, 'Derechos de Recompra de Inversiones Negociadas (repos)', NULL, NULL, NULL, NULL, 12),
(1255, 'Obligatorias', NULL, NULL, NULL, NULL, 12),
(1260, 'Cuentas en Participacion', NULL, NULL, NULL, NULL, 12),
(1295, 'Otras Inversiones', NULL, NULL, NULL, NULL, 12),
(1299, 'Provisiones', NULL, NULL, NULL, NULL, 12),
(1305, 'Clientes', NULL, NULL, NULL, NULL, 13),
(1310, 'Cuentas Corrientes Comerciales', NULL, NULL, NULL, NULL, 13),
(1315, 'Cuentas por Cobrar a Casa Matriz', NULL, NULL, NULL, NULL, 13),
(1320, 'Cuentas por Cobrar a Vinculados Económicos', NULL, NULL, NULL, NULL, 13),
(1323, 'Cuentas Por Cobrar a Directores', NULL, NULL, NULL, NULL, 13),
(1325, 'Cuentas Por Cobrar a Socios y Accionistas', NULL, NULL, NULL, NULL, 13),
(1328, 'Aportes Por Cobrar', NULL, NULL, NULL, NULL, 13),
(1330, 'Anticipos y Avances', NULL, NULL, NULL, NULL, 13),
(1332, 'Cuentas de Operación Conjunta', NULL, NULL, NULL, NULL, 13),
(1335, 'Depósitos', NULL, NULL, NULL, NULL, 13),
(1340, 'Promesaas de Compraventa', NULL, NULL, NULL, NULL, 13),
(1345, 'Ingresos  por Cobrar', NULL, NULL, NULL, NULL, 13),
(1350, 'Retención Sobre Contratos', NULL, NULL, NULL, NULL, 13),
(1355, 'Anticipo de Impuestos y Contribuciones o Saldos a Favor', NULL, NULL, NULL, NULL, 13),
(1360, 'Reclamaciones', NULL, NULL, NULL, NULL, 13),
(1365, 'Cuentas por Cobrar a Trabajadores', NULL, NULL, NULL, NULL, 13),
(1370, 'Préstamos a Particulares', NULL, NULL, NULL, NULL, 13),
(1380, 'Deudores Varios', NULL, NULL, NULL, NULL, 13),
(1385, 'Derechos de Recompra de Cartera Negociada', NULL, NULL, NULL, NULL, 13),
(1390, 'Deudas de Dificil Cobro', NULL, NULL, NULL, NULL, 13),
(1399, 'Provisiones', NULL, NULL, NULL, NULL, 13),
(1405, 'Materias Primas', NULL, NULL, NULL, NULL, 14),
(1410, 'Productos en Proceso', NULL, NULL, NULL, NULL, 14),
(1415, 'Obras de Construccion en Curso', NULL, NULL, NULL, NULL, 14),
(1417, 'Obras de Urbanismo', NULL, NULL, NULL, NULL, 14),
(1420, 'Contratos en Ejecucion', NULL, NULL, NULL, NULL, 14),
(1425, 'Cultivos en Desarrollo', NULL, NULL, NULL, NULL, 14),
(1428, 'Plantaciones Agricolas', NULL, NULL, NULL, NULL, 14),
(1430, 'Productos Terminados', NULL, NULL, NULL, NULL, 14),
(1435, 'Mercancías no Fabricadas por la Empresa', NULL, NULL, NULL, NULL, 14),
(1440, 'Bienes Raíces para la Venta', NULL, NULL, NULL, NULL, 14),
(1445, 'Semovientes', NULL, NULL, NULL, NULL, 14),
(1450, 'Terrenos', NULL, NULL, NULL, NULL, 14),
(1455, 'Materiales, Repuestos y Accesorios', NULL, NULL, NULL, NULL, 14),
(1460, 'Envases y Empaques', NULL, NULL, NULL, NULL, 14),
(1465, 'Inventarios en Tránsito', NULL, NULL, NULL, NULL, 14),
(1499, 'Provisiones', NULL, NULL, NULL, NULL, 14),
(1504, 'Terrenos', NULL, NULL, NULL, NULL, 15),
(1506, 'Materiales Proyectos Petroleros', NULL, NULL, NULL, NULL, 15),
(1508, 'Construcciones en Curso', NULL, NULL, NULL, NULL, 15),
(1512, 'Maquinaria y Equipos en Montaje', NULL, NULL, NULL, NULL, 15),
(1516, 'Construcciones y Edificaciones', NULL, NULL, NULL, NULL, 15),
(1520, 'Maquinaria y Equipo', NULL, NULL, NULL, NULL, 15),
(1524, 'Equipo de Oficina', NULL, NULL, NULL, NULL, 15),
(1528, 'Equipo de Computación y Comunicación', NULL, NULL, NULL, NULL, 15),
(1532, 'Equipo Médico-Científico', NULL, NULL, NULL, NULL, 15),
(1536, 'Equipo de Hoteles y Restaurantes', NULL, NULL, NULL, NULL, 15),
(1540, 'Flota y Equipo de Transporte', NULL, NULL, NULL, NULL, 15),
(1544, 'Flota y Equipo Fluvial y/o Marítimo', NULL, NULL, NULL, NULL, 15),
(1548, 'Flota y Equipo Aéreo', NULL, NULL, NULL, NULL, 15),
(1552, 'Flota y Equipo Férreo', NULL, NULL, NULL, NULL, 15),
(1556, 'Acueductos,Plantas y Redes', NULL, NULL, NULL, NULL, 15),
(1560, 'Armamento de Vigilancia', NULL, NULL, NULL, NULL, 15),
(1562, 'Envases y Empaques', NULL, NULL, NULL, NULL, 15),
(1564, 'Plantaciones Agrícolas y Forestales', NULL, NULL, NULL, NULL, 15),
(1568, 'Vías de Comunicación', NULL, NULL, NULL, NULL, 15),
(1572, 'Minas y Canteras', NULL, NULL, NULL, NULL, 15),
(1576, 'Posos Artesianos', NULL, NULL, NULL, NULL, 15),
(1580, 'Yacimientos', NULL, NULL, NULL, NULL, 15),
(1584, 'Semovientes', NULL, NULL, NULL, NULL, 15),
(1588, 'Propiedades,Planta y Equipo en Tránsito', NULL, NULL, NULL, NULL, 15),
(1592, 'Depreciación Acomulada', NULL, NULL, NULL, NULL, 15),
(1596, 'Depresiación Diferida', NULL, NULL, NULL, NULL, 15),
(1597, 'Amortización Acomulada', NULL, NULL, NULL, NULL, 15),
(1598, 'Agotamiento Acomulado', NULL, NULL, NULL, NULL, 15),
(1599, 'Provisiones', NULL, NULL, NULL, NULL, 15),
(1605, 'Crédito Mercantil', NULL, NULL, NULL, NULL, 16),
(1610, 'Marcas', NULL, NULL, NULL, NULL, 16),
(1615, 'Patentes', NULL, NULL, NULL, NULL, 16),
(1620, 'Concesiones y Franquicias', NULL, NULL, NULL, NULL, 16),
(1625, 'Derechos', NULL, NULL, NULL, NULL, 16),
(1630, 'Know How', NULL, NULL, NULL, NULL, 16),
(1635, 'Licencias', NULL, NULL, NULL, NULL, 16),
(1698, 'Depreciación y/o Amortización Acomulada', NULL, NULL, NULL, NULL, 16),
(1699, 'Provisiones', NULL, NULL, NULL, NULL, 16),
(1705, 'Gastos Pagados Por Anticipado', NULL, NULL, NULL, NULL, 17),
(1710, 'Cargos Diferidos', NULL, NULL, NULL, NULL, 17),
(1715, 'Costos de Exploración por Amortizar', NULL, NULL, NULL, NULL, 17),
(1720, 'Costos de Explotación y Desarrollo', NULL, NULL, NULL, NULL, 17),
(1730, 'Cargos por Corección Monetaria Diferida', NULL, NULL, NULL, NULL, 17),
(1798, 'Amortización Acomulada', NULL, NULL, NULL, NULL, 17),
(1805, 'Bienes de Arte y Cultura', NULL, NULL, NULL, NULL, 18),
(1895, 'Diversos', NULL, NULL, NULL, NULL, 18),
(1899, 'Provisiones', NULL, NULL, NULL, NULL, 18),
(1905, 'De Inversiones', NULL, NULL, NULL, NULL, 19),
(1910, 'De Propiedades,Planta y Equipo', NULL, NULL, NULL, NULL, 19),
(1995, 'De Otros Activos', NULL, NULL, NULL, NULL, 19),
(2105, 'Bancos Nacionales', NULL, NULL, NULL, NULL, 21),
(2110, 'Bancos del Exterior', NULL, NULL, NULL, NULL, 21),
(2115, 'Corporaciones Financieras', NULL, NULL, NULL, NULL, 21),
(2120, 'Compañías de Financiamiento Comercial', NULL, NULL, NULL, NULL, 21),
(2125, 'Corporaciones de Ahorro y Vivienda', NULL, NULL, NULL, NULL, 21),
(2130, 'Entidades Financieras del Exterior', NULL, NULL, NULL, NULL, 21),
(2135, 'Compromisos de Recompra de Inversiones Negociadas', NULL, NULL, NULL, NULL, 21),
(2140, 'Compromisos de Recompra de Cartera Negociada', NULL, NULL, NULL, NULL, 21),
(2145, 'Obligaciones Gubernamentales', NULL, NULL, NULL, NULL, 21),
(2195, 'Otras Obligaciones', NULL, NULL, NULL, NULL, 21),
(2205, 'Nacionales', NULL, NULL, NULL, NULL, 22),
(2210, 'Del Exterior', NULL, NULL, NULL, NULL, 22),
(2215, 'Cuentas Corrientes Comercials', NULL, NULL, NULL, NULL, 22),
(2220, 'Casa Matriz', NULL, NULL, NULL, NULL, 22),
(2225, 'Compañias Vinculadas', NULL, NULL, NULL, NULL, 22),
(2305, 'Cuentas Corrientes Comerciales', NULL, NULL, NULL, NULL, 23),
(2310, 'A Casa Matriz', NULL, NULL, NULL, NULL, 23),
(2315, 'A Compañias Vinculadas', NULL, NULL, NULL, NULL, 23),
(2320, 'A Contratistas', NULL, NULL, NULL, NULL, 23),
(2330, 'Órdenes de Compra por Utilizar', NULL, NULL, NULL, NULL, 23),
(2335, 'Costos y Gastos por Pagar', NULL, NULL, NULL, NULL, 23),
(2340, 'Instalamentos por Pagar', NULL, NULL, NULL, NULL, 23),
(2345, 'Acreederos Oficiales', NULL, NULL, NULL, NULL, 23),
(2350, 'Regalías por Pagar', NULL, NULL, NULL, NULL, 23),
(2355, 'Deudas con Accionistas o Socios', NULL, NULL, NULL, NULL, 23),
(2357, 'Deudas con Directores', NULL, NULL, NULL, NULL, 23),
(2360, 'Dividendos o Participaciones por Pagar', NULL, NULL, NULL, NULL, 23),
(2365, 'Retención en la Fuente', NULL, NULL, NULL, NULL, 23),
(2367, 'Impuesto a las Ventas Retenido', NULL, NULL, NULL, NULL, 23),
(2368, 'Impuesto de Industria y Comercio Retenido', NULL, NULL, NULL, NULL, 23),
(2370, 'Retenciones y Aportes de Nómina', NULL, NULL, NULL, NULL, 23),
(2375, 'Cuotas para Devolver', NULL, NULL, NULL, NULL, 23),
(2380, 'Acreedores Varios', NULL, NULL, NULL, NULL, 23),
(2404, 'De Renta y Complementarios', NULL, NULL, NULL, NULL, 24),
(2408, 'Impuesto Sobre las Ventas por Pagar', NULL, NULL, NULL, NULL, 24),
(2412, 'De Industria y Comercio', NULL, NULL, NULL, NULL, 24),
(2416, 'A la Propiedad raíz', NULL, NULL, NULL, NULL, 24),
(2420, 'Derechos Sobre Instrumentos Públicos', NULL, NULL, NULL, NULL, 24),
(2424, 'De Valorizacion', NULL, NULL, NULL, NULL, 24),
(2428, 'De Turismo', NULL, NULL, NULL, NULL, 24),
(2432, 'Tasa por Utilización de Puertos', NULL, NULL, NULL, NULL, 24),
(2436, 'De Vehículos', NULL, NULL, NULL, NULL, 24),
(2440, 'De Espectáculos Públicos', NULL, NULL, NULL, NULL, 24),
(2444, 'De Hidrocarburos y Minas', NULL, NULL, NULL, NULL, 24),
(2448, 'Regalías e Impuestos a la Pequeña y Mediana Minería', NULL, NULL, NULL, NULL, 24),
(2452, 'A las Exportaciones Cafeteras', NULL, NULL, NULL, NULL, 24),
(2456, 'A las Importaciones', NULL, NULL, NULL, NULL, 24),
(2460, 'Cuotas de Fomento', NULL, NULL, NULL, NULL, 24),
(2464, 'De licores, Cervezas y Cigarrillos', NULL, NULL, NULL, NULL, 24),
(2468, 'Al Sacrificio de Ganado', NULL, NULL, NULL, NULL, 24),
(2472, 'Al Azar y Juegos', NULL, NULL, NULL, NULL, 24),
(2476, 'Gravámenes y Regalías por Utilización del Suelo', NULL, NULL, NULL, NULL, 24),
(2495, 'Otros', NULL, NULL, NULL, NULL, 24),
(2505, 'Salarios por Pagar', NULL, NULL, NULL, NULL, 25),
(2510, 'Cesantias Consolidadas', NULL, NULL, NULL, NULL, 25),
(2515, 'Intereses Sobre Cesantías', NULL, NULL, NULL, NULL, 25),
(2520, 'Prima de Servicios', NULL, NULL, NULL, NULL, 25),
(2525, 'Vacaciones Consolidadas', NULL, NULL, NULL, NULL, 25),
(2530, 'Prestaciones Extralegales', NULL, NULL, NULL, NULL, 25),
(2532, 'Pensiones por Pagar', NULL, NULL, NULL, NULL, 25),
(2535, 'Cuotas Partes Pensiones de Jubilación', NULL, NULL, NULL, NULL, 25),
(2540, 'Indemnizaciones Laborales', NULL, NULL, NULL, NULL, 25),
(2605, 'Para Costos y Gastos', NULL, NULL, NULL, NULL, 26),
(2610, 'Para Obligaciones Laborales', NULL, NULL, NULL, NULL, 26),
(2615, 'Para Obligaciones Fiscales', NULL, NULL, NULL, NULL, 26),
(2620, 'Pensiones de Jubilación', NULL, NULL, NULL, NULL, 26),
(2625, 'Para Obras de Urbanismo', NULL, NULL, NULL, NULL, 26),
(2630, 'Para Mantenimiento y Reparaciones', NULL, NULL, NULL, NULL, 26),
(2635, 'Para Contingencias', NULL, NULL, NULL, NULL, 26),
(2640, 'Para Obligaciones de Garantías', NULL, NULL, NULL, NULL, 26),
(2695, 'Provisiones Diversas', NULL, NULL, NULL, NULL, 26),
(2705, 'Ingresos Recibidos por Anticipado', NULL, NULL, NULL, NULL, 27),
(2710, 'Abonos Diferidos', NULL, NULL, NULL, NULL, 27),
(2715, 'Utilidad Diferida en Vnetas a Plazos', NULL, NULL, NULL, NULL, 27),
(2720, 'Crédito por Corrección Monetaria Diferida', NULL, NULL, NULL, NULL, 27),
(2725, 'Impuestos Diferidos', NULL, NULL, NULL, NULL, 27),
(2805, 'Anticipo y avances Recibidos', NULL, NULL, NULL, NULL, 28),
(2810, 'Depósitos Recibidos', NULL, NULL, NULL, NULL, 28),
(2815, 'Ingresos Recibidos Para Terceros', NULL, NULL, NULL, NULL, 28),
(2820, 'Cuentas de Operacón Conjunta', NULL, NULL, NULL, NULL, 28),
(2825, 'Retenciones a Terceros Sobre Contratos', NULL, NULL, NULL, NULL, 28),
(2830, 'Embargos Judiciales', NULL, NULL, NULL, NULL, 28),
(2835, 'Acreedores del Sistema', NULL, NULL, NULL, NULL, 28),
(2840, 'Cuentas en Particiación', NULL, NULL, NULL, NULL, 28),
(2895, 'Diversos', NULL, NULL, NULL, NULL, 28),
(2905, 'Bonos en Circulación', NULL, NULL, NULL, NULL, 29),
(2910, 'Bonos Obligatoriamente Convertibles en Acciones', NULL, NULL, NULL, NULL, 29),
(2915, 'Papeles Comerciales', NULL, NULL, NULL, NULL, 29),
(2920, 'Bonos Pensionales', NULL, NULL, NULL, NULL, 29),
(2925, 'Títulos Pensionales', NULL, NULL, NULL, NULL, 29),
(3105, 'Capital Suscrito y Pagado', NULL, NULL, NULL, NULL, 31),
(3115, 'Aportes Sociales', NULL, NULL, NULL, NULL, 31),
(3120, 'Capital Asignado', NULL, NULL, NULL, NULL, 31),
(3125, 'Inversion Suplementaria al Capital Asignado', NULL, NULL, NULL, NULL, 31),
(3130, 'Capital de Personas Naturales', NULL, NULL, NULL, NULL, 31),
(3135, 'Aportes del Estado', NULL, NULL, NULL, NULL, 31),
(3140, 'Fondo Social', NULL, NULL, NULL, NULL, 31),
(3205, 'Prima en Colocacion de Acciones, Cuotas o Partes de Interés Social', NULL, NULL, NULL, NULL, 32),
(3210, 'Donaciones', NULL, NULL, NULL, NULL, 32),
(3215, 'Crédito Mercantil', NULL, NULL, NULL, NULL, 32),
(3220, 'Know How', NULL, NULL, NULL, NULL, 32),
(3225, 'Superávit Método de Participación', NULL, NULL, NULL, NULL, 32),
(3305, 'Reservas Oblegatorias', NULL, NULL, NULL, NULL, 33),
(3310, 'Reservas Estatutarias', NULL, NULL, NULL, NULL, 33),
(3315, 'Reservas Ocacionales', NULL, NULL, NULL, NULL, 33),
(3405, 'Ajustes por Inflación', NULL, NULL, NULL, NULL, 34),
(3410, 'Saneamiento Fiscal', NULL, NULL, NULL, NULL, 34),
(3415, 'Ajustes por Inflación Decreto 3019 de 1989', NULL, NULL, NULL, NULL, 34),
(3505, 'Dividendos Decretados en Acciones', NULL, NULL, NULL, NULL, 35),
(3510, 'Participaciones Decretadas en Cuotas o Partes de Interes Social', NULL, NULL, NULL, NULL, 35),
(3605, 'Utilidad del Ejercicio', NULL, NULL, NULL, NULL, 36),
(3610, 'Pérdida del Ejercicio', NULL, NULL, NULL, NULL, 36),
(3705, 'Utilidades Acomuladas', NULL, NULL, NULL, NULL, 37),
(3710, 'Pérdidas Acomuladas', NULL, NULL, NULL, NULL, 37),
(3805, 'De Inversiones', NULL, NULL, NULL, NULL, 38),
(3810, 'De Propiedades, Planta y Equipo', NULL, NULL, NULL, NULL, 38),
(3895, 'De Otros Activos', NULL, NULL, NULL, NULL, 38),
(4105, 'Agricultura,Ganaderia,Caza y Silvicultura', NULL, NULL, NULL, NULL, 41),
(4110, 'Pesca', NULL, NULL, NULL, NULL, 41),
(4115, 'Explotacion de Minas y Canteras', NULL, NULL, NULL, NULL, 41),
(4120, 'Industrias Manufactureras', NULL, NULL, NULL, NULL, 41),
(4125, 'Suministro de Electricidad,Gas y Agua', NULL, NULL, NULL, NULL, 41),
(4130, 'Construcción', NULL, NULL, NULL, NULL, 41),
(4135, 'Comercio al Por Mayor y al Por Menor', NULL, NULL, NULL, NULL, 41),
(4140, 'Hoteles y Restaurantes', NULL, NULL, NULL, NULL, 41),
(4145, 'Transporte, Almacenamiento y Comunicaciones', NULL, NULL, NULL, NULL, 41),
(4150, 'Actividad Financiera', NULL, NULL, NULL, NULL, 41),
(4155, 'Actividades Inmobiliarias,Empresariales y de Alquiler', NULL, NULL, NULL, NULL, 41),
(4160, 'Enseñanza', NULL, NULL, NULL, NULL, 41),
(4165, 'Servicios Sociales y de Salud', NULL, NULL, NULL, NULL, 41),
(4170, 'Otras Actividades de Servicios Comunitarios, Sociales y Personales', NULL, NULL, NULL, NULL, 41),
(4175, 'Devoluciones en Ventas (DB)', NULL, NULL, NULL, NULL, 41),
(4205, 'Otras Ventas', NULL, NULL, NULL, NULL, 42),
(4210, 'Financieros', NULL, NULL, NULL, NULL, 42),
(4215, 'Dividendos y Participaciones', NULL, NULL, NULL, NULL, 42),
(4218, 'Ingresos Métodos de Participación', NULL, NULL, NULL, NULL, 42),
(4220, 'Arrendamientos', NULL, NULL, NULL, NULL, 42),
(4225, 'Comisiones', NULL, NULL, NULL, NULL, 42),
(4230, 'Honorarios', NULL, NULL, NULL, NULL, 42),
(4235, 'Servicios', NULL, NULL, NULL, NULL, 42),
(4240, 'Utilidad en Venta de Inversiones', NULL, NULL, NULL, NULL, 42),
(4245, 'Utilidad en Venta de Propiedades,Planta y Equipo', NULL, NULL, NULL, NULL, 42),
(4248, 'Utilidad en Venta  de Otros Bienes', NULL, NULL, NULL, NULL, 42),
(4250, 'Recuperaciones', NULL, NULL, NULL, NULL, 42),
(4255, 'Indemnizaciones', NULL, NULL, NULL, NULL, 42),
(4260, 'Participaciones en Concesiones', NULL, NULL, NULL, NULL, 42),
(4265, 'Ingresos de Ejercicios Anteriores', NULL, NULL, NULL, NULL, 42),
(4275, 'Devoluciones en Otras Ventas(DB)', NULL, NULL, NULL, NULL, 42),
(4295, 'Diversos', NULL, NULL, NULL, NULL, 42),
(4705, 'Corrección Monetaria', NULL, NULL, NULL, NULL, 47),
(5105, 'Gastos de Personal', NULL, NULL, NULL, NULL, 51),
(5110, 'Honorarios', NULL, NULL, NULL, NULL, 51),
(5115, 'Impuestos', NULL, NULL, NULL, NULL, 51),
(5120, 'Arrendamientos', NULL, NULL, NULL, NULL, 51),
(5125, 'Contribuciones y Afiliaciones', NULL, NULL, NULL, NULL, 51),
(5130, 'Seguros', NULL, NULL, NULL, NULL, 51),
(5135, 'Servicios', NULL, NULL, NULL, NULL, 51),
(5140, 'Mantenimiento y Reparaciones', NULL, NULL, NULL, NULL, 51),
(5150, 'Adecuacion e Instalación', NULL, NULL, NULL, NULL, 51),
(5155, 'Gastos de Viaje', NULL, NULL, NULL, NULL, 51),
(5160, 'Depreciaciones', NULL, NULL, NULL, NULL, 51),
(5165, 'Amortizaciones', NULL, NULL, NULL, NULL, 51),
(5195, 'Diversos', NULL, NULL, NULL, NULL, 51),
(5199, 'Provisiones', NULL, NULL, NULL, NULL, 51),
(5205, 'Gatos de Personal', NULL, NULL, NULL, NULL, 52),
(5210, 'Honorarios', NULL, NULL, NULL, NULL, 52),
(5215, 'Impuestos', NULL, NULL, NULL, NULL, 52),
(5220, 'Arrendamientos', NULL, NULL, NULL, NULL, 52),
(5225, 'Contribuciones y Afiliciones', NULL, NULL, NULL, NULL, 52),
(5230, 'Seguros', NULL, NULL, NULL, NULL, 52),
(5235, 'Servicios', NULL, NULL, NULL, NULL, 52),
(5240, 'Gastos Legales', NULL, NULL, NULL, NULL, 52),
(5245, 'Mantenimiento y Reparaciones', NULL, NULL, NULL, NULL, 52),
(5250, 'Adecuacion e Instalación', NULL, NULL, NULL, NULL, 52),
(5255, 'Gatos de Viaje', NULL, NULL, NULL, NULL, 52),
(5260, 'Depreciaciones', NULL, NULL, NULL, NULL, 52),
(5265, 'Amortizaciones', NULL, NULL, NULL, NULL, 52),
(5270, 'Financieros-Reajuste del Sistema', NULL, NULL, NULL, NULL, 52),
(5275, 'Pérdidas Método de Participación', NULL, NULL, NULL, NULL, 52),
(5295, 'Diversos', NULL, NULL, NULL, NULL, 52),
(5299, 'Provisiones', NULL, NULL, NULL, NULL, 52),
(5305, 'Financieros', NULL, NULL, NULL, NULL, 53),
(5310, 'Pérdida en Venta y Retiro de Bienes', NULL, NULL, NULL, NULL, 53),
(5313, 'Pérdidas Método de Participación', NULL, NULL, NULL, NULL, 53),
(5315, 'Gastos Extraordinarios', NULL, NULL, NULL, NULL, 53),
(5395, 'Gastos Diversos', NULL, NULL, NULL, NULL, 53),
(5405, 'Impuesto de Renta y Complementarios', NULL, NULL, NULL, NULL, 54),
(5905, 'Ganancias y Pérdidas', NULL, NULL, NULL, NULL, 59),
(6105, 'Agricultura,Ganadería,Caza y Silvicultura', NULL, NULL, NULL, NULL, 61),
(6110, 'Pesca', NULL, NULL, NULL, NULL, 61),
(6115, 'Explotación de Minas y Canteras', NULL, NULL, NULL, NULL, 61),
(6120, 'Industrias Manufactureras', NULL, NULL, NULL, NULL, 61),
(6125, 'Suministro de Electricidad,Gas y Agua', NULL, NULL, NULL, NULL, 61),
(6130, 'Construcción', NULL, NULL, NULL, NULL, 61),
(6135, 'Comercio al Por Mayor y al Por Menor', NULL, NULL, NULL, NULL, 61),
(6140, 'Hoteles y Restaurantes', NULL, NULL, NULL, NULL, 61),
(6145, 'Transporte,Almacenamiento y Comunicaciones', NULL, NULL, NULL, NULL, 61),
(6150, 'Actividad Financiera', NULL, NULL, NULL, NULL, 61),
(6155, 'Actividades Inmobiliarias,Empresariales y de Alquiler', NULL, NULL, NULL, NULL, 61),
(6160, 'Enseñanza', NULL, NULL, NULL, NULL, 61),
(6165, 'Servicios Sociales y de Salud', NULL, NULL, NULL, NULL, 61),
(6170, 'Otras Actividades de Servicios Comunitarios, Sociales y Personales', NULL, NULL, NULL, NULL, 61),
(6205, 'De Mercancías', NULL, NULL, NULL, NULL, 62),
(6210, 'De Materias Primas', NULL, NULL, NULL, NULL, 62),
(6215, 'De Materiales Indirectos', NULL, NULL, NULL, NULL, 62),
(6220, 'Compra de Energía', NULL, NULL, NULL, NULL, 62),
(6225, 'Devoluciones en Compras(CR)', NULL, NULL, NULL, NULL, 62),
(8105, 'Bienes y Valores Entregados en Custodia', NULL, NULL, NULL, NULL, 81),
(8110, 'Bienes y Valores Entregados en Garantía', NULL, NULL, NULL, NULL, 81),
(8115, 'Bienes y Valores en Poder de terceros', NULL, NULL, NULL, NULL, 81),
(8120, 'Litigios o Demandas', NULL, NULL, NULL, NULL, 81),
(8125, 'Promesaas de Compraventa', NULL, NULL, NULL, NULL, 81),
(8195, 'Diversas', NULL, NULL, NULL, NULL, 81),
(8305, 'Bienes Recibidos en Arrendamiento Financiero', NULL, NULL, NULL, NULL, 83),
(8310, 'Títulos de Inversión no colocados', NULL, NULL, NULL, NULL, 83),
(8315, 'Propiedades,Planta y Equipo Totalmente Depreciados,Agotados y/o Amortizados', NULL, NULL, NULL, NULL, 83),
(8320, 'Créditos a Favor no Utilizados', NULL, NULL, NULL, NULL, 83),
(8325, 'Activos Castigados', NULL, NULL, NULL, NULL, 83),
(8330, 'Títulos de Inversión Amortizados', NULL, NULL, NULL, NULL, 83),
(8335, 'Capitalización por Revalorización de Patrimonio', NULL, NULL, NULL, NULL, 83),
(8395, 'Otras Cuentas Deudoras de Control', NULL, NULL, NULL, NULL, 83),
(8399, 'Ajustes por Inflacion Activos', NULL, NULL, NULL, NULL, 83),
(9105, 'Bienes y Valores Recibidos en Custodia', NULL, NULL, NULL, NULL, 91),
(9110, 'Bienes y Valores Recibidos en Garantía', NULL, NULL, NULL, NULL, 91),
(9115, 'Bienes y Valores Recibidos de Terceros', NULL, NULL, NULL, NULL, 91),
(9120, 'Litigios y/o Demandas', NULL, NULL, NULL, NULL, 91),
(9125, 'Promesas de Compraventa', NULL, NULL, NULL, NULL, 91),
(9130, 'Contratos de Administración Delegada', NULL, NULL, NULL, NULL, 91),
(9135, 'Cuentas en Participacion', NULL, NULL, NULL, NULL, 91),
(9195, 'Otras Responsabilidades Contingentes', NULL, NULL, NULL, NULL, 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `empresa_id` int(11) NOT NULL,
  `tipo_id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `representante` varchar(255) NOT NULL,
  PRIMARY KEY (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `tipo_id`, `nombre`, `correo`, `telefono`, `direccion`, `representante`) VALUES
(123456, 'NIT', 'Demo', 'semilleroinnova24@gmail.com', '3219573208', 'SENA Pescadero', 'Semillero Innova');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `grupo_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo_imp` varchar(255) DEFAULT NULL,
  `vlr_imp` int(11) DEFAULT NULL,
  `naturaleza` varchar(255) DEFAULT NULL,
  `clase_id` int(11) NOT NULL,
  PRIMARY KEY (`grupo_id`),
  KEY `grupo_clase_id_foreign` (`clase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`grupo_id`, `nombre`, `descripcion`, `tipo_imp`, `vlr_imp`, `naturaleza`, `clase_id`) VALUES
(11, 'Disponible', NULL, NULL, NULL, NULL, 1),
(12, 'Inversiones', NULL, NULL, NULL, NULL, 1),
(13, 'Deudores', NULL, NULL, NULL, NULL, 1),
(14, 'Inventarios', NULL, NULL, NULL, NULL, 1),
(15, 'Propiedades, Planta y Equipo', NULL, NULL, NULL, NULL, 1),
(16, 'Intangibles', NULL, NULL, NULL, NULL, 1),
(17, 'Diferidos', NULL, NULL, NULL, NULL, 1),
(18, 'Otros Activos', NULL, NULL, NULL, NULL, 1),
(19, 'Valorizaciones', NULL, NULL, NULL, NULL, 1),
(21, 'Obligaciones Financieras', NULL, NULL, NULL, NULL, 2),
(22, 'Proveedores', NULL, NULL, NULL, NULL, 2),
(23, 'Cuentas por Pagar', NULL, NULL, NULL, NULL, 2),
(24, 'Impuestos, Gravamenes y Tasas', NULL, NULL, NULL, NULL, 2),
(25, 'Obligaciones Laborales', NULL, NULL, NULL, NULL, 2),
(26, 'Pasivos Estimados y Provisiones', NULL, NULL, NULL, NULL, 2),
(27, 'Diferidos', NULL, NULL, NULL, NULL, 2),
(28, 'Otros Pasivos', NULL, NULL, NULL, NULL, 2),
(29, 'Bonos y Papeles Comerciales', NULL, NULL, NULL, NULL, 2),
(31, 'Capital Social', NULL, NULL, NULL, NULL, 3),
(32, 'Superávid de Capital', NULL, NULL, NULL, NULL, 3),
(33, 'Reservas', NULL, NULL, NULL, NULL, 3),
(34, 'Revalorizacion del Patrimonio', NULL, NULL, NULL, NULL, 3),
(35, 'Dividendos o Participaciones Decretados en Acciones, Cuotas o Partes de Interes Social', NULL, NULL, NULL, NULL, 3),
(36, 'Resultados del Ejercicio', NULL, NULL, NULL, NULL, 3),
(37, 'Resultados de Ejercicios Anteriores', NULL, NULL, NULL, NULL, 3),
(38, 'Superávit por Valorizaciones', NULL, NULL, NULL, NULL, 3),
(41, 'Operacionales', NULL, NULL, NULL, NULL, 4),
(42, 'No Operacionales', NULL, NULL, NULL, NULL, 4),
(47, 'Ajustes por Inflación', NULL, NULL, NULL, NULL, 4),
(51, 'Operacionales de Administracion', NULL, NULL, NULL, NULL, 5),
(52, 'Operacionales de Venta', NULL, NULL, NULL, NULL, 5),
(53, 'No Operacionales', NULL, NULL, NULL, NULL, 5),
(54, 'Impuesto de Renta y Complementarios', NULL, NULL, NULL, NULL, 5),
(59, 'Ganancias y Perdidadas', NULL, NULL, NULL, NULL, 5),
(61, 'Costo de Ventas y de Prestacion de Servicios', NULL, NULL, NULL, NULL, 6),
(62, 'Compras', NULL, NULL, NULL, NULL, 6),
(71, 'Materia Prima', NULL, NULL, NULL, NULL, 7),
(72, 'Mano de Obra Directa', NULL, NULL, NULL, NULL, 7),
(73, 'Costos Indirectos', NULL, NULL, NULL, NULL, 7),
(74, 'Contratos de Servicios', NULL, NULL, NULL, NULL, 7),
(81, 'Derechos Contingentes', NULL, NULL, NULL, NULL, 8),
(82, 'Deudoras Fiscales', NULL, NULL, NULL, NULL, 8),
(83, 'Deudoras de Control', NULL, NULL, NULL, NULL, 8),
(84, 'Derechos Contingentes por Contra (CR)', NULL, NULL, NULL, NULL, 8),
(85, 'Deudoras Fiscales por Contra (CR)', NULL, NULL, NULL, NULL, 8),
(86, 'Deudoras de Control por Contra (CR)', NULL, NULL, NULL, NULL, 8),
(91, 'Responsabilidades Contingentes', NULL, NULL, NULL, NULL, 9),
(92, 'Acreedoras Fiscales', NULL, NULL, NULL, NULL, 9),
(93, 'Acreedoras de Control', NULL, NULL, NULL, NULL, 9),
(94, 'Responsabilidades Contingentes por Contra (DB)', NULL, NULL, NULL, NULL, 9),
(95, 'Acreedoras Fiscales por Contra (DB)', NULL, NULL, NULL, NULL, 9),
(96, 'Acreedoras de Control por Contra (DB)', NULL, NULL, NULL, NULL, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `knex_migrations`
--

CREATE TABLE IF NOT EXISTS `knex_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `knex_migrations`
--

INSERT INTO `knex_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '20190313110545_clase.js', 1, '2019-08-28 13:57:11'),
(2, '20190313110553_grupo.js', 1, '2019-08-28 13:57:28'),
(3, '20190313110600_cuenta.js', 1, '2019-08-28 13:57:41'),
(4, '20190313110604_subcuenta.js', 1, '2019-08-28 13:57:44'),
(5, '20190315100700_empresa.js', 1, '2019-08-28 13:57:45'),
(6, '20190315100708_bancos.js', 1, '2019-08-28 13:57:53'),
(7, '20190319085850_tercero.js', 1, '2019-08-28 13:57:57'),
(8, '20190503101225_comprobante.js', 1, '2019-08-28 13:58:04'),
(9, '20190503111548_asiento.js', 1, '2019-08-28 13:58:10'),
(10, '20190712100439_usuarios.js', 1, '2019-08-28 13:58:15'),
(11, '20190812101427_periodo_contable.js', 1, '2019-08-28 13:58:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `knex_migrations_lock`
--

CREATE TABLE IF NOT EXISTS `knex_migrations_lock` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `knex_migrations_lock`
--

INSERT INTO `knex_migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_contable`
--

CREATE TABLE IF NOT EXISTS `periodo_contable` (
  `periodo_id` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`periodo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `periodo_contable`
--

INSERT INTO `periodo_contable` (`periodo_id`, `nombre`) VALUES
(0, 'Inicio'),
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre'),
(13, 'Cierre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcuenta`
--

CREATE TABLE IF NOT EXISTS `subcuenta` (
  `subcuenta_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo_imp` varchar(255) DEFAULT NULL,
  `vlr_imp` int(11) DEFAULT NULL,
  `naturaleza` varchar(255) DEFAULT NULL,
  `cuenta_id` int(11) NOT NULL,
  PRIMARY KEY (`subcuenta_id`),
  KEY `subcuenta_cuenta_id_foreign` (`cuenta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tercero`
--

CREATE TABLE IF NOT EXISTS `tercero` (
  `tercero_id` bigint(20) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `id_representante` varchar(255) NOT NULL,
  `representante` varchar(255) NOT NULL,
  `url_foto` varchar(255) DEFAULT NULL,
  `cliente` tinyint(1) DEFAULT '0',
  `proveedor` tinyint(1) DEFAULT '0',
  `asociado` tinyint(1) DEFAULT '0',
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`tercero_id`),
  KEY `tercero_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `usuario_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `nombre`, `username`, `correo`, `clave`, `rol`, `empresa_id`) VALUES
(123456789, 'admin', 'admin', 'semilleroinnova24@gmail.com', '123456', 'ADMIN', 123456);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `asiento_tercero_id_foreign` FOREIGN KEY (`tercero_id`) REFERENCES `tercero` (`tercero_id`);

--
-- Filtros para la tabla `banco`
--
ALTER TABLE `banco`
  ADD CONSTRAINT `banco_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`),
  ADD CONSTRAINT `banco_subcuenta_id_foreign` FOREIGN KEY (`subcuenta_id`) REFERENCES `subcuenta` (`subcuenta_id`);

--
-- Filtros para la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD CONSTRAINT `comprobante_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`grupo_id`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_clase_id_foreign` FOREIGN KEY (`clase_id`) REFERENCES `clase` (`clase_id`);

--
-- Filtros para la tabla `subcuenta`
--
ALTER TABLE `subcuenta`
  ADD CONSTRAINT `subcuenta_cuenta_id_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`cuenta_id`);

--
-- Filtros para la tabla `tercero`
--
ALTER TABLE `tercero`
  ADD CONSTRAINT `tercero_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`);
--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE IF NOT EXISTS `almacenes` (
  `codigo` int(11) NOT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `capacidad` int(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`codigo`, `lugar`, `capacidad`) VALUES
(1210, 'CECI', 200),
(1211, 'ARTICO', 100),
(1212, 'SINALOA', 230),
(1213, 'CUCUTADF', 30),
(1214, 'MONTERREY', 190),
(1215, 'MEDELLIN', 300),
(1216, 'BOGOTA', 310);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE IF NOT EXISTS `cajas` (
  `num_referencia` varchar(6) NOT NULL DEFAULT '',
  `contenido` varchar(100) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `codigo_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_referencia`),
  KEY `codigo_fk` (`codigo_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`codigo_fk`) REFERENCES `almacenes` (`codigo`);
--
-- Base de datos: `tienda-bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `producto`, `stock`, `precio`) VALUES
(1, 'Galleta', 200, '0.60'),
(2, 'Sublime', 150, '1.50'),
(3, 'Frugos', 50, '3.50'),
(18, 'leche', 20, '3.00'),
(19, 'Jugo', 40, '2.00'),
(20, 'leche', 20, '3.00'),
(21, 'Jugo', 40, '2.00');
--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `nit` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `representante` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `clave` varchar(50) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
