-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.17-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.0.0.4464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица avto.loc.accounting1c
DROP TABLE IF EXISTS `accounting1c`;
CREATE TABLE IF NOT EXISTS `accounting1c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.accounting1c: 0 rows
/*!40000 ALTER TABLE `accounting1c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounting1c` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.ActionLog
DROP TABLE IF EXISTS `ActionLog`;
CREATE TABLE IF NOT EXISTS `ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `event` tinyint(255) DEFAULT NULL,
  `model_name` varchar(50) DEFAULT '',
  `model_title` text,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `event` (`event`),
  KEY `datetime` (`datetime`),
  KEY `model_name` (`model_name`)
) ENGINE=MyISAM AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.ActionLog: 716 rows
/*!40000 ALTER TABLE `ActionLog` DISABLE KEYS */;
INSERT INTO `ActionLog` (`id`, `username`, `event`, `model_name`, `model_title`, `datetime`) VALUES
	(1, 'admin', 3, 'SystemModules', 'pages', '2015-03-25 13:28:08'),
	(2, 'admin', 3, 'SystemModules', 'pages', '2015-03-25 13:31:52'),
	(3, 'admin', 1, 'SystemModules', 'pages', '2015-03-25 13:34:09'),
	(4, 'admin', 1, 'SystemModules', 'pages', '2015-03-25 13:34:31'),
	(5, 'admin', 1, 'SystemModules', 'banners', '2015-03-25 14:11:57'),
	(6, 'admin', 3, 'SystemModules', 'banners', '2015-03-26 12:26:34'),
	(7, 'admin', 1, 'SystemModules', 'banners', '2015-03-26 12:26:56'),
	(8, 'admin', 3, 'SystemModules', 'banners', '2015-03-26 14:56:40'),
	(9, 'admin', 1, 'SystemModules', 'banners', '2015-03-26 14:56:43'),
	(10, 'admin', 2, 'StoreProduct', 'Acer ASPIRE 5943G-7748G75TWiss', '2015-04-15 17:36:53'),
	(11, 'admin', 2, 'StoreProduct', 'Acer ASPIRE 5943G-7748G75TWiss', '2015-04-15 17:37:19'),
	(12, 'admin', 1, 'StoreProduct', 'test', '2015-04-15 17:40:00'),
	(13, 'admin', 3, 'StoreProduct', 'test', '2015-04-15 17:50:11'),
	(14, 'admin', 2, 'StoreCategory', 'catalog', '2015-04-15 17:52:27'),
	(15, 'admin', 1, 'StoreCategory', 'Каталог автомобилей', '2015-04-15 17:58:37'),
	(16, 'admin', 2, 'StoreCategory', 'Телефоны', '2015-04-15 17:58:42'),
	(17, 'admin', 2, 'StoreCategory', 'Мониторы', '2015-04-15 17:58:44'),
	(18, 'admin', 2, 'StoreCategory', 'Компьютеры', '2015-04-15 17:58:47'),
	(19, 'admin', 2, 'StoreCategory', 'Ноутбуки', '2015-04-15 17:58:50'),
	(20, 'admin', 2, 'StoreCategory', 'root', '2015-04-15 17:59:13'),
	(21, 'admin', 2, 'StoreCategory', 'Телефоны', '2015-04-15 18:19:00'),
	(22, 'admin', 2, 'StoreCategory', 'Мониторы', '2015-04-15 18:41:19'),
	(23, 'admin', 2, 'StoreCategory', 'Мониторы', '2015-04-15 18:50:19'),
	(24, 'admin', 2, 'StoreCategory', 'Телефоны', '2015-04-15 18:50:37'),
	(25, 'admin', 2, 'StoreCategory', 'Компьютеры', '2015-04-15 18:50:45'),
	(26, 'admin', 2, 'StoreCategory', 'Ноутбуки', '2015-04-15 18:51:33'),
	(27, 'admin', 2, 'StoreCategory', 'Мониторы', '2015-04-15 19:07:29'),
	(28, 'admin', 2, 'StoreCategory', 'Телефоны', '2015-04-15 19:09:55'),
	(29, 'admin', 2, 'StoreCategory', 'Каталог автомобилей', '2015-04-16 11:44:26'),
	(30, 'admin', 2, 'StoreCategory', 'Mitsubishi', '2015-04-16 12:33:44'),
	(31, 'admin', 2, 'StoreCategory', 'Dodge', '2015-04-16 12:34:01'),
	(32, 'admin', 2, 'StoreCategory', 'Аcurа', '2015-04-16 12:34:24'),
	(33, 'admin', 2, 'StoreCategory', 'Corvette', '2015-04-16 12:35:09'),
	(34, 'admin', 1, 'StoreCategory', 'Toyota', '2015-04-16 12:40:14'),
	(35, 'admin', 2, 'StoreCategory', 'Toyota', '2015-04-16 12:40:21'),
	(36, 'admin', 1, 'StoreCategory', 'Volvo', '2015-04-16 12:41:43'),
	(37, 'admin', 2, 'StoreCategory', 'Volvo', '2015-04-16 12:41:47'),
	(38, 'admin', 1, 'StoreCategory', 'Volkswagen', '2015-04-16 12:42:59'),
	(39, 'admin', 2, 'StoreCategory', 'Volkswagen', '2015-04-16 12:43:03'),
	(40, 'admin', 1, 'StoreCategory', 'Subaru', '2015-04-16 12:44:26'),
	(41, 'admin', 2, 'StoreCategory', 'Subaru', '2015-04-16 12:44:30'),
	(42, 'admin', 1, 'StoreCategory', 'Skoda', '2015-04-16 12:45:38'),
	(43, 'admin', 2, 'StoreCategory', 'Skoda', '2015-04-16 12:45:42'),
	(44, 'admin', 1, 'StoreCategory', 'Porsche', '2015-04-16 12:47:10'),
	(45, 'admin', 2, 'StoreCategory', 'Porsche', '2015-04-16 12:47:14'),
	(46, 'admin', 1, 'StoreCategory', 'Peugeot', '2015-04-16 12:48:37'),
	(47, 'admin', 2, 'StoreCategory', 'Peugeot', '2015-04-16 12:48:41'),
	(48, 'admin', 1, 'StoreCategory', 'Chevrolet', '2015-04-16 12:49:58'),
	(49, 'admin', 2, 'StoreCategory', 'Chevrolet', '2015-04-16 12:50:01'),
	(50, 'admin', 2, 'StoreCategory', 'Dodge Durango', '2015-04-16 12:52:48'),
	(51, 'admin', 2, 'StoreCategory', 'Dodge Stratus', '2015-04-16 12:53:24'),
	(52, 'admin', 2, 'StoreCategory', 'Mitsubishi i-MiEV', '2015-04-16 12:54:10'),
	(53, 'admin', 2, 'StoreCategory', 'Mitsubishi ASX', '2015-04-16 12:54:26'),
	(54, 'admin', 3, 'StoreManufacturer', 'Lenovo', '2015-04-16 14:57:29'),
	(55, 'admin', 3, 'StoreManufacturer', 'Asus', '2015-04-16 14:57:29'),
	(56, 'admin', 3, 'StoreManufacturer', 'Dell', '2015-04-16 14:57:29'),
	(57, 'admin', 3, 'StoreManufacturer', 'Fujitsu', '2015-04-16 14:57:29'),
	(58, 'admin', 3, 'StoreManufacturer', 'HP', '2015-04-16 14:57:29'),
	(59, 'admin', 3, 'StoreManufacturer', 'Apple', '2015-04-16 14:57:29'),
	(60, 'admin', 3, 'StoreManufacturer', 'Sony', '2015-04-16 14:57:29'),
	(61, 'admin', 3, 'StoreManufacturer', 'Acer', '2015-04-16 14:57:29'),
	(62, 'admin', 3, 'StoreManufacturer', 'Logitech', '2015-04-16 14:57:29'),
	(63, 'admin', 3, 'StoreManufacturer', 'Microlab', '2015-04-16 14:57:29'),
	(64, 'admin', 3, 'StoreManufacturer', 'Edifier', '2015-04-16 14:57:29'),
	(65, 'admin', 3, 'StoreManufacturer', 'Sven', '2015-04-16 14:57:29'),
	(66, 'admin', 3, 'StoreManufacturer', 'LG', '2015-04-16 14:57:29'),
	(67, 'admin', 3, 'StoreManufacturer', 'Samsung', '2015-04-16 14:57:29'),
	(68, 'admin', 3, 'StoreManufacturer', 'Philips', '2015-04-16 14:57:29'),
	(69, 'admin', 3, 'StoreManufacturer', 'HTC', '2015-04-16 14:57:29'),
	(70, 'admin', 3, 'StoreManufacturer', 'Nokia', '2015-04-16 14:57:29'),
	(71, 'admin', 3, 'StoreManufacturer', 'BlackBerry', '2015-04-16 14:57:29'),
	(72, 'admin', 2, 'StoreCategory', 'Corvette', '2015-04-23 16:25:13'),
	(73, 'admin', 2, 'StoreCategory', 'Аcurа', '2015-04-23 16:25:38'),
	(74, 'admin', 2, 'StoreCategory', 'Dodge', '2015-04-23 16:26:18'),
	(75, 'admin', 2, 'StoreCategory', 'Mitsubishi', '2015-04-23 16:26:28'),
	(76, 'admin', 2, 'StoreCategory', 'Dodge Durango', '2015-04-23 16:26:49'),
	(77, 'admin', 2, 'StoreCategory', 'Dodge Stratus', '2015-04-23 16:26:58'),
	(78, 'admin', 2, 'StoreCategory', 'Mitsubishi i-MiEV', '2015-04-23 16:27:07'),
	(79, 'admin', 2, 'StoreCategory', 'Mitsubishi ASX', '2015-04-23 16:27:15'),
	(80, 'admin', 2, 'StoreAttribute', 'screen', '2015-04-24 14:50:45'),
	(81, 'admin', 2, 'StoreAttribute', 'processor_manufacturer', '2015-04-24 14:51:24'),
	(82, 'admin', 2, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2015-04-25 09:48:24'),
	(83, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-04-25 09:48:49'),
	(84, 'admin', 2, 'StoreProduct', 'Acer Iconia Tab A100 8Gb', '2015-04-25 09:49:07'),
	(85, 'admin', 2, 'StoreCurrency', 'UZS', '2015-04-25 10:00:16'),
	(86, 'admin', 2, 'StoreCurrency', 'UZS', '2015-04-25 10:00:41'),
	(87, 'admin', 2, 'StoreAttribute', 'weight', '2015-04-25 10:16:30'),
	(88, 'admin', 2, 'StoreAttribute', 'weight', '2015-04-25 12:31:30'),
	(89, 'admin', 2, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2015-04-27 11:00:09'),
	(90, 'admin', 2, 'StoreCurrency', 'Доллары', '2015-04-27 17:57:29'),
	(91, 'admin', 2, 'StoreCurrency', 'UZS', '2015-04-27 17:58:40'),
	(92, 'admin', 1, 'User', 'apitest', '2015-05-06 15:40:01'),
	(93, 'admin', 2, 'User', 'apitest', '2015-05-06 15:40:17'),
	(94, 'admin', 1, 'StoreAttribute', 'probeg', '2015-05-08 16:12:32'),
	(95, 'admin', 2, 'StoreProductType', 'Телефон', '2015-05-08 16:13:03'),
	(96, 'admin', 1, 'StoreAttribute', 'body_type', '2015-05-08 16:22:40'),
	(97, 'admin', 1, 'StoreAttribute', 'kpp', '2015-05-08 16:24:14'),
	(98, 'admin', 1, 'StoreAttribute', 'engine_size', '2015-05-08 16:24:56'),
	(99, 'admin', 1, 'StoreAttribute', 'fuel_type', '2015-05-08 16:25:32'),
	(100, 'admin', 1, 'StoreAttribute', 'color', '2015-05-08 16:25:49'),
	(101, 'admin', 1, 'StoreAttribute', 'actuator', '2015-05-08 16:26:33'),
	(102, 'admin', 1, 'StoreAttribute', 'status', '2015-05-08 16:26:59'),
	(103, 'admin', 1, 'StoreAttribute', 'power_of_the_engine', '2015-05-08 16:27:37'),
	(104, 'admin', 1, 'StoreAttribute', 'engine_type', '2015-05-08 16:28:16'),
	(105, 'admin', 1, 'StoreAttribute', 'metallic_color', '2015-05-08 16:28:55'),
	(106, 'admin', 1, 'StoreProductType', 'автомобили', '2015-05-08 16:30:05'),
	(107, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-08 16:31:59'),
	(108, 'admin', 1, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-08 16:34:25'),
	(109, 'admin', 3, 'StoreProduct', 'Sony VAIO VPC-F13S8R', '2015-05-08 16:36:20'),
	(110, 'admin', 3, 'StoreProduct', 'Acer ASPIRE 5943G-7748G75TWiss', '2015-05-08 16:36:20'),
	(111, 'admin', 3, 'StoreProduct', 'Logitech X-530', '2015-05-08 16:36:20'),
	(112, 'admin', 3, 'StoreProduct', 'Microlab M-860', '2015-05-08 16:36:20'),
	(113, 'admin', 3, 'StoreProduct', 'Microlab FC 362', '2015-05-08 16:36:20'),
	(114, 'admin', 3, 'StoreProduct', 'DELL U2412M', '2015-05-08 16:36:20'),
	(115, 'admin', 3, 'StoreProduct', 'DELL U2312HM', '2015-05-08 16:36:20'),
	(116, 'admin', 3, 'StoreProduct', 'LG Flatron M2250D', '2015-05-08 16:36:20'),
	(117, 'admin', 3, 'StoreProduct', 'LG Flatron IPS226V', '2015-05-08 16:36:20'),
	(118, 'admin', 3, 'StoreProduct', 'Samsung SyncMaster S22A350N', '2015-05-08 16:36:20'),
	(119, 'admin', 3, 'StoreProduct', 'Philips 237E3QPHSU', '2015-05-08 16:36:20'),
	(120, 'admin', 3, 'StoreProduct', 'Philips 227E3LSU', '2015-05-08 16:36:20'),
	(121, 'admin', 3, 'StoreProduct', 'HP ZR2740w', '2015-05-08 16:36:20'),
	(122, 'admin', 3, 'StoreProduct', 'HP ZR2440w', '2015-05-08 16:36:20'),
	(123, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Ace II', '2015-05-08 16:36:20'),
	(124, 'admin', 3, 'StoreProduct', 'HTC One XL', '2015-05-08 16:36:20'),
	(125, 'admin', 3, 'StoreProduct', 'HTC Sensation XL', '2015-05-08 16:36:20'),
	(126, 'admin', 3, 'StoreProduct', 'Apple iPhone 4S 16Gb', '2015-05-08 16:36:20'),
	(127, 'admin', 3, 'StoreProduct', 'Apple iPhone 3GS 8Gb', '2015-05-08 16:36:20'),
	(128, 'admin', 3, 'StoreProduct', 'Apple iPhone 4 16Gb', '2015-05-08 16:36:20'),
	(129, 'admin', 3, 'StoreProduct', 'Nokia N9', '2015-05-08 16:36:20'),
	(130, 'admin', 3, 'StoreProduct', 'BlackBerry Bold 9900', '2015-05-08 16:36:20'),
	(131, 'admin', 3, 'StoreProduct', 'BlackBerry Bold 9780', '2015-05-08 16:36:20'),
	(132, 'admin', 3, 'StoreProduct', 'Apple iPad 2 16Gb Wi-Fi + 3G', '2015-05-08 16:36:20'),
	(133, 'admin', 3, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2015-05-08 16:36:20'),
	(134, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-08 16:36:20'),
	(135, 'admin', 3, 'StoreProduct', 'Acer Iconia Tab A100 8Gb', '2015-05-08 16:36:20'),
	(136, 'admin', 3, 'StoreProduct', 'Asus Transformer Pad Prime 201 64Gb', '2015-05-08 16:36:20'),
	(137, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Tab 10.1 P7500 16Gb', '2015-05-08 16:36:20'),
	(138, 'admin', 3, 'StoreProduct', 'Lenovo B570', '2015-05-08 16:36:28'),
	(139, 'admin', 3, 'StoreProduct', 'Lenovo G570', '2015-05-08 16:36:28'),
	(140, 'admin', 3, 'StoreProduct', 'ASUS K53U', '2015-05-08 16:36:28'),
	(141, 'admin', 3, 'StoreProduct', 'ASUS X54C', '2015-05-08 16:36:28'),
	(142, 'admin', 3, 'StoreProduct', 'DELL INSPIRON N5050', '2015-05-08 16:36:28'),
	(143, 'admin', 3, 'StoreProduct', 'Fujitsu LIFEBOOK AH531', '2015-05-08 16:36:28'),
	(144, 'admin', 3, 'StoreProduct', 'HP EliteBook 8560w', '2015-05-08 16:36:28'),
	(145, 'admin', 3, 'StoreProduct', 'DELL ALIENWARE M17x', '2015-05-08 16:36:28'),
	(146, 'admin', 3, 'StoreProduct', 'Apple MacBook Pro 15 Late 2011', '2015-05-08 16:36:28'),
	(147, 'admin', 3, 'StoreProduct', 'Lenovo THINKPAD W520', '2015-05-08 16:36:28'),
	(148, 'admin', 3, 'StoreProduct', 'Edifier M3700', '2015-05-08 16:36:28'),
	(149, 'admin', 3, 'StoreProduct', 'Logitech Z-313', '2015-05-08 16:36:28'),
	(150, 'admin', 3, 'StoreProduct', 'Sven SPS-820', '2015-05-08 16:36:28'),
	(151, 'admin', 3, 'StoreProduct', 'Edifier M1385', '2015-05-08 16:36:28'),
	(152, 'admin', 3, 'StoreProduct', 'Edifier X600', '2015-05-08 16:36:28'),
	(153, 'admin', 3, 'StoreProductType', 'Простой продукт', '2015-05-08 16:36:39'),
	(154, 'admin', 3, 'StoreProductType', 'Ноутбук', '2015-05-08 16:36:39'),
	(155, 'admin', 3, 'StoreProductType', 'Акустика', '2015-05-08 16:36:39'),
	(156, 'admin', 3, 'StoreProductType', 'Монитор', '2015-05-08 16:36:39'),
	(157, 'admin', 3, 'StoreProductType', 'Телефон', '2015-05-08 16:36:39'),
	(158, 'admin', 3, 'StoreProductType', 'Планшет', '2015-05-08 16:36:39'),
	(159, 'admin', 3, 'StoreAttribute', 'sound_type', '2015-05-08 16:37:18'),
	(160, 'admin', 3, 'StoreAttribute', 'weight', '2015-05-08 16:37:18'),
	(161, 'admin', 3, 'StoreAttribute', 'monitor_diagonal', '2015-05-08 16:37:18'),
	(162, 'admin', 3, 'StoreAttribute', 'processor_manufacturer', '2015-05-08 16:37:18'),
	(163, 'admin', 3, 'StoreAttribute', 'monitor_dimension', '2015-05-08 16:37:18'),
	(164, 'admin', 3, 'StoreAttribute', 'freq', '2015-05-08 16:37:18'),
	(165, 'admin', 3, 'StoreAttribute', 'view_angle', '2015-05-08 16:37:18'),
	(166, 'admin', 3, 'StoreAttribute', 'memmory', '2015-05-08 16:37:18'),
	(167, 'admin', 3, 'StoreAttribute', 'phone_platform', '2015-05-08 16:37:18'),
	(168, 'admin', 3, 'StoreAttribute', 'memmory_type', '2015-05-08 16:37:18'),
	(169, 'admin', 3, 'StoreAttribute', 'phone_weight', '2015-05-08 16:37:18'),
	(170, 'admin', 3, 'StoreAttribute', 'screen', '2015-05-08 16:37:18'),
	(171, 'admin', 3, 'StoreAttribute', 'phone_display', '2015-05-08 16:37:18'),
	(172, 'admin', 3, 'StoreAttribute', 'screen_dimension', '2015-05-08 16:37:18'),
	(173, 'admin', 3, 'StoreAttribute', 'phone_camera', '2015-05-08 16:37:18'),
	(174, 'admin', 3, 'StoreAttribute', 'rms_power', '2015-05-08 16:37:18'),
	(175, 'admin', 3, 'StoreAttribute', 'tablet_screen_size', '2015-05-08 16:37:18'),
	(176, 'admin', 3, 'StoreAttribute', 'corpus_material', '2015-05-08 16:37:18'),
	(177, 'admin', 3, 'StoreAttribute', 'memmory_size', '2015-05-08 16:37:18'),
	(178, 'admin', 2, 'StoreAttribute', 'probeg', '2015-05-08 16:37:36'),
	(179, 'admin', 2, 'StoreAttribute', 'body_type', '2015-05-08 16:37:46'),
	(180, 'admin', 2, 'StoreAttribute', 'kpp', '2015-05-08 16:37:56'),
	(181, 'admin', 2, 'StoreAttribute', 'engine_size', '2015-05-08 16:38:07'),
	(182, 'admin', 2, 'StoreAttribute', 'fuel_type', '2015-05-08 16:38:18'),
	(183, 'admin', 2, 'StoreAttribute', 'color', '2015-05-08 16:38:27'),
	(184, 'admin', 2, 'StoreAttribute', 'actuator', '2015-05-08 16:38:37'),
	(185, 'admin', 2, 'StoreAttribute', 'status', '2015-05-08 16:38:46'),
	(186, 'admin', 2, 'StoreAttribute', 'power_of_the_engine', '2015-05-08 16:38:57'),
	(187, 'admin', 2, 'StoreAttribute', 'engine_type', '2015-05-08 16:39:06'),
	(188, 'admin', 2, 'StoreAttribute', 'metallic_color', '2015-05-08 16:39:13'),
	(189, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-08 16:40:15'),
	(190, 'admin', 2, 'StoreAttribute', 'body_type', '2015-05-08 16:48:28'),
	(191, 'admin', 2, 'StoreAttribute', 'kpp', '2015-05-08 16:50:09'),
	(192, 'admin', 2, 'StoreAttribute', 'fuel_type', '2015-05-08 16:51:28'),
	(193, 'admin', 2, 'StoreAttribute', 'color', '2015-05-08 16:53:39'),
	(194, 'admin', 2, 'StoreAttribute', 'actuator', '2015-05-08 16:54:29'),
	(195, 'admin', 2, 'StoreAttribute', 'status', '2015-05-08 16:55:27'),
	(196, 'admin', 2, 'StoreAttribute', 'engine_type', '2015-05-08 16:56:37'),
	(197, 'admin', 2, 'StoreAttribute', 'metallic_color', '2015-05-08 16:57:13'),
	(198, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-08 16:57:45'),
	(199, 'admin', 1, 'StoreCategory', 'Nexia', '2015-05-11 11:32:18'),
	(200, 'admin', 2, 'StoreCategory', 'Nexia', '2015-05-11 11:32:22'),
	(201, 'admin', 1, 'StoreCategory', 'Matiz', '2015-05-11 11:32:34'),
	(202, 'admin', 2, 'StoreCategory', 'Matiz', '2015-05-11 11:32:38'),
	(203, 'admin', 1, 'StoreCategory', 'Lacetti', '2015-05-11 11:32:50'),
	(204, 'admin', 2, 'StoreCategory', 'Lacetti', '2015-05-11 11:32:54'),
	(205, 'admin', 1, 'StoreCategory', 'Spark', '2015-05-11 11:33:24'),
	(206, 'admin', 2, 'StoreCategory', 'Spark', '2015-05-11 11:33:28'),
	(207, 'admin', 1, 'StoreCategory', 'Epica', '2015-05-11 11:33:40'),
	(208, 'admin', 2, 'StoreCategory', 'Epica', '2015-05-11 11:33:44'),
	(209, 'admin', 1, 'StoreCategory', 'Captiva', '2015-05-11 11:34:02'),
	(210, 'admin', 2, 'StoreCategory', 'Captiva', '2015-05-11 11:34:06'),
	(211, 'admin', 1, 'StoreCategory', 'Cobalt', '2015-05-11 11:34:22'),
	(212, 'admin', 2, 'StoreCategory', 'Cobalt', '2015-05-11 11:34:25'),
	(213, 'admin', 1, 'StoreCategory', 'Aveo', '2015-05-11 11:34:44'),
	(214, 'admin', 2, 'StoreCategory', 'Aveo', '2015-05-11 11:34:48'),
	(215, 'admin', 1, 'StoreCategory', '140', '2015-05-11 11:35:15'),
	(216, 'admin', 2, 'StoreCategory', '140', '2015-05-11 11:35:19'),
	(217, 'admin', 1, 'StoreCategory', '164', '2015-05-11 11:35:28'),
	(218, 'admin', 2, 'StoreCategory', '164', '2015-05-11 11:35:32'),
	(219, 'admin', 1, 'StoreCategory', '240', '2015-05-11 11:35:37'),
	(220, 'admin', 2, 'StoreCategory', '240', '2015-05-11 11:35:41'),
	(221, 'admin', 1, 'StoreCategory', '244', '2015-05-11 11:36:02'),
	(222, 'admin', 2, 'StoreCategory', '244', '2015-05-11 11:36:06'),
	(223, 'admin', 1, 'StoreCategory', 'Audi', '2015-05-11 11:36:29'),
	(224, 'admin', 2, 'StoreCategory', 'Audi', '2015-05-11 11:36:34'),
	(225, 'admin', 1, 'StoreCategory', '100', '2015-05-11 11:36:48'),
	(226, 'admin', 1, 'StoreCategory', 'А8', '2015-05-11 11:36:55'),
	(227, 'admin', 1, 'StoreCategory', 'Allroad quattro', '2015-05-11 11:37:01'),
	(228, 'admin', 1, 'StoreCategory', 'Cabriolet', '2015-05-11 11:37:07'),
	(229, 'admin', 1, 'StoreCategory', 'NSU RO 80', '2015-05-11 11:37:14'),
	(230, 'admin', 2, 'StoreCategory', '100', '2015-05-11 11:37:18'),
	(231, 'admin', 2, 'StoreCategory', 'А8', '2015-05-11 11:37:20'),
	(232, 'admin', 2, 'StoreCategory', 'Allroad quattro', '2015-05-11 11:37:22'),
	(233, 'admin', 2, 'StoreCategory', 'Cabriolet', '2015-05-11 11:37:23'),
	(234, 'admin', 2, 'StoreCategory', 'NSU RO 80', '2015-05-11 11:37:25'),
	(235, 'admin', 1, 'StoreCategory', '1500', '2015-05-11 11:37:56'),
	(236, 'admin', 1, 'StoreCategory', '1600', '2015-05-11 11:38:02'),
	(237, 'admin', 1, 'StoreCategory', 'Amarok', '2015-05-11 11:38:09'),
	(238, 'admin', 1, 'StoreCategory', 'Beetle', '2015-05-11 11:38:15'),
	(239, 'admin', 1, 'StoreCategory', 'California', '2015-05-11 11:38:24'),
	(240, 'admin', 1, 'StoreCategory', 'CrossGolf', '2015-05-11 11:38:31'),
	(241, 'admin', 1, 'StoreCategory', 'Golf', '2015-05-11 11:38:39'),
	(242, 'admin', 1, 'StoreCategory', 'Jetta', '2015-05-11 11:38:48'),
	(243, 'admin', 1, 'StoreCategory', 'Polo', '2015-05-11 11:39:06'),
	(244, 'admin', 2, 'StoreCategory', '1500', '2015-05-11 11:41:45'),
	(245, 'admin', 2, 'StoreCategory', '1600', '2015-05-11 11:41:48'),
	(246, 'admin', 2, 'StoreCategory', 'Amarok', '2015-05-11 11:41:51'),
	(247, 'admin', 2, 'StoreCategory', 'Beetle', '2015-05-11 11:41:53'),
	(248, 'admin', 2, 'StoreCategory', 'California', '2015-05-11 11:41:55'),
	(249, 'admin', 2, 'StoreCategory', 'CrossGolf', '2015-05-11 11:41:58'),
	(250, 'admin', 2, 'StoreCategory', 'Golf', '2015-05-11 11:42:01'),
	(251, 'admin', 2, 'StoreCategory', 'Jetta', '2015-05-11 11:42:04'),
	(252, 'admin', 2, 'StoreCategory', 'Polo', '2015-05-11 11:42:06'),
	(253, 'admin', 1, 'StoreCategory', 'XC90', '2015-05-11 11:42:44'),
	(254, 'admin', 3, 'StoreCategory', 'XC90', '2015-05-11 11:42:55'),
	(255, 'admin', 1, 'StoreCategory', '540', '2015-05-11 11:43:26'),
	(256, 'admin', 1, 'StoreCategory', '545', '2015-05-11 11:43:34'),
	(257, 'admin', 1, 'StoreCategory', '633', '2015-05-11 11:43:41'),
	(258, 'admin', 1, 'StoreCategory', 'BMW', '2015-05-11 11:43:58'),
	(259, 'admin', 2, 'StoreCategory', 'BMW', '2015-05-11 11:44:04'),
	(260, 'admin', 2, 'StoreCategory', '540', '2015-05-11 11:44:14'),
	(261, 'admin', 2, 'StoreCategory', '545', '2015-05-11 11:44:16'),
	(262, 'admin', 2, 'StoreCategory', '633', '2015-05-11 11:44:18'),
	(263, 'admin', 1, 'StoreCategory', 'Gran Turismo', '2015-05-11 11:44:27'),
	(264, 'admin', 1, 'StoreCategory', 'M1', '2015-05-11 11:44:32'),
	(265, 'admin', 1, 'StoreCategory', 'X6 M', '2015-05-11 11:44:38'),
	(266, 'admin', 1, 'StoreCategory', '732', '2015-05-11 11:44:46'),
	(267, 'admin', 2, 'StoreCategory', 'Gran Turismo', '2015-05-11 11:44:50'),
	(268, 'admin', 2, 'StoreCategory', 'M1', '2015-05-11 11:44:52'),
	(269, 'admin', 2, 'StoreCategory', 'X6 M', '2015-05-11 11:44:57'),
	(270, 'admin', 2, 'StoreCategory', '732', '2015-05-11 11:44:58'),
	(271, 'admin', 1, 'StoreCategory', 'Fabia', '2015-05-11 13:12:15'),
	(272, 'admin', 2, 'StoreCategory', 'Fabia', '2015-05-11 13:12:22'),
	(273, 'admin', 1, 'StoreCategory', 'Favorit', '2015-05-11 13:12:31'),
	(274, 'admin', 2, 'StoreCategory', 'Favorit', '2015-05-11 13:12:36'),
	(275, 'admin', 1, 'StoreCategory', 'Felicia', '2015-05-11 13:12:43'),
	(276, 'admin', 2, 'StoreCategory', 'Felicia', '2015-05-11 13:12:48'),
	(277, 'admin', 1, 'StoreCategory', 'Octavia', '2015-05-11 13:12:55'),
	(278, 'admin', 2, 'StoreCategory', 'Octavia', '2015-05-11 13:12:59'),
	(279, 'admin', 1, 'StoreCategory', 'Octavia Tour', '2015-05-11 13:13:12'),
	(280, 'admin', 2, 'StoreCategory', 'Octavia Tour', '2015-05-11 13:13:18'),
	(281, 'admin', 1, 'StoreCategory', 'Praktik', '2015-05-11 13:13:26'),
	(282, 'admin', 2, 'StoreCategory', 'Praktik', '2015-05-11 13:13:31'),
	(283, 'admin', 1, 'StoreCategory', 'Rapid', '2015-05-11 13:13:39'),
	(284, 'admin', 2, 'StoreCategory', 'Rapid', '2015-05-11 13:13:44'),
	(285, 'admin', 1, 'StoreCategory', 'Roomster', '2015-05-11 13:13:54'),
	(286, 'admin', 2, 'StoreCategory', 'Roomster', '2015-05-11 13:13:59'),
	(287, 'admin', 1, 'StoreCategory', 'Scout', '2015-05-11 13:14:07'),
	(288, 'admin', 2, 'StoreCategory', 'Scout', '2015-05-11 13:14:14'),
	(289, 'admin', 1, 'StoreCategory', 'Superb', '2015-05-11 13:14:25'),
	(290, 'admin', 2, 'StoreCategory', 'Superb', '2015-05-11 13:14:29'),
	(291, 'admin', 1, 'StoreCategory', 'Yeti', '2015-05-11 13:14:45'),
	(292, 'admin', 2, 'StoreCategory', 'Yeti', '2015-05-11 13:14:53'),
	(293, 'admin', 1, 'StoreCategory', 'ВАЗ', '2015-05-11 13:15:39'),
	(294, 'admin', 2, 'StoreCategory', 'ВАЗ', '2015-05-11 13:15:54'),
	(295, 'admin', 1, 'StoreCategory', 'Niva Urban', '2015-05-11 13:16:12'),
	(296, 'admin', 2, 'StoreCategory', 'Niva Urban', '2015-05-11 13:16:17'),
	(297, 'admin', 1, 'StoreCategory', 'Kalina 2', '2015-05-11 13:16:27'),
	(298, 'admin', 2, 'StoreCategory', 'Kalina 2', '2015-05-11 13:16:31'),
	(299, 'admin', 1, 'StoreCategory', 'Granta', '2015-05-11 13:16:38'),
	(300, 'admin', 2, 'StoreCategory', 'Granta', '2015-05-11 13:16:42'),
	(301, 'admin', 1, 'StoreCategory', 'Revolution', '2015-05-11 13:17:23'),
	(302, 'admin', 2, 'StoreCategory', 'Revolution', '2015-05-11 13:17:28'),
	(303, 'admin', 1, 'StoreCategory', '2172 Priora', '2015-05-11 13:17:39'),
	(304, 'admin', 2, 'StoreCategory', '2172 Priora', '2015-05-11 13:17:44'),
	(305, 'admin', 1, 'StoreCategory', '2171 Priora', '2015-05-11 13:17:51'),
	(306, 'admin', 2, 'StoreCategory', '2171 Priora', '2015-05-11 13:17:56'),
	(307, 'admin', 1, 'StoreCategory', '2170 Priora', '2015-05-11 13:18:04'),
	(308, 'admin', 2, 'StoreCategory', '2170 Priora', '2015-05-11 13:18:09'),
	(309, 'admin', 1, 'StoreCategory', '21218 Niva', '2015-05-11 13:18:29'),
	(310, 'admin', 2, 'StoreCategory', '21218 Niva', '2015-05-11 13:18:33'),
	(311, 'admin', 1, 'StoreCategory', 'ГАЗ', '2015-05-11 13:18:48'),
	(312, 'admin', 2, 'StoreCategory', 'ГАЗ', '2015-05-11 13:19:00'),
	(313, 'admin', 1, 'StoreCategory', 'ЗИМ', '2015-05-11 13:19:21'),
	(314, 'admin', 1, 'StoreCategory', 'M-20', '2015-05-11 13:19:29'),
	(315, 'admin', 1, 'StoreCategory', 'М1', '2015-05-11 13:19:37'),
	(316, 'admin', 1, 'StoreCategory', 'Siber', '2015-05-11 13:19:46'),
	(317, 'admin', 1, 'StoreCategory', '69', '2015-05-11 13:19:55'),
	(318, 'admin', 2, 'StoreCategory', 'ЗИМ', '2015-05-11 13:19:59'),
	(319, 'admin', 2, 'StoreCategory', 'M-20', '2015-05-11 13:20:01'),
	(320, 'admin', 2, 'StoreCategory', 'М1', '2015-05-11 13:20:03'),
	(321, 'admin', 2, 'StoreCategory', 'Siber', '2015-05-11 13:20:04'),
	(322, 'admin', 2, 'StoreCategory', '69', '2015-05-11 13:20:06'),
	(323, 'admin', 1, 'StoreCategory', 'ИЖ', '2015-05-11 13:20:38'),
	(324, 'admin', 2, 'StoreCategory', 'ИЖ', '2015-05-11 13:20:46'),
	(325, 'admin', 1, 'StoreCategory', '2125 Комби', '2015-05-11 13:20:55'),
	(326, 'admin', 1, 'StoreCategory', '2126 Орбита', '2015-05-11 13:21:02'),
	(327, 'admin', 1, 'StoreCategory', '21261', '2015-05-11 13:21:09'),
	(328, 'admin', 1, 'StoreCategory', '21261 Fabula', '2015-05-11 13:21:15'),
	(329, 'admin', 1, 'StoreCategory', '2715', '2015-05-11 13:21:21'),
	(330, 'admin', 1, 'StoreCategory', '2717', '2015-05-11 13:21:26'),
	(331, 'admin', 1, 'StoreCategory', '27171', '2015-05-11 13:21:32'),
	(332, 'admin', 1, 'StoreCategory', '412', '2015-05-11 13:21:37'),
	(333, 'admin', 1, 'StoreCategory', '49', '2015-05-11 13:21:43'),
	(334, 'admin', 1, 'StoreCategory', 'Ода', '2015-05-11 13:21:48'),
	(335, 'admin', 2, 'StoreCategory', '2125 Комби', '2015-05-11 13:21:52'),
	(336, 'admin', 2, 'StoreCategory', '2126 Орбита', '2015-05-11 13:21:54'),
	(337, 'admin', 2, 'StoreCategory', '21261', '2015-05-11 13:21:56'),
	(338, 'admin', 2, 'StoreCategory', '21261 Fabula', '2015-05-11 13:21:57'),
	(339, 'admin', 2, 'StoreCategory', '2715', '2015-05-11 13:22:00'),
	(340, 'admin', 2, 'StoreCategory', '2717', '2015-05-11 13:22:02'),
	(341, 'admin', 2, 'StoreCategory', '27171', '2015-05-11 13:22:03'),
	(342, 'admin', 2, 'StoreCategory', '412', '2015-05-11 13:22:05'),
	(343, 'admin', 2, 'StoreCategory', '49', '2015-05-11 13:22:07'),
	(344, 'admin', 2, 'StoreCategory', 'Ода', '2015-05-11 13:22:09'),
	(345, 'admin', 1, 'StoreCategory', 'Chrysler', '2015-05-11 13:23:44'),
	(346, 'admin', 2, 'StoreCategory', 'Chrysler', '2015-05-11 13:23:54'),
	(347, 'admin', 1, 'StoreCategory', '300С', '2015-05-11 13:24:04'),
	(348, 'admin', 1, 'StoreCategory', 'Aspen', '2015-05-11 13:24:11'),
	(349, 'admin', 1, 'StoreCategory', 'Cirrus', '2015-05-11 13:24:16'),
	(350, 'admin', 1, 'StoreCategory', 'Concorde', '2015-05-11 13:24:22'),
	(351, 'admin', 1, 'StoreCategory', 'Daytona Shelby', '2015-05-11 13:24:29'),
	(352, 'admin', 1, 'StoreCategory', 'Dynasty', '2015-05-11 13:24:34'),
	(353, 'admin', 1, 'StoreCategory', 'Fifth Avenue', '2015-05-11 13:24:41'),
	(354, 'admin', 2, 'StoreCategory', '300С', '2015-05-11 13:24:45'),
	(355, 'admin', 2, 'StoreCategory', 'Aspen', '2015-05-11 13:24:47'),
	(356, 'admin', 2, 'StoreCategory', 'Cirrus', '2015-05-11 13:24:48'),
	(357, 'admin', 2, 'StoreCategory', 'Concorde', '2015-05-11 13:24:50'),
	(358, 'admin', 2, 'StoreCategory', 'Daytona Shelby', '2015-05-11 13:24:52'),
	(359, 'admin', 2, 'StoreCategory', 'Dynasty', '2015-05-11 13:24:54'),
	(360, 'admin', 2, 'StoreCategory', 'Fifth Avenue', '2015-05-11 13:24:56'),
	(361, 'admin', 1, 'StoreCategory', 'Citroen', '2015-05-11 13:25:25'),
	(362, 'admin', 2, 'StoreCategory', 'Citroen', '2015-05-11 13:25:45'),
	(363, 'admin', 1, 'StoreCategory', '2 CV', '2015-05-11 13:26:01'),
	(364, 'admin', 1, 'StoreCategory', 'Acadiane', '2015-05-11 13:26:06'),
	(365, 'admin', 1, 'StoreCategory', 'AMI', '2015-05-11 13:26:12'),
	(366, 'admin', 1, 'StoreCategory', 'Berlingo', '2015-05-11 13:26:17'),
	(367, 'admin', 1, 'StoreCategory', 'C-Crosser', '2015-05-11 13:26:22'),
	(368, 'admin', 1, 'StoreCategory', 'DS3', '2015-05-11 13:26:29'),
	(369, 'admin', 1, 'StoreCategory', 'Grand C4 Picasso', '2015-05-11 13:26:35'),
	(370, 'admin', 1, 'StoreCategory', 'Jumper', '2015-05-11 13:26:42'),
	(371, 'admin', 1, 'StoreCategory', 'Jumpy', '2015-05-11 13:26:47'),
	(372, 'admin', 1, 'StoreCategory', 'Visa', '2015-05-11 13:26:53'),
	(373, 'admin', 2, 'StoreCategory', '2 CV', '2015-05-11 13:26:59'),
	(374, 'admin', 2, 'StoreCategory', 'Acadiane', '2015-05-11 13:27:00'),
	(375, 'admin', 2, 'StoreCategory', 'AMI', '2015-05-11 13:27:02'),
	(376, 'admin', 2, 'StoreCategory', 'Berlingo', '2015-05-11 13:27:04'),
	(377, 'admin', 2, 'StoreCategory', 'C-Crosser', '2015-05-11 13:27:05'),
	(378, 'admin', 2, 'StoreCategory', 'DS3', '2015-05-11 13:27:07'),
	(379, 'admin', 2, 'StoreCategory', 'Grand C4 Picasso', '2015-05-11 13:27:09'),
	(380, 'admin', 2, 'StoreCategory', 'Grand C4 Picasso', '2015-05-11 13:27:15'),
	(381, 'admin', 2, 'StoreCategory', 'Jumper', '2015-05-11 13:27:17'),
	(382, 'admin', 2, 'StoreCategory', 'Jumpy', '2015-05-11 13:27:19'),
	(383, 'admin', 2, 'StoreCategory', 'Visa', '2015-05-11 13:27:21'),
	(384, 'admin', 2, 'StoreCategory', 'Grand C4 Picasso', '2015-05-11 13:28:15'),
	(385, 'admin', 1, 'StoreCategory', 'Daewoo', '2015-05-11 13:28:27'),
	(386, 'admin', 2, 'StoreCategory', 'Daewoo', '2015-05-11 13:28:36'),
	(387, 'admin', 1, 'StoreCategory', 'Damas', '2015-05-11 13:28:50'),
	(388, 'admin', 1, 'StoreCategory', 'Gentra', '2015-05-11 13:28:59'),
	(389, 'admin', 1, 'StoreCategory', 'Lacetti', '2015-05-11 13:29:09'),
	(390, 'admin', 1, 'StoreCategory', 'Matiz', '2015-05-11 13:29:17'),
	(391, 'admin', 1, 'StoreCategory', 'Nexia', '2015-05-11 13:29:23'),
	(392, 'admin', 1, 'StoreCategory', 'Tacuma', '2015-05-11 13:29:37'),
	(393, 'admin', 1, 'StoreCategory', 'Tico', '2015-05-11 13:29:46'),
	(394, 'admin', 2, 'StoreCategory', 'Damas', '2015-05-11 13:29:51'),
	(395, 'admin', 2, 'StoreCategory', 'Gentra', '2015-05-11 13:29:53'),
	(396, 'admin', 2, 'StoreCategory', 'Lacetti', '2015-05-11 13:29:54'),
	(397, 'admin', 2, 'StoreCategory', 'Matiz', '2015-05-11 13:29:56'),
	(398, 'admin', 2, 'StoreCategory', 'Nexia', '2015-05-11 13:29:57'),
	(399, 'admin', 2, 'StoreCategory', 'Tacuma', '2015-05-11 13:29:59'),
	(400, 'admin', 2, 'StoreCategory', 'Tico', '2015-05-11 13:30:01'),
	(401, 'admin', 3, 'StoreCategory', 'Corvette', '2015-05-11 13:30:28'),
	(402, 'admin', 1, 'StoreCategory', 'Fiat', '2015-05-11 13:31:05'),
	(403, 'admin', 2, 'StoreCategory', 'Fiat', '2015-05-11 13:31:16'),
	(404, 'admin', 1, 'StoreCategory', 'Albea', '2015-05-11 13:31:30'),
	(405, 'admin', 1, 'StoreCategory', 'Argenta', '2015-05-11 13:31:35'),
	(406, 'admin', 1, 'StoreCategory', 'Barchetta', '2015-05-11 13:31:40'),
	(407, 'admin', 1, 'StoreCategory', 'Brava', '2015-05-11 13:31:45'),
	(408, 'admin', 1, 'StoreCategory', 'Croma', '2015-05-11 13:31:50'),
	(409, 'admin', 1, 'StoreCategory', 'Doblo Cargo', '2015-05-11 13:31:57'),
	(410, 'admin', 1, 'StoreCategory', 'Fiorino', '2015-05-11 13:32:02'),
	(411, 'admin', 1, 'StoreCategory', 'Grande Punto', '2015-05-11 13:32:07'),
	(412, 'admin', 1, 'StoreCategory', 'Marea', '2015-05-11 13:32:12'),
	(413, 'admin', 1, 'StoreCategory', 'New 500', '2015-05-11 13:32:18'),
	(414, 'admin', 1, 'StoreCategory', 'Regata', '2015-05-11 13:32:25'),
	(415, 'admin', 1, 'StoreCategory', 'Scudo Combi', '2015-05-11 13:32:32'),
	(416, 'admin', 2, 'StoreCategory', 'Albea', '2015-05-11 13:32:37'),
	(417, 'admin', 2, 'StoreCategory', 'Argenta', '2015-05-11 13:32:39'),
	(418, 'admin', 2, 'StoreCategory', 'Barchetta', '2015-05-11 13:32:41'),
	(419, 'admin', 2, 'StoreCategory', 'Brava', '2015-05-11 13:32:42'),
	(420, 'admin', 2, 'StoreCategory', 'Croma', '2015-05-11 13:32:44'),
	(421, 'admin', 2, 'StoreCategory', 'Doblo Cargo', '2015-05-11 13:32:46'),
	(422, 'admin', 2, 'StoreCategory', 'Fiorino', '2015-05-11 13:32:48'),
	(423, 'admin', 2, 'StoreCategory', 'Grande Punto', '2015-05-11 13:32:50'),
	(424, 'admin', 2, 'StoreCategory', 'Marea', '2015-05-11 13:32:51'),
	(425, 'admin', 2, 'StoreCategory', 'New 500', '2015-05-11 13:32:54'),
	(426, 'admin', 2, 'StoreCategory', 'Regata', '2015-05-11 13:32:56'),
	(427, 'admin', 2, 'StoreCategory', 'Scudo Combi', '2015-05-11 13:32:58'),
	(428, 'admin', 1, 'StoreCategory', 'Ford', '2015-05-11 13:33:32'),
	(429, 'admin', 2, 'StoreCategory', 'Ford', '2015-05-11 13:34:55'),
	(430, 'admin', 1, 'StoreCategory', 'Aerostar', '2015-05-11 13:35:12'),
	(431, 'admin', 1, 'StoreCategory', 'Aspire', '2015-05-11 13:35:17'),
	(432, 'admin', 1, 'StoreCategory', 'Bronco', '2015-05-11 13:35:23'),
	(433, 'admin', 1, 'StoreCategory', 'Crown Victoria', '2015-05-11 13:35:30'),
	(434, 'admin', 1, 'StoreCategory', 'Edge', '2015-05-11 13:35:36'),
	(435, 'admin', 1, 'StoreCategory', 'Escort', '2015-05-11 13:35:42'),
	(436, 'admin', 1, 'StoreCategory', 'Express', '2015-05-11 13:35:49'),
	(437, 'admin', 1, 'StoreCategory', 'Fiesta', '2015-05-11 13:35:58'),
	(438, 'admin', 1, 'StoreCategory', 'Focus', '2015-05-11 13:36:04'),
	(439, 'admin', 1, 'StoreCategory', 'Granada', '2015-05-11 13:36:14'),
	(440, 'admin', 1, 'StoreCategory', 'Kuga', '2015-05-11 13:36:21'),
	(441, 'admin', 1, 'StoreCategory', 'Mustang', '2015-05-11 13:36:28'),
	(442, 'admin', 1, 'StoreCategory', 'Puma', '2015-05-11 13:36:38'),
	(443, 'admin', 2, 'StoreCategory', 'Aerostar', '2015-05-11 13:36:43'),
	(444, 'admin', 2, 'StoreCategory', 'Aspire', '2015-05-11 13:36:44'),
	(445, 'admin', 2, 'StoreCategory', 'Bronco', '2015-05-11 13:36:46'),
	(446, 'admin', 2, 'StoreCategory', 'Crown Victoria', '2015-05-11 13:36:47'),
	(447, 'admin', 2, 'StoreCategory', 'Edge', '2015-05-11 13:36:49'),
	(448, 'admin', 2, 'StoreCategory', 'Escort', '2015-05-11 13:36:50'),
	(449, 'admin', 2, 'StoreCategory', 'Express', '2015-05-11 13:36:52'),
	(450, 'admin', 2, 'StoreCategory', 'Express', '2015-05-11 13:36:58'),
	(451, 'admin', 2, 'StoreCategory', 'Fiesta', '2015-05-11 13:37:00'),
	(452, 'admin', 2, 'StoreCategory', 'Focus', '2015-05-11 13:37:02'),
	(453, 'admin', 2, 'StoreCategory', 'Granada', '2015-05-11 13:37:04'),
	(454, 'admin', 2, 'StoreCategory', 'Kuga', '2015-05-11 13:37:06'),
	(455, 'admin', 2, 'StoreCategory', 'Mustang', '2015-05-11 13:37:09'),
	(456, 'admin', 2, 'StoreCategory', 'Puma', '2015-05-11 13:37:11'),
	(457, 'admin', 3, 'StoreCategory', 'Аcurа', '2015-05-11 13:38:07'),
	(458, 'admin', 1, 'StoreCategory', 'Honda', '2015-05-11 13:44:43'),
	(459, 'admin', 2, 'StoreCategory', 'Honda', '2015-05-11 13:44:53'),
	(460, 'admin', 1, 'StoreCategory', 'Honda', '2015-05-11 14:19:16'),
	(461, 'admin', 3, 'StoreCategory', 'Honda', '2015-05-11 14:19:25'),
	(462, 'admin', 1, 'StoreCategory', 'Accord', '2015-05-11 14:19:45'),
	(463, 'admin', 1, 'StoreCategory', 'Acty', '2015-05-11 14:19:50'),
	(464, 'admin', 1, 'StoreCategory', 'Aerodeck', '2015-05-11 14:19:55'),
	(465, 'admin', 1, 'StoreCategory', 'Airware', '2015-05-11 14:20:00'),
	(466, 'admin', 1, 'StoreCategory', 'Ascot', '2015-05-11 14:20:06'),
	(467, 'admin', 1, 'StoreCategory', 'Avancier', '2015-05-11 14:20:12'),
	(468, 'admin', 1, 'StoreCategory', 'Beat', '2015-05-11 14:20:19'),
	(469, 'admin', 2, 'StoreCategory', 'Accord', '2015-05-11 14:20:24'),
	(470, 'admin', 2, 'StoreCategory', 'Acty', '2015-05-11 14:20:25'),
	(471, 'admin', 2, 'StoreCategory', 'Aerodeck', '2015-05-11 14:20:27'),
	(472, 'admin', 2, 'StoreCategory', 'Airware', '2015-05-11 14:20:29'),
	(473, 'admin', 2, 'StoreCategory', 'Ascot', '2015-05-11 14:20:31'),
	(474, 'admin', 2, 'StoreCategory', 'Avancier', '2015-05-11 14:20:33'),
	(475, 'admin', 2, 'StoreCategory', 'Beat', '2015-05-11 14:20:35'),
	(476, 'admin', 1, 'StoreCategory', 'Hyundai', '2015-05-11 14:21:10'),
	(477, 'admin', 2, 'StoreCategory', 'Hyundai', '2015-05-11 14:21:19'),
	(478, 'admin', 1, 'StoreCategory', 'Accent', '2015-05-11 14:21:29'),
	(479, 'admin', 1, 'StoreCategory', 'Atos', '2015-05-11 14:21:33'),
	(480, 'admin', 1, 'StoreCategory', 'Avante', '2015-05-11 14:21:39'),
	(481, 'admin', 1, 'StoreCategory', 'Centennial', '2015-05-11 14:21:44'),
	(482, 'admin', 1, 'StoreCategory', 'Coupe', '2015-05-11 14:21:49'),
	(483, 'admin', 1, 'StoreCategory', 'Dynasty', '2015-05-11 14:21:54'),
	(484, 'admin', 1, 'StoreCategory', 'Excel', '2015-05-11 14:22:01'),
	(485, 'admin', 1, 'StoreCategory', 'Galloper', '2015-05-11 14:22:07'),
	(486, 'admin', 1, 'StoreCategory', 'Lavita', '2015-05-11 14:22:13'),
	(487, 'admin', 1, 'StoreCategory', 'Lantra', '2015-05-11 14:22:20'),
	(488, 'admin', 1, 'StoreCategory', 'Solaris', '2015-05-11 14:22:25'),
	(489, 'admin', 2, 'StoreCategory', 'Accent', '2015-05-11 14:22:38'),
	(490, 'admin', 2, 'StoreCategory', 'Atos', '2015-05-11 14:22:39'),
	(491, 'admin', 2, 'StoreCategory', 'Avante', '2015-05-11 14:22:40'),
	(492, 'admin', 2, 'StoreCategory', 'Centennial', '2015-05-11 14:22:42'),
	(493, 'admin', 2, 'StoreCategory', 'Coupe', '2015-05-11 14:22:44'),
	(494, 'admin', 2, 'StoreCategory', 'Dynasty', '2015-05-11 14:22:45'),
	(495, 'admin', 2, 'StoreCategory', 'Excel', '2015-05-11 14:22:47'),
	(496, 'admin', 2, 'StoreCategory', 'Galloper', '2015-05-11 14:22:49'),
	(497, 'admin', 2, 'StoreCategory', 'Galloper', '2015-05-11 14:22:51'),
	(498, 'admin', 2, 'StoreCategory', 'Lavita', '2015-05-11 14:22:53'),
	(499, 'admin', 2, 'StoreCategory', 'Lantra', '2015-05-11 14:22:56'),
	(500, 'admin', 2, 'StoreCategory', 'Solaris', '2015-05-11 14:22:58'),
	(501, 'admin', 1, 'StoreCategory', 'Infiniti', '2015-05-11 14:23:26'),
	(502, 'admin', 2, 'StoreCategory', 'Infiniti', '2015-05-11 14:23:37'),
	(503, 'admin', 1, 'StoreCategory', 'FX35', '2015-05-11 14:23:52'),
	(504, 'admin', 1, 'StoreCategory', 'FX45', '2015-05-11 14:23:56'),
	(505, 'admin', 1, 'StoreCategory', 'FX50', '2015-05-11 14:24:01'),
	(506, 'admin', 1, 'StoreCategory', 'G20', '2015-05-11 14:24:05'),
	(507, 'admin', 1, 'StoreCategory', 'G25', '2015-05-11 14:24:11'),
	(508, 'admin', 1, 'StoreCategory', 'G30', '2015-05-11 14:24:15'),
	(509, 'admin', 1, 'StoreCategory', 'G35', '2015-05-11 14:24:20'),
	(510, 'admin', 2, 'StoreCategory', 'FX35', '2015-05-11 14:24:25'),
	(511, 'admin', 2, 'StoreCategory', 'FX45', '2015-05-11 14:24:27'),
	(512, 'admin', 2, 'StoreCategory', 'FX50', '2015-05-11 14:24:28'),
	(513, 'admin', 2, 'StoreCategory', 'G20', '2015-05-11 14:24:30'),
	(514, 'admin', 2, 'StoreCategory', 'G25', '2015-05-11 14:24:32'),
	(515, 'admin', 2, 'StoreCategory', 'G30', '2015-05-11 14:24:34'),
	(516, 'admin', 2, 'StoreCategory', 'G35', '2015-05-11 14:24:36'),
	(517, 'admin', 1, 'StoreCategory', 'Jaguar', '2015-05-11 14:24:55'),
	(518, 'admin', 2, 'StoreCategory', 'Jaguar', '2015-05-11 14:25:05'),
	(519, 'admin', 1, 'StoreCategory', 'Daimler', '2015-05-11 14:25:20'),
	(520, 'admin', 1, 'StoreCategory', 'E-type', '2015-05-11 14:25:25'),
	(521, 'admin', 1, 'StoreCategory', 'S-type', '2015-05-11 14:25:30'),
	(522, 'admin', 1, 'StoreCategory', 'Sovereign', '2015-05-11 14:25:35'),
	(523, 'admin', 1, 'StoreCategory', 'X-type', '2015-05-11 14:25:40'),
	(524, 'admin', 2, 'StoreCategory', 'Daimler', '2015-05-11 14:25:45'),
	(525, 'admin', 2, 'StoreCategory', 'E-type', '2015-05-11 14:25:47'),
	(526, 'admin', 2, 'StoreCategory', 'S-type', '2015-05-11 14:25:48'),
	(527, 'admin', 2, 'StoreCategory', 'Sovereign', '2015-05-11 14:25:50'),
	(528, 'admin', 2, 'StoreCategory', 'X-type', '2015-05-11 14:25:51'),
	(529, 'admin', 1, 'StoreCategory', 'Jeep', '2015-05-11 14:26:09'),
	(530, 'admin', 2, 'StoreCategory', 'Jeep', '2015-05-11 14:26:18'),
	(531, 'admin', 1, 'StoreCategory', 'Cherokee', '2015-05-11 14:26:25'),
	(532, 'admin', 1, 'StoreCategory', 'CJ5 - CJ8', '2015-05-11 14:26:30'),
	(533, 'admin', 1, 'StoreCategory', 'Comanche', '2015-05-11 14:26:34'),
	(534, 'admin', 1, 'StoreCategory', 'Commander', '2015-05-11 14:26:41'),
	(535, 'admin', 1, 'StoreCategory', 'Compass', '2015-05-11 14:26:45'),
	(536, 'admin', 1, 'StoreCategory', 'Grand Cherokee', '2015-05-11 14:26:50'),
	(537, 'admin', 1, 'StoreCategory', 'Liberty', '2015-05-11 14:26:55'),
	(538, 'admin', 1, 'StoreCategory', 'Patriot', '2015-05-11 14:27:00'),
	(539, 'admin', 1, 'StoreCategory', 'Wrangler', '2015-05-11 14:27:04'),
	(540, 'admin', 2, 'StoreCategory', 'Cherokee', '2015-05-11 14:27:10'),
	(541, 'admin', 2, 'StoreCategory', 'CJ5 - CJ8', '2015-05-11 14:27:12'),
	(542, 'admin', 2, 'StoreCategory', 'Comanche', '2015-05-11 14:27:13'),
	(543, 'admin', 2, 'StoreCategory', 'Commander', '2015-05-11 14:27:15'),
	(544, 'admin', 2, 'StoreCategory', 'Compass', '2015-05-11 14:27:17'),
	(545, 'admin', 2, 'StoreCategory', 'Grand Cherokee', '2015-05-11 14:27:19'),
	(546, 'admin', 2, 'StoreCategory', 'Liberty', '2015-05-11 14:27:21'),
	(547, 'admin', 2, 'StoreCategory', 'Patriot', '2015-05-11 14:27:23'),
	(548, 'admin', 2, 'StoreCategory', 'Wrangler', '2015-05-11 14:27:25'),
	(549, 'admin', 1, 'StoreCategory', 'Kia', '2015-05-11 14:27:42'),
	(550, 'admin', 1, 'StoreCategory', 'Avella', '2015-05-11 14:27:52'),
	(551, 'admin', 1, 'StoreCategory', 'Besta', '2015-05-11 14:27:57'),
	(552, 'admin', 1, 'StoreCategory', 'Borrego', '2015-05-11 14:28:02'),
	(553, 'admin', 1, 'StoreCategory', 'Capital', '2015-05-11 14:28:06'),
	(554, 'admin', 1, 'StoreCategory', 'Carens', '2015-05-11 14:28:11'),
	(555, 'admin', 1, 'StoreCategory', 'Carnival', '2015-05-11 14:28:16'),
	(556, 'admin', 2, 'StoreCategory', 'Kia', '2015-05-11 14:28:26'),
	(557, 'admin', 2, 'StoreCategory', 'Avella', '2015-05-11 14:28:30'),
	(558, 'admin', 2, 'StoreCategory', 'Besta', '2015-05-11 14:28:32'),
	(559, 'admin', 2, 'StoreCategory', 'Borrego', '2015-05-11 14:28:33'),
	(560, 'admin', 2, 'StoreCategory', 'Capital', '2015-05-11 14:28:34'),
	(561, 'admin', 2, 'StoreCategory', 'Carens', '2015-05-11 14:28:36'),
	(562, 'admin', 2, 'StoreCategory', 'Carnival', '2015-05-11 14:28:38'),
	(563, 'admin', 1, 'StoreCategory', 'Lexus', '2015-05-11 14:28:55'),
	(564, 'admin', 2, 'StoreCategory', 'Lexus', '2015-05-11 14:29:05'),
	(565, 'admin', 1, 'StoreCategory', 'ES300', '2015-05-11 14:29:12'),
	(566, 'admin', 1, 'StoreCategory', 'ES330', '2015-05-11 14:29:18'),
	(567, 'admin', 1, 'StoreCategory', 'GS300', '2015-05-11 14:29:23'),
	(568, 'admin', 1, 'StoreCategory', 'GS350', '2015-05-11 14:29:27'),
	(569, 'admin', 2, 'StoreCategory', 'ES300', '2015-05-11 14:29:40'),
	(570, 'admin', 2, 'StoreCategory', 'ES330', '2015-05-11 14:29:42'),
	(571, 'admin', 2, 'StoreCategory', 'GS300', '2015-05-11 14:29:43'),
	(572, 'admin', 2, 'StoreCategory', 'GS350', '2015-05-11 14:29:45'),
	(573, 'admin', 1, 'StoreCategory', 'Lifan', '2015-05-11 14:30:13'),
	(574, 'admin', 2, 'StoreCategory', 'Lifan', '2015-05-11 14:30:23'),
	(575, 'admin', 1, 'StoreCategory', 'Mazda', '2015-05-11 14:31:18'),
	(576, 'admin', 1, 'StoreCategory', '818 Kombi', '2015-05-11 14:31:32'),
	(577, 'admin', 1, 'StoreCategory', '929', '2015-05-11 14:31:38'),
	(578, 'admin', 1, 'StoreCategory', 'Atenza', '2015-05-11 14:31:44'),
	(579, 'admin', 1, 'StoreCategory', 'Allegro', '2015-05-11 14:31:49'),
	(580, 'admin', 1, 'StoreCategory', 'Axela', '2015-05-11 14:31:54'),
	(581, 'admin', 1, 'StoreCategory', 'Az-offroad', '2015-05-11 14:32:01'),
	(582, 'admin', 2, 'StoreCategory', 'Mazda', '2015-05-11 14:32:10'),
	(583, 'admin', 2, 'StoreCategory', '818 Kombi', '2015-05-11 14:32:14'),
	(584, 'admin', 2, 'StoreCategory', '929', '2015-05-11 14:32:15'),
	(585, 'admin', 2, 'StoreCategory', 'Atenza', '2015-05-11 14:32:17'),
	(586, 'admin', 2, 'StoreCategory', 'Allegro', '2015-05-11 14:32:18'),
	(587, 'admin', 2, 'StoreCategory', 'Axela', '2015-05-11 14:32:20'),
	(588, 'admin', 2, 'StoreCategory', 'Az-offroad', '2015-05-11 14:32:22'),
	(589, 'admin', 1, 'StoreCategory', 'Mercedes-Benz', '2015-05-11 14:32:52'),
	(590, 'admin', 2, 'StoreCategory', 'Mercedes-Benz', '2015-05-11 14:33:01'),
	(591, 'admin', 1, 'StoreCategory', 'A 140', '2015-05-11 14:33:20'),
	(592, 'admin', 1, 'StoreCategory', 'A 150', '2015-05-11 14:33:26'),
	(593, 'admin', 1, 'StoreCategory', 'A 160', '2015-05-11 14:33:30'),
	(594, 'admin', 1, 'StoreCategory', 'A 170', '2015-05-11 14:33:34'),
	(595, 'admin', 1, 'StoreCategory', 'A 180', '2015-05-11 14:33:40'),
	(596, 'admin', 2, 'StoreCategory', 'A 140', '2015-05-11 14:33:46'),
	(597, 'admin', 2, 'StoreCategory', 'A 150', '2015-05-11 14:33:48'),
	(598, 'admin', 2, 'StoreCategory', 'A 160', '2015-05-11 14:33:49'),
	(599, 'admin', 2, 'StoreCategory', 'A 170', '2015-05-11 14:33:51'),
	(600, 'admin', 2, 'StoreCategory', 'A 180', '2015-05-11 14:33:53'),
	(601, 'admin', 1, 'StoreCategory', 'Nissan', '2015-05-11 14:34:50'),
	(602, 'admin', 2, 'StoreCategory', 'Nissan', '2015-05-11 14:35:11'),
	(603, 'admin', 1, 'StoreCategory', '100NX', '2015-05-11 14:35:21'),
	(604, 'admin', 1, 'StoreCategory', '180SX', '2015-05-11 14:35:25'),
	(605, 'admin', 1, 'StoreCategory', '200SX', '2015-05-11 14:35:31'),
	(606, 'admin', 1, 'StoreCategory', '240SX', '2015-05-11 14:35:37'),
	(607, 'admin', 2, 'StoreCategory', '100NX', '2015-05-11 14:35:43'),
	(608, 'admin', 2, 'StoreCategory', '180SX', '2015-05-11 14:35:44'),
	(609, 'admin', 2, 'StoreCategory', '200SX', '2015-05-11 14:35:46'),
	(610, 'admin', 2, 'StoreCategory', '240SX', '2015-05-11 14:35:48'),
	(611, 'admin', 1, 'StoreCategory', 'Opel', '2015-05-11 14:36:14'),
	(612, 'admin', 2, 'StoreCategory', 'Opel', '2015-05-11 14:36:26'),
	(613, 'admin', 1, 'StoreCategory', 'Admiral', '2015-05-11 14:36:31'),
	(614, 'admin', 1, 'StoreCategory', 'Agila', '2015-05-11 14:36:36'),
	(615, 'admin', 1, 'StoreCategory', 'Antara', '2015-05-11 14:36:41'),
	(616, 'admin', 1, 'StoreCategory', 'Arena', '2015-05-11 14:36:46'),
	(617, 'admin', 2, 'StoreCategory', 'Admiral', '2015-05-11 14:36:52'),
	(618, 'admin', 2, 'StoreCategory', 'Agila', '2015-05-11 14:36:54'),
	(619, 'admin', 2, 'StoreCategory', 'Antara', '2015-05-11 14:36:56'),
	(620, 'admin', 2, 'StoreCategory', 'Arena', '2015-05-11 14:36:57'),
	(621, 'admin', 1, 'StoreCategory', 'Renault', '2015-05-11 14:37:32'),
	(622, 'admin', 2, 'StoreCategory', 'Renault', '2015-05-11 14:37:42'),
	(623, 'admin', 1, 'StoreCategory', 'Avantime', '2015-05-11 14:37:53'),
	(624, 'admin', 1, 'StoreCategory', 'Clio', '2015-05-11 14:37:58'),
	(625, 'admin', 1, 'StoreCategory', 'Clio II', '2015-05-11 14:38:03'),
	(626, 'admin', 1, 'StoreCategory', 'Clio III', '2015-05-11 14:38:09'),
	(627, 'admin', 2, 'StoreCategory', 'Avantime', '2015-05-11 14:38:14'),
	(628, 'admin', 2, 'StoreCategory', 'Clio', '2015-05-11 14:38:15'),
	(629, 'admin', 2, 'StoreCategory', 'Clio II', '2015-05-11 14:38:17'),
	(630, 'admin', 2, 'StoreCategory', 'Clio III', '2015-05-11 14:38:18'),
	(631, 'admin', 1, 'StoreCategory', 'SsangYong', '2015-05-11 14:38:47'),
	(632, 'admin', 2, 'StoreCategory', 'SsangYong', '2015-05-11 14:39:03'),
	(633, 'admin', 1, 'StoreCategory', 'Actyon', '2015-05-11 14:39:15'),
	(634, 'admin', 1, 'StoreCategory', 'Actyon Sports', '2015-05-11 14:39:22'),
	(635, 'admin', 1, 'StoreCategory', 'Chairman', '2015-05-11 14:39:26'),
	(636, 'admin', 1, 'StoreCategory', 'Family', '2015-05-11 14:39:31'),
	(637, 'admin', 2, 'StoreCategory', 'Actyon', '2015-05-11 14:39:37'),
	(638, 'admin', 2, 'StoreCategory', 'Actyon Sports', '2015-05-11 14:39:38'),
	(639, 'admin', 2, 'StoreCategory', 'Chairman', '2015-05-11 14:39:40'),
	(640, 'admin', 2, 'StoreCategory', 'Family', '2015-05-11 14:39:41'),
	(641, 'admin', 1, 'StoreCategory', 'Suzuki', '2015-05-11 14:40:14'),
	(642, 'admin', 1, 'StoreCategory', 'Aerio', '2015-05-11 14:40:26'),
	(643, 'admin', 1, 'StoreCategory', 'Aerio Sedan', '2015-05-11 14:40:31'),
	(644, 'admin', 1, 'StoreCategory', 'Aerio SX', '2015-05-11 14:40:36'),
	(645, 'admin', 1, 'StoreCategory', 'Alto', '2015-05-11 14:40:41'),
	(646, 'admin', 2, 'StoreCategory', 'Suzuki', '2015-05-11 14:40:53'),
	(647, 'admin', 2, 'StoreCategory', 'Aerio', '2015-05-11 14:40:57'),
	(648, 'admin', 2, 'StoreCategory', 'Aerio Sedan', '2015-05-11 14:40:58'),
	(649, 'admin', 2, 'StoreCategory', 'Aerio SX', '2015-05-11 14:41:00'),
	(650, 'admin', 2, 'StoreCategory', 'Alto', '2015-05-11 14:41:02'),
	(651, 'admin', 1, 'StoreCategory', '4runner', '2015-05-11 14:41:23'),
	(652, 'admin', 1, 'StoreCategory', 'Allex', '2015-05-11 14:41:28'),
	(653, 'admin', 1, 'StoreCategory', 'Allion', '2015-05-11 14:41:33'),
	(654, 'admin', 1, 'StoreCategory', 'Alphard', '2015-05-11 14:41:38'),
	(655, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-11 14:43:14'),
	(656, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-11 14:43:31'),
	(657, 'admin', 2, 'StoreCategory', '4runner', '2015-05-11 14:44:46'),
	(658, 'admin', 2, 'StoreCategory', 'Allex', '2015-05-11 14:44:49'),
	(659, 'admin', 2, 'StoreCategory', 'Allion', '2015-05-11 14:44:52'),
	(660, 'admin', 2, 'StoreCategory', 'Alphard', '2015-05-11 14:44:55'),
	(661, 'admin', 3, 'StoreCategory', '2125 Комби', '2015-05-11 14:45:57'),
	(662, 'admin', 3, 'StoreCategory', '2126 Орбита', '2015-05-11 14:45:57'),
	(663, 'admin', 3, 'StoreCategory', '21261', '2015-05-11 14:45:57'),
	(664, 'admin', 3, 'StoreCategory', '21261 Fabula', '2015-05-11 14:45:57'),
	(665, 'admin', 3, 'StoreCategory', '2715', '2015-05-11 14:45:57'),
	(666, 'admin', 3, 'StoreCategory', '2717', '2015-05-11 14:45:57'),
	(667, 'admin', 3, 'StoreCategory', '27171', '2015-05-11 14:45:57'),
	(668, 'admin', 3, 'StoreCategory', '412', '2015-05-11 14:45:57'),
	(669, 'admin', 3, 'StoreCategory', '49', '2015-05-11 14:45:57'),
	(670, 'admin', 3, 'StoreCategory', 'Ода', '2015-05-11 14:45:57'),
	(671, 'admin', 3, 'StoreCategory', 'ИЖ', '2015-05-11 14:45:57'),
	(672, 'admin', 1, 'StoreCategory', 'УАЗ', '2015-05-11 14:46:19'),
	(673, 'admin', 1, 'StoreCategory', 'Simbir', '2015-05-11 14:46:34'),
	(674, 'admin', 1, 'StoreCategory', 'Pickup', '2015-05-11 14:46:39'),
	(675, 'admin', 1, 'StoreCategory', 'Patriot', '2015-05-11 14:46:43'),
	(676, 'admin', 1, 'StoreCategory', 'Hunter', '2015-05-11 14:46:50'),
	(677, 'admin', 3, 'StoreCategory', 'Dodge Durango', '2015-05-11 14:49:27'),
	(678, 'admin', 3, 'StoreCategory', 'Dodge Stratus', '2015-05-11 14:49:27'),
	(679, 'admin', 3, 'StoreCategory', 'Dodge', '2015-05-11 14:49:27'),
	(680, 'admin', 3, 'StoreCategory', 'Subaru', '2015-05-11 14:49:46'),
	(681, 'admin', 2, 'StoreCategory', 'Audi', '2015-05-11 14:52:47'),
	(682, 'admin', 2, 'StoreCategory', 'BMW', '2015-05-12 15:52:00'),
	(683, 'admin', 2, 'StoreCategory', 'Chrysler', '2015-05-12 15:53:48'),
	(684, 'admin', 2, 'StoreCategory', 'Citroen', '2015-05-12 15:55:09'),
	(685, 'admin', 2, 'StoreCategory', 'Daewoo', '2015-05-12 15:58:43'),
	(686, 'admin', 2, 'StoreCategory', 'Fiat', '2015-05-12 15:59:58'),
	(687, 'admin', 2, 'StoreCategory', 'Ford', '2015-05-12 16:01:42'),
	(688, 'admin', 2, 'StoreCategory', 'Honda', '2015-05-12 16:04:50'),
	(689, 'admin', 2, 'StoreCategory', 'Hyundai', '2015-05-12 16:06:20'),
	(690, 'admin', 2, 'StoreCategory', 'Infiniti', '2015-05-12 16:07:24'),
	(691, 'admin', 2, 'StoreCategory', 'Jaguar', '2015-05-12 16:08:57'),
	(692, 'admin', 2, 'StoreCategory', 'Jeep', '2015-05-12 16:10:09'),
	(693, 'admin', 2, 'StoreCategory', 'Kia', '2015-05-12 16:11:32'),
	(694, 'admin', 2, 'StoreCategory', 'Lexus', '2015-05-12 16:38:13'),
	(695, 'admin', 2, 'StoreCategory', 'Lifan', '2015-05-12 16:42:25'),
	(696, 'admin', 2, 'StoreCategory', 'Mazda', '2015-05-12 16:47:31'),
	(697, 'admin', 2, 'StoreCategory', 'УАЗ', '2015-05-12 16:49:02'),
	(698, 'admin', 2, 'StoreCategory', 'Simbir', '2015-05-12 16:49:08'),
	(699, 'admin', 2, 'StoreCategory', 'Pickup', '2015-05-12 16:49:10'),
	(700, 'admin', 2, 'StoreCategory', 'Patriot', '2015-05-12 16:49:11'),
	(701, 'admin', 2, 'StoreCategory', 'Hunter', '2015-05-12 16:49:13'),
	(702, 'admin', 2, 'StoreCategory', 'Mercedes-Benz', '2015-05-12 16:49:42'),
	(703, 'admin', 2, 'StoreCategory', 'Nissan', '2015-05-12 16:51:37'),
	(704, 'admin', 2, 'StoreCategory', 'Opel', '2015-05-12 17:04:56'),
	(705, 'admin', 2, 'StoreCategory', 'Renault', '2015-05-12 17:20:12'),
	(706, 'admin', 2, 'StoreCategory', 'SsangYong', '2015-05-13 09:24:56'),
	(707, 'admin', 2, 'StoreCategory', 'Suzuki', '2015-05-13 09:26:06'),
	(708, 'admin', 2, 'StoreCategory', 'ВАЗ', '2015-05-13 09:28:32'),
	(709, 'admin', 2, 'StoreCategory', 'ВАЗ', '2015-05-13 09:29:15'),
	(710, 'admin', 2, 'StoreCategory', 'ГАЗ', '2015-05-13 09:31:24'),
	(711, 'admin', 2, 'StoreCategory', 'УАЗ', '2015-05-13 09:33:13'),
	(712, 'admin', 1, 'StoreProduct', 'Патриот', '2015-05-13 09:41:00'),
	(713, 'admin', 1, 'StoreProduct', 'Gran Turismo', '2015-05-13 09:50:54'),
	(714, 'admin', 2, 'StoreProductType', 'автомобили', '2015-05-13 12:44:10'),
	(715, 'admin', 2, 'StoreProductType', 'автомобили', '2015-05-13 12:44:49'),
	(716, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2015-05-13 18:04:06');
/*!40000 ALTER TABLE `ActionLog` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.AuthAssignment
DROP TABLE IF EXISTS `AuthAssignment`;
CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.AuthAssignment: 10 rows
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;
INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
	('Admin', '1', NULL, NULL),
	('Authenticated', '57', NULL, 'N;'),
	('Authenticated', '58', NULL, 'N;'),
	('Orders.Orders.*', '56', NULL, 'N;'),
	('Orders.Statuses.*', '56', NULL, 'N;'),
	('Authenticated', '56', NULL, 'N;'),
	('Authenticated', '62', NULL, 'N;'),
	('Authenticated', '63', NULL, 'N;'),
	('Authenticated', '2', NULL, 'N;'),
	('api', '2', NULL, 'N;');
/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.AuthItem
DROP TABLE IF EXISTS `AuthItem`;
CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.AuthItem: 24 rows
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;
INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
	('Admin', 2, NULL, NULL, 'N;'),
	('Authenticated', 2, NULL, NULL, 'N;'),
	('Guest', 2, NULL, NULL, 'N;'),
	('Orders.Orders.*', 1, NULL, NULL, 'N;'),
	('Orders.Statuses.*', 1, NULL, NULL, 'N;'),
	('Orders.Orders.Index', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Create', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Update', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProductList', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProduct', 0, NULL, NULL, 'N;'),
	('Orders.Orders.RenderOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.JsonOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Delete', 0, NULL, NULL, 'N;'),
	('Orders.Orders.DeleteProduct', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Index', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Create', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Update', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Delete', 0, NULL, NULL, 'N;'),
	('api', 2, 'api', NULL, 'N;'),
	('Store.Products.Index', 0, 'Store.Products.Index', NULL, 'N;'),
	('Store.Products.*', 1, 'Store.Products.*', NULL, 'N;'),
	('Store.Category.*', 1, 'Store.Category.*', NULL, 'N;'),
	('Admin.Default.*', 1, 'Admin.Default.*', NULL, 'N;'),
	('Store.Attribute.*', 1, 'Store.Attribute.*', NULL, 'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.AuthItemChild
DROP TABLE IF EXISTS `AuthItemChild`;
CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.AuthItemChild: 6 rows
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
INSERT INTO `AuthItemChild` (`parent`, `child`) VALUES
	('api', 'Admin.Default.*'),
	('api', 'Store.*'),
	('api', 'Store.Attribute.*'),
	('api', 'Store.Category.*'),
	('api', 'Store.Products.*'),
	('api', 'Store.Products.Index');
/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Banners
DROP TABLE IF EXISTS `Banners`;
CREATE TABLE IF NOT EXISTS `Banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Banners: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `Banners` DISABLE KEYS */;
INSERT INTO `Banners` (`id`, `name`, `status`) VALUES
	(1, 'test', 1),
	(2, 'test2', 1);
/*!40000 ALTER TABLE `Banners` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.BannersImages
DROP TABLE IF EXISTS `BannersImages`;
CREATE TABLE IF NOT EXISTS `BannersImages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `banner_id` (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.BannersImages: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `BannersImages` DISABLE KEYS */;
INSERT INTO `BannersImages` (`id`, `banner_id`, `image`, `sort`) VALUES
	(20, 1, '/uploads/banners/Koala.jpg', 4),
	(21, 1, '/uploads/importImages/AsusTransformerPadPrime20164Gb.jpg', 3),
	(22, 1, '/uploads/product/22_-1188437959.jpg', 2),
	(23, 2, '/uploads/banners/Koala.jpg', 2),
	(26, 2, '/uploads/banners/Penguins.jpg', 3);
/*!40000 ALTER TABLE `BannersImages` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.BannersImagesTranslate
DROP TABLE IF EXISTS `BannersImagesTranslate`;
CREATE TABLE IF NOT EXISTS `BannersImagesTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.BannersImagesTranslate: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `BannersImagesTranslate` DISABLE KEYS */;
INSERT INTO `BannersImagesTranslate` (`id`, `object_id`, `language_id`, `title`, `description`, `link`) VALUES
	(39, 20, 1, 'test', 'test', 'dsafdasfdsafd'),
	(40, 20, 9, 'test321321', 'test3213123', 'dsafdasfdsafd'),
	(41, 21, 1, '2253161111111', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(42, 21, 9, '2253161111111', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(43, 22, 1, '147852369', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(44, 22, 9, '147852369', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(45, 23, 1, 'fdsafdsafads', 'fdsafdsafdsa', ''),
	(46, 23, 9, 'fdsafdsafads', 'fdsafdsafdsa', 'fsdafdsafads'),
	(51, 26, 1, 'dsafdsaf', 'dsafdsafsadf', ''),
	(52, 26, 9, 'dsafdsaf', 'dsafdsafsadf', 'sdafsdafdsaf');
/*!40000 ALTER TABLE `BannersImagesTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Comments
DROP TABLE IF EXISTS `Comments`;
CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `class_name` varchar(100) DEFAULT '',
  `object_pk` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `text` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_name_index` (`class_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Comments: 0 rows
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Discount
DROP TABLE IF EXISTS `Discount`;
CREATE TABLE IF NOT EXISTS `Discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `sum` varchar(10) DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Discount: 1 rows
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` (`id`, `name`, `active`, `sum`, `start_date`, `end_date`, `roles`) VALUES
	(1, 'Скидка на всю технику Apple', 1, '5%', '2015-03-25 12:44:10', '2016-01-01 12:00:00', NULL);
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.DiscountCategory
DROP TABLE IF EXISTS `DiscountCategory`;
CREATE TABLE IF NOT EXISTS `DiscountCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.DiscountCategory: 4 rows
/*!40000 ALTER TABLE `DiscountCategory` DISABLE KEYS */;
INSERT INTO `DiscountCategory` (`id`, `discount_id`, `category_id`) VALUES
	(308, 1, 1),
	(309, 1, 230),
	(310, 1, 231),
	(311, 1, 232);
/*!40000 ALTER TABLE `DiscountCategory` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.DiscountManufacturer
DROP TABLE IF EXISTS `DiscountManufacturer`;
CREATE TABLE IF NOT EXISTS `DiscountManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.DiscountManufacturer: 0 rows
/*!40000 ALTER TABLE `DiscountManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `DiscountManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.grid_view_filter
DROP TABLE IF EXISTS `grid_view_filter`;
CREATE TABLE IF NOT EXISTS `grid_view_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `grid_id` varchar(100) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.grid_view_filter: 0 rows
/*!40000 ALTER TABLE `grid_view_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `grid_view_filter` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.notifications: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Order
DROP TABLE IF EXISTS `Order`;
CREATE TABLE IF NOT EXISTS `Order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `secret_key` varchar(10) DEFAULT '',
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` float(10,2) DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL COMMENT 'delivery address',
  `user_phone` varchar(30) DEFAULT NULL,
  `user_comment` varchar(500) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_comment` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `secret_key` (`secret_key`),
  KEY `delivery_id` (`delivery_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Order: 0 rows
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.OrderHistory
DROP TABLE IF EXISTS `OrderHistory`;
CREATE TABLE IF NOT EXISTS `OrderHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `data_before` text,
  `data_after` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_index` (`order_id`),
  KEY `created_index` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.OrderHistory: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `OrderHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderHistory` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.OrderProduct
DROP TABLE IF EXISTS `OrderProduct`;
CREATE TABLE IF NOT EXISTS `OrderProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `configurable_id` int(11) DEFAULT NULL,
  `name` text,
  `configurable_name` text COMMENT 'Store name of configurable product',
  `configurable_data` text,
  `variants` text,
  `quantity` smallint(6) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `configurable_id` (`configurable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.OrderProduct: 0 rows
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderProduct` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.OrderStatus
DROP TABLE IF EXISTS `OrderStatus`;
CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.OrderStatus: 2 rows
/*!40000 ALTER TABLE `OrderStatus` DISABLE KEYS */;
INSERT INTO `OrderStatus` (`id`, `name`, `position`) VALUES
	(1, 'Новый', 0),
	(5, 'Доставлен', 1);
/*!40000 ALTER TABLE `OrderStatus` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Page
DROP TABLE IF EXISTS `Page`;
CREATE TABLE IF NOT EXISTS `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `layout` varchar(2555) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Page: 7 rows
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
	(8, 1, NULL, 'help', '2012-06-10 22:35:51', '2012-07-07 11:47:09', '2012-06-10 22:35:29', 'published', '', ''),
	(9, 1, NULL, 'how-to-create-order', '2012-06-10 22:36:50', '2012-07-07 11:45:53', '2012-06-10 22:36:27', 'published', '', ''),
	(10, 1, NULL, 'garantiya', '2012-06-10 22:37:06', '2012-07-07 11:45:38', '2012-06-10 22:36:50', 'published', '', ''),
	(11, 1, NULL, 'dostavka-i-oplata', '2012-06-10 22:37:18', '2012-07-07 11:41:49', '2012-06-10 22:37:07', 'published', '', ''),
	(12, 1, 7, 'samsung-pitaetsya-izbezhat-zapreta-na-galaxy-nexus-v-shtatah-pri-pomoshi-patcha', '2012-07-07 12:08:50', '2012-07-07 12:09:33', '2012-07-07 12:06:19', 'published', '', ''),
	(13, 1, 7, 'za-85-mesyacev-android-40-popal-na-11-ustroistv', '2012-07-07 12:19:44', '2013-06-04 23:20:21', '2012-07-07 12:14:48', 'published', '', ''),
	(14, 1, 7, 'google-prezentoval-svoi-ochki-dopolnennoi-realnosti', '2012-07-07 12:26:11', '2012-07-07 12:26:11', '2012-07-07 12:25:48', 'published', '', '');
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.PageCategory
DROP TABLE IF EXISTS `PageCategory`;
CREATE TABLE IF NOT EXISTS `PageCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_url` text,
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.PageCategory: 3 rows
/*!40000 ALTER TABLE `PageCategory` DISABLE KEYS */;
INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
	(7, NULL, 'news', 'news', '', '', '2012-07-07 12:06:03', '2013-04-29 23:24:05', NULL),
	(10, NULL, 'tesstovya2', 'tesstovya2', '', '', '2013-05-21 23:59:34', '2013-05-21 23:59:34', NULL),
	(12, 7, 'tesstovya2', 'news/tesstovya2', '', '', '2013-05-22 00:07:01', '2013-05-22 00:07:01', NULL);
/*!40000 ALTER TABLE `PageCategory` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.PageCategoryTranslate
DROP TABLE IF EXISTS `PageCategoryTranslate`;
CREATE TABLE IF NOT EXISTS `PageCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.PageCategoryTranslate: 6 rows
/*!40000 ALTER TABLE `PageCategoryTranslate` DISABLE KEYS */;
INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
	(13, 7, 1, 'Новости', '', '', '', ''),
	(14, 7, 9, 'Новости', '', '', '', ''),
	(15, 11, 1, 'sdfsdf', '', '', '', ''),
	(16, 11, 9, 'sdfsdf', '', '', '', ''),
	(17, 12, 1, 'Тесстовя2', '', '', '', ''),
	(18, 12, 9, 'Тесстовя2', '', '', '', '');
/*!40000 ALTER TABLE `PageCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.PageTranslate
DROP TABLE IF EXISTS `PageTranslate`;
CREATE TABLE IF NOT EXISTS `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.PageTranslate: 14 rows
/*!40000 ALTER TABLE `PageTranslate` DISABLE KEYS */;
INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(22, 11, 9, 'Доставка и оплата', '', '', '', '', ''),
	(15, 8, 1, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', ''),
	(16, 8, 9, 'Помощь', '', '', '', '', ''),
	(17, 9, 1, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
	(18, 9, 9, 'Как сделать заказ', '', '', '', '', ''),
	(19, 10, 1, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
	(20, 10, 9, 'Гарантия', '', '', '', '', ''),
	(21, 11, 1, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
	(23, 12, 1, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
	(25, 13, 1, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(24, 12, 9, 'Samsung пытается избежать запрета на Galaxy Nexus в Штатах при помощи патча', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', '', ''),
	(26, 13, 9, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(27, 14, 1, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
	(28, 14, 9, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', '');
/*!40000 ALTER TABLE `PageTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.Rights
DROP TABLE IF EXISTS `Rights`;
CREATE TABLE IF NOT EXISTS `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.Rights: 0 rows
/*!40000 ALTER TABLE `Rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rights` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreAttribute
DROP TABLE IF EXISTS `StoreAttribute`;
CREATE TABLE IF NOT EXISTS `StoreAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `display_on_front` tinyint(1) DEFAULT '1',
  `use_in_filter` tinyint(1) DEFAULT NULL,
  `use_in_variants` tinyint(1) DEFAULT NULL,
  `use_in_compare` tinyint(1) DEFAULT '0',
  `select_many` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `use_in_filter` (`use_in_filter`),
  KEY `display_on_front` (`display_on_front`),
  KEY `position` (`position`),
  KEY `use_in_variants` (`use_in_variants`),
  KEY `use_in_compare` (`use_in_compare`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreAttribute: 11 rows
/*!40000 ALTER TABLE `StoreAttribute` DISABLE KEYS */;
INSERT INTO `StoreAttribute` (`id`, `name`, `type`, `display_on_front`, `use_in_filter`, `use_in_variants`, `use_in_compare`, `select_many`, `position`, `required`) VALUES
	(20, 'probeg', 1, 1, 1, 0, 0, 0, 1, 1),
	(21, 'body_type', 3, 1, 1, 0, 0, 0, 2, 1),
	(22, 'kpp', 3, 1, 1, 0, 0, 0, 3, 1),
	(23, 'engine_size', 1, 1, 1, 0, 0, 0, 4, 1),
	(24, 'fuel_type', 3, 1, 1, 0, 0, 0, 5, 1),
	(25, 'color', 3, 1, 1, 0, 0, 0, 6, 1),
	(26, 'actuator', 3, 1, 1, 0, 0, 0, 7, 1),
	(27, 'status', 3, 1, 1, 0, 0, 0, 8, 1),
	(28, 'power_of_the_engine', 1, 1, 1, 0, 0, 0, 9, 0),
	(29, 'engine_type', 3, 1, 1, 0, 0, 0, 10, 0),
	(30, 'metallic_color', 5, 1, 1, 0, 0, 0, 11, 0);
/*!40000 ALTER TABLE `StoreAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreAttributeOption
DROP TABLE IF EXISTS `StoreAttributeOption`;
CREATE TABLE IF NOT EXISTS `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreAttributeOption: 60 rows
/*!40000 ALTER TABLE `StoreAttributeOption` DISABLE KEYS */;
INSERT INTO `StoreAttributeOption` (`id`, `attribute_id`, `position`) VALUES
	(218, 29, 6),
	(208, 27, 3),
	(201, 26, 1),
	(192, 25, 10),
	(183, 25, 1),
	(217, 29, 5),
	(216, 29, 4),
	(215, 29, 3),
	(214, 29, 2),
	(207, 27, 2),
	(182, 25, 0),
	(213, 29, 1),
	(181, 24, 5),
	(206, 27, 1),
	(191, 25, 9),
	(212, 29, 0),
	(190, 25, 8),
	(211, 27, 6),
	(174, 22, 3),
	(165, 21, 4),
	(173, 22, 2),
	(172, 22, 1),
	(164, 21, 3),
	(171, 22, 0),
	(170, 21, 9),
	(169, 21, 8),
	(220, 30, 1),
	(210, 27, 5),
	(209, 27, 4),
	(219, 30, 0),
	(205, 27, 0),
	(200, 26, 0),
	(189, 25, 7),
	(177, 24, 1),
	(199, 25, 17),
	(188, 25, 6),
	(176, 24, 0),
	(198, 25, 16),
	(204, 26, 4),
	(197, 25, 15),
	(187, 25, 5),
	(196, 25, 14),
	(175, 22, 4),
	(195, 25, 13),
	(203, 26, 3),
	(186, 25, 4),
	(202, 26, 2),
	(194, 25, 12),
	(185, 25, 3),
	(193, 25, 11),
	(184, 25, 2),
	(168, 21, 7),
	(180, 24, 4),
	(163, 21, 2),
	(162, 21, 1),
	(167, 21, 6),
	(179, 24, 3),
	(161, 21, 0),
	(166, 21, 5),
	(178, 24, 2);
/*!40000 ALTER TABLE `StoreAttributeOption` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreAttributeOptionTranslate
DROP TABLE IF EXISTS `StoreAttributeOptionTranslate`;
CREATE TABLE IF NOT EXISTS `StoreAttributeOptionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreAttributeOptionTranslate: 120 rows
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeOptionTranslate` (`id`, `language_id`, `object_id`, `value`) VALUES
	(367, 1, 184, 'белый'),
	(361, 1, 181, 'электрический'),
	(360, 9, 180, 'дизель'),
	(349, 1, 175, 'типтроник'),
	(386, 9, 193, 'оранжевый'),
	(385, 1, 193, 'оранжевый'),
	(384, 9, 192, 'красный'),
	(383, 1, 192, 'красный'),
	(382, 9, 191, 'коричневый'),
	(390, 9, 195, 'серебристый'),
	(381, 1, 191, 'коричневый'),
	(380, 9, 190, 'золотой'),
	(372, 9, 186, 'бордовый'),
	(371, 1, 186, 'бордовый'),
	(348, 9, 174, 'механическая'),
	(347, 1, 174, 'механическая'),
	(379, 1, 190, 'золотой'),
	(346, 9, 173, 'вариатор'),
	(359, 1, 180, 'дизель'),
	(358, 9, 179, 'гибрид'),
	(389, 1, 195, 'серебристый'),
	(378, 9, 189, 'зелёный'),
	(377, 1, 189, 'зелёный'),
	(357, 1, 179, 'гибрид'),
	(327, 1, 164, 'Купе'),
	(338, 9, 169, 'Фургон'),
	(337, 1, 169, 'Фургон'),
	(336, 9, 168, 'Универсал'),
	(326, 9, 163, 'Кроссовер'),
	(325, 1, 163, 'Кроссовер'),
	(335, 1, 168, 'Универсал'),
	(334, 9, 167, 'Седан'),
	(333, 1, 167, 'Седан'),
	(332, 9, 166, 'Пикап'),
	(393, 1, 197, 'синий'),
	(376, 9, 188, 'жёлтый'),
	(375, 1, 188, 'жёлтый'),
	(392, 9, 196, 'серый'),
	(374, 9, 187, 'голубой'),
	(373, 1, 187, 'голубой'),
	(391, 1, 196, 'серый'),
	(388, 9, 194, 'розовый'),
	(387, 1, 194, 'розовый'),
	(370, 9, 185, 'бирюзовый'),
	(366, 9, 183, 'бежевый'),
	(356, 9, 178, 'газ-бензин'),
	(342, 9, 171, 'выберите'),
	(365, 1, 183, 'бежевый'),
	(355, 1, 178, 'газ-бензин'),
	(341, 1, 171, 'выберите'),
	(369, 1, 185, 'бирюзовый'),
	(364, 9, 182, 'выберите'),
	(354, 9, 177, 'бензин'),
	(353, 1, 177, 'бензин'),
	(363, 1, 182, 'выберите'),
	(340, 9, 170, 'Хэтчбек'),
	(339, 1, 170, 'Хэтчбек'),
	(352, 9, 176, 'выберите'),
	(368, 9, 184, 'белый'),
	(351, 1, 176, 'выберите'),
	(362, 9, 181, 'электрический'),
	(350, 9, 175, 'типтроник'),
	(331, 1, 166, 'Пикап'),
	(345, 1, 173, 'вариатор'),
	(324, 9, 162, 'Кабриолет'),
	(323, 1, 162, 'Кабриолет'),
	(330, 9, 165, 'Минивэн'),
	(344, 9, 172, 'автомат'),
	(322, 9, 161, 'Внедорожник'),
	(321, 1, 161, 'Внедорожник'),
	(396, 9, 198, 'фиолетовый'),
	(329, 1, 165, 'Минивэн'),
	(328, 9, 164, 'Купе'),
	(343, 1, 172, 'автомат'),
	(395, 1, 198, 'фиолетовый'),
	(394, 9, 197, 'синий'),
	(397, 1, 199, 'чёрный'),
	(398, 9, 199, 'чёрный'),
	(399, 1, 200, 'выберите'),
	(400, 9, 200, 'выберите'),
	(401, 1, 201, 'задний'),
	(402, 9, 201, 'задний'),
	(403, 1, 202, 'передний'),
	(404, 9, 202, 'передний'),
	(405, 1, 203, 'подключаемый полный'),
	(406, 9, 203, 'подключаемый полный'),
	(407, 1, 204, 'постоянный полный'),
	(408, 9, 204, 'постоянный полный'),
	(409, 1, 205, 'выберите'),
	(410, 9, 205, 'выберите'),
	(411, 1, 206, 'аварийное'),
	(412, 9, 206, 'аварийное'),
	(413, 1, 207, 'новое'),
	(414, 9, 207, 'новое'),
	(415, 1, 208, 'отличное'),
	(416, 9, 208, 'отличное'),
	(417, 1, 209, 'плохое'),
	(418, 9, 209, 'плохое'),
	(419, 1, 210, 'среднее'),
	(420, 9, 210, 'среднее'),
	(421, 1, 211, 'хорошее'),
	(422, 9, 211, 'хорошее'),
	(423, 1, 212, 'выберите'),
	(424, 9, 212, 'выберите'),
	(425, 1, 213, 'инжектор'),
	(426, 9, 213, 'инжектор'),
	(427, 1, 214, 'интеркулер'),
	(428, 9, 214, 'интеркулер'),
	(429, 1, 215, 'карбюратор'),
	(430, 9, 215, 'карбюратор'),
	(431, 1, 216, 'компрессор'),
	(432, 9, 216, 'компрессор'),
	(433, 1, 217, 'ротор'),
	(434, 9, 217, 'ротор'),
	(435, 1, 218, 'турбонаддув'),
	(436, 9, 218, 'турбонаддув'),
	(437, 1, 219, 'да'),
	(438, 9, 219, 'да'),
	(439, 1, 220, 'нет'),
	(440, 9, 220, 'нет');
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreAttributeTranslate
DROP TABLE IF EXISTS `StoreAttributeTranslate`;
CREATE TABLE IF NOT EXISTS `StoreAttributeTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreAttributeTranslate: 22 rows
/*!40000 ALTER TABLE `StoreAttributeTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeTranslate` (`id`, `object_id`, `language_id`, `title`) VALUES
	(79, 20, 1, 'Пробег'),
	(80, 20, 9, 'Пробег'),
	(81, 21, 1, 'Тип кузова'),
	(82, 21, 9, 'Тип кузова'),
	(83, 22, 1, 'КПП'),
	(84, 22, 9, 'КПП'),
	(85, 23, 1, 'Объем двигателя'),
	(86, 23, 9, 'Объем двигателя'),
	(87, 24, 1, 'Тип топлива '),
	(88, 24, 9, 'Тип топлива '),
	(89, 25, 1, 'Цвет'),
	(90, 25, 9, 'Цвет'),
	(91, 26, 1, 'Привод'),
	(92, 26, 9, 'Привод'),
	(93, 27, 1, 'Состояние'),
	(94, 27, 9, 'Состояние'),
	(95, 28, 1, 'Мощность двигателя'),
	(96, 28, 9, 'Мощность двигателя'),
	(97, 29, 1, 'Тип двигателя'),
	(98, 29, 9, 'Тип двигателя'),
	(99, 30, 1, 'Цвет Металлик'),
	(100, 30, 9, 'Цвет Металлик');
/*!40000 ALTER TABLE `StoreAttributeTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreCategory
DROP TABLE IF EXISTS `StoreCategory`;
CREATE TABLE IF NOT EXISTS `StoreCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_path` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `url` (`url`),
  KEY `full_path` (`full_path`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreCategory: 231 rows
/*!40000 ALTER TABLE `StoreCategory` DISABLE KEYS */;
INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `image`, `layout`, `view`, `description`) VALUES
	(1, 1, 470, 1, 'root', '', '', '', '', ''),
	(230, 11, 16, 3, 'noutbuki', 'catalog/noutbuki', '/uploads/logo/logo-mitsubishi.png', '', '', ''),
	(231, 12, 13, 4, 'byudzhetnii', 'catalog/noutbuki/byudzhetnii', '', '', '', ''),
	(232, 14, 15, 4, 'igrovoi', 'catalog/noutbuki/igrovoi', '', '', '', ''),
	(374, 269, 284, 3, 'honda', 'catalog/honda', '/uploads/logo/Honda.png', '', '', ''),
	(347, 215, 240, 3, 'fiat', 'catalog/fiat', '/uploads/logo/Fiat.png', '', '', ''),
	(348, 216, 217, 4, 'albea', 'catalog/fiat/albea', '', '', '', ''),
	(238, 10, 469, 2, 'catalog', 'catalog', '', '', '', ''),
	(239, 17, 26, 3, 'toyota', 'catalog/toyota', '/uploads/logo/Toyota.png', '', '', ''),
	(240, 27, 36, 3, 'volvo', 'catalog/volvo', '/uploads/logo/Volvo.png', '', '', ''),
	(241, 37, 56, 3, 'volkswagen', 'catalog/volkswagen', '/uploads/logo/wolt.png', '', '', ''),
	(243, 57, 80, 3, 'skoda', 'catalog/skoda', '/uploads/logo/Shkoda.png', '', '', ''),
	(244, 81, 82, 3, 'porsche', 'catalog/porsche', '/uploads/logo/Porsche.png', '', '', ''),
	(245, 83, 84, 3, 'peugeot', 'catalog/peugeot', '/uploads/logo/Peugeot.png', '', '', ''),
	(246, 85, 102, 3, 'chevrolet', 'catalog/chevrolet', '/uploads/logo/Chevrolet.png', '', '', ''),
	(247, 86, 87, 4, 'nexia', 'catalog/chevrolet/nexia', '', '', '', ''),
	(248, 88, 89, 4, 'matiz', 'catalog/chevrolet/matiz', '', '', '', ''),
	(249, 90, 91, 4, 'lacetti', 'catalog/chevrolet/lacetti', '', '', '', ''),
	(250, 92, 93, 4, 'spark', 'catalog/chevrolet/spark', '', '', '', ''),
	(251, 94, 95, 4, 'epica', 'catalog/chevrolet/epica', '', '', '', ''),
	(252, 96, 97, 4, 'captiva', 'catalog/chevrolet/captiva', '', '', '', ''),
	(253, 98, 99, 4, 'cobalt', 'catalog/chevrolet/cobalt', '', '', '', ''),
	(254, 100, 101, 4, 'aveo', 'catalog/chevrolet/aveo', '', '', '', ''),
	(255, 28, 29, 4, '140', 'catalog/volvo/140', '', '', '', ''),
	(256, 30, 31, 4, '164', 'catalog/volvo/164', '', '', '', ''),
	(257, 32, 33, 4, '240', 'catalog/volvo/240', '', '', '', ''),
	(258, 34, 35, 4, '244', 'catalog/volvo/244', '', '', '', ''),
	(259, 103, 114, 3, 'audi', 'catalog/audi', '/uploads/logo/audi.png', '', '', ''),
	(260, 104, 105, 4, '100', 'catalog/audi/100', '', '', '', ''),
	(261, 106, 107, 4, 'a8', 'catalog/audi/a8', '', '', '', ''),
	(262, 108, 109, 4, 'allroad-quattro', 'catalog/audi/allroad-quattro', '', '', '', ''),
	(263, 110, 111, 4, 'cabriolet', 'catalog/audi/cabriolet', '', '', '', ''),
	(264, 112, 113, 4, 'nsu-ro-80', 'catalog/audi/nsu-ro-80', '', '', '', ''),
	(265, 38, 39, 4, '1500', 'catalog/volkswagen/1500', '', '', '', ''),
	(266, 40, 41, 4, '1600', 'catalog/volkswagen/1600', '', '', '', ''),
	(267, 42, 43, 4, 'amarok', 'catalog/volkswagen/amarok', '', '', '', ''),
	(268, 44, 45, 4, 'beetle', 'catalog/volkswagen/beetle', '', '', '', ''),
	(269, 46, 47, 4, 'california', 'catalog/volkswagen/california', '', '', '', ''),
	(270, 48, 49, 4, 'crossgolf', 'catalog/volkswagen/crossgolf', '', '', '', ''),
	(271, 50, 51, 4, 'golf', 'catalog/volkswagen/golf', '', '', '', ''),
	(272, 52, 53, 4, 'jetta', 'catalog/volkswagen/jetta', '', '', '', ''),
	(273, 54, 55, 4, 'polo', 'catalog/volkswagen/polo', '', '', '', ''),
	(275, 116, 117, 4, '540', 'catalog/bmw/540', '', '', '', ''),
	(276, 118, 119, 4, '545', 'catalog/bmw/545', '', '', '', ''),
	(277, 120, 121, 4, '633', 'catalog/bmw/633', '', '', '', ''),
	(278, 115, 130, 3, 'bmw', 'catalog/bmw', '/uploads/logo/BMW.png', '', '', ''),
	(279, 122, 123, 4, 'gran-turismo', 'catalog/bmw/gran-turismo', '', '', '', ''),
	(280, 124, 125, 4, 'm1', 'catalog/bmw/m1', '', '', '', ''),
	(281, 126, 127, 4, 'x6-m', 'catalog/bmw/x6-m', '', '', '', ''),
	(282, 128, 129, 4, '732', 'catalog/bmw/732', '', '', '', ''),
	(283, 58, 59, 4, 'fabia', 'catalog/skoda/fabia', '', '', '', ''),
	(284, 60, 61, 4, 'favorit', 'catalog/skoda/favorit', '', '', '', ''),
	(285, 62, 63, 4, 'felicia', 'catalog/skoda/felicia', '', '', '', ''),
	(286, 64, 65, 4, 'octavia', 'catalog/skoda/octavia', '', '', '', ''),
	(287, 66, 67, 4, 'octavia-tour', 'catalog/skoda/octavia-tour', '', '', '', ''),
	(288, 68, 69, 4, 'praktik', 'catalog/skoda/praktik', '', '', '', ''),
	(289, 70, 71, 4, 'rapid', 'catalog/skoda/rapid', '', '', '', ''),
	(290, 72, 73, 4, 'roomster', 'catalog/skoda/roomster', '', '', '', ''),
	(291, 74, 75, 4, 'scout', 'catalog/skoda/scout', '', '', '', ''),
	(292, 76, 77, 4, 'superb', 'catalog/skoda/superb', '', '', '', ''),
	(293, 78, 79, 4, 'yeti', 'catalog/skoda/yeti', '', '', '', ''),
	(294, 131, 148, 3, 'vaz', 'catalog/vaz', '/uploads/logo/Vaz.png', '', '', ''),
	(295, 132, 133, 4, 'niva-urban', 'catalog/vaz/niva-urban', '', '', '', ''),
	(296, 134, 135, 4, 'kalina-2', 'catalog/vaz/kalina-2', '', '', '', ''),
	(297, 136, 137, 4, 'granta', 'catalog/vaz/granta', '', '', '', ''),
	(298, 138, 139, 4, 'revolution', 'catalog/vaz/revolution', '', '', '', ''),
	(299, 140, 141, 4, '2172-priora', 'catalog/vaz/2172-priora', '', '', '', ''),
	(300, 142, 143, 4, '2171-priora', 'catalog/vaz/2171-priora', '', '', '', ''),
	(301, 144, 145, 4, '2170-priora', 'catalog/vaz/2170-priora', '', '', '', ''),
	(302, 146, 147, 4, '21218-niva', 'catalog/vaz/21218-niva', '', '', '', ''),
	(303, 149, 160, 3, 'gaz', 'catalog/gaz', '/uploads/logo/Gaz.png', '', '', ''),
	(304, 150, 151, 4, 'zim', 'catalog/gaz/zim', '', '', '', ''),
	(305, 152, 153, 4, 'm-20', 'catalog/gaz/m-20', '', '', '', ''),
	(306, 154, 155, 4, 'm1-20150511131937', 'catalog/gaz/m1-20150511131937', '', '', '', ''),
	(307, 156, 157, 4, 'siber', 'catalog/gaz/siber', '', '', '', ''),
	(308, 158, 159, 4, '69', 'catalog/gaz/69', '', '', '', ''),
	(474, 459, 468, 3, 'uaz', 'catalog/uaz', '/uploads/logo/uaz.png', '', '', ''),
	(475, 460, 461, 4, 'simbir', 'catalog/uaz/simbir', '', '', '', ''),
	(476, 462, 463, 4, 'pickup', 'catalog/uaz/pickup', '', '', '', ''),
	(477, 464, 465, 4, 'patriot-20150511144643', 'catalog/uaz/patriot-20150511144643', '', '', '', ''),
	(478, 466, 467, 4, 'hunter', 'catalog/uaz/hunter', '', '', '', ''),
	(320, 161, 176, 3, 'chrysler', 'catalog/chrysler', '/uploads/logo/crysler.png', '', '', ''),
	(321, 162, 163, 4, '300s', 'catalog/chrysler/300s', '', '', '', ''),
	(322, 164, 165, 4, 'aspen', 'catalog/chrysler/aspen', '', '', '', ''),
	(323, 166, 167, 4, 'cirrus', 'catalog/chrysler/cirrus', '', '', '', ''),
	(324, 168, 169, 4, 'concorde', 'catalog/chrysler/concorde', '', '', '', ''),
	(325, 170, 171, 4, 'daytona-shelby', 'catalog/chrysler/daytona-shelby', '', '', '', ''),
	(326, 172, 173, 4, 'dynasty', 'catalog/chrysler/dynasty', '', '', '', ''),
	(327, 174, 175, 4, 'fifth-avenue', 'catalog/chrysler/fifth-avenue', '', '', '', ''),
	(328, 177, 198, 3, 'citroen', 'catalog/citroen', '/uploads/logo/citroyen.png', '', '', ''),
	(329, 178, 179, 4, '2-cv', 'catalog/citroen/2-cv', '', '', '', ''),
	(330, 180, 181, 4, 'acadiane', 'catalog/citroen/acadiane', '', '', '', ''),
	(331, 182, 183, 4, 'ami', 'catalog/citroen/ami', '', '', '', ''),
	(332, 184, 185, 4, 'berlingo', 'catalog/citroen/berlingo', '', '', '', ''),
	(333, 186, 187, 4, 'c-crosser', 'catalog/citroen/c-crosser', '', '', '', ''),
	(334, 188, 189, 4, 'ds3', 'catalog/citroen/ds3', '', '', '', ''),
	(335, 190, 191, 4, 'grand-c4-picasso', 'catalog/citroen/grand-c4-picasso', '', '', '', ''),
	(336, 192, 193, 4, 'jumper', 'catalog/citroen/jumper', '', '', '', ''),
	(337, 194, 195, 4, 'jumpy', 'catalog/citroen/jumpy', '', '', '', ''),
	(338, 196, 197, 4, 'visa', 'catalog/citroen/visa', '', '', '', ''),
	(339, 199, 214, 3, 'daewoo', 'catalog/daewoo', '/uploads/logo/daewoo.png', '', '', ''),
	(340, 200, 201, 4, 'damas', 'catalog/daewoo/damas', '', '', '', ''),
	(341, 202, 203, 4, 'gentra', 'catalog/daewoo/gentra', '', '', '', ''),
	(342, 204, 205, 4, 'lacetti-20150511132909', 'catalog/daewoo/lacetti-20150511132909', '', '', '', ''),
	(343, 206, 207, 4, 'matiz-20150511132917', 'catalog/daewoo/matiz-20150511132917', '', '', '', ''),
	(344, 208, 209, 4, 'nexia-20150511132923', 'catalog/daewoo/nexia-20150511132923', '', '', '', ''),
	(345, 210, 211, 4, 'tacuma', 'catalog/daewoo/tacuma', '', '', '', ''),
	(346, 212, 213, 4, 'tico', 'catalog/daewoo/tico', '', '', '', ''),
	(349, 218, 219, 4, 'argenta', 'catalog/fiat/argenta', '', '', '', ''),
	(350, 220, 221, 4, 'barchetta', 'catalog/fiat/barchetta', '', '', '', ''),
	(351, 222, 223, 4, 'brava', 'catalog/fiat/brava', '', '', '', ''),
	(352, 224, 225, 4, 'croma', 'catalog/fiat/croma', '', '', '', ''),
	(353, 226, 227, 4, 'doblo-cargo', 'catalog/fiat/doblo-cargo', '', '', '', ''),
	(354, 228, 229, 4, 'fiorino', 'catalog/fiat/fiorino', '', '', '', ''),
	(355, 230, 231, 4, 'grande-punto', 'catalog/fiat/grande-punto', '', '', '', ''),
	(356, 232, 233, 4, 'marea', 'catalog/fiat/marea', '', '', '', ''),
	(357, 234, 235, 4, 'new-500', 'catalog/fiat/new-500', '', '', '', ''),
	(358, 236, 237, 4, 'regata', 'catalog/fiat/regata', '', '', '', ''),
	(359, 238, 239, 4, 'scudo-combi', 'catalog/fiat/scudo-combi', '', '', '', ''),
	(360, 241, 268, 3, 'ford', 'catalog/ford', '/uploads/logo/Ford.png', '', '', ''),
	(361, 242, 243, 4, 'aerostar', 'catalog/ford/aerostar', '', '', '', ''),
	(362, 244, 245, 4, 'aspire', 'catalog/ford/aspire', '', '', '', ''),
	(363, 246, 247, 4, 'bronco', 'catalog/ford/bronco', '', '', '', ''),
	(364, 248, 249, 4, 'crown-victoria', 'catalog/ford/crown-victoria', '', '', '', ''),
	(365, 250, 251, 4, 'edge', 'catalog/ford/edge', '', '', '', ''),
	(366, 252, 253, 4, 'escort', 'catalog/ford/escort', '', '', '', ''),
	(367, 254, 255, 4, 'express', 'catalog/ford/express', '', '', '', ''),
	(368, 256, 257, 4, 'fiesta', 'catalog/ford/fiesta', '', '', '', ''),
	(369, 258, 259, 4, 'focus', 'catalog/ford/focus', '', '', '', ''),
	(370, 260, 261, 4, 'granada', 'catalog/ford/granada', '', '', '', ''),
	(371, 262, 263, 4, 'kuga', 'catalog/ford/kuga', '', '', '', ''),
	(372, 264, 265, 4, 'mustang', 'catalog/ford/mustang', '', '', '', ''),
	(373, 266, 267, 4, 'puma', 'catalog/ford/puma', '', '', '', ''),
	(376, 270, 271, 4, 'accord', 'catalog/honda/accord', '', '', '', ''),
	(377, 272, 273, 4, 'acty', 'catalog/honda/acty', '', '', '', ''),
	(378, 274, 275, 4, 'aerodeck', 'catalog/honda/aerodeck', '', '', '', ''),
	(379, 276, 277, 4, 'airware', 'catalog/honda/airware', '', '', '', ''),
	(380, 278, 279, 4, 'ascot', 'catalog/honda/ascot', '', '', '', ''),
	(381, 280, 281, 4, 'avancier', 'catalog/honda/avancier', '', '', '', ''),
	(382, 282, 283, 4, 'beat', 'catalog/honda/beat', '', '', '', ''),
	(383, 285, 308, 3, 'hyundai', 'catalog/hyundai', '/uploads/logo/hyundai.png', '', '', ''),
	(384, 286, 287, 4, 'accent', 'catalog/hyundai/accent', '', '', '', ''),
	(385, 288, 289, 4, 'atos', 'catalog/hyundai/atos', '', '', '', ''),
	(386, 290, 291, 4, 'avante', 'catalog/hyundai/avante', '', '', '', ''),
	(387, 292, 293, 4, 'centennial', 'catalog/hyundai/centennial', '', '', '', ''),
	(388, 294, 295, 4, 'coupe', 'catalog/hyundai/coupe', '', '', '', ''),
	(389, 296, 297, 4, 'dynasty-20150511142154', 'catalog/hyundai/dynasty-20150511142154', '', '', '', ''),
	(390, 298, 299, 4, 'excel', 'catalog/hyundai/excel', '', '', '', ''),
	(391, 300, 301, 4, 'galloper', 'catalog/hyundai/galloper', '', '', '', ''),
	(392, 302, 303, 4, 'lavita', 'catalog/hyundai/lavita', '', '', '', ''),
	(393, 304, 305, 4, 'lantra', 'catalog/hyundai/lantra', '', '', '', ''),
	(394, 306, 307, 4, 'solaris', 'catalog/hyundai/solaris', '', '', '', ''),
	(395, 309, 324, 3, 'infiniti', 'catalog/infiniti', '/uploads/logo/infiniti.png', '', '', ''),
	(396, 310, 311, 4, 'fx35', 'catalog/infiniti/fx35', '', '', '', ''),
	(397, 312, 313, 4, 'fx45', 'catalog/infiniti/fx45', '', '', '', ''),
	(398, 314, 315, 4, 'fx50', 'catalog/infiniti/fx50', '', '', '', ''),
	(399, 316, 317, 4, 'g20', 'catalog/infiniti/g20', '', '', '', ''),
	(400, 318, 319, 4, 'g25', 'catalog/infiniti/g25', '', '', '', ''),
	(401, 320, 321, 4, 'g30', 'catalog/infiniti/g30', '', '', '', ''),
	(402, 322, 323, 4, 'g35', 'catalog/infiniti/g35', '', '', '', ''),
	(403, 325, 336, 3, 'jaguar', 'catalog/jaguar', '/uploads/logo/jaguar.png', '', '', ''),
	(404, 326, 327, 4, 'daimler', 'catalog/jaguar/daimler', '', '', '', ''),
	(405, 328, 329, 4, 'e-type', 'catalog/jaguar/e-type', '', '', '', ''),
	(406, 330, 331, 4, 's-type', 'catalog/jaguar/s-type', '', '', '', ''),
	(407, 332, 333, 4, 'sovereign', 'catalog/jaguar/sovereign', '', '', '', ''),
	(408, 334, 335, 4, 'x-type', 'catalog/jaguar/x-type', '', '', '', ''),
	(409, 337, 356, 3, 'jeep', 'catalog/jeep', '/uploads/logo/Jeep.png', '', '', ''),
	(410, 338, 339, 4, 'cherokee', 'catalog/jeep/cherokee', '', '', '', ''),
	(411, 340, 341, 4, 'cj5---cj8', 'catalog/jeep/cj5---cj8', '', '', '', ''),
	(412, 342, 343, 4, 'comanche', 'catalog/jeep/comanche', '', '', '', ''),
	(413, 344, 345, 4, 'commander', 'catalog/jeep/commander', '', '', '', ''),
	(414, 346, 347, 4, 'compass', 'catalog/jeep/compass', '', '', '', ''),
	(415, 348, 349, 4, 'grand-cherokee', 'catalog/jeep/grand-cherokee', '', '', '', ''),
	(416, 350, 351, 4, 'liberty', 'catalog/jeep/liberty', '', '', '', ''),
	(417, 352, 353, 4, 'patriot', 'catalog/jeep/patriot', '', '', '', ''),
	(418, 354, 355, 4, 'wrangler', 'catalog/jeep/wrangler', '', '', '', ''),
	(419, 357, 370, 3, 'kia', 'catalog/kia', '/uploads/logo/kia.png', '', '', ''),
	(420, 358, 359, 4, 'avella', 'catalog/kia/avella', '', '', '', ''),
	(421, 360, 361, 4, 'besta', 'catalog/kia/besta', '', '', '', ''),
	(422, 362, 363, 4, 'borrego', 'catalog/kia/borrego', '', '', '', ''),
	(423, 364, 365, 4, 'capital', 'catalog/kia/capital', '', '', '', ''),
	(424, 366, 367, 4, 'carens', 'catalog/kia/carens', '', '', '', ''),
	(425, 368, 369, 4, 'carnival', 'catalog/kia/carnival', '', '', '', ''),
	(426, 371, 380, 3, 'lexus', 'catalog/lexus', '/uploads/logo/Lexus.png', '', '', ''),
	(427, 372, 373, 4, 'es300', 'catalog/lexus/es300', '', '', '', ''),
	(428, 374, 375, 4, 'es330', 'catalog/lexus/es330', '', '', '', ''),
	(429, 376, 377, 4, 'gs300', 'catalog/lexus/gs300', '', '', '', ''),
	(430, 378, 379, 4, 'gs350', 'catalog/lexus/gs350', '', '', '', ''),
	(431, 381, 382, 3, 'lifan', 'catalog/lifan', '/uploads/logo/Lifan.png', '', '', ''),
	(432, 383, 396, 3, 'mazda', 'catalog/mazda', '/uploads/logo/mazda.png', '', '', ''),
	(433, 384, 385, 4, '818-kombi', 'catalog/mazda/818-kombi', '', '', '', ''),
	(434, 386, 387, 4, '929', 'catalog/mazda/929', '', '', '', ''),
	(435, 388, 389, 4, 'atenza', 'catalog/mazda/atenza', '', '', '', ''),
	(436, 390, 391, 4, 'allegro', 'catalog/mazda/allegro', '', '', '', ''),
	(437, 392, 393, 4, 'axela', 'catalog/mazda/axela', '', '', '', ''),
	(438, 394, 395, 4, 'az-offroad', 'catalog/mazda/az-offroad', '', '', '', ''),
	(439, 397, 408, 3, 'mercedes-benz', 'catalog/mercedes-benz', '/uploads/logo/mers.png', '', '', ''),
	(440, 398, 399, 4, 'a-140', 'catalog/mercedes-benz/a-140', '', '', '', ''),
	(441, 400, 401, 4, 'a-150', 'catalog/mercedes-benz/a-150', '', '', '', ''),
	(442, 402, 403, 4, 'a-160', 'catalog/mercedes-benz/a-160', '', '', '', ''),
	(443, 404, 405, 4, 'a-170', 'catalog/mercedes-benz/a-170', '', '', '', ''),
	(444, 406, 407, 4, 'a-180', 'catalog/mercedes-benz/a-180', '', '', '', ''),
	(445, 409, 418, 3, 'nissan', 'catalog/nissan', '/uploads/logo/nissan.png', '', '', ''),
	(446, 410, 411, 4, '100nx', 'catalog/nissan/100nx', '', '', '', ''),
	(447, 412, 413, 4, '180sx', 'catalog/nissan/180sx', '', '', '', ''),
	(448, 414, 415, 4, '200sx', 'catalog/nissan/200sx', '', '', '', ''),
	(449, 416, 417, 4, '240sx', 'catalog/nissan/240sx', '', '', '', ''),
	(450, 419, 428, 3, 'opel', 'catalog/opel', '/uploads/logo/Opel.png', '', '', ''),
	(451, 420, 421, 4, 'admiral', 'catalog/opel/admiral', '', '', '', ''),
	(452, 422, 423, 4, 'agila', 'catalog/opel/agila', '', '', '', ''),
	(453, 424, 425, 4, 'antara', 'catalog/opel/antara', '', '', '', ''),
	(454, 426, 427, 4, 'arena', 'catalog/opel/arena', '', '', '', ''),
	(455, 429, 438, 3, 'renault', 'catalog/renault', '/uploads/logo/renault.png', '', '', ''),
	(456, 430, 431, 4, 'avantime', 'catalog/renault/avantime', '', '', '', ''),
	(457, 432, 433, 4, 'clio', 'catalog/renault/clio', '', '', '', ''),
	(458, 434, 435, 4, 'clio-ii', 'catalog/renault/clio-ii', '', '', '', ''),
	(459, 436, 437, 4, 'clio-iii', 'catalog/renault/clio-iii', '', '', '', ''),
	(460, 439, 448, 3, 'ssangyong', 'catalog/ssangyong', '/uploads/logo/ssan.png', '', '', ''),
	(461, 440, 441, 4, 'actyon', 'catalog/ssangyong/actyon', '', '', '', ''),
	(462, 442, 443, 4, 'actyon-sports', 'catalog/ssangyong/actyon-sports', '', '', '', ''),
	(463, 444, 445, 4, 'chairman', 'catalog/ssangyong/chairman', '', '', '', ''),
	(464, 446, 447, 4, 'family', 'catalog/ssangyong/family', '', '', '', ''),
	(465, 449, 458, 3, 'suzuki', 'catalog/suzuki', '/uploads/logo/suzuki.png', '', '', ''),
	(466, 450, 451, 4, 'aerio', 'catalog/suzuki/aerio', '', '', '', ''),
	(467, 452, 453, 4, 'aerio-sedan', 'catalog/suzuki/aerio-sedan', '', '', '', ''),
	(468, 454, 455, 4, 'aerio-sx', 'catalog/suzuki/aerio-sx', '', '', '', ''),
	(469, 456, 457, 4, 'alto', 'catalog/suzuki/alto', '', '', '', ''),
	(470, 18, 19, 4, '4runner', 'catalog/toyota/4runner', '', '', '', ''),
	(471, 20, 21, 4, 'allex', 'catalog/toyota/allex', '', '', '', ''),
	(472, 22, 23, 4, 'allion', 'catalog/toyota/allion', '', '', '', ''),
	(473, 24, 25, 4, 'alphard', 'catalog/toyota/alphard', '', '', '', '');
/*!40000 ALTER TABLE `StoreCategory` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreCategoryTranslate
DROP TABLE IF EXISTS `StoreCategoryTranslate`;
CREATE TABLE IF NOT EXISTS `StoreCategoryTranslate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=543 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreCategoryTranslate: 466 rows
/*!40000 ALTER TABLE `StoreCategoryTranslate` DISABLE KEYS */;
INSERT INTO `StoreCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
	(1, 1, 1, 'root', '', '', '', ''),
	(22, 219, 1, 'Планшеты', '', '', '', NULL),
	(23, 219, 9, 'Планшеты', '', '', '', NULL),
	(24, 220, 1, 'Ассортимент', '', '', '', NULL),
	(25, 220, 9, 'Ассортимент', '', '', '', NULL),
	(28, 1, 9, 'root', '', '', '', NULL),
	(45, 230, 1, 'Mitsubishi', '', '', '', ''),
	(46, 230, 9, 'Mitsubishi', '', '', '', ''),
	(47, 231, 1, 'Mitsubishi i-MiEV', '', '', '', ''),
	(48, 231, 9, 'Mitsubishi i-MiEV', '', '', '', ''),
	(49, 232, 1, 'Mitsubishi ASX', '', '', '', ''),
	(50, 232, 9, 'Mitsubishi ASX', '', '', '', ''),
	(334, 374, 9, 'Honda', '', '', '', ''),
	(333, 374, 1, 'Honda', '', '', '', ''),
	(280, 347, 9, 'Fiat', '', '', '', ''),
	(279, 347, 1, 'Fiat', '', '', '', ''),
	(61, 238, 1, 'Каталог автомобилей', '', '', '', ''),
	(62, 238, 9, 'Каталог автомобилей', '', '', '', ''),
	(63, 239, 1, 'Toyota', '', '', '', ''),
	(64, 239, 9, 'Toyota', '', '', '', ''),
	(65, 240, 1, 'Volvo', '', '', '', ''),
	(66, 240, 9, 'Volvo', '', '', '', ''),
	(67, 241, 1, 'Volkswagen', '', '', '', ''),
	(68, 241, 9, 'Volkswagen', '', '', '', ''),
	(71, 243, 1, 'Skoda', '', '', '', ''),
	(72, 243, 9, 'Skoda', '', '', '', ''),
	(73, 244, 1, 'Porsche', '', '', '', ''),
	(74, 244, 9, 'Porsche', '', '', '', ''),
	(75, 245, 1, 'Peugeot', '', '', '', ''),
	(76, 245, 9, 'Peugeot', '', '', '', ''),
	(77, 246, 1, 'Chevrolet', '', '', '', ''),
	(78, 246, 9, 'Chevrolet', '', '', '', ''),
	(79, 247, 1, 'Nexia', '', '', '', ''),
	(80, 247, 9, 'Nexia', '', '', '', ''),
	(81, 248, 1, 'Matiz', '', '', '', ''),
	(82, 248, 9, 'Matiz', '', '', '', ''),
	(83, 249, 1, 'Lacetti', '', '', '', ''),
	(84, 249, 9, 'Lacetti', '', '', '', ''),
	(85, 250, 1, 'Spark', '', '', '', ''),
	(86, 250, 9, 'Spark', '', '', '', ''),
	(87, 251, 1, 'Epica', '', '', '', ''),
	(88, 251, 9, 'Epica', '', '', '', ''),
	(89, 252, 1, 'Captiva', '', '', '', ''),
	(90, 252, 9, 'Captiva', '', '', '', ''),
	(91, 253, 1, 'Cobalt', '', '', '', ''),
	(92, 253, 9, 'Cobalt', '', '', '', ''),
	(93, 254, 1, 'Aveo', '', '', '', ''),
	(94, 254, 9, 'Aveo', '', '', '', ''),
	(95, 255, 1, '140', '', '', '', ''),
	(96, 255, 9, '140', '', '', '', ''),
	(97, 256, 1, '164', '', '', '', ''),
	(98, 256, 9, '164', '', '', '', ''),
	(99, 257, 1, '240', '', '', '', ''),
	(100, 257, 9, '240', '', '', '', ''),
	(101, 258, 1, '244', '', '', '', ''),
	(102, 258, 9, '244', '', '', '', ''),
	(103, 259, 1, 'Audi', '', '', '', ''),
	(104, 259, 9, 'Audi', '', '', '', ''),
	(105, 260, 1, '100', '', '', '', ''),
	(106, 260, 9, '100', '', '', '', ''),
	(107, 261, 1, 'А8', '', '', '', ''),
	(108, 261, 9, 'А8', '', '', '', ''),
	(109, 262, 1, 'Allroad quattro', '', '', '', ''),
	(110, 262, 9, 'Allroad quattro', '', '', '', ''),
	(111, 263, 1, 'Cabriolet', '', '', '', ''),
	(112, 263, 9, 'Cabriolet', '', '', '', ''),
	(113, 264, 1, 'NSU RO 80', '', '', '', ''),
	(114, 264, 9, 'NSU RO 80', '', '', '', ''),
	(115, 265, 1, '1500', '', '', '', ''),
	(116, 265, 9, '1500', '', '', '', ''),
	(117, 266, 1, '1600', '', '', '', ''),
	(118, 266, 9, '1600', '', '', '', ''),
	(119, 267, 1, 'Amarok', '', '', '', ''),
	(120, 267, 9, 'Amarok', '', '', '', ''),
	(121, 268, 1, 'Beetle', '', '', '', ''),
	(122, 268, 9, 'Beetle', '', '', '', ''),
	(123, 269, 1, 'California', '', '', '', ''),
	(124, 269, 9, 'California', '', '', '', ''),
	(125, 270, 1, 'CrossGolf', '', '', '', ''),
	(126, 270, 9, 'CrossGolf', '', '', '', ''),
	(127, 271, 1, 'Golf', '', '', '', ''),
	(128, 271, 9, 'Golf', '', '', '', ''),
	(129, 272, 1, 'Jetta', '', '', '', ''),
	(130, 272, 9, 'Jetta', '', '', '', ''),
	(131, 273, 1, 'Polo', '', '', '', ''),
	(132, 273, 9, 'Polo', '', '', '', ''),
	(136, 275, 9, '540', '', '', '', ''),
	(135, 275, 1, '540', '', '', '', ''),
	(137, 276, 1, '545', '', '', '', ''),
	(138, 276, 9, '545', '', '', '', ''),
	(139, 277, 1, '633', '', '', '', ''),
	(140, 277, 9, '633', '', '', '', ''),
	(141, 278, 1, 'BMW', '', '', '', ''),
	(142, 278, 9, 'BMW', '', '', '', ''),
	(143, 279, 1, 'Gran Turismo', '', '', '', ''),
	(144, 279, 9, 'Gran Turismo', '', '', '', ''),
	(145, 280, 1, 'M1', '', '', '', ''),
	(146, 280, 9, 'M1', '', '', '', ''),
	(147, 281, 1, 'X6 M', '', '', '', ''),
	(148, 281, 9, 'X6 M', '', '', '', ''),
	(149, 282, 1, '732', '', '', '', ''),
	(150, 282, 9, '732', '', '', '', ''),
	(151, 283, 1, 'Fabia', '', '', '', ''),
	(152, 283, 9, 'Fabia', '', '', '', ''),
	(153, 284, 1, 'Favorit', '', '', '', ''),
	(154, 284, 9, 'Favorit', '', '', '', ''),
	(155, 285, 1, 'Felicia', '', '', '', ''),
	(156, 285, 9, 'Felicia', '', '', '', ''),
	(157, 286, 1, 'Octavia', '', '', '', ''),
	(158, 286, 9, 'Octavia', '', '', '', ''),
	(159, 287, 1, 'Octavia Tour', '', '', '', ''),
	(160, 287, 9, 'Octavia Tour', '', '', '', ''),
	(161, 288, 1, 'Praktik', '', '', '', ''),
	(162, 288, 9, 'Praktik', '', '', '', ''),
	(163, 289, 1, 'Rapid', '', '', '', ''),
	(164, 289, 9, 'Rapid', '', '', '', ''),
	(165, 290, 1, 'Roomster', '', '', '', ''),
	(166, 290, 9, 'Roomster', '', '', '', ''),
	(167, 291, 1, 'Scout', '', '', '', ''),
	(168, 291, 9, 'Scout', '', '', '', ''),
	(169, 292, 1, 'Superb', '', '', '', ''),
	(170, 292, 9, 'Superb', '', '', '', ''),
	(171, 293, 1, 'Yeti', '', '', '', ''),
	(172, 293, 9, 'Yeti', '', '', '', ''),
	(173, 294, 1, 'ВАЗ', '', '', '', ''),
	(174, 294, 9, 'ВАЗ', '', '', '', ''),
	(175, 295, 1, 'Niva Urban', '', '', '', ''),
	(176, 295, 9, 'Niva Urban', '', '', '', ''),
	(177, 296, 1, 'Kalina 2', '', '', '', ''),
	(178, 296, 9, 'Kalina 2', '', '', '', ''),
	(179, 297, 1, 'Granta', '', '', '', ''),
	(180, 297, 9, 'Granta', '', '', '', ''),
	(181, 298, 1, 'Revolution', '', '', '', ''),
	(182, 298, 9, 'Revolution', '', '', '', ''),
	(183, 299, 1, '2172 Priora', '', '', '', ''),
	(184, 299, 9, '2172 Priora', '', '', '', ''),
	(185, 300, 1, '2171 Priora', '', '', '', ''),
	(186, 300, 9, '2171 Priora', '', '', '', ''),
	(187, 301, 1, '2170 Priora', '', '', '', ''),
	(188, 301, 9, '2170 Priora', '', '', '', ''),
	(189, 302, 1, '21218 Niva', '', '', '', ''),
	(190, 302, 9, '21218 Niva', '', '', '', ''),
	(191, 303, 1, 'ГАЗ', '', '', '', ''),
	(192, 303, 9, 'ГАЗ', '', '', '', ''),
	(193, 304, 1, 'ЗИМ', '', '', '', ''),
	(194, 304, 9, 'ЗИМ', '', '', '', ''),
	(195, 305, 1, 'M-20', '', '', '', ''),
	(196, 305, 9, 'M-20', '', '', '', ''),
	(197, 306, 1, 'М1', '', '', '', ''),
	(198, 306, 9, 'М1', '', '', '', ''),
	(199, 307, 1, 'Siber', '', '', '', ''),
	(200, 307, 9, 'Siber', '', '', '', ''),
	(201, 308, 1, '69', '', '', '', ''),
	(202, 308, 9, '69', '', '', '', ''),
	(534, 474, 9, 'УАЗ', '', '', '', ''),
	(533, 474, 1, 'УАЗ', '', '', '', ''),
	(542, 478, 9, 'Hunter', '', '', '', ''),
	(541, 478, 1, 'Hunter', '', '', '', ''),
	(540, 477, 9, 'Patriot', '', '', '', ''),
	(539, 477, 1, 'Patriot', '', '', '', ''),
	(538, 476, 9, 'Pickup', '', '', '', ''),
	(537, 476, 1, 'Pickup', '', '', '', ''),
	(536, 475, 9, 'Simbir', '', '', '', ''),
	(535, 475, 1, 'Simbir', '', '', '', ''),
	(225, 320, 1, 'Chrysler', '', '', '', ''),
	(226, 320, 9, 'Chrysler', '', '', '', ''),
	(227, 321, 1, '300С', '', '', '', ''),
	(228, 321, 9, '300С', '', '', '', ''),
	(229, 322, 1, 'Aspen', '', '', '', ''),
	(230, 322, 9, 'Aspen', '', '', '', ''),
	(231, 323, 1, 'Cirrus', '', '', '', ''),
	(232, 323, 9, 'Cirrus', '', '', '', ''),
	(233, 324, 1, 'Concorde', '', '', '', ''),
	(234, 324, 9, 'Concorde', '', '', '', ''),
	(235, 325, 1, 'Daytona Shelby', '', '', '', ''),
	(236, 325, 9, 'Daytona Shelby', '', '', '', ''),
	(237, 326, 1, 'Dynasty', '', '', '', ''),
	(238, 326, 9, 'Dynasty', '', '', '', ''),
	(239, 327, 1, 'Fifth Avenue', '', '', '', ''),
	(240, 327, 9, 'Fifth Avenue', '', '', '', ''),
	(241, 328, 1, 'Citroen', '', '', '', ''),
	(242, 328, 9, 'Citroen', '', '', '', ''),
	(243, 329, 1, '2 CV', '', '', '', ''),
	(244, 329, 9, '2 CV', '', '', '', ''),
	(245, 330, 1, 'Acadiane', '', '', '', ''),
	(246, 330, 9, 'Acadiane', '', '', '', ''),
	(247, 331, 1, 'AMI', '', '', '', ''),
	(248, 331, 9, 'AMI', '', '', '', ''),
	(249, 332, 1, 'Berlingo', '', '', '', ''),
	(250, 332, 9, 'Berlingo', '', '', '', ''),
	(251, 333, 1, 'C-Crosser', '', '', '', ''),
	(252, 333, 9, 'C-Crosser', '', '', '', ''),
	(253, 334, 1, 'DS3', '', '', '', ''),
	(254, 334, 9, 'DS3', '', '', '', ''),
	(255, 335, 1, 'Grand C4 Picasso', '', '', '', ''),
	(256, 335, 9, 'Grand C4 Picasso', '', '', '', ''),
	(257, 336, 1, 'Jumper', '', '', '', ''),
	(258, 336, 9, 'Jumper', '', '', '', ''),
	(259, 337, 1, 'Jumpy', '', '', '', ''),
	(260, 337, 9, 'Jumpy', '', '', '', ''),
	(261, 338, 1, 'Visa', '', '', '', ''),
	(262, 338, 9, 'Visa', '', '', '', ''),
	(263, 339, 1, 'Daewoo', '', '', '', ''),
	(264, 339, 9, 'Daewoo', '', '', '', ''),
	(265, 340, 1, 'Damas', '', '', '', ''),
	(266, 340, 9, 'Damas', '', '', '', ''),
	(267, 341, 1, 'Gentra', '', '', '', ''),
	(268, 341, 9, 'Gentra', '', '', '', ''),
	(269, 342, 1, 'Lacetti', '', '', '', ''),
	(270, 342, 9, 'Lacetti', '', '', '', ''),
	(271, 343, 1, 'Matiz', '', '', '', ''),
	(272, 343, 9, 'Matiz', '', '', '', ''),
	(273, 344, 1, 'Nexia', '', '', '', ''),
	(274, 344, 9, 'Nexia', '', '', '', ''),
	(275, 345, 1, 'Tacuma', '', '', '', ''),
	(276, 345, 9, 'Tacuma', '', '', '', ''),
	(277, 346, 1, 'Tico', '', '', '', ''),
	(278, 346, 9, 'Tico', '', '', '', ''),
	(281, 348, 1, 'Albea', '', '', '', ''),
	(282, 348, 9, 'Albea', '', '', '', ''),
	(283, 349, 1, 'Argenta', '', '', '', ''),
	(284, 349, 9, 'Argenta', '', '', '', ''),
	(285, 350, 1, 'Barchetta', '', '', '', ''),
	(286, 350, 9, 'Barchetta', '', '', '', ''),
	(287, 351, 1, 'Brava', '', '', '', ''),
	(288, 351, 9, 'Brava', '', '', '', ''),
	(289, 352, 1, 'Croma', '', '', '', ''),
	(290, 352, 9, 'Croma', '', '', '', ''),
	(291, 353, 1, 'Doblo Cargo', '', '', '', ''),
	(292, 353, 9, 'Doblo Cargo', '', '', '', ''),
	(293, 354, 1, 'Fiorino', '', '', '', ''),
	(294, 354, 9, 'Fiorino', '', '', '', ''),
	(295, 355, 1, 'Grande Punto', '', '', '', ''),
	(296, 355, 9, 'Grande Punto', '', '', '', ''),
	(297, 356, 1, 'Marea', '', '', '', ''),
	(298, 356, 9, 'Marea', '', '', '', ''),
	(299, 357, 1, 'New 500', '', '', '', ''),
	(300, 357, 9, 'New 500', '', '', '', ''),
	(301, 358, 1, 'Regata', '', '', '', ''),
	(302, 358, 9, 'Regata', '', '', '', ''),
	(303, 359, 1, 'Scudo Combi', '', '', '', ''),
	(304, 359, 9, 'Scudo Combi', '', '', '', ''),
	(305, 360, 1, 'Ford', '', '', '', ''),
	(306, 360, 9, 'Ford', '', '', '', ''),
	(307, 361, 1, 'Aerostar', '', '', '', ''),
	(308, 361, 9, 'Aerostar', '', '', '', ''),
	(309, 362, 1, 'Aspire', '', '', '', ''),
	(310, 362, 9, 'Aspire', '', '', '', ''),
	(311, 363, 1, 'Bronco', '', '', '', ''),
	(312, 363, 9, 'Bronco', '', '', '', ''),
	(313, 364, 1, 'Crown Victoria', '', '', '', ''),
	(314, 364, 9, 'Crown Victoria', '', '', '', ''),
	(315, 365, 1, 'Edge', '', '', '', ''),
	(316, 365, 9, 'Edge', '', '', '', ''),
	(317, 366, 1, 'Escort', '', '', '', ''),
	(318, 366, 9, 'Escort', '', '', '', ''),
	(319, 367, 1, 'Express', '', '', '', ''),
	(320, 367, 9, 'Express', '', '', '', ''),
	(321, 368, 1, 'Fiesta', '', '', '', ''),
	(322, 368, 9, 'Fiesta', '', '', '', ''),
	(323, 369, 1, 'Focus', '', '', '', ''),
	(324, 369, 9, 'Focus', '', '', '', ''),
	(325, 370, 1, 'Granada', '', '', '', ''),
	(326, 370, 9, 'Granada', '', '', '', ''),
	(327, 371, 1, 'Kuga', '', '', '', ''),
	(328, 371, 9, 'Kuga', '', '', '', ''),
	(329, 372, 1, 'Mustang', '', '', '', ''),
	(330, 372, 9, 'Mustang', '', '', '', ''),
	(331, 373, 1, 'Puma', '', '', '', ''),
	(332, 373, 9, 'Puma', '', '', '', ''),
	(338, 376, 9, 'Accord', '', '', '', ''),
	(337, 376, 1, 'Accord', '', '', '', ''),
	(339, 377, 1, 'Acty', '', '', '', ''),
	(340, 377, 9, 'Acty', '', '', '', ''),
	(341, 378, 1, 'Aerodeck', '', '', '', ''),
	(342, 378, 9, 'Aerodeck', '', '', '', ''),
	(343, 379, 1, 'Airware', '', '', '', ''),
	(344, 379, 9, 'Airware', '', '', '', ''),
	(345, 380, 1, 'Ascot', '', '', '', ''),
	(346, 380, 9, 'Ascot', '', '', '', ''),
	(347, 381, 1, 'Avancier', '', '', '', ''),
	(348, 381, 9, 'Avancier', '', '', '', ''),
	(349, 382, 1, 'Beat', '', '', '', ''),
	(350, 382, 9, 'Beat', '', '', '', ''),
	(351, 383, 1, 'Hyundai', '', '', '', ''),
	(352, 383, 9, 'Hyundai', '', '', '', ''),
	(353, 384, 1, 'Accent', '', '', '', ''),
	(354, 384, 9, 'Accent', '', '', '', ''),
	(355, 385, 1, 'Atos', '', '', '', ''),
	(356, 385, 9, 'Atos', '', '', '', ''),
	(357, 386, 1, 'Avante', '', '', '', ''),
	(358, 386, 9, 'Avante', '', '', '', ''),
	(359, 387, 1, 'Centennial', '', '', '', ''),
	(360, 387, 9, 'Centennial', '', '', '', ''),
	(361, 388, 1, 'Coupe', '', '', '', ''),
	(362, 388, 9, 'Coupe', '', '', '', ''),
	(363, 389, 1, 'Dynasty', '', '', '', ''),
	(364, 389, 9, 'Dynasty', '', '', '', ''),
	(365, 390, 1, 'Excel', '', '', '', ''),
	(366, 390, 9, 'Excel', '', '', '', ''),
	(367, 391, 1, 'Galloper', '', '', '', ''),
	(368, 391, 9, 'Galloper', '', '', '', ''),
	(369, 392, 1, 'Lavita', '', '', '', ''),
	(370, 392, 9, 'Lavita', '', '', '', ''),
	(371, 393, 1, 'Lantra', '', '', '', ''),
	(372, 393, 9, 'Lantra', '', '', '', ''),
	(373, 394, 1, 'Solaris', '', '', '', ''),
	(374, 394, 9, 'Solaris', '', '', '', ''),
	(375, 395, 1, 'Infiniti', '', '', '', ''),
	(376, 395, 9, 'Infiniti', '', '', '', ''),
	(377, 396, 1, 'FX35', '', '', '', ''),
	(378, 396, 9, 'FX35', '', '', '', ''),
	(379, 397, 1, 'FX45', '', '', '', ''),
	(380, 397, 9, 'FX45', '', '', '', ''),
	(381, 398, 1, 'FX50', '', '', '', ''),
	(382, 398, 9, 'FX50', '', '', '', ''),
	(383, 399, 1, 'G20', '', '', '', ''),
	(384, 399, 9, 'G20', '', '', '', ''),
	(385, 400, 1, 'G25', '', '', '', ''),
	(386, 400, 9, 'G25', '', '', '', ''),
	(387, 401, 1, 'G30', '', '', '', ''),
	(388, 401, 9, 'G30', '', '', '', ''),
	(389, 402, 1, 'G35', '', '', '', ''),
	(390, 402, 9, 'G35', '', '', '', ''),
	(391, 403, 1, 'Jaguar', '', '', '', ''),
	(392, 403, 9, 'Jaguar', '', '', '', ''),
	(393, 404, 1, 'Daimler', '', '', '', ''),
	(394, 404, 9, 'Daimler', '', '', '', ''),
	(395, 405, 1, 'E-type', '', '', '', ''),
	(396, 405, 9, 'E-type', '', '', '', ''),
	(397, 406, 1, 'S-type', '', '', '', ''),
	(398, 406, 9, 'S-type', '', '', '', ''),
	(399, 407, 1, 'Sovereign', '', '', '', ''),
	(400, 407, 9, 'Sovereign', '', '', '', ''),
	(401, 408, 1, 'X-type', '', '', '', ''),
	(402, 408, 9, 'X-type', '', '', '', ''),
	(403, 409, 1, 'Jeep', '', '', '', ''),
	(404, 409, 9, 'Jeep', '', '', '', ''),
	(405, 410, 1, 'Cherokee', '', '', '', ''),
	(406, 410, 9, 'Cherokee', '', '', '', ''),
	(407, 411, 1, 'CJ5 - CJ8', '', '', '', ''),
	(408, 411, 9, 'CJ5 - CJ8', '', '', '', ''),
	(409, 412, 1, 'Comanche', '', '', '', ''),
	(410, 412, 9, 'Comanche', '', '', '', ''),
	(411, 413, 1, 'Commander', '', '', '', ''),
	(412, 413, 9, 'Commander', '', '', '', ''),
	(413, 414, 1, 'Compass', '', '', '', ''),
	(414, 414, 9, 'Compass', '', '', '', ''),
	(415, 415, 1, 'Grand Cherokee', '', '', '', ''),
	(416, 415, 9, 'Grand Cherokee', '', '', '', ''),
	(417, 416, 1, 'Liberty', '', '', '', ''),
	(418, 416, 9, 'Liberty', '', '', '', ''),
	(419, 417, 1, 'Patriot', '', '', '', ''),
	(420, 417, 9, 'Patriot', '', '', '', ''),
	(421, 418, 1, 'Wrangler', '', '', '', ''),
	(422, 418, 9, 'Wrangler', '', '', '', ''),
	(423, 419, 1, 'Kia', '', '', '', ''),
	(424, 419, 9, 'Kia', '', '', '', ''),
	(425, 420, 1, 'Avella', '', '', '', ''),
	(426, 420, 9, 'Avella', '', '', '', ''),
	(427, 421, 1, 'Besta', '', '', '', ''),
	(428, 421, 9, 'Besta', '', '', '', ''),
	(429, 422, 1, 'Borrego', '', '', '', ''),
	(430, 422, 9, 'Borrego', '', '', '', ''),
	(431, 423, 1, 'Capital', '', '', '', ''),
	(432, 423, 9, 'Capital', '', '', '', ''),
	(433, 424, 1, 'Carens', '', '', '', ''),
	(434, 424, 9, 'Carens', '', '', '', ''),
	(435, 425, 1, 'Carnival', '', '', '', ''),
	(436, 425, 9, 'Carnival', '', '', '', ''),
	(437, 426, 1, 'Lexus', '', '', '', ''),
	(438, 426, 9, 'Lexus', '', '', '', ''),
	(439, 427, 1, 'ES300', '', '', '', ''),
	(440, 427, 9, 'ES300', '', '', '', ''),
	(441, 428, 1, 'ES330', '', '', '', ''),
	(442, 428, 9, 'ES330', '', '', '', ''),
	(443, 429, 1, 'GS300', '', '', '', ''),
	(444, 429, 9, 'GS300', '', '', '', ''),
	(445, 430, 1, 'GS350', '', '', '', ''),
	(446, 430, 9, 'GS350', '', '', '', ''),
	(447, 431, 1, 'Lifan', '', '', '', ''),
	(448, 431, 9, 'Lifan', '', '', '', ''),
	(449, 432, 1, 'Mazda', '', '', '', ''),
	(450, 432, 9, 'Mazda', '', '', '', ''),
	(451, 433, 1, '818 Kombi', '', '', '', ''),
	(452, 433, 9, '818 Kombi', '', '', '', ''),
	(453, 434, 1, '929', '', '', '', ''),
	(454, 434, 9, '929', '', '', '', ''),
	(455, 435, 1, 'Atenza', '', '', '', ''),
	(456, 435, 9, 'Atenza', '', '', '', ''),
	(457, 436, 1, 'Allegro', '', '', '', ''),
	(458, 436, 9, 'Allegro', '', '', '', ''),
	(459, 437, 1, 'Axela', '', '', '', ''),
	(460, 437, 9, 'Axela', '', '', '', ''),
	(461, 438, 1, 'Az-offroad', '', '', '', ''),
	(462, 438, 9, 'Az-offroad', '', '', '', ''),
	(463, 439, 1, 'Mercedes-Benz', '', '', '', ''),
	(464, 439, 9, 'Mercedes-Benz', '', '', '', ''),
	(465, 440, 1, 'A 140', '', '', '', ''),
	(466, 440, 9, 'A 140', '', '', '', ''),
	(467, 441, 1, 'A 150', '', '', '', ''),
	(468, 441, 9, 'A 150', '', '', '', ''),
	(469, 442, 1, 'A 160', '', '', '', ''),
	(470, 442, 9, 'A 160', '', '', '', ''),
	(471, 443, 1, 'A 170', '', '', '', ''),
	(472, 443, 9, 'A 170', '', '', '', ''),
	(473, 444, 1, 'A 180', '', '', '', ''),
	(474, 444, 9, 'A 180', '', '', '', ''),
	(475, 445, 1, 'Nissan', '', '', '', ''),
	(476, 445, 9, 'Nissan', '', '', '', ''),
	(477, 446, 1, '100NX', '', '', '', ''),
	(478, 446, 9, '100NX', '', '', '', ''),
	(479, 447, 1, '180SX', '', '', '', ''),
	(480, 447, 9, '180SX', '', '', '', ''),
	(481, 448, 1, '200SX', '', '', '', ''),
	(482, 448, 9, '200SX', '', '', '', ''),
	(483, 449, 1, '240SX', '', '', '', ''),
	(484, 449, 9, '240SX', '', '', '', ''),
	(485, 450, 1, 'Opel', '', '', '', ''),
	(486, 450, 9, 'Opel', '', '', '', ''),
	(487, 451, 1, 'Admiral', '', '', '', ''),
	(488, 451, 9, 'Admiral', '', '', '', ''),
	(489, 452, 1, 'Agila', '', '', '', ''),
	(490, 452, 9, 'Agila', '', '', '', ''),
	(491, 453, 1, 'Antara', '', '', '', ''),
	(492, 453, 9, 'Antara', '', '', '', ''),
	(493, 454, 1, 'Arena', '', '', '', ''),
	(494, 454, 9, 'Arena', '', '', '', ''),
	(495, 455, 1, 'Renault', '', '', '', ''),
	(496, 455, 9, 'Renault', '', '', '', ''),
	(497, 456, 1, 'Avantime', '', '', '', ''),
	(498, 456, 9, 'Avantime', '', '', '', ''),
	(499, 457, 1, 'Clio', '', '', '', ''),
	(500, 457, 9, 'Clio', '', '', '', ''),
	(501, 458, 1, 'Clio II', '', '', '', ''),
	(502, 458, 9, 'Clio II', '', '', '', ''),
	(503, 459, 1, 'Clio III', '', '', '', ''),
	(504, 459, 9, 'Clio III', '', '', '', ''),
	(505, 460, 1, 'SsangYong', '', '', '', ''),
	(506, 460, 9, 'SsangYong', '', '', '', ''),
	(507, 461, 1, 'Actyon', '', '', '', ''),
	(508, 461, 9, 'Actyon', '', '', '', ''),
	(509, 462, 1, 'Actyon Sports', '', '', '', ''),
	(510, 462, 9, 'Actyon Sports', '', '', '', ''),
	(511, 463, 1, 'Chairman', '', '', '', ''),
	(512, 463, 9, 'Chairman', '', '', '', ''),
	(513, 464, 1, 'Family', '', '', '', ''),
	(514, 464, 9, 'Family', '', '', '', ''),
	(515, 465, 1, 'Suzuki', '', '', '', ''),
	(516, 465, 9, 'Suzuki', '', '', '', ''),
	(517, 466, 1, 'Aerio', '', '', '', ''),
	(518, 466, 9, 'Aerio', '', '', '', ''),
	(519, 467, 1, 'Aerio Sedan', '', '', '', ''),
	(520, 467, 9, 'Aerio Sedan', '', '', '', ''),
	(521, 468, 1, 'Aerio SX', '', '', '', ''),
	(522, 468, 9, 'Aerio SX', '', '', '', ''),
	(523, 469, 1, 'Alto', '', '', '', ''),
	(524, 469, 9, 'Alto', '', '', '', ''),
	(525, 470, 1, '4runner', '', '', '', ''),
	(526, 470, 9, '4runner', '', '', '', ''),
	(527, 471, 1, 'Allex', '', '', '', ''),
	(528, 471, 9, 'Allex', '', '', '', ''),
	(529, 472, 1, 'Allion', '', '', '', ''),
	(530, 472, 9, 'Allion', '', '', '', ''),
	(531, 473, 1, 'Alphard', '', '', '', ''),
	(532, 473, 9, 'Alphard', '', '', '', '');
/*!40000 ALTER TABLE `StoreCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreCurrency
DROP TABLE IF EXISTS `StoreCurrency`;
CREATE TABLE IF NOT EXISTS `StoreCurrency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `iso` varchar(10) DEFAULT '',
  `symbol` varchar(10) DEFAULT '',
  `rate` float(10,3) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreCurrency: 2 rows
/*!40000 ALTER TABLE `StoreCurrency` DISABLE KEYS */;
INSERT INTO `StoreCurrency` (`id`, `name`, `iso`, `symbol`, `rate`, `main`, `default`) VALUES
	(1, 'Доллары', 'USD', '$', 1.000, 1, 1),
	(2, 'UZS', 'UZS', 'млн UZS', 0.004, 0, 0);
/*!40000 ALTER TABLE `StoreCurrency` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreDeliveryMethod
DROP TABLE IF EXISTS `StoreDeliveryMethod`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float(10,2) DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT '0.00',
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreDeliveryMethod: 3 rows
/*!40000 ALTER TABLE `StoreDeliveryMethod` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethod` (`id`, `price`, `free_from`, `position`, `active`) VALUES
	(14, 10.00, 1000.00, 0, 1),
	(15, 0.00, 0.00, 1, 1),
	(16, 30.00, 0.00, 2, 1);
/*!40000 ALTER TABLE `StoreDeliveryMethod` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreDeliveryMethodTranslate
DROP TABLE IF EXISTS `StoreDeliveryMethodTranslate`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreDeliveryMethodTranslate: 6 rows
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 14, 1, 'Курьером', ''),
	(2, 14, 9, 'English', 'english description'),
	(3, 15, 1, 'Самовывоз', ''),
	(4, 15, 9, 'Самовывоз', ''),
	(5, 16, 1, 'Адресная доставка по стране', ''),
	(6, 16, 9, 'Адресная доставка по стране', '');
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreDeliveryPayment
DROP TABLE IF EXISTS `StoreDeliveryPayment`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='Saves relations between delivery and payment methods ';

-- Дамп данных таблицы avto.loc.StoreDeliveryPayment: 19 rows
/*!40000 ALTER TABLE `StoreDeliveryPayment` DISABLE KEYS */;
INSERT INTO `StoreDeliveryPayment` (`id`, `delivery_id`, `payment_id`) VALUES
	(24, 12, 14),
	(23, 10, 16),
	(22, 10, 13),
	(21, 10, 14),
	(34, 11, 16),
	(33, 11, 13),
	(25, 12, 15),
	(26, 12, 16),
	(78, 14, 21),
	(77, 14, 19),
	(76, 14, 20),
	(75, 14, 18),
	(82, 15, 20),
	(81, 15, 18),
	(55, 16, 17),
	(56, 16, 18),
	(57, 16, 20),
	(58, 16, 19),
	(74, 14, 17);
/*!40000 ALTER TABLE `StoreDeliveryPayment` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreManufacturer
DROP TABLE IF EXISTS `StoreManufacturer`;
CREATE TABLE IF NOT EXISTS `StoreManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreManufacturer: 0 rows
/*!40000 ALTER TABLE `StoreManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreManufacturerTranslate
DROP TABLE IF EXISTS `StoreManufacturerTranslate`;
CREATE TABLE IF NOT EXISTS `StoreManufacturerTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreManufacturerTranslate: 0 rows
/*!40000 ALTER TABLE `StoreManufacturerTranslate` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreManufacturerTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StorePaymentMethod
DROP TABLE IF EXISTS `StorePaymentMethod`;
CREATE TABLE IF NOT EXISTS `StorePaymentMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `payment_system` varchar(100) DEFAULT '',
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StorePaymentMethod: 5 rows
/*!40000 ALTER TABLE `StorePaymentMethod` DISABLE KEYS */;
INSERT INTO `StorePaymentMethod` (`id`, `currency_id`, `active`, `payment_system`, `position`) VALUES
	(17, 1, 1, 'webmoney', 0),
	(18, 2, 1, '', 2),
	(19, 1, 1, 'robokassa', 1),
	(20, 2, 1, '', 3),
	(21, 2, 1, 'qiwi', 4);
/*!40000 ALTER TABLE `StorePaymentMethod` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StorePaymentMethodTranslate
DROP TABLE IF EXISTS `StorePaymentMethodTranslate`;
CREATE TABLE IF NOT EXISTS `StorePaymentMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StorePaymentMethodTranslate: 10 rows
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` DISABLE KEYS */;
INSERT INTO `StorePaymentMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 17, 1, 'WebMoney', 'WebMoney — это универсальное средство для расчетов в Сети, целая среда финансовых взаимоотношений, которой сегодня пользуются миллионы людей по всему миру.'),
	(2, 17, 9, 'English payment1', 'russian description'),
	(3, 18, 1, 'Наличная', 'Наличная оплата осуществляется только в рублях при доставке товара курьером покупателю.'),
	(7, 20, 1, 'Безналичная', ' Стоимость товара при безналичной оплате без ПДВ равна розничной цене товара + 2% '),
	(8, 20, 9, 'Безналичная', ''),
	(4, 18, 9, 'Наличка', '<p>ыла оылдао ылдао ылдоа ылдва<br />ыаол ывла оывалд ыова</p>'),
	(5, 19, 1, 'Robokassa', 'Многими пользователями электронные платежные системы расцениваются в качестве наиболее удобного средства оплаты товаров и услуг в Интернете.'),
	(6, 19, 9, 'Robokassa', '<p>Description goes here</p>'),
	(9, 21, 1, 'Qiwi', 'Оплата с помощью Qiwi'),
	(10, 21, 9, 'Qiwi', 'Оплата с помощью Qiwi');
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProduct
DROP TABLE IF EXISTS `StoreProduct`;
CREATE TABLE IF NOT EXISTS `StoreProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `use_configurations` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `max_price` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `availability` tinyint(2) DEFAULT '1',
  `auto_decrease_quantity` tinyint(2) DEFAULT '1',
  `views_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `added_to_cart_count` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `video` text,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `type_id` (`type_id`),
  KEY `price` (`price`),
  KEY `max_price` (`max_price`),
  KEY `is_active` (`is_active`),
  KEY `sku` (`sku`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `added_to_cart_count` (`added_to_cart_count`),
  KEY `views_count` (`views_count`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProduct: 3 rows
/*!40000 ALTER TABLE `StoreProduct` DISABLE KEYS */;
INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `use_configurations`, `user_id`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`, `video`, `year`) VALUES
	(47, NULL, 7, 0, 1, 'patriot', 55551132.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-05-13 09:41:00', '2015-05-13 09:41:00', NULL, NULL, NULL, '', NULL, 2014),
	(48, NULL, 7, 0, 1, 'gran-turismo', 22222.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-05-13 09:50:54', '2015-05-13 09:50:54', NULL, NULL, NULL, '', NULL, 2011),
	(46, NULL, 7, 0, 1, 'samsung-galaxy-tab-70-plus-p6200-16gb-20150508163425', 350.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-05-08 16:34:25', '2015-05-13 18:04:06', NULL, NULL, NULL, '', NULL, 2001);
/*!40000 ALTER TABLE `StoreProduct` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductAttributeEAV
DROP TABLE IF EXISTS `StoreProductAttributeEAV`;
CREATE TABLE IF NOT EXISTS `StoreProductAttributeEAV` (
  `entity` int(11) unsigned NOT NULL,
  `attribute` varchar(250) DEFAULT '',
  `value` text,
  KEY `ikEntity` (`entity`),
  KEY `attribute` (`attribute`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductAttributeEAV: 33 rows
/*!40000 ALTER TABLE `StoreProductAttributeEAV` DISABLE KEYS */;
INSERT INTO `StoreProductAttributeEAV` (`entity`, `attribute`, `value`) VALUES
	(48, 'metallic_color', '220'),
	(48, 'engine_type', '213'),
	(48, 'power_of_the_engine', '306 л.с.'),
	(48, 'status', '207'),
	(48, 'actuator', '204'),
	(48, 'color', '185'),
	(48, 'fuel_type', '177'),
	(48, 'engine_size', '3.0'),
	(48, 'kpp', '172'),
	(48, 'body_type', '167'),
	(48, 'probeg', '0'),
	(47, 'engine_type', '213'),
	(47, 'metallic_color', '220'),
	(47, 'power_of_the_engine', '128 Л.С.'),
	(47, 'status', '207'),
	(47, 'actuator', '201'),
	(47, 'color', '199'),
	(47, 'fuel_type', '177'),
	(47, 'engine_size', '2.7'),
	(47, 'kpp', '174'),
	(47, 'body_type', '161'),
	(47, 'probeg', '0'),
	(46, 'metallic_color', '219'),
	(46, 'engine_type', '213'),
	(46, 'power_of_the_engine', '123'),
	(46, 'status', '206'),
	(46, 'actuator', '201'),
	(46, 'color', '184'),
	(46, 'fuel_type', '177'),
	(46, 'probeg', '10000'),
	(46, 'body_type', '161'),
	(46, 'kpp', '172'),
	(46, 'engine_size', '123123123');
/*!40000 ALTER TABLE `StoreProductAttributeEAV` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductCategoryRef
DROP TABLE IF EXISTS `StoreProductCategoryRef`;
CREATE TABLE IF NOT EXISTS `StoreProductCategoryRef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `product` (`product`),
  KEY `is_main` (`is_main`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductCategoryRef: 9 rows
/*!40000 ALTER TABLE `StoreProductCategoryRef` DISABLE KEYS */;
INSERT INTO `StoreProductCategoryRef` (`id`, `product`, `category`, `is_main`) VALUES
	(292, 48, 279, 1),
	(291, 48, 278, 0),
	(289, 47, 477, 1),
	(288, 47, 474, 0),
	(290, 48, 238, 0),
	(285, 46, 260, 1),
	(282, 46, 238, 0),
	(287, 47, 238, 0),
	(286, 46, 259, 0);
/*!40000 ALTER TABLE `StoreProductCategoryRef` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductConfigurableAttributes
DROP TABLE IF EXISTS `StoreProductConfigurableAttributes`;
CREATE TABLE IF NOT EXISTS `StoreProductConfigurableAttributes` (
  `product_id` int(11) NOT NULL COMMENT 'Attributes available to configure product',
  `attribute_id` int(11) NOT NULL,
  UNIQUE KEY `product_attribute_index` (`product_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductConfigurableAttributes: 0 rows
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductConfigurations
DROP TABLE IF EXISTS `StoreProductConfigurations`;
CREATE TABLE IF NOT EXISTS `StoreProductConfigurations` (
  `product_id` int(11) NOT NULL COMMENT 'Saves relations beetwen product and configurations',
  `configurable_id` int(11) NOT NULL,
  UNIQUE KEY `idsunique` (`product_id`,`configurable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductConfigurations: 0 rows
/*!40000 ALTER TABLE `StoreProductConfigurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurations` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductImage
DROP TABLE IF EXISTS `StoreProductImage`;
CREATE TABLE IF NOT EXISTS `StoreProductImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductImage: 11 rows
/*!40000 ALTER TABLE `StoreProductImage` DISABLE KEYS */;
INSERT INTO `StoreProductImage` (`id`, `product_id`, `name`, `is_main`, `uploaded_by`, `date_uploaded`, `title`) VALUES
	(206, 48, '48_-1097302612.jpg', 0, 1, '2015-05-13 09:50:54', NULL),
	(205, 48, '48_618813411.jpg', 1, 1, '2015-05-13 09:50:54', NULL),
	(204, 47, '47_2100300831.jpg', 0, 1, '2015-05-13 09:41:01', NULL),
	(203, 47, '47_-1497357657.jpg', 0, 1, '2015-05-13 09:41:00', NULL),
	(202, 47, '47_1409362395.jpg', 0, 1, '2015-05-13 09:41:00', NULL),
	(201, 47, '47_-560573776.jpg', 0, 1, '2015-05-13 09:41:00', NULL),
	(200, 47, '47_-1951114841.jpg', 1, 1, '2015-05-13 09:41:00', NULL),
	(196, 46, '46_509117632.png', 1, 1, '2015-05-08 16:34:25', ''),
	(197, 46, '46_1217574785.png', 0, 1, '2015-05-08 16:34:25', ''),
	(198, 46, '46_-817246510.png', 0, 1, '2015-05-08 16:34:25', ''),
	(199, 46, '46_-491785927.png', 0, 1, '2015-05-08 16:34:26', '');
/*!40000 ALTER TABLE `StoreProductImage` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductTranslate
DROP TABLE IF EXISTS `StoreProductTranslate`;
CREATE TABLE IF NOT EXISTS `StoreProductTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductTranslate: 6 rows
/*!40000 ALTER TABLE `StoreProductTranslate` DISABLE KEYS */;
INSERT INTO `StoreProductTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(357, 47, 1, 'Патриот', '', '', '', '', ''),
	(358, 47, 9, 'Патриот', '', '', '', '', ''),
	(359, 48, 1, 'Gran Turismo', '', '', '', '', ''),
	(360, 48, 9, 'Gran Turismo', '', '', '', '', ''),
	(355, 46, 1, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', '', '', '', ''),
	(356, 46, 9, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', '', '', '', '');
/*!40000 ALTER TABLE `StoreProductTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductType
DROP TABLE IF EXISTS `StoreProductType`;
CREATE TABLE IF NOT EXISTS `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `categories_preset` text,
  `main_category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductType: 1 rows
/*!40000 ALTER TABLE `StoreProductType` DISABLE KEYS */;
INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES
	(7, 'автомобили', NULL, 0);
/*!40000 ALTER TABLE `StoreProductType` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreProductVariant
DROP TABLE IF EXISTS `StoreProductVariant`;
CREATE TABLE IF NOT EXISTS `StoreProductVariant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(10,2) DEFAULT '0.00',
  `price_type` tinyint(1) DEFAULT NULL,
  `sku` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreProductVariant: 0 rows
/*!40000 ALTER TABLE `StoreProductVariant` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductVariant` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreRelatedProduct
DROP TABLE IF EXISTS `StoreRelatedProduct`;
CREATE TABLE IF NOT EXISTS `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='Handle related products';

-- Дамп данных таблицы avto.loc.StoreRelatedProduct: 0 rows
/*!40000 ALTER TABLE `StoreRelatedProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreRelatedProduct` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreTypeAttribute
DROP TABLE IF EXISTS `StoreTypeAttribute`;
CREATE TABLE IF NOT EXISTS `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreTypeAttribute: 11 rows
/*!40000 ALTER TABLE `StoreTypeAttribute` DISABLE KEYS */;
INSERT INTO `StoreTypeAttribute` (`type_id`, `attribute_id`) VALUES
	(7, 20),
	(7, 21),
	(7, 22),
	(7, 23),
	(7, 24),
	(7, 25),
	(7, 26),
	(7, 27),
	(7, 28),
	(7, 29),
	(7, 30);
/*!40000 ALTER TABLE `StoreTypeAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreWishlist
DROP TABLE IF EXISTS `StoreWishlist`;
CREATE TABLE IF NOT EXISTS `StoreWishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreWishlist: 0 rows
/*!40000 ALTER TABLE `StoreWishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreWishlist` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.StoreWishlistProducts
DROP TABLE IF EXISTS `StoreWishlistProducts`;
CREATE TABLE IF NOT EXISTS `StoreWishlistProducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_id` (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.StoreWishlistProducts: 0 rows
/*!40000 ALTER TABLE `StoreWishlistProducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreWishlistProducts` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemLanguage
DROP TABLE IF EXISTS `SystemLanguage`;
CREATE TABLE IF NOT EXISTS `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `code` varchar(25) DEFAULT '',
  `locale` varchar(100) DEFAULT '',
  `default` tinyint(1) DEFAULT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemLanguage: 2 rows
/*!40000 ALTER TABLE `SystemLanguage` DISABLE KEYS */;
INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
	(1, 'Русский', 'ru', 'ru', 1, 'ru.png'),
	(9, 'English', 'en', 'en', 0, 'us.png');
/*!40000 ALTER TABLE `SystemLanguage` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemLayouts
DROP TABLE IF EXISTS `SystemLayouts`;
CREATE TABLE IF NOT EXISTS `SystemLayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `route` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemLayouts: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `SystemLayouts` DISABLE KEYS */;
INSERT INTO `SystemLayouts` (`id`, `name`, `route`) VALUES
	(1, 'default', '%/%/%'),
	(2, 'index', 'store/index/index'),
	(3, 'страницы сайта', 'pages/pages/%');
/*!40000 ALTER TABLE `SystemLayouts` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemLayoutsWidgets
DROP TABLE IF EXISTS `SystemLayoutsWidgets`;
CREATE TABLE IF NOT EXISTS `SystemLayoutsWidgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `layout_id` (`layout_id`),
  KEY `widget_id` (`widget_id`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemLayoutsWidgets: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `SystemLayoutsWidgets` DISABLE KEYS */;
INSERT INTO `SystemLayoutsWidgets` (`id`, `layout_id`, `widget_id`, `position`, `sort`) VALUES
	(14, 2, 5, 'Top', 0),
	(15, 3, 5, 'Top', 0);
/*!40000 ALTER TABLE `SystemLayoutsWidgets` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemModules
DROP TABLE IF EXISTS `SystemModules`;
CREATE TABLE IF NOT EXISTS `SystemModules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemModules: 18 rows
/*!40000 ALTER TABLE `SystemModules` DISABLE KEYS */;
INSERT INTO `SystemModules` (`id`, `name`, `enabled`) VALUES
	(7, 'users', 1),
	(59, 'pages', 1),
	(11, 'core', 1),
	(12, 'rights', 1),
	(16, 'orders', 1),
	(15, 'store', 1),
	(17, 'comments', 1),
	(37, 'feedback', 1),
	(38, 'discounts', 1),
	(39, 'newsletter', 1),
	(40, 'csv', 1),
	(41, 'logger', 1),
	(52, 'accounting1c', 1),
	(53, 'yandexMarket', 1),
	(54, 'notifier', 1),
	(55, 'statistics', 1),
	(56, 'sitemap', 1),
	(62, 'banners', 1);
/*!40000 ALTER TABLE `SystemModules` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemSettings
DROP TABLE IF EXISTS `SystemSettings`;
CREATE TABLE IF NOT EXISTS `SystemSettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `key` varchar(255) DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemSettings: 47 rows
/*!40000 ALTER TABLE `SystemSettings` DISABLE KEYS */;
INSERT INTO `SystemSettings` (`id`, `category`, `key`, `value`) VALUES
	(9, 'feedback', 'max_message_length', '1000'),
	(8, 'feedback', 'enable_captcha', '1'),
	(7, 'feedback', 'admin_email', 'admin@localhost.local'),
	(10, '17_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', 'Z123456578811'),
	(11, '17_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', 'theSercretPassword'),
	(12, '18_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', '1'),
	(13, '18_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', '2'),
	(14, '19_RobokassaPaymentSystem', 'login', 'login'),
	(15, '19_RobokassaPaymentSystem', 'password1', 'password1value'),
	(16, '19_RobokassaPaymentSystem', 'password2', 'password2value'),
	(22, 'accounting1c', 'password', 'f880fefe2aff8130bb31d480f08e47c03e655b60'),
	(21, 'accounting1c', 'ip', '127.0.0.1'),
	(23, 'accounting1c', 'tempdir', 'application.runtime'),
	(24, 'yandexMarket', 'name', 'Демо магазин'),
	(25, 'yandexMarket', 'company', 'Демо кампания'),
	(26, 'yandexMarket', 'url', 'http://demo-company.loc/'),
	(27, 'yandexMarket', 'currency_id', '2'),
	(28, 'core', 'siteName', 'avtokredit.uz'),
	(29, 'core', 'productsPerPage', '12,18,24'),
	(30, 'core', 'productsPerPageAdmin', '30'),
	(31, 'core', 'theme', 'avto'),
	(32, '20_QiwiPaymentSystem', 'shop_id', ''),
	(33, '20_QiwiPaymentSystem', 'password', ''),
	(34, '21_QiwiPaymentSystem', 'shop_id', '211182'),
	(35, '21_QiwiPaymentSystem', 'password', 'xsi100500'),
	(36, 'core', 'editorTheme', 'compant'),
	(37, 'core', 'editorHeight', '150'),
	(38, 'core', 'editorAutoload', '0'),
	(39, 'images', 'path', 'webroot.uploads.product'),
	(40, 'images', 'thumbPath', 'webroot.assets.productThumbs'),
	(41, 'images', 'url', '/uploads/product/'),
	(42, 'images', 'thumbUrl', '/assets/productThumbs/'),
	(43, 'images', 'maxFileSize', '10485760'),
	(44, 'images', 'max_sizes', '1800х1600'),
	(45, 'images', 'maximum_image_size', '1935x947'),
	(46, 'images', 'watermark_image', ''),
	(47, 'images', 'watermark_active', '1'),
	(48, 'images', 'watermark_position', 'bottomRight'),
	(49, 'images', 'watermark_position_vertical', 'bottom'),
	(50, 'images', 'watermark_position_horizontal', 'right'),
	(51, 'images', 'watermark_opacity', '100'),
	(52, 'core', 'commission', '0.005'),
	(53, 'core', 'ocenka', '100000'),
	(54, 'core', 'notarius', '510000'),
	(55, 'core', 'gai', '0.06'),
	(56, 'core', 'sbor_gai', '180000'),
	(57, 'core', 'polis', '0.015');
/*!40000 ALTER TABLE `SystemSettings` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.SystemWidgets
DROP TABLE IF EXISTS `SystemWidgets`;
CREATE TABLE IF NOT EXISTS `SystemWidgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `class` varchar(100) DEFAULT NULL,
  `params` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.SystemWidgets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `SystemWidgets` DISABLE KEYS */;
INSERT INTO `SystemWidgets` (`id`, `module_id`, `group`, `name`, `description`, `class`, `params`, `status`) VALUES
	(5, 62, 'sliders', 'home slider', NULL, 'application.modules.banners.widgets.nivoslider.NivoSlider', 'a:3:{s:5:"width";s:4:"1000";s:6:"height";s:3:"500";s:9:"banner_id";s:1:"2";}', 1);
/*!40000 ALTER TABLE `SystemWidgets` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.tbl_migration
DROP TABLE IF EXISTS `tbl_migration`;
CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.tbl_migration: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `tbl_migration` DISABLE KEYS */;
INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1361214193),
	('m130218_190341_add_description_to_store_category', 1361214373),
	('m130218_190818_add_description_to_store_category_translate', 1361214547),
	('m130420_194012_add_roles_to_discounts', 1366487103),
	('m130420_204956_add_personal_discount_to_user', 1366491054),
	('m130421_095545_add_personal_discount_to_product', 1366538394),
	('m130504_170119_add_discout_to_order', 1367686940),
	('m130504_183903_add_title_to_store_product_image', 1367692811),
	('m130507_103455_add_banned_to_user', 1367923070),
	('m130507_104810_unban_all_users', 1367923771),
	('m130624_155800_add_new_fields_to_product', 1372089566),
	('m130714_114907_add_admin_comment_to_orders', 1373802668),
	('m130726_042212_create_order_history_table', 1374814430);
/*!40000 ALTER TABLE `tbl_migration` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `recovery_key` varchar(20) DEFAULT NULL,
  `recovery_password` varchar(100) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Saves user accounts';

-- Дамп данных таблицы avto.loc.user: 2 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@mail.ru', '2015-03-25 12:44:10', '2015-05-13 12:31:53', '127.0.0.1', NULL, NULL, NULL, 0),
	(2, 'apitest', '975e1791f71a5d90a03a7f0370d6e38a46a0c0c3', 'api@mail.ru', '2015-05-06 15:40:01', '2015-05-06 16:11:47', '127.0.0.1', NULL, NULL, '', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Дамп структуры для таблица avto.loc.user_profile
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы avto.loc.user_profile: 2 rows
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES
	(1, 1, 'admin', NULL, NULL),
	(2, 2, 'api test', '', '');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
