-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2020 a las 05:54:38
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Identificacion` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Identificacion`, `Codigo`, `Nombre`, `Apellidos`) VALUES
(0, 0, '', ''),
(1452, 315332032, 'ojnjonpopb', 'yibiybyibiybyib'),
(48477, 1901751963, 'rÃ±hbgibgiyhr', 'fkffnoufhfh'),
(234555, 617955607, 'Andres', 'jhhyy'),
(418484, 1337659831, 'Ã±fbfyibfgf', 'pifbpiyfbpifg'),
(484848, 482276535, 'fjÃ±fuhfh', 'uhfufhufhf'),
(565644, 782959274, 'Andres', 'fljjgbgbg'),
(576778, 146177659, 'nÃ±fjbfhbfb', 'dhbfhbffb'),
(576779, 1595039231, 'nÃ±fjbfhbfb', 'dhbfhbffb'),
(1097584, 36841926, 'Andres', 'Gutierres'),
(1345566, 283305574, 'Ã±jdbÃ±ofblffg', 'lihvdilvfyilvyfvgf'),
(3566777, 1867148347, 'fhbfifyy', 'yigfyifgyfg'),
(4684484, 1470722201, 'Ã±ublfubflibfilbflb', 'livyilvrfyvrylvr'),
(5484878, 1969056559, 'nÃ±fjbfhbfb', 'dhbfhbffb'),
(9475757, 854344596, 'Ã±jbvÃ±bvfbufbh', 'Ã±ubfÃ±uebufhufhf'),
(16588585, 267681106, 'Â´nuohpbyigoyg', 'vugtvictcirfrcrc'),
(18484554, 1113535688, 'jldfuffilgflyifg', 'igdiygfyigflygf'),
(19388557, 60597970, 'Juan Fernando', 'Agudelo'),
(23455666, 1309956424, 'fjbÃ±fbflibf', 'Ã±ubÃ±fibfiybfifbg'),
(44454845, 1170252492, 'khdbilffg', 'vydvlfff'),
(45678888, 1065940603, 'Juan Carlos', 'fkffnoufhfh'),
(87687383, 1395026210, 'Mateo', 'Sanchez'),
(198488473, 1749684633, 'Ã±jnfÃ±uhfÃ±ufÃ±uh', 'jdbÃ±ulfbfbg'),
(436786877, 1249879385, 'jdbÃ±fbfkgfylg', 'ugdÃ±iyglfiygilfyf'),
(485151541, 1127874046, 'jfbfhkbfbf', 'liyebyigylg'),
(646677484, 884120339, 'odÃ±ouffugfiyg', 'lvfylfvyfvfff'),
(874775577, 1612874045, 'fjÃ±fuhfhfh', 'ubeÃ±uhfuÃ±fhÃ±fhf'),
(887878787, 329729534, 'jdbÃ±fuhÃ±fuhfu', 'ghjjjjk'),
(1008747464, 1792476641, 'cesar', 'tolosa'),
(2147483647, 140243667, 'jbkfhgfygfygf', 'yubfyigfyigff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Celular` int(10) UNSIGNED DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `Registro_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `ID` int(11) NOT NULL,
  `Hora_entrada` datetime NOT NULL,
  `Hora_salida` datetime DEFAULT NULL,
  `Clientes_Identificacion` int(11) NOT NULL,
  `Vehiculo_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `idTarifas` int(11) NOT NULL,
  `tipovehiculo` varchar(45) DEFAULT NULL,
  `precioHora` varchar(45) DEFAULT NULL,
  `precioDia` varchar(45) DEFAULT NULL,
  `precioMes` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `idTurnos` int(11) NOT NULL,
  `entrada` datetime NOT NULL,
  `salida` datetime DEFAULT NULL,
  `Empleado_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_has_registro`
--

CREATE TABLE `turnos_has_registro` (
  `id` int(11) NOT NULL,
  `Turnos_idTurnos` int(11) NOT NULL,
  `Registro_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `codigo` int(11) NOT NULL,
  `Placa` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Clientes_Identificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`codigo`, `Placa`, `Tipo`, `Color`, `Clientes_Identificacion`) VALUES
(36841926, 'gdf471', 'Moto', 'Rojo', 1097584),
(146177659, '', 'Carro', 'Blanco', 576778),
(1170252492, 'cde844', 'Moto', 'Negro', 44454845),
(1470722201, 'tgs356', 'Carro', 'Rojo', 4684484),
(1612874045, 'ddf896', 'Carro', 'Gris', 874775577);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Identificacion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `fk_Factura_Registro1_idx` (`Registro_ID`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_Registro_Clientes1_idx` (`Clientes_Identificacion`),
  ADD KEY `fk_Registro_Vehiculo1_idx` (`Vehiculo_codigo`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`idTarifas`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`idTurnos`),
  ADD KEY `fk_Turnos_Empleado1_idx` (`Empleado_ID`);

--
-- Indices de la tabla `turnos_has_registro`
--
ALTER TABLE `turnos_has_registro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Turnos_has_Registro_Registro1_idx` (`Registro_ID`),
  ADD KEY `fk_Turnos_has_Registro_Turnos1_idx` (`Turnos_idTurnos`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `Placa_UNIQUE` (`Placa`),
  ADD KEY `fk_Vehiculo_Clientes1_idx` (`Clientes_Identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1612874046;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_Factura_Registro1` FOREIGN KEY (`Registro_ID`) REFERENCES `registro` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `fk_Registro_Clientes1` FOREIGN KEY (`Clientes_Identificacion`) REFERENCES `clientes` (`Identificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Registro_Vehiculo1` FOREIGN KEY (`Vehiculo_codigo`) REFERENCES `vehiculo` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD CONSTRAINT `fk_Turnos_Empleado1` FOREIGN KEY (`Empleado_ID`) REFERENCES `empleado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `turnos_has_registro`
--
ALTER TABLE `turnos_has_registro`
  ADD CONSTRAINT `fk_Turnos_has_Registro_Registro1` FOREIGN KEY (`Registro_ID`) REFERENCES `registro` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Turnos_has_Registro_Turnos1` FOREIGN KEY (`Turnos_idTurnos`) REFERENCES `turnos` (`idTurnos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_Vehiculo_Clientes1` FOREIGN KEY (`Clientes_Identificacion`) REFERENCES `clientes` (`Identificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
