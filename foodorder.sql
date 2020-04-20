

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Base de datos: `foodorder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('Michelle Stephania', 'miichtorrees@gmail.com', '8713162614', 'Excelente', 'vsnvlksndvlksnvldkdks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'Elizabeth Muñoz', 'bkm123r@gmail.com', '1371838913', 'kjnsjkvnksjdkdvnksjvnsjkvnjkvsd', 'Eli123'),
('Brenda', 'Brenda Castellanos', 'kdxnvjvnj@gmail.com', '8712882493', 'jacardndas', 'Eli'),
('ckumar', 'Alicia Mtz', 'ckj40856@gmail.com', '6938410674', 'tec laguna', '12345'),
('michi', 'Michelle Stephania Torres More', 'miichtrees@gmail.com', '73374757', 'teclaguna', 'hola'),
('nidha', 'Michelle', 'mich@gmail.com', '878696572', 'mexico 78987', 'hola1'),
('pratheek083', 'Patrick', 'patrick@gmail.com', '8779546521', 'Jacarandas', 'patrick'),
('rakshithk00', 'Axel', 'AxelRose@gmail.com', '8747123658', 'golondrias', 'rakshith');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Taco Guiso', 40, 'Taco con tu comida favorita, tortilla echa al momento pide ahora y no te arrepentiras!', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(59, 'Pescado a la brasa', 260, 'Pomfret entero a la parrilla con marinado picante y servido con cebolla y tomates a la parrilla.', 2, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Pastel de Chocolate', 100, 'Tu postre favorito en la puerta de tu casa.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Happy Batido de Choco Ch', 80, 'Un dulce perfecto para la fiesta.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Rollitos de primavera', 140, 'Deliciosos rollitos de primavera de Dragon Hut, Delhi. ¡¡¡Ordenar ahora!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE'),
(63, 'Comida Tailandesa', 350, 'Está acompañado por Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Coffee', 25, 'Café concentrado hecho forzando agua a presión a través de granos de café finamente molidos.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 20, 'El simple elixir de té es de nuestro mundo natural.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Samosa', 85, 'Cóctel Samosa Crujiente ..', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 25, 'café concentrado hecho forzando agua a presión a través de granos de café finamente molidos.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 20, 'El simple elixir de té es de nuestro mundo natural.', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 40, 'Cóctel Samosa Crujiente ..\r\n$ 40', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Empanadas', 45, 'Le da una nueva dimensión incluso a la verdura más aburrida o aburrida', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Empanadas Hojaldre', 35, 'Hojaldre de verduras, una merienda con una capa exterior crujiente y escamosa y relleno de verduras mixtas', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Puro vegetal y sabroso.', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Vegetales Puros y Sabrosos.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Pizza', 200, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Pakora', 45, 'TASTY', 2, 'images/Pakora.jpg', 'ENABLE'),
(80, 'Spaguetti a la Bolognesa', 130, 'Deliciosa pasta con salsa de tomate preparada al momento.', 8, 'images/abc.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'fbfbfb', 'kdsjkvn@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'hojnskjn', 'aminnikhil073@gmail.com', '9632587412', '4Caminos', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'av universidad', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('Michellet', 'Michelle Stephania Torres More', 'miichtorrees@gmail.com', '8713162614', 'Paseo de los granados 337 Col. Jacarandas', 'Hola'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(76, 80, 'Spaguetti a la Bolognesa', 130, 1, '2020-04-17', 'birju', 8),
(77, 60, 'Pastel de Chocolate', 100, 1, '2020-04-17', 'michi', 3),
(78, 80, 'Spaguetti a la Bolognesa', 130, 1, '2020-04-17', 'michi', 8),
(79, 59, 'Pescado a la brasa', 260, 1, '2020-04-17', 'michi', 2),
(80, 61, 'Happy Happy Batido de Choco Ch', 80, 10, '2020-04-18', 'michi', 1),
(81, 61, 'Happy Happy Batido de Choco Ch', 80, 10, '2020-04-18', 'michi', 1),
(82, 61, 'Happy Happy Batido de Choco Ch', 80, 10, '2020-04-18', 'michi', 1),
(83, 61, 'Happy Happy Batido de Choco Ch', 80, 10, '2020-04-18', 'michi', 1),
(84, 59, 'Pescado a la brasa', 260, 1, '2020-04-18', 'michi', 2),
(85, 60, 'Pastel de Chocolate', 100, 13, '2020-04-19', 'Brenda', 3),
(86, 60, 'Pastel de Chocolate', 100, 1, '2020-04-19', 'Brenda', 3),
(87, 80, 'Spaguetti a la Bolognesa', 130, 1, '2020-04-19', 'michi', 8),
(88, 59, 'Pescado a la brasa', 260, 1, '2020-04-19', 'michi', 2),
(89, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(90, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(91, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(92, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(93, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(94, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(95, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(96, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(97, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(98, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(99, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(100, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(101, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(102, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(103, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(104, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(105, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(106, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(107, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(108, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(109, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(110, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(111, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(112, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(113, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(114, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(115, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(116, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(117, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(118, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(119, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(120, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(121, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(122, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(123, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(124, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(125, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(126, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(127, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(128, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(129, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(130, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(131, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(132, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(133, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(134, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(135, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(136, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(137, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(138, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(139, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(140, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(141, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(142, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(143, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(144, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(145, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(146, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(147, 62, 'Rollitos de primavera', 140, 1, '2020-04-19', 'michi', 2),
(148, 77, 'Pizza', 200, 1, '2020-04-19', 'michi', 2),
(149, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(150, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(151, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(152, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(153, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(154, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(155, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(156, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(157, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(158, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(159, 63, 'Comida Tailandesa', 350, 1, '2020-04-20', 'michi', 3),
(160, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(161, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(162, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(163, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(164, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(165, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(166, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(167, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1),
(168, 61, 'Happy Happy Batido de Choco Ch', 80, 1, '2020-04-20', 'michi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(8, 'prueba', 'nsljnlnv@gmail.com', '982782741', 'snakjnlaksnakjlcs', 'Michellet');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indices de la tabla `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indices de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Filtros para la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

