-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 28 2021 г., 19:07
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

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Learning Laravel 8.x', 'Eos veritatis non dolorum eveniet recusandae.', 'Quis laborum numquam iusto nesciunt. Non vero sit rerum. Aut fugit exercitationem mollitia velit consequatur eveniet.', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(2, 1, 'Ut voluptatum in id qui explicabo et excepturi.', 'A dolores nesciunt nam quas.', 'Iste et laborum et et omnis. Et et placeat facere explicabo officiis veniam. Dicta aut tempore qui.', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(3, 1, 'Et necessitatibus pariatur repellat vitae iste dolore voluptas.', 'Sit rerum ex veniam doloribus rerum dicta.', 'Officia rem quaerat eaque ut. Est similique mollitia atque quae sit. Culpa voluptas tempora dolores autem.', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(4, 1, 'Quo rerum provident aut minus exercitationem cumque.', 'Cupiditate nihil repudiandae nihil distinctio.', 'Ab iusto fugit quisquam est. Quod dolorum corporis facilis assumenda perspiciatis magnam.', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(5, 1, 'Nesciunt fugiat error explicabo aut excepturi.', 'Fugiat placeat est rem saepe ut voluptate est.', 'Cupiditate sed eos eligendi repellat quia et odio. Quidem rem recusandae molestiae cum mollitia. Doloremque rerum ullam unde exercitationem ab alias ipsum.', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(6, 2, 'Excepturi qui sunt consequatur minima.', 'Ea et fugiat quasi eveniet corrupti.', 'Ut autem sequi est nam. Aut iste eligendi officia veritatis. Non molestias error ad porro quisquam ratione error. Et accusantium natus velit quis aut. Suscipit non porro voluptatem doloribus inventore.', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(7, 2, 'Ex nihil mollitia possimus maxime reprehenderit.', 'Ipsum illum nobis qui tenetur quia quia.', 'Rem est voluptatem odio perspiciatis similique cupiditate nulla. Ut velit rem distinctio sunt aut quia. Perspiciatis facere maiores facilis necessitatibus. Aut est nemo eligendi ex dolores reprehenderit. Placeat eum error sint laboriosam officia voluptates tenetur.', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(8, 2, 'Aliquid velit culpa sunt sunt tenetur iste.', 'Quo doloremque cupiditate adipisci pariatur expedita.', 'Nihil officiis consequuntur ab ea corporis sed. Quibusdam totam molestiae culpa perspiciatis voluptas nulla enim perspiciatis. Voluptatem animi ut tempora eos est sed enim molestiae. Consequatur natus aperiam modi a occaecati.', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(9, 1, 'asdf', 'asdf', 'asdf', '2021-02-17 13:28:51', '2021-02-17 13:28:51'),
(10, 1, 'Просто еще одна замечательная статья о Laravel', 'Небольшой заголовок', 'И, конечно, сам текст статьи. Он значительно больше заголовка.', '2021-02-17 13:38:13', '2021-02-17 13:38:13');

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-02-17 13:06:45', '2021-02-17 13:06:46'),
(2, 1, 2, '2021-02-17 13:06:54', '2021-02-17 13:06:54'),
(3, 1, 3, '2021-02-17 13:07:03', '2021-02-17 13:07:04'),
(11, 9, 1, '2021-02-17 13:28:51', '2021-02-17 13:28:51'),
(12, 9, 2, '2021-02-17 13:28:51', '2021-02-17 13:28:51'),
(13, 9, 3, '2021-02-17 13:28:51', '2021-02-17 13:28:51'),
(14, 10, 1, '2021-02-17 13:38:13', '2021-02-17 13:38:13'),
(15, 10, 2, '2021-02-17 13:38:13', '2021-02-17 13:38:13');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Структура таблицы `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `forms`
--

INSERT INTO `forms` (`id`, `username`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Ivan Ivanov', 'Just a new comment', '2021-02-25 10:33:28', '2021-02-25 10:33:28'),
(2, 'Sergey Sergeev', 'Это еще один комментарий к данной публикации', '2021-02-25 11:42:45', '2021-02-25 11:42:45');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
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
(4, '2021_02_10_153900_create_articles_table', 1),
(5, '2021_02_17_122130_create_tags_table', 1),
(6, '2021_02_25_125031_create_forms_table', 2),
(7, '2021_02_27_103416_create_request_forms_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `request_forms`
--

DROP TABLE IF EXISTS `request_forms`;
CREATE TABLE `request_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `request_forms`
--

