-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 03 2019 г., 11:10
-- Версия сервера: 10.4.6-MariaDB
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `weather`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ru`
--

CREATE TABLE `ru` (
  `Date` text NOT NULL,
  `City` text NOT NULL,
  `Humidity` int(11) NOT NULL,
  `temp` int(11) NOT NULL,
  `AtmPressure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ru`
--

INSERT INTO `ru` (`Date`, `City`, `Humidity`, `temp`, `AtmPressure`) VALUES
('2019-12-03 12:00:00', 'Moscow', 93, -3, 1010),
('2019-12-03 15:00:00', 'Moscow', 95, -4, 1011),
('2019-12-03 18:00:00', 'Moscow', 94, -6, 1013),
('2019-12-03 21:00:00', 'Moscow', 95, -6, 1012),
('2019-12-04 00:00:00', 'Moscow', 89, -4, 1013),
('2019-12-04 03:00:00', 'Moscow', 92, -4, 1012),
('2019-12-04 06:00:00', 'Moscow', 89, -3, 1013),
('2019-12-04 09:00:00', 'Moscow', 85, -2, 1011),
('2019-12-04 12:00:00', 'Moscow', 93, -2, 1010),
('2019-12-04 15:00:00', 'Moscow', 92, -2, 1008),
('2019-12-04 18:00:00', 'Moscow', 93, -1, 1008),
('2019-12-04 21:00:00', 'Moscow', 96, 1, 1007),
('2019-12-05 00:00:00', 'Moscow', 97, 2, 1009),
('2019-12-05 03:00:00', 'Moscow', 95, 3, 1010),
('2019-12-05 06:00:00', 'Moscow', 94, 2, 1013),
('2019-12-05 09:00:00', 'Moscow', 94, 2, 1013),
('2019-12-05 12:00:00', 'Moscow', 96, 3, 1013),
('2019-12-05 15:00:00', 'Moscow', 92, 2, 1012),
('2019-12-05 18:00:00', 'Moscow', 88, 2, 1012),
('2019-12-05 21:00:00', 'Moscow', 88, 1, 1012),
('2019-12-06 00:00:00', 'Moscow', 87, 1, 1012),
('2019-12-06 03:00:00', 'Moscow', 87, 2, 1010),
('2019-12-06 06:00:00', 'Moscow', 77, 0, 1009),
('2019-12-06 09:00:00', 'Moscow', 68, 0, 1007),
('2019-12-06 12:00:00', 'Moscow', 74, 0, 1007),
('2019-12-06 15:00:00', 'Moscow', 77, 0, 1007),
('2019-12-06 18:00:00', 'Moscow', 81, 0, 1007),
('2019-12-06 21:00:00', 'Moscow', 83, 0, 1007),
('2019-12-07 00:00:00', 'Moscow', 86, 0, 1007),
('2019-12-07 03:00:00', 'Moscow', 87, 0, 1006),
('2019-12-07 06:00:00', 'Moscow', 85, 1, 1005),
('2019-12-07 09:00:00', 'Moscow', 71, 1, 1004),
('2019-12-07 12:00:00', 'Moscow', 71, 1, 1003),
('2019-12-07 15:00:00', 'Moscow', 81, 1, 1004),
('2019-12-07 18:00:00', 'Moscow', 74, 1, 1003),
('2019-12-07 21:00:00', 'Moscow', 78, 0, 1003),
('2019-12-08 00:00:00', 'Moscow', 86, 0, 1003),
('2019-12-08 03:00:00', 'Moscow', 88, 0, 1002),
('2019-12-08 06:00:00', 'Moscow', 92, 0, 1001),
('2019-12-08 09:00:00', 'Moscow', 97, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `ua`
--

CREATE TABLE `ua` (
  `Date` text NOT NULL,
  `City` text NOT NULL,
  `Humidity` int(11) NOT NULL,
  `temp` int(11) NOT NULL,
  `AtmPressure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ua`
--

INSERT INTO `ua` (`Date`, `City`, `Humidity`, `temp`, `AtmPressure`) VALUES
('2019-12-03 12:00:00', 'Kyiv', 76, 1, 1018),
('2019-12-03 15:00:00', 'Kyiv', 81, -1, 1019),
('2019-12-03 18:00:00', 'Kyiv', 84, -2, 1023),
('2019-12-03 21:00:00', 'Kyiv', 88, -2, 1023),
('2019-12-04 00:00:00', 'Kyiv', 90, -3, 1025),
('2019-12-04 03:00:00', 'Kyiv', 91, -3, 1025),
('2019-12-04 06:00:00', 'Kyiv', 86, -3, 1026),
('2019-12-04 09:00:00', 'Kyiv', 76, -1, 1025),
('2019-12-04 12:00:00', 'Kyiv', 69, 0, 1025),
('2019-12-04 15:00:00', 'Kyiv', 75, -1, 1024),
('2019-12-04 18:00:00', 'Kyiv', 85, 0, 1025),
('2019-12-04 21:00:00', 'Kyiv', 85, 0, 1024),
('2019-12-05 00:00:00', 'Kyiv', 89, 1, 1025),
('2019-12-05 03:00:00', 'Kyiv', 93, 1, 1025),
('2019-12-05 06:00:00', 'Kyiv', 94, 1, 1027),
('2019-12-05 09:00:00', 'Kyiv', 92, 1, 1027),
('2019-12-05 12:00:00', 'Kyiv', 88, 2, 1026),
('2019-12-05 15:00:00', 'Kyiv', 90, 1, 1026),
('2019-12-05 18:00:00', 'Kyiv', 86, 1, 1026),
('2019-12-05 21:00:00', 'Kyiv', 73, 1, 1025),
('2019-12-06 00:00:00', 'Kyiv', 61, 0, 1024),
('2019-12-06 03:00:00', 'Kyiv', 66, -1, 1022),
('2019-12-06 06:00:00', 'Kyiv', 72, -1, 1022),
('2019-12-06 09:00:00', 'Kyiv', 66, 0, 1021),
('2019-12-06 12:00:00', 'Kyiv', 64, 1, 1019),
('2019-12-06 15:00:00', 'Kyiv', 71, 0, 1018),
('2019-12-06 18:00:00', 'Kyiv', 71, 0, 1018),
('2019-12-06 21:00:00', 'Kyiv', 71, 0, 1017),
('2019-12-07 00:00:00', 'Kyiv', 67, -1, 1016),
('2019-12-07 03:00:00', 'Kyiv', 62, -1, 1014),
('2019-12-07 06:00:00', 'Kyiv', 61, -1, 1014),
('2019-12-07 09:00:00', 'Kyiv', 54, 1, 1013),
('2019-12-07 12:00:00', 'Kyiv', 60, 2, 1011),
('2019-12-07 15:00:00', 'Kyiv', 68, 0, 1010),
('2019-12-07 18:00:00', 'Kyiv', 64, 1, 1009),
('2019-12-07 21:00:00', 'Kyiv', 66, 1, 1008),
('2019-12-08 00:00:00', 'Kyiv', 75, 1, 1007),
('2019-12-08 03:00:00', 'Kyiv', 87, 1, 1006),
('2019-12-08 06:00:00', 'Kyiv', 94, 2, 1005),
('2019-12-08 09:00:00', 'Kyiv', 87, 3, 1005);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
