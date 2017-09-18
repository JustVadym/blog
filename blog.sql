-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 18 2017 г., 23:32
-- Версия сервера: 5.6.34
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author_id` int(11) DEFAULT NULL,
  `ennable_comm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `date`, `author_id`, `ennable_comm`) VALUES
(18, 'img', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', NULL, '2017-09-16 17:40:52', 1, 1),
(19, 'image', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', NULL, '2017-09-16 17:42:58', 1, 1),
(20, 'CKEditor Widget for Yii2', '<p><strong>CKEditor Widget for Yii2</strong></p>\r\n\r\n<p><em>CKEditor Widget for Yii2</em></p>\r\n\r\n<p><u>CKEditor Widget for Yii2</u></p>\r\n', '/static/images/image59bd669.jpg', '2017-09-16 17:59:48', 1, 1),
(21, 'article2', '<p>article2article2article2article2article2article2</p>\r\n', '/static/images/image59bd721.jpg', '2017-09-16 18:48:54', 1, 1),
(22, 'test', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', '/static/images/image59be364.jpg', '2017-09-17 08:45:57', NULL, 1),
(23, 'test', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', '/static/images/image59be367.jpg', '2017-09-17 08:46:48', 1, 1),
(24, 'test1', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', '/static/images/image59be36c.jpg', '2017-09-17 08:48:05', 1, 0),
(25, 'test1', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', NULL, '2017-09-17 08:48:06', 1, 1),
(26, '1234', '<p>Lorem ipsum dolor sit amet, pri te vidit conceptam. Labitur abhorreant ea duo, te qui propriae lucilius ullamcorper, ipsum referrentur quo id. Ius equidem scaevola an, quod omnes omnium duo cu. An denique suscipit scaevola qui. Mei id labitur iracundia, prompta ocurreret ad his. Ius ei odio unum, ea est inani labore mnesarchum, vel ea everti copiosae singulis. Ne cetero probatus maluisset usu. Qui id oblique definitiones. Duo an malis nulla, cetero eligendi vim id. Ad ubique assueverit voluptatibus nec. Ei tacimates voluptatibus sit, eu nec volumus recusabo pertinax. At mea voluptua scriptorem, fugit homero mollis eu cum.</p>\r\n', '/static/images/image59be373.jpg', '2017-09-17 08:49:56', 1, 0),
(27, 'post_comment', '<p>post_commentpost_commentpost_commentpost_comment</p>\r\n', '/static/images/image59be433.jpg', '2017-09-17 09:41:10', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`) VALUES
(1, 'test', 1, 18),
(2, 'test2', 2, 20),
(3, 'comment', 3, 26),
(4, 'comment2', 4, 25),
(5, 'commend add', 4, 27);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1505571263),
('m170916_140844_create_article_table', 1505571266),
('m170916_140900_create_user_table', 1505571266),
('m170916_140913_create_comment_table', 1505571267);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isAdmin` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `isAdmin`) VALUES
(1, 'john', 'john@test.com', '1234', 0),
(2, 'jane', 'jane@test.com', '12345', 0),
(3, 'rodrigo', 'rodrigo@test.com', 'rodrigo', 0),
(4, 'smith', 'smith@test.com', 'smith', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-post-user_id` (`user_id`),
  ADD KEY `idx-article_id` (`article_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk-article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
