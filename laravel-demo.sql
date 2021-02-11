-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2021 г., 11:01
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel-demo`
--
DROP DATABASE IF EXISTS `laravel-demo`;
CREATE DATABASE IF NOT EXISTS `laravel-demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel-demo`;

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, '«Радио» с доступом за тысячу долларов. Почему все говорят про клабхаус', 'Идейный вдохновитель новинки — бывший сотрудник Google Пол Дэвисон. В феврале 2020 года он вместе с бывшим коллегой-разработчиком Google начал работу над Clubhouse. Приложение запустилось спустя месяц, а за лето стало настоящим феноменом, благодаря ставке на эксклюзивность и закрытость. Попасть в Clubhouse можно только по приглашению, на старте создатели активно привлекали знаменитостей. Среди пользователей приложения — Джаред Лето, Опра Уинфри, Марк Цукерберг. Настоящий взлет популярности Clubhouse случился в конце января 2021 года, когда в социальной сети зарегистрировался Илон Маск. Тогда за шесть дней в приложение пришло больше миллиона новых пользователей, хотя до сих пор новинка доступна лишь владельцам устройств с iOS. Многие уже зарабатывают на продаже инвайтов в приложение по цене от 250 до 1000 долларов.', 'Если казалось, что в 2021 придумать новую социальную сеть уже невозможно, то Clubhouse (или клабхаус) — доказательство того, что это не так. Рассказываем, кто вывел голосовое общение на новый уровень и почему приглашения в некоторые чаты стоят больше 60 тысяч рублей.', '2021-02-10 13:02:43', '2021-02-10 13:02:43'),
(2, 'Адвокат не смог отключить фильтр в Zoom и выступил в суде с маской котика.', 'Судья из штата Техас (США) Рой Фергюсон опубликовал видео заседания, которое проходило онлайн в Zoom. В нем один из участников видеоконференции, адвокат Род Понтон, случайно включил фильтр, поэтому вместо изображения с веб-камеры показывалась картинка с милым котиком.\r\nВо время трансляции адвокату сделали замечание, чтобы он отключил фильтр. Понтон попытался объяснить, что он вместе с помощницей пытается это сделать, но у них не получается.\r\n\r\n«Я здесь, я не кот», — попытался объяснить адвокат\r\n\r\nВ итоге адвокат Понтон все-таки смог отключить фильтр, когда судья объяснил, как это сделать. Дальше заседание пошло в обычном режиме.', 'Еще один минус удаленной работы для тех, кто не очень хорошо владеет компьютером.', '2021-02-10 13:04:26', '2021-02-10 13:09:59'),
(3, 'Hyundai показала первую «ходячую машину» Tiger', 'Проект Tiger X-1 — это проект компании New Horizons Studio, которую Hyundai создала в экспериментальных целях. Машина стала чем-то средним между обычным автомобилем и роботом-трансформером. Он может ездить по дорогам как автомобиль с полным приводом, а при необходимости выдвигает механические ноги и идет, преодолевая сложные препятствия.\r\nТаким образом компания Hyundai пытается проверить новую идею для транспорта будущего — сейчас Tiger X-1 по размерам больше похож на дрон или игрушечный автомобиль, его можно использовать для перевозки небольших грузов в сложных условиях. В будущем, если идея окажется удачной, ее смогут реализовать в полном размере, чтобы такая машина перевозила людей по бездорожью.', 'Выглядит как автомобиль из будущего, у которого колеса превращаются в механические ноги.', '2021-02-10 13:05:51', '2021-02-10 13:05:51'),
(4, 'Зачем России нужен «летающий охотник». Подробности и фото', 'На выставке NAIS 2021 российский концерн ВКО «Алмаз-Антей» представил беспилотник-перехватчик «Волк-18». Он предназначен для устранения других дронов и небольших летательных аппаратов.\r\nВыглядит «Волк» как обычный гражданский квадрокоптер для развлечений и съемки простых видео с воздуха, но задачи у него совершенно другие. На корпусе аппарата установлен набор камер и датчиков для полного автопилота — дрон сам обнаруживает цель и выбирает оптимальную траекторию полета до нее. После приближения к цели дрон может выпустить специальную сетку, которая полностью блокирует другой летательный аппарат.\r\n\r\nДрон может перевозить три сетки — то есть, у него есть попытки, чтобы ликвидировать цель. Если сеть не сработает или целей несколько, то для этого есть режим тарана. «Волк» разгоняется до максимальной скорости и врезается в цель, чтобы сбить с пути. По сути, получается беспилотник-камикадзе. \r\n\r\nАтака на летательные аппараты проходит в полуавтоматическом режиме — он целится и летает сам, но оператору нужно только подтвердить захват цели и атаку. Предыдущая версия «Волка» требовала большего участия человека.\r\n\r\nСам дрон весит 4 кг, дополнительно на него можно нагрузить дополнительные датчики или приспособления весом до 2 кг. Работает он от аккумулятора с электродвигателями, время полета — от 17 до 30 минут. Это стандартные значения для беспилотников, если увеличить батарею, то он станет тяжелее, медленнее и утратит маневренность. Разработчики «Волк-18» из концерна «Алмаз-Антей» рассказали «РИА Новости», что «летающий охотник» уже прошел первые летные испытания.', 'Маленький аппарат будет охотиться на другие беспилотники и дроны, выстреливая в них сеткой или тараня собой, если сетка не сработает.', '2021-02-10 13:07:17', '2021-02-10 13:07:17'),
(5, 'Электроника различит прикосновения по тени. Как работает замена сенсорам', 'Основная роль в ней уделена камере, которая считывает тени. В настоящее время технологию испытывают ученые из Корнельского университета на роботах. Они оснащены камерами и учатся реагировать на изменение света, чтобы по нему определить, когда человеческая рука касается их или делает попытку прикоснуться.\r\n\r\nИсследователи отмечают, что применение ShadowSense не ограничивается робототехникой. Ее также можно использовать в сенсорных дисплеях или электронных устройствах.\r\nПравда, судя по описанию, технология еще сырая и требует доработки. Есть некоторые ограничения. Например, выполнить подобное «считывание тени» можно только в светлом помещении, где тень будет заметна. Кроме того, камеру еще нужно успешно расположить так, чтобы она смогла зафиксировать видимые изменения освещенности с любой стороны. Для последнего ученые предлагают использовать зеркала или систему дополнительных линз.\r\n\r\n«Прикосновение — важный способ общения для большинства организмов, но он практически отсутствует во взаимодействии человека и робота», — говорит один из исследователей Гай Хоффман. Одна из причин заключается в том, что реализация такого типа взаимодействия требует установки огромного количества датчиков. Новый способ предлагает недорогую действенную альтернативу.', 'Технология ShadowSense предлагает довольно простой, но эффективный способ взаимодействия с различными девайсами и роботами.', '2021-02-10 13:08:52', '2021-02-10 13:08:52');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_10_153900_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
