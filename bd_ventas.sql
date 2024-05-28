-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 28-05-2024 a las 21:26:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `correo` varchar(128) NOT NULL,
  `celular` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `celular`) VALUES
(2, 'Caleb Benitez', 'benitez@mail.org', '70012345'),
(3, 'Ursula Gonzales', 'nec@lacus.ca', '79112345'),
(5, 'Juan Carlos Arce', 'conejo@mail.com', '71512345'),
(6, 'Halee Kirby', 'tiam@tempor.com', '72012345'),
(8, 'Pedro Marquez', 'peter@mail.com', '72054578'),
(9, 'Juan de Arco', 'juanita@mail.com', '77112456'),
(10, 'Luis Callejas', 'lucho@mial.com', '77122456'),
(16, 'Marcelo Martins', 'marcelo@mail.com', '74847290'),
(17, 'Juan Capriles', 'capri@mail.com', '78945612'),
(18, 'Javier', 'apazamamanijavier51@gmail.com', '74847290'),
(19, 'Adriana', 'adri@gmail.com', '67876543'),
(20, 'Juan', 'juan@gmail.com', '77722233');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'iPhone 4s', 'Que viene desde Apple', 200),
(2, 'iPhone 5', 'iPhone 5 from Apple', 150),
(3, 'iPhone 5s', 'iPhone 5s is too expensive.', 300.8),
(4, 'iPad Air', 'iPad Air is thin like samurai!', 250),
(5, 'HTC One', 'Best of 2013', 250),
(6, 'God', 'God is not on sale. Sorry.', 132),
(7, 'Lenovo 2020', 'This sword is so sharp that it can slice itself. Good for slicing jellies.', 2000),
(8, 'Latitude e6420', 'Built by ultimate killing machines. For ultimate killing hobies.', 50),
(9, 'Toshiba xd456', 'This jacket could save you from heart attack. And maybe heartbreaks.', 50000),
(10, 'Dell vostro 456', 'This helps you brighten things in the dark.', 650),
(73, 'Samsung S24 Ultra', 'Ultima generacion', 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'admin@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'marco@mail.com', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `cliente_id`, `fecha`) VALUES
(1, 1, 3, '2022-10-30'),
(4, 1, 2, '2012-12-31'),
(5, 5, 8, '2019-05-07'),
(15, 5, 19, '2020-12-28'),
(17, 10, 18, '2024-01-01'),
(18, 73, 19, '2024-01-01'),
(19, 5, 8, '2024-01-01'),
(20, 8, 3, '2024-01-01'),
(21, 3, 20, '2024-05-28'),
(22, 73, 20, '2024-01-01'),
(23, 6, 19, '2024-01-01'),
(24, 6, 10, '2024-05-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
