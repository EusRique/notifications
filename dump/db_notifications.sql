-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Set-2018 às 03:54
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_notifications`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bosta', 'Bem bosta!!!', '2018-09-12 00:28:06', '2018-09-12 00:28:06'),
(2, 1, 1, 'Supimpa', 'Muito bom!!!', '2018-09-12 01:17:05', '2018-09-12 01:17:05'),
(3, 1, 1, 'Bacana', 'Curti muito seu post', '2018-09-12 01:22:35', '2018-09-12 01:22:35'),
(4, 1, 1, 'DaHora', 'Top demais', '2018-09-12 01:24:02', '2018-09-12 01:24:02'),
(5, 1, 1, 'Queues', 'Queues notifications', '2018-09-12 01:32:40', '2018-09-12 01:32:40'),
(6, 1, 1, 'Fodastico', 'Muito massa', '2018-09-12 01:44:30', '2018-09-12 01:44:30'),
(7, 2, 1, 'Magico', 'Bom demais', '2018-09-14 01:19:01', '2018-09-14 01:19:01'),
(8, 2, 1, 'Bacana', 'Super bacana!!!', '2018-09-14 01:42:09', '2018-09-14 01:42:09'),
(9, 3, 1, 'Bosta', 'Bosta!!!', '2018-09-14 02:28:31', '2018-09-14 02:28:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_09_08_195318_create_posts_table', 1),
(8, '2018_09_08_201222_create_comments_table', 1),
(9, '2018_09_11_223007_create_jobs_table', 2),
(10, '2018_09_11_223856_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('3ef574a6-0402-4eb8-a885-5720246e0cf5', 'App\\Notifications\\PostCommented', 1, 'App\\Models\\User', '{\"comment\":{\"id\":8,\"post_id\":2,\"user_id\":1,\"title\":\"Bacana\",\"body\":\"Super bacana!!!\",\"created_at\":\"2018-09-13 22:42:09\",\"updated_at\":\"2018-09-13 22:42:09\",\"user\":{\"id\":1,\"name\":\"Henrique Camargo\",\"email\":\"h.camargo91@gmail.com\",\"created_at\":\"2018-09-11 21:24:01\",\"updated_at\":\"2018-09-11 21:24:01\"}}}', '2018-09-15 15:20:51', '2018-09-14 01:42:34', '2018-09-15 15:20:51'),
('aedb21c3-44d4-48ab-9404-83cce5b61bfd', 'App\\Notifications\\PostCommented', 1, 'App\\Models\\User', '{\"comment\":{\"id\":9,\"post_id\":3,\"user_id\":1,\"title\":\"Bosta\",\"body\":\"Bosta!!!\",\"created_at\":\"2018-09-13 23:28:31\",\"updated_at\":\"2018-09-13 23:28:31\",\"user\":{\"id\":1,\"name\":\"Henrique Camargo\",\"email\":\"h.camargo91@gmail.com\",\"created_at\":\"2018-09-11 21:24:01\",\"updated_at\":\"2018-09-11 21:24:01\"}}}', '2018-09-15 15:20:51', '2018-09-14 02:28:42', '2018-09-15 15:20:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'enim', 'Quaerat similique non aspernatur et consequatur.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(2, 1, 'autem', 'Et assumenda in eligendi ipsam error sunt exercitationem.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(3, 1, 'deleniti', 'Nulla aut autem culpa atque autem aut consequatur est.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(4, 1, 'error', 'Quia quibusdam eaque voluptas.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(5, 1, 'minus', 'Beatae dolorum aut et at repellat esse.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(6, 1, 'velit', 'Perspiciatis illo sed cum magni perspiciatis dolores.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(7, 1, 'quia', 'Voluptate laborum quia voluptas voluptatibus corrupti eius.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(8, 1, 'similique', 'Quia soluta error aut non consequuntur voluptas.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(9, 1, 'et', 'Temporibus ut sit unde quis inventore deserunt ab reprehenderit.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(10, 1, 'aut', 'Et dolorem qui aliquam animi veniam.', '2018-09-12 00:24:01', '2018-09-12 00:24:01'),
(11, 1, 'illum', 'Atque quis porro aut.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(12, 1, 'occaecati', 'In maxime ut ut dolores cumque et.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(13, 1, 'sint', 'Ut nesciunt dolor expedita.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(14, 1, 'sit', 'Non odit fugiat aut debitis.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(15, 1, 'sunt', 'Hic ad fugiat beatae et totam architecto.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(16, 1, 'nihil', 'Aut ut voluptas rem consequatur rerum et.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(17, 1, 'consequatur', 'Ratione quasi veritatis quia perferendis facilis.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(18, 1, 'reprehenderit', 'Consequuntur soluta odio qui vero rerum corporis.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(19, 1, 'pariatur', 'Ut tenetur fugit sint aliquid dicta officiis quas.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(20, 1, 'totam', 'Et qui porro molestiae.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(21, 1, 'dolor', 'Eos laudantium itaque est sint natus.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(22, 1, 'eligendi', 'Id dolor doloremque rem dolores sit quisquam iure.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(23, 1, 'vero', 'Quaerat consequatur nihil nam vel temporibus.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(24, 1, 'recusandae', 'Exercitationem autem repudiandae et molestiae ad quis vel numquam.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(25, 1, 'commodi', 'Et voluptatem officiis deleniti deleniti et omnis distinctio ea.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(26, 1, 'odit', 'Quidem dicta ut debitis aliquam qui suscipit.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(27, 1, 'ducimus', 'Eos nihil aperiam iure id.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(28, 1, 'libero', 'Maiores delectus veritatis dolor reprehenderit voluptas ipsum voluptas.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(29, 1, 'est', 'Veniam sed corporis quod distinctio unde.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(30, 1, 'id', 'Velit quam est iure molestiae amet libero.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(31, 1, 'quis', 'Et molestiae deleniti sequi.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(32, 1, 'nam', 'Nemo repellat dolorum est harum hic ea aspernatur.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(33, 1, 'molestias', 'Autem ea velit praesentium porro ratione.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(34, 1, 'quam', 'Quis maxime eveniet voluptatem quia occaecati molestias.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(35, 1, 'dicta', 'Assumenda ut adipisci aut dolore.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(36, 1, 'unde', 'Temporibus tempora dicta molestiae.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(37, 1, 'dolores', 'Quaerat incidunt accusamus tempore.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(38, 1, 'voluptate', 'Deleniti ex vel quos quo nihil illum sunt.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(39, 1, 'neque', 'Nobis minima laborum aspernatur cum iste.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(40, 1, 'doloremque', 'Dolor in sit quod est quia ab inventore.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(41, 1, 'repudiandae', 'Velit voluptatem eaque sint unde laudantium dolorem.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(42, 1, 'culpa', 'Praesentium molestias porro voluptatem voluptates aut qui corrupti quis.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(43, 1, 'odio', 'Est dolores ducimus pariatur qui nulla eveniet dolores.', '2018-09-12 00:24:02', '2018-09-12 00:24:02'),
(44, 1, 'soluta', 'Dignissimos ut aut est quam.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(45, 1, 'voluptas', 'Unde ea blanditiis qui labore consectetur architecto.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(46, 1, 'voluptatem', 'Occaecati eum vel reiciendis vero voluptatem.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(47, 1, 'a', 'Eum officiis accusantium odit quae consectetur.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(48, 1, 'quaerat', 'Doloribus nemo est dolor.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(49, 1, 'ut', 'Eum facere non earum.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(50, 1, 'sed', 'Magni repellat magnam repudiandae autem magni laboriosam.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(51, 1, 'nostrum', 'Vero iure corporis explicabo assumenda nihil non.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(52, 1, 'eos', 'Accusantium numquam voluptatibus molestiae eveniet similique quo.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(53, 1, 'illo', 'Nesciunt atque vel dolore nesciunt sed sed ullam.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(54, 1, 'ratione', 'Nihil velit ullam aut quisquam est facere culpa sit.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(55, 1, 'cum', 'Aperiam amet aut commodi velit corporis qui quos.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(56, 1, 'dolore', 'A minima aliquid debitis.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(57, 1, 'adipisci', 'Consectetur cupiditate dolor sed sint hic.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(58, 1, 'qui', 'Vel provident ipsa corporis cupiditate molestiae atque perspiciatis.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(59, 1, 'suscipit', 'Ut sequi quis laudantium quaerat.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(60, 1, 'quidem', 'Omnis sunt magni facilis ea nemo et officia voluptate.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(61, 1, 'eaque', 'Et impedit necessitatibus possimus.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(62, 1, 'nesciunt', 'Aut iure facere doloremque qui reprehenderit velit delectus cumque.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(63, 1, 'labore', 'Sit aut temporibus rerum fuga placeat voluptates.', '2018-09-12 00:24:03', '2018-09-12 00:24:03'),
(64, 1, 'voluptatum', 'In aut dolor quo.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(65, 1, 'cumque', 'Illum et esse id dicta numquam saepe eos.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(66, 1, 'corrupti', 'Est quia sit esse autem.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(67, 1, 'voluptates', 'Sed occaecati dolorum magni incidunt aliquid.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(68, 1, 'officiis', 'Et consequatur eos nemo minus blanditiis saepe.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(69, 1, 'inventore', 'Deleniti pariatur repudiandae repellendus totam incidunt ut aliquam.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(70, 1, 'distinctio', 'Aut laudantium et deserunt soluta aut iste molestiae.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(71, 1, 'non', 'Aperiam maiores qui praesentium laudantium numquam officiis.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(72, 1, 'amet', 'Omnis et voluptas deleniti.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(73, 1, 'eum', 'Ea qui rerum qui voluptatibus.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(74, 1, 'ipsa', 'Cumque voluptate eos voluptatum quia et.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(75, 1, 'maxime', 'Et corporis molestiae dolores consequatur.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(76, 1, 'nulla', 'Consequatur nemo dolor et voluptas dicta tempora dolores.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(77, 1, 'repellendus', 'Expedita et eligendi consequatur in ea repellat.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(78, 1, 'facere', 'Quibusdam iste deserunt ut voluptatem vitae.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(79, 1, 'fugit', 'Quia voluptate rem aut asperiores magnam officiis.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(80, 1, 'rerum', 'Explicabo consequuntur qui fuga libero voluptatem vel fuga.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(81, 1, 'aliquid', 'Enim ipsam et aut eum doloremque eligendi.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(82, 1, 'itaque', 'Illum quasi atque possimus repudiandae.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(83, 1, 'porro', 'Ea velit soluta deserunt vitae numquam voluptas.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(84, 1, 'placeat', 'Veniam doloremque iure earum rerum cumque.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(85, 1, 'aspernatur', 'Voluptatem voluptates ut soluta enim eius ea consequatur.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(86, 1, 'omnis', 'Ut sit molestiae dolores et blanditiis.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(87, 1, 'tenetur', 'Ipsa in minus dolor corrupti assumenda doloremque sint.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(88, 1, 'eius', 'Recusandae et quis nihil incidunt quod quo.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(89, 1, 'provident', 'Reiciendis voluptates repudiandae veniam consectetur provident tempora qui ut.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(90, 1, 'rem', 'Iure ullam aperiam et aut placeat voluptatum.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(91, 1, 'dolorem', 'Corrupti et eos rem omnis.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(92, 1, 'hic', 'Repudiandae quasi nemo quae non cumque.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(93, 1, 'quae', 'Dolores est maiores quo blanditiis qui quia.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(94, 1, 'ipsum', 'Accusantium quia aperiam officia.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(95, 1, 'quibusdam', 'Repellat tempore odit pariatur ut dolore consequatur nobis.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(96, 1, 'eveniet', 'Ea laboriosam quisquam beatae pariatur.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(97, 1, 'ullam', 'Quo voluptatem architecto non qui suscipit cupiditate voluptatum.', '2018-09-12 00:24:04', '2018-09-12 00:24:04'),
(98, 1, 'ea', 'Ex enim quis repellendus aliquam libero nostrum qui.', '2018-09-12 00:24:05', '2018-09-12 00:24:05'),
(99, 1, 'consectetur', 'Ut debitis nihil ab optio eveniet.', '2018-09-12 00:24:05', '2018-09-12 00:24:05'),
(100, 1, 'explicabo', 'Et vel ea consequuntur nam impedit.', '2018-09-12 00:24:05', '2018-09-12 00:24:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Henrique Camargo', 'h.camargo91@gmail.com', '$2y$10$KLxNXG1cuoZJbMG/4yxK8OwULksPC2yNup.xC2imOk/Pb6r1SneqG', 'gsumPfYbd0cX9J66y5ac5CC6FujfjDnYsrJexJFsNcIsrOxPC3FlteRsd8wo', '2018-09-12 00:24:01', '2018-09-12 00:24:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
