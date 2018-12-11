-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2018 a las 22:48:46
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `simuladornegocios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptocrecimientodemanda`
--

CREATE TABLE `conceptocrecimientodemanda` (
  `idccd` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `crecimientoInicial` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costostotalesanuales`
--

CREATE TABLE `costostotalesanuales` (
  `idcostosTotalesAnuales` int(11) NOT NULL,
  `anio` double NOT NULL,
  `tiposGastos_idtiposGastos` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crecimientodemanda`
--

CREATE TABLE `crecimientodemanda` (
  `idcrecimientoDemanda` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `crecimiento` double NOT NULL,
  `conceptoCrecimientoDemanda_idccd` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE `datos_empresa` (
  `id_empresa` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `nombre_empresa` varchar(85) NOT NULL,
  `dias_produccion` int(11) NOT NULL,
  `numero_servicios` int(11) NOT NULL,
  `no_socios` int(11) NOT NULL,
  `denominacion_social` varchar(105) NOT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `sitio_web` varchar(85) DEFAULT NULL,
  `email` varchar(85) DEFAULT NULL,
  `calle_domicilio` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(6) DEFAULT NULL,
  `ciudad_empresa` varchar(90) DEFAULT NULL,
  `estado_empresa` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion_crecimiento_anual`
--

CREATE TABLE `estimacion_crecimiento_anual` (
  `producto_servicio_id_producto` int(11) NOT NULL,
  `numero_anio` int(11) NOT NULL,
  `estimacion` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion_servicios`
--

CREATE TABLE `estimacion_servicios` (
  `id_suscripcion` int(11) NOT NULL,
  `unidad_produccion` varchar(45) NOT NULL,
  `total_suscripciones` int(11) NOT NULL,
  `total_mensual` double NOT NULL,
  `producto_servicio_id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idgastos` int(11) NOT NULL,
  `conceptoGastos` varchar(85) NOT NULL,
  `unidadMedida` varchar(48) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `tiposGastos_idtiposGastos` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastosindirectos`
--

CREATE TABLE `gastosindirectos` (
  `idgastosIndirectos` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastosoperativos`
--

CREATE TABLE `gastosoperativos` (
  `idgastosOperativos` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `idtipoGasto` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversiones`
--

CREATE TABLE `inversiones` (
  `idinversiones` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `unidad_medida` varchar(85) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double NOT NULL,
  `subtotal_1` double NOT NULL,
  `aportacion_propio` double NOT NULL,
  `aportacion_financiacion` double NOT NULL,
  `subtotal_2` double NOT NULL,
  `tiposInversiones_idtiposInversiones` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  `depreciacion-amortizacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobra`
--

CREATE TABLE `manoobra` (
  `idManoObra` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `salario_base` double NOT NULL,
  `total_empleados` int(11) NOT NULL,
  `costo_anual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobracomisionesventa`
--

CREATE TABLE `manoobracomisionesventa` (
  `idmanoObraComisionesVenta` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `ventas_mensuales` double NOT NULL,
  `comision` double NOT NULL,
  `total_empleados` int(11) NOT NULL,
  `costo_anual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobraoperativa`
--

CREATE TABLE `manoobraoperativa` (
  `idmanoObraOperativa` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `servicio_id_producto` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprimainsumos`
--

CREATE TABLE `materiaprimainsumos` (
  `idmateriaPrimaInsumos` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `idperfil` int(11) NOT NULL,
  `nombre_usuario` varchar(85) NOT NULL,
  `apellido_p_usuario` varchar(85) NOT NULL,
  `apellido_m_usuario` varchar(85) DEFAULT NULL,
  `rfc_usuario` varchar(12) DEFAULT NULL,
  `email_usuario` varchar(85) DEFAULT NULL,
  `telefono_usuario` varchar(15) DEFAULT NULL,
  `domicilio_usuario` varchar(110) DEFAULT NULL,
  `colonia_usuario` varchar(85) DEFAULT NULL,
  `codigo_postal_usuario` varchar(6) DEFAULT NULL,
  `ciudad_usuario` varchar(90) DEFAULT NULL,
  `estado_usuario` varchar(85) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_servicio`
--

CREATE TABLE `producto_servicio` (
  `id_producto` int(11) NOT NULL,
  `producto_nombre` varchar(65) NOT NULL,
  `unidad_produccion` varchar(45) NOT NULL,
  `produccion_mensual` int(11) NOT NULL,
  `costo_unitario` double NOT NULL,
  `margen_utilidad` double NOT NULL,
  `precio_publico` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipogastooperativo`
--

CREATE TABLE `tipogastooperativo` (
  `idtipoGasto` int(11) NOT NULL,
  `concepto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposgastos`
--

CREATE TABLE `tiposgastos` (
  `idtiposGastos` int(11) NOT NULL,
  `concepto` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposinversiones`
--

CREATE TABLE `tiposinversiones` (
  `idtiposInversiones` int(11) NOT NULL,
  `concepto` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idtipoUsuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `no_empresas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idtipoUsuario`, `nombre`, `no_empresas`) VALUES
(1, 'itca', 3),
(2, 'tecnm', 1),
(3, 'apple', 16),
(5, 'huawei', 9),
(7, 'jumex', 22),
(9, 'purificadora', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(85) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_access` date NOT NULL,
  `tipoUsuario_idtipoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `password`, `last_access`, `tipoUsuario_idtipoUsuario`) VALUES
(1, 'cris', 'trompas', '2018-11-12', 7),
(2, 'nose', 'nose', '2018-11-10', 1),
(3, 'chris', 'trompetaaaaa', '2018-12-10', 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conceptocrecimientodemanda`
--
ALTER TABLE `conceptocrecimientodemanda`
  ADD PRIMARY KEY (`idccd`);

--
-- Indices de la tabla `costostotalesanuales`
--
ALTER TABLE `costostotalesanuales`
  ADD PRIMARY KEY (`idcostosTotalesAnuales`,`tiposGastos_idtiposGastos`,`datos_empresa_id_empresa`),
  ADD KEY `fk_costosTotalesAnuales_tiposGastos1_idx` (`tiposGastos_idtiposGastos`),
  ADD KEY `fk_costosTotalesAnuales_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `crecimientodemanda`
--
ALTER TABLE `crecimientodemanda`
  ADD PRIMARY KEY (`idcrecimientoDemanda`,`conceptoCrecimientoDemanda_idccd`,`datos_empresa_id_empresa`),
  ADD KEY `fk_crecimientoDemanda_conceptoCrecimientoDemanda1_idx` (`conceptoCrecimientoDemanda_idccd`),
  ADD KEY `fk_crecimientoDemanda_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD PRIMARY KEY (`id_empresa`,`usuario_idusuario`),
  ADD KEY `fk_datos_empresa_usuario1_idx` (`usuario_idusuario`);

--
-- Indices de la tabla `estimacion_crecimiento_anual`
--
ALTER TABLE `estimacion_crecimiento_anual`
  ADD PRIMARY KEY (`producto_servicio_id_producto`);

--
-- Indices de la tabla `estimacion_servicios`
--
ALTER TABLE `estimacion_servicios`
  ADD PRIMARY KEY (`id_suscripcion`,`producto_servicio_id_producto`),
  ADD KEY `fk_suscripciones_producto-servicio_idx` (`producto_servicio_id_producto`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idgastos`,`tiposGastos_idtiposGastos`,`datos_empresa_id_empresa`),
  ADD KEY `fk_gastos_tiposGastos1_idx` (`tiposGastos_idtiposGastos`),
  ADD KEY `fk_gastos_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `gastosindirectos`
--
ALTER TABLE `gastosindirectos`
  ADD PRIMARY KEY (`idgastosIndirectos`,`id_empresa`),
  ADD KEY `fk_manoObraOperativa_datos_empresa1_idx` (`id_empresa`);

--
-- Indices de la tabla `gastosoperativos`
--
ALTER TABLE `gastosoperativos`
  ADD PRIMARY KEY (`idgastosOperativos`,`idtipoGasto`,`datos_empresa_id_empresa`),
  ADD KEY `fk_gastosOperativos_datos_empresa1_idx` (`datos_empresa_id_empresa`),
  ADD KEY `fk_gastosOperativos_tipoGastoOperativo1_idx` (`idtipoGasto`);

--
-- Indices de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD PRIMARY KEY (`idinversiones`,`tiposInversiones_idtiposInversiones`,`datos_empresa_id_empresa`),
  ADD KEY `fk_inversiones_tiposInversiones1_idx` (`tiposInversiones_idtiposInversiones`),
  ADD KEY `fk_inversiones_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `manoobra`
--
ALTER TABLE `manoobra`
  ADD PRIMARY KEY (`idManoObra`,`datos_empresa_id_empresa`),
  ADD KEY `fk_manoObra_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `manoobracomisionesventa`
--
ALTER TABLE `manoobracomisionesventa`
  ADD PRIMARY KEY (`idmanoObraComisionesVenta`,`datos_empresa_id_empresa`),
  ADD KEY `fk_manoObraComisionesVenta_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `manoobraoperativa`
--
ALTER TABLE `manoobraoperativa`
  ADD PRIMARY KEY (`idmanoObraOperativa`,`servicio_id_producto`,`datos_empresa_id_empresa`),
  ADD KEY `fk_manoObraOperativa_producto-servicio1_idx` (`servicio_id_producto`),
  ADD KEY `fk_manoObraOperativa_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `materiaprimainsumos`
--
ALTER TABLE `materiaprimainsumos`
  ADD PRIMARY KEY (`idmateriaPrimaInsumos`,`id_empresa`),
  ADD KEY `fk_manoObraOperativa_datos_empresa1_idx` (`id_empresa`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`idperfil`),
  ADD KEY `fk_perfil_usuario_usuario1_idx` (`usuario_idusuario`);

--
-- Indices de la tabla `producto_servicio`
--
ALTER TABLE `producto_servicio`
  ADD PRIMARY KEY (`id_producto`,`datos_empresa_id_empresa`),
  ADD KEY `fk_producto-servicio_datos_empresa1_idx` (`datos_empresa_id_empresa`);

--
-- Indices de la tabla `tipogastooperativo`
--
ALTER TABLE `tipogastooperativo`
  ADD PRIMARY KEY (`idtipoGasto`);

--
-- Indices de la tabla `tiposgastos`
--
ALTER TABLE `tiposgastos`
  ADD PRIMARY KEY (`idtiposGastos`);

--
-- Indices de la tabla `tiposinversiones`
--
ALTER TABLE `tiposinversiones`
  ADD PRIMARY KEY (`idtiposInversiones`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idtipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`,`tipoUsuario_idtipoUsuario`,`usuario`),
  ADD KEY `fk_usuario_tipoUsuario1_idx` (`tipoUsuario_idtipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conceptocrecimientodemanda`
--
ALTER TABLE `conceptocrecimientodemanda`
  MODIFY `idccd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `costostotalesanuales`
--
ALTER TABLE `costostotalesanuales`
  MODIFY `idcostosTotalesAnuales` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `crecimientodemanda`
--
ALTER TABLE `crecimientodemanda`
  MODIFY `idcrecimientoDemanda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estimacion_servicios`
--
ALTER TABLE `estimacion_servicios`
  MODIFY `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idgastos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gastosindirectos`
--
ALTER TABLE `gastosindirectos`
  MODIFY `idgastosIndirectos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gastosoperativos`
--
ALTER TABLE `gastosoperativos`
  MODIFY `idgastosOperativos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  MODIFY `idinversiones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manoobra`
--
ALTER TABLE `manoobra`
  MODIFY `idManoObra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manoobracomisionesventa`
--
ALTER TABLE `manoobracomisionesventa`
  MODIFY `idmanoObraComisionesVenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manoobraoperativa`
--
ALTER TABLE `manoobraoperativa`
  MODIFY `idmanoObraOperativa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materiaprimainsumos`
--
ALTER TABLE `materiaprimainsumos`
  MODIFY `idmateriaPrimaInsumos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto_servicio`
--
ALTER TABLE `producto_servicio`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipogastooperativo`
--
ALTER TABLE `tipogastooperativo`
  MODIFY `idtipoGasto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiposgastos`
--
ALTER TABLE `tiposgastos`
  MODIFY `idtiposGastos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiposinversiones`
--
ALTER TABLE `tiposinversiones`
  MODIFY `idtiposInversiones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idtipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `costostotalesanuales`
--
ALTER TABLE `costostotalesanuales`
  ADD CONSTRAINT `fk_costosTotalesAnuales_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_costosTotalesAnuales_tiposGastos1` FOREIGN KEY (`tiposGastos_idtiposGastos`) REFERENCES `tiposgastos` (`idtiposGastos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `crecimientodemanda`
--
ALTER TABLE `crecimientodemanda`
  ADD CONSTRAINT `fk_crecimientoDemanda_conceptoCrecimientoDemanda1` FOREIGN KEY (`conceptoCrecimientoDemanda_idccd`) REFERENCES `conceptocrecimientodemanda` (`idccd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_crecimientoDemanda_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD CONSTRAINT `fk_datos_empresa_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estimacion_crecimiento_anual`
--
ALTER TABLE `estimacion_crecimiento_anual`
  ADD CONSTRAINT `fk_estimacion_crecimiento_anual_producto-servicio1` FOREIGN KEY (`producto_servicio_id_producto`) REFERENCES `producto_servicio` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estimacion_servicios`
--
ALTER TABLE `estimacion_servicios`
  ADD CONSTRAINT `fk_suscripciones_producto-servicio` FOREIGN KEY (`producto_servicio_id_producto`) REFERENCES `producto_servicio` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `fk_gastos_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gastos_tiposGastos1` FOREIGN KEY (`tiposGastos_idtiposGastos`) REFERENCES `tiposgastos` (`idtiposGastos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastosindirectos`
--
ALTER TABLE `gastosindirectos`
  ADD CONSTRAINT `fk_manoObraOperativa_datos_empresa100` FOREIGN KEY (`id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastosoperativos`
--
ALTER TABLE `gastosoperativos`
  ADD CONSTRAINT `fk_gastosOperativos_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gastosOperativos_tipoGastoOperativo1` FOREIGN KEY (`idtipoGasto`) REFERENCES `tipogastooperativo` (`idtipoGasto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD CONSTRAINT `fk_inversiones_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inversiones_tiposInversiones1` FOREIGN KEY (`tiposInversiones_idtiposInversiones`) REFERENCES `tiposinversiones` (`idtiposInversiones`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `manoobra`
--
ALTER TABLE `manoobra`
  ADD CONSTRAINT `fk_manoObra_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `manoobracomisionesventa`
--
ALTER TABLE `manoobracomisionesventa`
  ADD CONSTRAINT `fk_manoObraComisionesVenta_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `manoobraoperativa`
--
ALTER TABLE `manoobraoperativa`
  ADD CONSTRAINT `fk_manoObraOperativa_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_manoObraOperativa_producto-servicio1` FOREIGN KEY (`servicio_id_producto`) REFERENCES `producto_servicio` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materiaprimainsumos`
--
ALTER TABLE `materiaprimainsumos`
  ADD CONSTRAINT `fk_manoObraOperativa_datos_empresa10` FOREIGN KEY (`id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `fk_perfil_usuario_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_servicio`
--
ALTER TABLE `producto_servicio`
  ADD CONSTRAINT `fk_producto-servicio_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipoUsuario1` FOREIGN KEY (`tipoUsuario_idtipoUsuario`) REFERENCES `tipousuario` (`idtipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
