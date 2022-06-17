-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2022 at 09:05 AM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spanvinyl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '22-06-2020 10:14:35 PM'),
(2, 'pol', '23232323', '2022-04-01 14:14:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Инструменты', 'Руки', '2022-04-07 10:38:23', NULL),
(2, 'Бестселлеры', 'зачем?', '2022-04-07 13:25:12', NULL),
(3, 'Новинки', 'Список', '2022-04-07 01:32:41', '07-04-2022 07:30:41 PM'),
(4, 'Рок', 'Гитары, рифы и т.д', '2017-01-24 19:19:32', '05-04-2022 06:45:05 PM'),
(5, 'Поп', 'Всякая годная попса', '2017-01-24 19:19:54', '05-04-2022 04:51:39 PM'),
(6, 'Хип-хоп', 'Возможно самый популярный жанр сейчас', '2017-02-20 19:18:52', '05-04-2022 07:04:50 PM'),
(9, 'Джаз', 'Волны Нью-Йорка', '2022-04-02 06:22:29', '02-04-2022 01:29:49 AM'),
(10, 'Альтернатива', '66576767676', '2022-04-05 13:41:18', '06-04-2022 04:59:21 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, 3, 1, '2017-03-07 19:32:57', 'COD', 'Доставлено'),
(3, 1, 4, 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Доставлено'),
(4, 1, 17, 1, '2017-03-08 16:14:17', 'COD', 'Доставлено'),
(5, 1, 3, 1, '2017-03-08 19:21:38', 'COD', 'В процессе'),
(6, 1, 4, 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 1, 2, 1, '2020-06-22 13:58:56', 'Internet Banking', NULL),
(8, 1, 1, 1, '2020-06-22 14:06:25', 'COD', NULL),
(9, 1, 12, 1, '2020-06-22 14:06:25', 'COD', NULL),
(10, 4, 2, 3, '2020-06-23 00:58:37', 'Debit / Credit card', NULL),
(11, 4, 18, 1, '2020-06-23 01:54:11', 'Internet Banking', NULL),
(12, 4, 20, 1, '2020-06-23 03:02:41', 'Internet Banking', NULL),
(13, 4, 15, 1, '2020-06-23 03:04:45', 'COD', NULL),
(14, 4, 12, 1, '2020-06-23 03:07:50', NULL, NULL),
(15, 4, 15, 1, '2020-06-23 03:07:50', NULL, NULL),
(16, 4, 2, 1, '2020-06-23 03:23:40', NULL, NULL),
(17, 5, 21, 1, '2022-04-02 07:58:55', 'COD', NULL),
(18, 5, 22, 1, '2022-04-02 07:58:55', 'COD', NULL),
(19, 8, 29, 2, '2022-04-06 10:19:13', 'Internet Banking', NULL),
(20, 8, 29, 2, '2022-04-06 10:20:04', 'Internet Banking', NULL),
(21, 8, 27, 1, '2022-04-06 10:24:48', 'COD', 'Доставлено'),
(22, 8, 2, 1, '2022-04-06 10:25:46', 'Наличными при доставке', NULL),
(23, 5, 4, 1, '2022-04-07 14:01:22', 'Наличными при доставке', NULL),
(24, 5, 6, 3, '2022-05-15 10:23:27', 'Наличными при доставке', NULL),
(25, 5, 59, 1, '2022-05-16 09:56:38', 'Банковский перевод', 'Доставлено'),
(26, 5, 2, 1, '2022-05-18 11:42:45', 'Наличными при доставке', 'В процессе'),
(27, 5, 3, 1, '2022-05-18 11:42:45', 'Наличными при доставке', 'Доставлено'),
(28, 5, 61, 1, '2022-05-18 11:42:45', 'Наличными при доставке', 'Доставлено');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 1, 'En proceso', 'Обновил', '2022-04-05 11:06:39'),
(6, 1, 'Entregado', '111', '2022-04-05 11:06:56'),
(7, 1, 'Entregado', '111', '2022-04-05 11:07:49'),
(8, 1, 'Доставлено', 'цууццу', '2022-04-05 11:08:00'),
(9, 1, 'Доставлено', 'цууццу', '2022-04-05 11:08:11'),
(10, 3, 'En proceso', 'процесс 2', '2022-04-05 11:08:48'),
(11, 3, 'En proceso', 'процесс 2', '2022-04-05 11:09:17'),
(12, 3, 'En proceso', '212112', '2022-04-05 11:09:22'),
(13, 3, 'En proceso', '454554534345', '2022-04-05 11:10:00'),
(14, 3, 'En proceso', 'yyyyy', '2022-04-05 11:10:30'),
(15, 3, 'Доставлено', 'kjyyjyjjy', '2022-04-05 11:11:00'),
(16, 4, 'В процессе', 'eweweewe', '2022-04-05 11:11:27'),
(17, 4, 'Доставлено', '123', '2022-04-05 11:11:36'),
(18, 5, 'В процессе', 'rtttt', '2022-04-05 11:12:38'),
(19, 21, 'В процессе', 'В работе 1', '2022-04-06 10:28:39'),
(20, 21, 'Доставлено', 'Доставка завершена', '2022-04-06 10:29:34'),
(23, 25, 'В процессе', 'Взяли', '2022-05-16 09:58:21'),
(24, 25, 'Доставлено', 'Готово', '2022-05-16 09:58:36'),
(25, 28, 'Доставлено', '123', '2022-05-18 11:43:43'),
(26, 27, 'Доставлено', '1221', '2022-05-18 11:43:52'),
(27, 26, 'В процессе', '5534', '2022-05-18 11:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 23, 5, 4, 4, 'dfghf', 'отзыв как жизнь', 'отлично великолепно, 4 баллов из 5!', '2022-04-02 07:03:15'),
(6, 23, 1, 1, 1, 'Незареганый юзер', 'Спам', '0 баллов из 5, все очень плохо', '2022-04-02 07:04:42'),
(7, 23, 3, 3, 3, 'Незареганый юзер2', 'Спам2', 'спам спам спам', '2022-04-02 07:05:20'),
(8, 25, 3, 4, 3, 'Макс', 'Отзыв про меня', '11111й11', '2022-04-06 09:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 4, 4, 'Deep Purple - Perfect Strangers, 1984', 'Polydor', 3300, 3400, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Страна</p><p class=\"item-params__value\" itemprop=\"locationCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Германия</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1984</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">inner sleeve</p></li></ul></div>', 'deep1.jpg', 'deep2.jpg', 'deep3.jpg', 100, 'En Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Eagles - Hotel California, 1976', 'Asylum', 3400, 3500, '<ul class=\"item-params\" style=\"margin: -8px -24px 0px 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; max-width: 480px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Страна</p><p class=\"item-params__value\" itemprop=\"locationCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Германия</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Лейбл</p><p class=\"item-params__value\" itemprop=\"recordLabel\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Asylum</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1976</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1976</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1976</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Gatefold, inner sleeve, poster</p></li></ul>', 'eagle1.jpg', 'eagle2.jpg', 'eagle3.jpg', 200, 'En Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Rainbow - Long Live Rock N Roll, 1978', 'Asylum', 4500, 5000, '<ul class=\"item-params\" style=\"margin: -8px -24px 0px 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; max-width: 480px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Страна</p><p class=\"item-params__value\" itemprop=\"locationCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Германия</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Лейбл</p><p class=\"item-params__value\" itemprop=\"recordLabel\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Polydor</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1978</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">NM, проигрывался редко и&nbsp;бережно</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'rain1.jpg', 'rain2.jpg', 'rain3.jpg', 45, 'En Stock', '2017-02-04 04:04:43', ''),
(5, 1, 3, 'FOCUSRITE Scarlett Solo 3rd Gen', ' ', 23000, 25000, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">аудио интерфейс USB, 2 входа/2 выхода</span><br>', 'map1.jpg', 'map3.jpg', 'map2.jpg', 0, 'В наличии', '2022-04-07 14:46:50', NULL),
(6, 1, 1, 'YAMAHA F310', 'Акустика', 21000, 22790, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">Акустическая гитара, верхняя дека ель,&nbsp;</span><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">нижняя дека и обечайка меранти,&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">накладка на гриф палисандр,</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">хромированные колки, цвет&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">натуральный (Индия)</span><br></div>', 'acoguitar1.jpg', 'acoguitar2.jpg', 'acoguitar3.jpg', 100, 'В наличии', '2022-04-07 10:53:10', NULL),
(7, 1, 1, 'FENDER SQUIER BULLET ', 'Электрогитары', 30000, 31000, '<div><font color=\"#2b2b2b\" face=\"Roboto, sans-serif\"><b><u>Stratocaster HSS Arctic White</u></b></font><br></div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">электрогитара, цвет белый,&nbsp;</span><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">материал корпуса - тополь, гриф - клён,&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">накладка грифа - индийский лавр,&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">количество ладов - 21, звукосниматели HSS,&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">регуляторы: 1 громкость, 2 тона, 3-х&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">позиционный переключатель, бридж - 6-</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">болтовое тремоло, материал порожка -&nbsp;</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">синтетическая кость, колки литые,</span></div><div><span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">фурнитура - хром</span><br></div>', 'eg1.jpg', 'eg2.jpg', 'eg3.jpg', 200, 'В наличии', '2022-04-07 10:55:30', NULL),
(8, 1, 1, 'DENN SB100 BK', 'Басс-гитара', 12500, 15000, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">бас-гитара, цвет черный</span><br>', 'bass1.jpg', 'bass2.jpg', 'bass3.jpg', 500, 'Отсутствует', '2022-04-07 13:51:13', NULL),
(13, 5, 11, 'Leonard Cohen - The Future', 'Labels', 3000, 3100, 'LORLELELE', 'pop4.jpg', 'pop5.jpg', 'pop6.jpg', 100, 'Fuera de Stock', '2022-04-06 09:41:11', NULL),
(14, 5, 11, 'a-ha - The Hits Of, 1992', 'Sony', 5000, 5500, 'ahahahahaha', 'pop7.jpg', 'pop8.jpg', 'c39b8994578da1d65b4a1c2b0621a0ff.jpg', 200, 'En Stock', '2022-04-06 09:43:22', NULL),
(16, 6, 19, 'Leonard Cohen - The Future', 'лейблкласс', 800, 3100, 'ererererer', 'd9237835a72a8467c0f120b87cfcaab8.jpg', 'c39b8994578da1d65b4a1c2b0621a0ff.jpg', 'c39b8994578da1d65b4a1c2b0621a0ff.jpg', 200, 'En Stock', '2022-04-06 11:05:52', NULL),
(17, 1, 3, 'BEHRINGER UMC22', ' ', 6200, 7000, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">внешний интерфейс USB для записи и воспроизведения звука на компьютере (PC / MAC), 2 аналоговых входа (микрофонный предусилитель MIDAS), 2 аналоговых выхода, разъем для наушников</span><br>', 'map4.jpg', 'map5.jpg', 'map6.jpg', 0, 'В наличии', '2022-04-07 14:57:32', NULL),
(42, 1, 3, 'FOCUSRITE Scarlett Solo Studio 3rd Gen', ' ', 40000, 41000, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">студийный комплект (Scarlett Solo 3rd Gen, наушники, микрофон, ПО, микрофонный кабель)</span><br>', 'map7.jpg', 'map9.jpg', 'map8.jpg', 0, 'Отсутствует', '2022-04-07 14:58:19', NULL),
(43, 1, 2, 'YAMAHA PSR-E373', 'Домашние синтезаторы', 42000, 45000, '<span style=\"color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">Портативный клавишный инструмент</span><br>', 'sint1.jpg', 'sint2.jpg', 'sint3.jpg', 500, 'В наличии', '2022-04-07 15:00:25', NULL),
(44, 1, 2, 'KORG VOLCA SAMPLE 2', 'Грубвокс', 15000, 20000, 'Грубвокс-семплэр<div><br></div>', 'sint4.jpg', 'sint5.jpg', 'sint6.jpg', 100, 'В наличии', '2022-04-07 15:02:54', NULL),
(45, 1, 2, 'KORG Pa700-OR', 'Профессиональные синтезаторы', 135000, 140000, '<p style=\"box-sizing: border-box; margin-bottom: 12px; font-size: 14px; color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">KORG Pa700-OR Oriental - это профессиональная аранжировочная станция, имеющая 61 клавишу и богатый набор восточных звуков. Клавиатура синтезатора динамическая. В базе звуков находится 1700 самых разных пресетов, среди которых 512 пользовательских банков и 256 ударных инструментов. Среди 370 стилей автоакомпанемента музыканты смогут найти то, что поможет выразить их музыкальное творчество. Полифония синтезатора составляет 128 нот. Секция эффектов представлена как стандартными эффектами, типа холл, хорус, мастер-компрессор и пр, так и оригинальными эффектами DSP.&nbsp;</p><p style=\"box-sizing: border-box; margin-bottom: 12px; font-size: 14px; color: rgb(43, 43, 43); font-family: Roboto, sans-serif;\">Интегрированный секвенсор имеет быстрый режим записи. На один трек пользователи могут записать 16 дорожек, формат записи - SMF. Кроме записи можно использовать встроенный плеер файлов формата МР3 и WAW. Звукозапись и воспроизведение можно осуществлять на носители микро SD-карта или USB-флеш.&nbsp;<br style=\"box-sizing: border-box;\">Есть встроенная стереосистема (2 x 25 Вт), выход на наушники, большой сенсорный дисплей (7\"). Размеры синтезатора составляют 103,0 x 13,2 x 37,8 cм. Вес - 9,9 кг. В комплекте поставки находится сетевой кабель, пюпитр и руководство эксплуатации.&nbsp;&nbsp;</p>', 'sin7.jpg', 'sint8.jpg', 'sint9.jpg', 500, 'В наличии', '2022-04-07 18:20:58', NULL),
(46, 10, 26, ' Faith No More - The Real Thing, 1989', 'Slash', 3400, 3580, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Страна</p><p class=\"item-params__value\" itemprop=\"locationCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">США и Европа</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1989</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2020</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Желтый винил</p></li></ul>', 'faith1980_1.jpg', 'faith1980_2.jpg', 'DrawKit-onlineshopping-Illustration-10 1.svg', 0, 'В наличии', '2022-05-16 04:11:39', NULL),
(48, 10, 26, 'R.E.M. — Dead Letter Office, 1987', 'I.R.S., Universal', 4270, 4300, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1987</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2016</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">180г., переиздание 1987 / 2016</p></li></ul>', 'rem1.jpg', 'rem2.jpg', 'PLACEHOLDER.svg', 0, 'В наличии', '2022-05-16 06:57:15', NULL),
(49, 10, 26, 'Nick Cave, Mick Harvey, Blixa Bargeld — Ghosts ...Of The Civil Dead, 1989', 'Virgin', 4800, 5000, '<ul class=\"item-params\" style=\"margin: -8px -24px 0px 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; max-width: 480px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1989</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1989</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1989</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'ghost1.jpg', 'ghost2.jpg', 'ghost4.jpg', 0, 'В наличии', '2022-05-16 07:24:36', NULL),
(50, 10, 26, 'Faith No More - Introduce Yourself, 1987', 'London', 3550, 3700, '<ul class=\"item-params\" style=\"margin: -8px -24px 0px 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; max-width: 480px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1987</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1987</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1987</p></li><li class=\"item-params__break\" style=\"width: 480px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'faithintro1.jpg', 'faithintro2.jpg', 'faithintro3.jpg', 0, 'В наличии', '2022-05-16 07:27:44', NULL),
(51, 10, 26, 'Watermelon Men ‎- Wildflowers, 1987 ', 'Yellow Ltd.', 2400, 2500, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1987</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1987</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1987</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">NM, проигрывался редко и&nbsp;бережно</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">NM</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'waterlon1.jpg', 'waterlon2.jpg', 'waterlon3.jpg', 100, 'Отсутствует', '2022-05-16 08:18:28', NULL),
(52, 10, 27, 'Björk - Post, 1995', 'One Little Indian', 6700, 7000, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1995</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2015</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">180g</p></li></ul>', 'bjork1.jpg', 'bjork2.jpg', 'PLACEHOLDER.svg', 0, 'В наличии', '2022-05-16 08:41:46', NULL),
(53, 10, 27, 'Therapy? - Nurse, 1992 ', 'Caroline International', 4300, 4500, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1992</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2021</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'therapy1.jpg', 'therapy2.jpg', 'PLACEHOLDER.svg', 100, 'В наличии', '2022-05-16 08:43:53', NULL),
(54, 10, 27, 'Offspring — Smash, 1994', 'Epitaph', 4500, 4700, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1994</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2017</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'offspring1.jpg', 'offspring2.jpg', 'PLACEHOLDER.svg', 500, 'В наличии', '2022-05-16 08:48:36', NULL),
(55, 10, 27, 'Faith No More - Angel Dust, 1993 ', 'Slash, London, PolyGram', 6700, 6900, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1993</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1993</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1993</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">bonus-track \"Easy\" (B6)</p></li></ul>', 'faithangel1.jpg', 'faithangel2.jpg', 'faithangel3.jpg', 500, 'В наличии', '2022-05-16 09:02:37', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(56, 10, 27, 'Faith No More - Live At The Brixton Academy, 1991', 'Slash, London', 3200, 3400, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1991</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1991</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1991</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">NM, проигрывался редко и&nbsp;бережно</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">РЕДКИЙ</p></li></ul>', 'faithlive1.jpg', 'faithlive2.jpg', 'faithangel3.jpg', 0, 'В наличии', '2022-05-16 09:04:31', NULL),
(57, 10, 28, 'Imagine Dragons - Night Visions, 2012 ', 'KIDinaKORNER', 5100, 5300, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 2014</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2012</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2014</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'imagedragon1.jpg', 'imagedragon2.jpg', 'PLACEHOLDER.svg', 0, 'В наличии', '2022-05-16 09:07:30', NULL),
(58, 10, 28, 'Muse - Black Holes And Revelations, 2006 ', 'Warner', 4200, 4500, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Переиздание</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2006</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2020</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'muse2006_1.jpg', 'waterlon2.jpg', 'PLACEHOLDER.svg', 0, 'В наличии', '2022-05-16 09:10:26', NULL),
(59, 10, 28, 'Fishbach - À Ta Merci, 2017 ', 'Entreprise', 1800, 2000, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 2017</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2017</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2017</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'fishbash1.jpg', 'fishbash2.jpg', 'PLACEHOLDER.svg', 400, 'В наличии', '2022-05-16 09:53:35', NULL),
(60, 10, 28, 'Radiohead - A Moon Shaped Pool (2LP), 2016 ', 'XL', 6600, 6700, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 2016</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2016</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2016</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS, фабричная упаковка</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">SS</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Описание</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">2LP, gatefold, 180g</p></li></ul>', 'radioheadmoon1.jpg', 'radioheadmoon2.jpg', 'PLACEHOLDER.svg', 0, 'В наличии', '2022-05-16 09:55:36', NULL),
(61, 9, 36, 'Art Tatum - Song Of The Vagabonds, 1976 ', 'Black Lion', 2200, 2400, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1976</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1976</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1976</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'arttatum1.jpg', 'arttatum2.jpg', 'arttatum3.jpg', 0, 'Отсутствует', '2022-05-16 10:05:14', NULL),
(62, 9, 36, 'Benny Goodman - The Original Benny Goodman, 1977 ', 'MCA Coral', 1200, 1500, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1977</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1977</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1977</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'bennygood1.jpg', 'bennygood2.jpg', 'bennygood3.jpg', 0, 'В наличии', '2022-05-16 10:07:59', NULL),
(63, 9, 36, 'Frank Sinatra - No-One Cares (UK), 1968 ', 'Capitol', 2400, 3000, '<div><div class=\"item__params\" style=\"margin: 24px 0px 0px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif; font-size: 16px;\"><div class=\"item__params-container\"><ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1968</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1968</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1968</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><div><br></div></li></ul></div></div><div class=\"item__tags\" style=\"margin-top: 12px; width: 520px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif; font-size: 16px;\"><div class=\"tags\" style=\"display: flex; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; flex-wrap: wrap; margin-bottom: -4px;\"></div></div></div>', 'frank1.jpg', 'frank12.jpg', 'frank3.jpg', 100, 'В наличии', '2022-05-16 10:12:12', NULL),
(64, 9, 36, 'Nat King Cole - More Cole Español (UK), 1974 ', 'Starline', 1950, 2100, '<ul class=\"item-params\" style=\"margin-top: -8px; margin-bottom: 0px; margin-left: 0px; list-style: none; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: start; justify-content: flex-start; font-size: 14px; line-height: 18px; color: rgb(0, 0, 0); font-family: Inter, HelveticaNeue, Arial, sans-serif;\"><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Тип издания</p><p class=\"item-params__value\" itemprop=\"Product\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">Оригинал, 1974</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год выпуска</p><p class=\"item-params__value\" itemprop=\"dateCreated\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1974</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Год издания</p><p class=\"item-params__value\" itemprop=\"datePublished\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">1974</p></li><li class=\"item-params__break\" style=\"width: 520px;\"></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние винила</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX+, есть следы использования</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Состояние конверта</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">EX</p></li><li class=\"item-params__property\" style=\"position: relative; margin: 8px 24px 0px 0px;\"><p class=\"item-params__title\" style=\"margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 13px; line-height: 14px; display: inline-block; position: relative;\">Размер</p><p class=\"item-params__value\" style=\"margin-top: -2px; margin-bottom: 0px; color: inherit; max-width: 384px;\">12\"</p></li></ul>', 'natking1.jpg', 'natking2.jpg', 'natking3.jpg', 0, 'В наличии', '2022-05-16 10:14:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Гитары', '2022-04-07 10:38:34', NULL),
(2, 1, 'Синтезаторы', '2022-04-07 10:38:44', NULL),
(3, 1, 'Звуковые карты', '2022-04-07 10:39:18', '07-04-2022 04:50:29 PM'),
(4, 4, '1980-е и ранее', '2017-01-30 16:55:48', '05-04-2022 08:11:58 PM'),
(5, 4, '1990-е', '2017-02-04 04:12:40', '05-04-2022 06:47:45 PM'),
(6, 4, '2000-е и новее', '2017-02-04 04:13:00', '05-04-2022 08:08:33 PM'),
(7, 2, 'Бестселлеры', '2022-04-05 14:04:59', '07-04-2022 07:38:54 PM'),
(8, 3, 'Новинки', '2017-02-04 04:13:54', '07-04-2022 07:49:03 PM'),
(10, 5, '1980-е и ранее', '2017-02-04 04:37:02', '05-04-2022 08:12:07 PM'),
(11, 5, '1990-е', '2017-02-04 04:37:51', '05-04-2022 07:03:45 PM'),
(16, 9, '1990-е', '2022-04-02 06:35:01', NULL),
(18, 6, 'Alternative Hip-Hop', '2022-04-02 06:42:54', NULL),
(19, 6, 'Hardcore Hip-Hop', '2022-04-02 06:43:38', NULL),
(20, 5, '2000-е', '2022-04-05 14:02:53', NULL),
(21, 5, '2010-е', '2022-04-05 14:03:08', NULL),
(22, 6, '1980-е и ранее', '2022-04-05 14:03:16', '05-04-2022 08:12:12 PM'),
(23, 6, '1990-е', '2022-04-05 14:03:19', NULL),
(24, 6, '2000-е и новее', '2022-04-05 14:03:25', '05-04-2022 08:08:20 PM'),
(26, 10, '1980-е и ранее', '2022-04-05 14:04:10', '05-04-2022 08:12:29 PM'),
(27, 10, '1990-е', '2022-04-05 14:04:13', NULL),
(28, 10, '2000-е и новее', '2022-04-05 14:04:17', '05-04-2022 08:12:59 PM'),
(36, 9, '1980-е и ранее', '2022-04-05 14:06:35', '05-04-2022 08:13:12 PM'),
(38, 13, 'Популярное', '2022-04-07 01:36:02', NULL),
(43, 11, ' Бестселлеры', '2022-04-07 13:26:51', '07-04-2022 07:35:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:49:46', NULL, 0),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:54:27', '22-06-2020 07:42:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 20:37:14', NULL, 1),
(27, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 00:58:24', '22-06-2020 08:40:53 PM', 1),
(28, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 01:45:10', NULL, 1),
(29, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:26', NULL, 0),
(30, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:36', NULL, 1),
(31, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-02 06:11:25', '02-04-2022 02:03:35 AM', 1),
(32, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-02 07:48:01', NULL, 0),
(33, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-02 07:48:18', NULL, 1),
(34, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-04 13:14:56', NULL, 1),
(35, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-05 09:16:56', NULL, 1),
(36, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-05 10:00:51', NULL, 1),
(37, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-06 09:11:43', '06-04-2022 03:12:17 PM', 1),
(38, 'nuler22@gmail.com', 0x3132372e302e302e3100000000000000, '2022-04-06 10:10:28', NULL, 0),
(39, 'nuler22@mail.com', 0x3132372e302e302e3100000000000000, '2022-04-06 10:10:45', NULL, 1),
(40, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-07 14:00:44', '07-04-2022 10:39:24 PM', 1),
(41, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-04-07 16:41:04', NULL, 1),
(42, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-05-15 10:21:53', NULL, 1),
(43, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-05-16 09:56:23', NULL, 1),
(44, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-05-17 06:14:07', NULL, 1),
(45, 'wdaler2@mail.ru', 0x3132372e302e302e3100000000000000, '2022-05-18 11:42:35', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '202cb962ac59075b964b07152d234b70', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Platea21', 'platea21@platea21.com', 948445199, '77821d6f09aad66ace339068f6b7f61c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-23 00:58:07', NULL),
(5, 'wdaler2', 'wdaler2@mail.ru', 89003003030, '4297f44b13955235245b2497399d7a93', 'ул. Гагарина д.10', 'Омская область', 'Омск', 644024, 'ул. Гагарина д.10', 'Омская область', 'Омск', 644024, '2022-04-02 06:11:09', NULL),
(6, 'nuler', 'nuler@mail.com', 89006004090, 'abf156f3cf64496f9da2cabca68d95fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 09:17:05', NULL),
(7, 'nulercollege', 'college@wol.ru', 89006003090, '731982a033a5cc815ac03c8504abb748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 09:18:02', NULL),
(8, 'nuler22', 'nuler22@mail.com', 89006004444, '2585c0dabd134f52dd24d5555b278eb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 10:09:26', NULL),
(9, 'nuler', 'nuler11@mail.com', 89006004090, '698d51a19d8a121ce581499d7b701668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 10:09:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43'),
(34, 5, 62, '2022-05-18 13:27:59'),
(35, 5, 5, '2022-05-18 13:28:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `quality` (`quality`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `subCategory` (`subCategory`),
  ADD KEY `productPrice` (`productPrice`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid_2` (`categoryid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userEmail` (`userEmail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id`) REFERENCES `subcategory` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD CONSTRAINT `ordertrackhistory_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subCategory`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