INSERT INTO `request_forms` (`id`, `username`, `phone`, `email`, `requested`, `created_at`, `updated_at`) VALUES
(1, 'Иван Иванов', '+7 (495) 987-6543', 'ivan@ivan.ru', 'Запрашиваю данные из каталога 1,2 и 3 на выгрузку.', '2021-02-27 08:09:44', '2021-02-27 08:09:44'),
(2, 'Павел Павлов', '+7(499)999-99-99', 'pavel@pavlov.ru', 'Запрашиваю на выгрузку данные из 5 и 6 каталогов.', '2021-02-27 08:17:21', '2021-02-27 08:17:21'),
(3, 'Кирилл Кириллов', '+7(985)123-3211', 'kirill@kirillov.ru', 'Запрос материалов из каталогов 5 и 13.', '2021-02-27 12:55:44', '2021-02-27 12:55:44');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'laravel', '2021-02-17 13:06:07', '2021-02-17 13:06:08'),
(2, 'php', '2021-02-17 13:06:14', '2021-02-17 13:06:15'),
(3, 'education', '2021-02-17 13:06:23', '2021-02-17 13:06:24'),
(4, 'personal', '2021-02-17 13:06:33', '2021-02-17 13:06:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Maiya Wilkinson', 'clueilwitz@example.org', '2021-02-17 10:05:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H94x0ZbzXW', '2021-02-17 10:05:19', '2021-02-17 10:05:19'),
(2, 'Hilbert Jacobs', 'oemard@example.net', '2021-02-17 10:05:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NetubT5uQL', '2021-02-17 10:05:19', '2021-02-17 10:05:19'),
(3, 'Mr. Rory Torphy', 'alexander63@example.net', '2021-02-17 10:05:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'owINRBg0bO', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(4, 'Mathias Ward', 'weissnat.rebekah@example.com', '2021-02-17 10:05:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sOAqfZWkpQ', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(5, 'Adrien Bins', 'ricky.reynolds@example.org', '2021-02-17 10:05:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd0FjAlt7VK', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(6, 'Ms. Irma O\'Hara Sr.', 'weber.joyce@example.net', '2021-02-17 10:05:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nacNXGluzV', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(7, 'Lonny Smith', 'dpaucek@example.net', '2021-02-17 10:05:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ArieGWRZK', '2021-02-17 10:05:24', '2021-02-17 10:05:24'),
(8, 'Prof. Bruce Dickinson II', 'kennith.runolfsson@example.org', '2021-02-17 10:05:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ve5Oyknut8', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(9, 'Sadie Stroman', 'carolyn82@example.com', '2021-02-17 10:05:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fOvoOBDqpV', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(10, 'Mrs. Aletha Shanahan IV', 'harvey.cameron@example.net', '2021-02-17 10:05:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EZmVP7xg7h', '2021-02-17 10:05:29', '2021-02-17 10:05:29'),
(11, 'Ivan Ivanov', 'ivan@mail.ru', NULL, '$2y$10$ZhxB8Z7G25jBjVN3IZBAT.NIApzpQGviJ6weZnuVJdIV1.xeGCvEe', NULL, '2021-02-20 08:27:56', '2021-02-20 08:27:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_tag_article_id_tag_id_unique` (`article_id`,`tag_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `request_forms`
--
ALTER TABLE `request_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `request_forms_email_unique` (`email`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `request_forms`
--
ALTER TABLE `request_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
