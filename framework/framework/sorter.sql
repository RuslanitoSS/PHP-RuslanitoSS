-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 27 2024 г., 14:01
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
-- База данных: `sorter`
--

-- --------------------------------------------------------

--
-- Структура таблицы `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Data` datetime DEFAULT NULL,
  `fav` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `channel`
--

INSERT INTO `channel` (`id`, `name`, `Description`, `Data`, `fav`) VALUES
(2, 'Sound of the Aviators', 'Тайлер Шоу, более известный как Aviators, — американский инди-музыкант, специализирующийся на кинематической электронике. Также он пишет в жанрах альтернативной, оркестральной и электронной танцевальной музыки. Тайлер увлекается видеоиграми и фильмами и делает музыку только ради удовольствия. Композитор игры «Vulpine».', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `field`
--

INSERT INTO `field` (`id`, `name`, `description`, `data`) VALUES
(10, 'Альтернативный рок', 'Исполнители алтернативы', NULL),
(11, '--нет темы--', 'так получилось((', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `hashtags`
--

CREATE TABLE `hashtags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `hashtags`
--

INSERT INTO `hashtags` (`id`, `name`, `data`) VALUES
(7, '#soundofaviators', NULL),
(8, 'no_hashtag', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `hash_conn`
--

CREATE TABLE `hash_conn` (
  `hash_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `hash_conn`
--

INSERT INTO `hash_conn` (`hash_id`, `field_id`) VALUES
(7, 10),
(8, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Data` datetime DEFAULT NULL,
  `save` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
