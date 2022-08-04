-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_02_043530_create_products_table', 1),
(6, '2022_08_02_043712_create_carts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image_name`, `price`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 'Quos ut iste et aut.', 'quos-ut-iste-et-aut', 'Rerum soluta pariatur amet et quos eos. Et non quam qui itaque molestias odit deleniti.', 'https://via.placeholder.com/140x300.png/006644?text=et', '693', '650', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(2, 'Aut qui ut eum iusto.', 'aut-qui-ut-eum-iusto', 'Vel eius dolor facilis ut. Sed eveniet officiis qui corrupti.', 'https://via.placeholder.com/140x300.png/0033dd?text=ipsa', '237', '217', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(3, 'Aut ipsa est omnis quos.', 'aut-ipsa-est-omnis-quos', 'Ullam nemo sint ab magni. Unde libero doloribus eveniet eos. Architecto qui rem magni facilis.', 'https://via.placeholder.com/140x300.png/00cc33?text=sed', '513', '484', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(4, 'Sapiente aut sunt velit.', 'sapiente-aut-sunt-velit', 'Tempora aut aliquam necessitatibus. Vel debitis placeat et.', 'https://via.placeholder.com/140x300.png/00ee88?text=non', '201', '184', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(5, 'A quia voluptatem est.', 'a-quia-voluptatem-est', 'Eos sint sit nam at sit. Quia fuga et iure. Reiciendis et optio voluptates eos eligendi quia.', 'https://via.placeholder.com/140x300.png/004444?text=omnis', '632', '599', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(6, 'Dolores ut nihil quae.', 'dolores-ut-nihil-quae', 'Quam corporis ab id vel. Inventore libero qui et ipsum pariatur libero nihil.', 'https://via.placeholder.com/140x300.png/00bb66?text=dolore', '591', '548', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(7, 'Iste ad magnam odio.', 'iste-ad-magnam-odio', 'Ipsa cupiditate aut modi possimus. Omnis aspernatur sunt explicabo corporis aut.', 'https://via.placeholder.com/140x300.png/00bbbb?text=ut', '140', '112', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(8, 'Eos sed harum sint.', 'eos-sed-harum-sint', 'Omnis non ratione exercitationem dolorum quis sed animi. Perferendis voluptatibus quos sunt ut.', 'https://via.placeholder.com/140x300.png/0000aa?text=accusantium', '861', '830', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(9, 'Eum vitae eos dolore.', 'eum-vitae-eos-dolore', 'Aut sint dicta quo aliquam quasi. Sequi nihil iusto sunt. Molestiae labore quas exercitationem.', 'https://via.placeholder.com/140x300.png/001144?text=deserunt', '727', '677', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(10, 'Eius qui magnam ullam.', 'eius-qui-magnam-ullam', 'Enim dolores qui expedita. Facere dolorem iusto ut. Velit beatae dolorem debitis laborum.', 'https://via.placeholder.com/140x300.png/004488?text=expedita', '136', '109', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(11, 'Modi et quo temporibus.', 'modi-et-quo-temporibus', 'Dicta cum officia ut eaque maxime. Provident ut amet at impedit quia reprehenderit perspiciatis.', 'https://via.placeholder.com/140x300.png/004433?text=minus', '578', '558', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(12, 'Corrupti porro quis sit.', 'corrupti-porro-quis-sit', 'Facilis sunt ipsa aut. Et eius illo ratione dolor repellendus ut.', 'https://via.placeholder.com/140x300.png/00dd99?text=suscipit', '165', '121', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(13, 'Enim magni et a.', 'enim-magni-et-a', 'Nemo sit quis quod laborum voluptas doloremque. Earum cupiditate delectus sint qui.', 'https://via.placeholder.com/140x300.png/00bb55?text=non', '140', '109', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(14, 'Illo provident sequi et.', 'illo-provident-sequi-et', 'Voluptatem et omnis quibusdam est. Illum alias ipsam autem laudantium.', 'https://via.placeholder.com/140x300.png/0000aa?text=itaque', '283', '241', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(15, 'Nisi vero id non enim.', 'nisi-vero-id-non-enim', 'Non reprehenderit et facere a. Quod numquam minus doloribus quisquam.', 'https://via.placeholder.com/140x300.png/00ff00?text=magnam', '596', '572', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(16, 'Officiis ut et et.', 'officiis-ut-et-et', 'Et facilis alias non dolore. Est dolores quo aut aspernatur. Est temporibus architecto aut nobis.', 'https://via.placeholder.com/140x300.png/00aabb?text=dolorem', '186', '158', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(17, 'Et in earum voluptatem.', 'et-in-earum-voluptatem', 'Omnis in et et. Distinctio esse deserunt cumque porro et aut quia.', 'https://via.placeholder.com/140x300.png/005500?text=repudiandae', '433', '418', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(18, 'Id vel est totam et est.', 'id-vel-est-totam-et-est', 'Ab facilis nisi consequatur id voluptatem praesentium quod. Maxime quas temporibus dolores sint.', 'https://via.placeholder.com/140x300.png/00dd44?text=dolorem', '528', '493', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(19, 'Eaque modi aliquid quae.', 'eaque-modi-aliquid-quae', 'Dolores sunt officia et natus sint eaque itaque. Ut et atque reiciendis ipsa. Ex at qui debitis.', 'https://via.placeholder.com/140x300.png/003355?text=sunt', '275', '244', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(20, 'Ipsum ducimus ut non.', 'ipsum-ducimus-ut-non', 'Tempora quisquam eum animi et. Aut et laudantium nulla ut voluptas dolores sit.', 'https://via.placeholder.com/140x300.png/00eeff?text=voluptatem', '773', '747', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(21, 'Fugiat ut dolores ut.', 'fugiat-ut-dolores-ut', 'Ex accusamus nemo aliquam ipsam. Qui in amet nam eaque ea. Eius culpa accusamus voluptas.', 'https://via.placeholder.com/140x300.png/0033bb?text=nisi', '543', '494', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(22, 'Eaque quos non aut.', 'eaque-quos-non-aut', 'Dicta ratione enim repellendus perferendis. Laborum quis repellat ut repudiandae.', 'https://via.placeholder.com/140x300.png/001177?text=nostrum', '289', '263', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(23, 'Nam eaque id dicta et.', 'nam-eaque-id-dicta-et', 'Natus et dolorum enim. Et laboriosam earum sunt quis. Maiores eum quidem fugit facere hic.', 'https://via.placeholder.com/140x300.png/00ccdd?text=ipsum', '446', '431', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(24, 'Vero iure error quos.', 'vero-iure-error-quos', 'Qui harum reprehenderit provident. Est explicabo sit architecto reiciendis est quia dolore.', 'https://via.placeholder.com/140x300.png/005566?text=et', '821', '796', '2022-08-01 23:30:58', '2022-08-01 23:30:58'),
(25, 'Et odit quia numquam.', 'et-odit-quia-numquam', 'Impedit est est mollitia illo. Harum rerum est delectus nulla voluptas suscipit.', 'https://via.placeholder.com/140x300.png/0088dd?text=voluptatem', '424', '388', '2022-08-01 23:30:58', '2022-08-01 23:30:58');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
