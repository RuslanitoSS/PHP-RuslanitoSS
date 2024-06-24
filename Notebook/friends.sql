-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 16 2024 г., 11:10
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phonebook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(256) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `name`, `firstname`, `lastname`, `gender`, `email`, `date`, `phone`, `comment`, `address`) VALUES
(1, 'Testosterone', 'Test', 'Testovich', 'male', 'testov@gmail.com', '2023-12-06', '+79153235458', 'idk', 'Mars, Ilon Mask av. 2/3'),
(2, 'Русян', 'Руслан', 'Супроткин', 'Male', '1212@1.com', '2024-04-16', '+8 026 332-16-02', 'idc', 'idk'),
(3, '1', 'Aboba', '2', 'Male', 'suprotkinr@gmail.com', '2024-04-01', '+8 026 332-16-02', 'ic', 'ik');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
