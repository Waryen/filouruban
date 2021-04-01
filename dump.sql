-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2021 at 04:34 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `filouruban`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `su` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `email`, `password`, `su`, `created_at`, `updated_at`, `api_token`, `remember_token`) VALUES
(1, 'Jean', 'Admin', 'admin@filouruban.be', '$2y$10$cbP4Xf/dVGE8UEF3OfunIeffcR804amAzbw0OWJDL2ENXNtd5u2oe', 1, '2021-03-31 14:49:06', '2021-03-31 14:49:06', 'UJKhBNU2kN5qsdopJKVcm4ZFCurkRRWX7uPFlgehdGd0H8alzdoy6yVf2DUh9sPiYrHztFSUx6oijfWhXw0G4nk40RtKUBrDPOmk', NULL),
(6, 'Jonathan', 'Gomand', 'jonathan@mail.com', '$2y$10$B/67T7ASVbzMykFoTIHs1ujZF9CqHbOA3AW557TA9z3obKfAY3wpm', 1, '2021-04-01 14:32:48', '2021-04-01 14:32:48', '2HKNSNGd7xcx9iGeiivzZy9ijS4APjdkLWGBKvJgixIoZc6aXDt1t2r5NHzU3X3yEHdnW8Flk78hDC3oOkIGfGMoYnK1snYIrCRn', NULL),
(7, 'Sophie', 'Gomand', 'sophie@mail.com', '$2y$10$ieuEjpWeA1FsSVq3am8ZUeDBJHdr7xZWQ80xoOTrqppyETcMngE6y', 1, '2021-04-01 14:33:07', '2021-04-01 14:33:07', 'SsntZrIvgf2pBKrBwCbtMfzLY1cFTC1QEpylaNBKQbDL80gYmkKWDqsNFqE0ZA77PVYG6FeTD2C6LqzASZ6V6cjAn00S3FZMZbrJ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `created_at`, `updated_at`, `categories_id`, `admins_id`) VALUES
(1, 'quia', 'Fugiat qui corrupti eligendi consequatur iste. Nemo beatae reiciendis iusto tenetur. Deserunt voluptatibus vel consequatur sunt porro perspiciatis.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 5, 1),
(2, 'id', 'Modi quis occaecati eos animi tempore illum. Mollitia impedit ut et. Aut placeat autem quo.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 4, 1),
(3, 'repudiandae', 'Nostrum ut nesciunt recusandae enim beatae blanditiis temporibus. Perspiciatis nostrum repellat beatae voluptatem mollitia. Sed omnis nihil eveniet perferendis iste voluptatibus.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 3, 1),
(4, 'laborum', 'Iusto doloribus molestias pariatur ratione debitis. Et quia impedit nesciunt possimus et consequatur odit. Et itaque cumque enim ut vel.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 7, 1),
(5, 'iure', 'Harum qui non quasi. Dolor veritatis quis rerum incidunt. Facilis et nostrum quo corrupti.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 6, 1),
(6, 'et', 'Laborum provident eius sequi at quos et aliquam. Harum doloremque quia optio ut dolor beatae. Earum quod amet et in laudantium mollitia fuga.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 6, 1),
(7, 'nisi', 'Maxime ut aut totam iste inventore. Recusandae doloribus nesciunt velit nisi quia et quo qui. Odit dolore voluptatem nobis cum culpa reiciendis.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 9, 1),
(8, 'laborum', 'Excepturi necessitatibus quia in sint id ab dolor. Veniam velit delectus in consequatur excepturi maiores sed dignissimos. Consequatur eos consequuntur corrupti perspiciatis ab.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 8, 1),
(9, 'laborum', 'Nesciunt et autem ex. Excepturi eum quo harum. Necessitatibus voluptas architecto blanditiis qui soluta.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 2, 1),
(10, 'nobis', 'Reprehenderit quisquam aliquid adipisci rem. Esse doloribus nihil accusantium autem quae exercitationem. A officiis aliquid ut optio qui quo aut.', '2021-03-31 12:53:11', '2021-03-31 12:53:11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'neque', 'Quod harum qui perferendis debitis.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(2, 'repellendus', 'A excepturi nulla.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(3, 'aliquam', 'Repellendus vel magnam est nihil.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(4, 'facilis', 'Culpa quas consequatur.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(5, 'doloremque', 'Quo sit quam non.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(6, 'in', 'Quia ex est.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(7, 'assumenda', 'Aut iure.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(8, 'asperiores', 'Omnis consequuntur dolorum asperiores.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(9, 'et', 'Et delectus.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(10, 'eos', 'Reprehenderit sed.', '2021-03-31 12:53:11', '2021-03-31 12:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `commentaries`
--

CREATE TABLE `commentaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `articles_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentaries`
--

INSERT INTO `commentaries` (`id`, `firstname`, `lastname`, `content`, `date`, `articles_id`, `created_at`, `updated_at`) VALUES
(1, 'Damien', 'Sanford', 'Error aperiam neque hic ut ut tempora aliquid. Possimus facere perferendis ad et ut. Id aspernatur nihil mollitia fugit beatae quo.', '1972-12-18', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(2, 'Roscoe', 'Leffler', 'Rerum et quam voluptatibus commodi esse. Ea explicabo vitae ad. Voluptatum perferendis est quaerat perferendis reiciendis.', '1979-07-28', 8, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(3, 'Raul', 'Wyman', 'Ea vero consequatur ea at et. Rerum cum nulla iusto nihil. Itaque deserunt quo illum laudantium doloribus iste eius.', '1981-05-03', 10, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(4, 'Faye', 'Pfannerstill', 'Impedit praesentium consectetur voluptatem eius magni velit. Maxime aliquid ab consectetur eos eaque enim. Repellat perferendis ratione molestiae distinctio odit asperiores.', '2013-10-29', 5, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(5, 'Michele', 'Green', 'Quia commodi et ut quia quis quis exercitationem. Est sit optio ut tempora totam soluta molestiae. Quo fugiat in voluptatibus sit.', '2012-02-28', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(6, 'Erich', 'Ullrich', 'Velit dolorum deserunt fuga nobis illum. Doloremque mollitia ipsam assumenda. Dolor totam ratione adipisci accusantium voluptates suscipit non omnis.', '2014-11-23', 7, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(7, 'Lyric', 'Torphy', 'Inventore quia adipisci est nihil omnis. Voluptatem illum saepe quis voluptatem dolores fugit quia. Commodi ex quas laudantium aut dolores aspernatur quod.', '2004-06-03', 10, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(8, 'Mariah', 'Muller', 'Ullam eligendi saepe ullam suscipit qui eum. Neque aut est nulla consequuntur harum. Distinctio repellat et voluptatem omnis hic.', '2019-06-24', 5, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(9, 'Lindsay', 'Kshlerin', 'Ex alias tempore ut consectetur voluptates qui et itaque. Sit dolores laborum quos et amet. Et beatae similique quia dolorum similique esse.', '1984-09-06', 7, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(10, 'Hallie', 'Hills', 'Sunt quod sunt quibusdam placeat. Voluptas facilis nobis facilis deserunt. Repellendus quaerat ratione explicabo neque.', '1977-12-18', 9, '2021-03-31 12:53:11', '2021-03-31 12:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Ethyl', 'O\'Conner', 'fern.upton@example.net', 'Maiores dolor saepe sint ea in. Laboriosam et a beatae consequuntur omnis voluptatem pariatur. Expedita doloribus qui optio dicta perferendis. Harum corrupti reiciendis et quaerat ullam aperiam. Itaque maxime sunt voluptatem occaecati quibusdam. Id repudiandae nostrum minima magnam ullam quod soluta sit.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(2, 'Brady', 'Pollich', 'felicity.oberbrunner@example.com', 'Odio animi beatae eos quae dolor reprehenderit. Aliquam iure vel vitae veniam qui aliquam. Occaecati in repudiandae incidunt delectus. Dolorem facilis aliquam officiis temporibus. Dolor dolor vitae quidem quia provident dolores. Repudiandae quia officia aperiam et. Repellendus ullam sed quod voluptatem.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(3, 'Graham', 'Blanda', 'anderson87@example.com', 'Possimus doloremque ut inventore repellendus. A aut omnis saepe officiis neque. Dolor voluptas et ea. Molestiae possimus sunt ut omnis. Ipsum tenetur qui est et. Sapiente autem deserunt vel voluptatem totam corporis in earum. Ipsam corporis sint earum dignissimos a a suscipit.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(4, 'Napoleon', 'Walter', 'yost.antwan@example.net', 'Labore ut tempore earum non. Voluptatem velit ea ut ut porro provident velit. Non et quo quaerat pariatur assumenda quia. Et fuga qui et minima sed. Maiores accusantium enim accusamus doloribus illo dicta eligendi.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(5, 'Arvilla', 'Frami', 'bashirian.gilbert@example.org', 'Est necessitatibus totam cumque. Amet autem dolorum labore ipsam natus ut expedita. Sed aut eos autem voluptate. Possimus eos voluptas earum reiciendis rem.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(6, 'Brad', 'Gulgowski', 'jacobi.arlo@example.org', 'Ducimus ut corrupti id. Quis nemo itaque rerum placeat. Et et sequi aut quia minima. Voluptatem impedit adipisci sapiente perspiciatis corrupti dignissimos. Repudiandae quidem a illo modi quia.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(7, 'Sheila', 'Eichmann', 'chyna.olson@example.com', 'Possimus excepturi animi laudantium sint nulla. Ducimus hic ipsum cupiditate dicta ut molestiae sit. Fugit quis veritatis dolor voluptatem qui. Animi modi asperiores est sint vel.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(8, 'Barney', 'Jacobi', 'pauline92@example.org', 'Fugit magni omnis voluptas commodi laborum perspiciatis. Qui ipsam sint in cum soluta sunt et. Aut veritatis et eum delectus dolor facilis. Voluptatum quia est cumque aspernatur quisquam. Et molestiae alias error minima et ut. Perspiciatis totam necessitatibus illum sit.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(9, 'Osborne', 'Heaney', 'block.caleigh@example.com', 'Aut ea reiciendis itaque consequuntur accusantium. Quae non consequatur pariatur optio et. Delectus culpa cum sed rerum quia quia non. Reprehenderit mollitia necessitatibus velit iste sint asperiores voluptas tempore. Velit excepturi et reprehenderit est et. Maiores eveniet minima rem nostrum dicta ullam repellat labore.', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(10, 'Jefferey', 'Rogahn', 'amely.gleason@example.com', 'Molestiae possimus accusantium quas quisquam accusamus ut. Sequi eaque id quod aut. Voluptas necessitatibus ut est consequuntur est. Accusamus consectetur ut consequuntur debitis.', '2021-03-31 12:53:11', '2021-03-31 12:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `content`, `start_date`, `end_date`, `admins_id`, `created_at`, `updated_at`) VALUES
(1, 'itaque', 'Consequatur nostrum omnis aut non quo. Quam laborum qui sit. Quasi dolorem numquam aliquam assumenda dolorem.', '2000-10-19', '2011-07-17', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(2, 'sit', 'Eum a optio voluptatem placeat. Autem iusto dolorum omnis sunt deserunt nemo cumque fuga. Voluptatum libero et magni mollitia.', '2004-10-21', '2013-04-11', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(3, 'mollitia', 'Dignissimos rerum quibusdam eos nisi. Et debitis similique nesciunt eius fugiat. Sapiente amet velit laudantium et iste.', '2008-02-29', '2019-10-19', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(4, 'et', 'Nisi totam consequatur occaecati dignissimos ut. Qui expedita non sed delectus molestias dicta. Eaque provident possimus nobis quisquam temporibus dolorum.', '2002-09-27', '2018-05-18', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(5, 'occaecati', 'Omnis repudiandae et possimus harum. Laudantium laborum distinctio deleniti cupiditate ad. Sit minima ullam et voluptate unde veritatis est.', '2000-08-19', '2018-11-15', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(6, 'voluptatum', 'Est modi beatae nisi facere voluptate cum sint. Error reprehenderit voluptatibus fuga deserunt eos iste. Sed deserunt ipsam eaque autem distinctio.', '2008-09-23', '2017-11-16', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(7, 'repellendus', 'Dolores fugiat qui explicabo quia occaecati reiciendis architecto. Sunt quos dolorem illum optio consequuntur. Beatae eius libero aperiam temporibus.', '2000-03-17', '2017-04-09', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(8, 'quam', 'Labore a consequatur porro eveniet. Autem natus ut dolorum facere possimus delectus id. Natus quos quibusdam dignissimos.', '2003-02-07', '2012-05-25', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(9, 'voluptatem', 'Dolor consequatur est labore laudantium voluptates aliquam. Cum illum ad eaque est consequatur quos sint. Aut enim libero vero rerum aut soluta.', '2002-11-15', '2016-07-08', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(10, 'laudantium', 'Fugit mollitia veritatis doloribus libero vero quidem id harum. Odio fuga expedita nobis reiciendis dignissimos quia explicabo. Minima facilis provident odio iure.', '2003-06-22', '2012-04-14', 1, '2021-03-31 12:53:11', '2021-03-31 12:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(135, '2014_10_12_000000_create_users_table', 1),
(136, '2014_10_12_100000_create_password_resets_table', 1),
(137, '2019_08_19_000000_create_failed_jobs_table', 1),
(138, '2021_03_27_195859_create_admins_table', 1),
(139, '2021_03_27_200617_create_categories_table', 1),
(140, '2021_03_27_200745_create_articles_table', 1),
(141, '2021_03_27_201906_create_messages_table', 1),
(142, '2021_03_27_202342_create_contact_table', 1),
(143, '2021_03_27_202531_create_subscribers_table', 1),
(144, '2021_03_27_202641_create_commentaries_table', 1),
(145, '2021_03_29_133208_update_admins_table_api_token', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'eboehm@example.net', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(2, 'wisozk.cyrus@example.net', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(3, 'danny.dicki@example.org', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(4, 'baumbach.thad@example.org', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(5, 'oleffler@example.com', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(6, 'lcronin@example.net', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(7, 'declan53@example.net', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(8, 'blake65@example.com', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(9, 'dherzog@example.org', '2021-03-31 12:53:11', '2021-03-31 12:53:11'),
(10, 'buster25@example.org', '2021-03-31 12:53:11', '2021-03-31 12:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categories_id_foreign` (`categories_id`),
  ADD KEY `articles_admins_id_foreign` (`admins_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentaries`
--
ALTER TABLE `commentaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaries_articles_id_foreign` (`articles_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_admins_id_foreign` (`admins_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `commentaries`
--
ALTER TABLE `commentaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commentaries`
--
ALTER TABLE `commentaries`
  ADD CONSTRAINT `commentaries_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
