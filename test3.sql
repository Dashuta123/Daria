-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 17 2022 г., 17:56
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kategoriya`
--

CREATE TABLE `kategoriya` (
  `Nazvaniye_kategorii` text NOT NULL,
  `Roditelskaya_kategoriya` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `proyekt`
--

CREATE TABLE `proyekt` (
  `Nazvaniye proyekta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `teg`
--

CREATE TABLE `teg` (
  `Nazvaniye tega` text NOT NULL,
  `Tsvet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `Name` text NOT NULL,
  `Familiya` text NOT NULL,
  `Otchestvo` text NOT NULL,
  `data_rozhdeniya` date NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`Name`, `Familiya`, `Otchestvo`, `data_rozhdeniya`, `email`) VALUES
('John', 'Crumit', 'Stardley', '1978-08-07', 'pochta34@gmail.com'),
(' Алан ', ' Гонсалес ', ' Максимович ', '1983-05-21', ' AlanMGonzales@dayrep.com '),
(' Джеральд ', ' Хейл ', ' Леонидович ', '1970-01-07', ' JeraldLHale@jourrapide.com '),
(' Роберт ', ' Охотник ', ' Георгиевич ', '1967-02-18', ' RobertGHunter@armyspy.com '),
(' Джон ', ' Шеффер ', ' Максимович ', '1978-06-10', ' JohnKSchaeffer@teleworm.us '),
(' Дэвид ', ' Болин ', ' Максимович ', '1938-06-05', ' DavidDBolin@teleworm.us '),
(' Линда ', ' Паркер ', ' Максимович ', '1949-12-30', ' LindaGParker@jourrapide.com '),
(' Тиффани ', ' Хьюз ', ' Максимович ', '1960-03-27', ' TiffanyGHughes@dayrep.com ');

-- --------------------------------------------------------

--
-- Структура таблицы `zadacha`
--

CREATE TABLE `zadacha` (
  `Nazvaniye zadachi` text NOT NULL,
  `Data i vremya nachala` datetime NOT NULL,
  `Data i vremya zaversheniya` datetime NOT NULL,
  `Proyekt` int(50) NOT NULL,
  `Kategoriya` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
