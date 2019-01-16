-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2019 a las 20:35:15
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `movimiento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance`
--

CREATE TABLE `balance` (
  `id_finanzas` int(4) NOT NULL,
  `fecha_inicio` varchar(10) NOT NULL,
  `fecha_fin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `razon social` varchar(10) NOT NULL,
  `correo` varchar(10) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(4) NOT NULL,
  `id_proveedor` int(4) NOT NULL,
  `fecha` int(10) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido p` varchar(10) NOT NULL,
  `apellido m` varchar(10) NOT NULL,
  `puesto` varchar(10) NOT NULL,
  `salario` int(10) NOT NULL,
  `correo` varchar(10) NOT NULL,
  `direccion` varchar(10) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `curp` varchar(20) NOT NULL,
  `telefono` int(10) NOT NULL,
  `edo_civil` varchar(10) NOT NULL,
  `escolaridad` varchar(10) NOT NULL,
  `cp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id_evaluacion` int(4) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `r1` varchar(10) NOT NULL,
  `r2` varchar(10) NOT NULL,
  `r3` varchar(10) NOT NULL,
  `r4` varchar(10) NOT NULL,
  `r5` varchar(10) NOT NULL,
  `r6` varchar(10) NOT NULL,
  `r7` varchar(10) NOT NULL,
  `r8` varchar(10) NOT NULL,
  `r9` varchar(10) NOT NULL,
  `r10` varchar(10) NOT NULL,
  `id_cuestionario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matenimiento`
--

CREATE TABLE `matenimiento` (
  `id_mantenimiento` int(4) NOT NULL,
  `id_recurso` int(4) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `razon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `unidad` int(10) NOT NULL,
  `existencia` varchar(2) NOT NULL,
  `costo` int(10) NOT NULL,
  `id_provedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_compra`
--

CREATE TABLE `material_compra` (
  `id_compra` int(4) NOT NULL,
  `id_material` int(4) NOT NULL,
  `cantidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `id_nomina` int(4) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `monto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `alta` varchar(10) NOT NULL,
  `baja` varchar(10) NOT NULL,
  `consultar` varchar(10) NOT NULL,
  `modificar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presencia`
--

CREATE TABLE `presencia` (
  `id_pesencia` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `hora_entrada` int(11) NOT NULL,
  `hora_salida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(1) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `costo` int(4) NOT NULL,
  `unidad` int(20) NOT NULL,
  `stock minimo` int(5) NOT NULL,
  `stock maximo` int(11) NOT NULL,
  `existencia` varchar(2) NOT NULL,
  `codigo` int(5) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `almacen` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_venta`
--

CREATE TABLE `producto_venta` (
  `id_venta` int(4) NOT NULL,
  `id_producto` int(4) NOT NULL,
  `cantidad` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `razon social` varchar(10) NOT NULL,
  `correo` varchar(10) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `marca` varchar(10) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `existencia` varchar(2) NOT NULL,
  `costo` int(10) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `area` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reemplazo`
--

CREATE TABLE `reemplazo` (
  `id_reemplazo` int(4) NOT NULL,
  `id_recurso` int(4) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `falla` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_extra`
--

CREATE TABLE `tiempo_extra` (
  `id_tiempo` int(4) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `horas` int(10) NOT NULL,
  `pago` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(4) NOT NULL,
  `id_cliente` int(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `total` int(10) NOT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id_finanzas`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id_evaluacion`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `r5` (`r5`);

--
-- Indices de la tabla `matenimiento`
--
ALTER TABLE `matenimiento`
  ADD PRIMARY KEY (`id_mantenimiento`),
  ADD KEY `id_recurso` (`id_recurso`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_provedor` (`id_provedor`);

--
-- Indices de la tabla `material_compra`
--
ALTER TABLE `material_compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_material` (`id_material`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`id_nomina`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `presencia`
--
ALTER TABLE `presencia`
  ADD PRIMARY KEY (`id_pesencia`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recurso`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `reemplazo`
--
ALTER TABLE `reemplazo`
  ADD PRIMARY KEY (`id_reemplazo`),
  ADD KEY `id_recurso` (`id_recurso`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `tiempo_extra`
--
ALTER TABLE `tiempo_extra`
  ADD PRIMARY KEY (`id_tiempo`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `evaluacion` (`id_empleado`);

--
-- Filtros para la tabla `matenimiento`
--
ALTER TABLE `matenimiento`
  ADD CONSTRAINT `matenimiento_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD CONSTRAINT `producto_venta_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `recursos_ibfk_1` FOREIGN KEY (`id_recurso`) REFERENCES `matenimiento` (`id_recurso`),
  ADD CONSTRAINT `recursos_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `reemplazo`
--
ALTER TABLE `reemplazo`
  ADD CONSTRAINT `reemplazo_ibfk_1` FOREIGN KEY (`id_recurso`) REFERENCES `recursos` (`id_recurso`);

--
-- Filtros para la tabla `tiempo_extra`
--
ALTER TABLE `tiempo_extra`
  ADD CONSTRAINT `tiempo_extra_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
