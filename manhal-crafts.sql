-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2024 at 01:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manhal-crafts`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_content`, `img_url`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Welcome in Bangladesh', 'Natural diversified & eco-friendly products -\nA Timeless Piece Sustainably Crafted in Bangladesh.\nBangladesh, a land known for its rich crafts heritage,\nis embracing a wave of sustainable innovation. Jute, the \"Golden\nFiber,\" takes center stage in this eco-conscious transformation.\nArtisans and designers are skillfully diversifying\njute\'s applications,creating an exquisite range\nof natural and eco-friendly products that are\nboth beautiful and responsible. ', 'https://i.postimg.cc/MTBqnLvS/eco-friendly.png', NULL, '2024-05-16 07:20:33', '2024-05-16 08:26:28'),
(2, 'What we offer', 'We are passionate about offering a diverse\nselection of eco-friendly, natural products crafted\nby skilled artisans in Bangladesh. Eco-Conscious Products\nfrom the Heart of Bangladesh. The skilled hands of our\nartisans bring these eco-conscious creations to life.\nTheir traditional techniques, passed down through\ngenerations, ensure that each piece is unique\nand infused with cultural heritage. ', NULL, 'https://video.wixstatic.com/video/776f82_4242e9e1e56145cabcf464d79242d2d0/720p/mp4/file.mp4', '2024-05-16 07:20:33', '2024-05-16 08:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commitment`
--

CREATE TABLE `commitment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commitment`
--

INSERT INTO `commitment` (`id`, `title`, `description`, `image_url`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Our Business Transparency', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\nVero modi quos fugit et aliquid corporis dolores velit eveniet\r\ndignissimos maiores omnis debitis architecto molestias\r\neligendi maxime ullam, obcaecati, ducimus harum.', NULL, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', '2024-05-16 08:57:20', '2024-05-16 08:57:20'),
(2, 'Quality Control', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\nVero modi quos fugit et aliquid corporis dolores velit eveniet\r\ndignissimos maiores omnis debitis architecto molestias\r\neligendi maxime ullam, obcaecati, ducimus harum. ', 'https://media.sproutsocial.com/uploads/2018/09/Transparency.svg', NULL, '2024-05-16 08:57:20', '2024-05-16 08:57:20'),
(3, 'Shipment On Time', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\nVero modi quos fugit et aliquid corporis dolores velit eveniet\r\ndignissimos maiores omnis debitis architecto molestias\r\neligendi maxime ullam, obcaecati, ducimus harum.', 'https://www.goldenhaven.com.ph/wp-content/uploads/2022/02/Different-Steps-of-Product-Quality-Management.jpg', NULL, '2024-05-16 08:57:20', '2024-05-16 08:57:20'),
(4, 'Quality Control', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\nVero modi quos fugit et aliquid corporis dolores velit eveniet\r\ndignissimos maiores omnis debitis architecto molestias\r\neligendi maxime ullam, obcaecati, ducimus harum. ', 'https://bsscommerce.com/blog/wp-content/uploads/2018/10/The-significance-of-on-time-delivery-in-ecommerce-00002.png', NULL, '2024-05-16 08:57:20', '2024-05-16 08:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `description`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Manhal Crafts', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quos placeat quas ratione non sit sint dolorem. Optio amet autem laborum, accusamus dolor ullam tempore vero delectus vel minus quibusdam!', '+88 01993335988', 'info@quicktech-ltd.com', 'Shah Ali Plaza (Level 9), Lift-8, Plot 913, Mirpur-10, Dhaka-1216, Bangladesh', '2024-05-16 11:33:48', '2024-05-16 11:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `background_url`, `title`, `created_at`, `updated_at`) VALUES
(1, 'https://i.postimg.cc/qRFWpTpX/background.webp', 'Explore Natural Green Choices for Your\nLifestyle: Discover a Range of Sustainable and\nNatural Living Products Here', '2024-05-16 04:13:51', '2024-05-16 08:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384054477315.png', '2024-05-15 18:59:49', '2024-05-16 09:31:54'),
(2, 'https://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384100997686.png', '2024-05-15 18:59:49', '2024-05-16 09:32:41'),
(3, 'https://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384110239983.pnghttps://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384110239983.png', '2024-05-15 18:59:49', '2024-05-16 09:27:01'),
(4, 'https://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384100997686.png', '2024-05-15 18:59:49', '2024-05-16 09:33:40'),
(5, 'http://www.osinski.org/qui-consequatur-et-quia-voluptatem-et-itaque-eoshttps://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384100997686.pnghttps://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384100997686.png', '2024-05-15 18:59:49', '2024-05-16 09:27:26'),
(6, 'https://samargroup.cutiaidcorporation.com/frontend/images/brand/1795384110239983.png', '2024-05-15 18:59:49', '2024-05-16 09:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_16_210725_create_navigation_table', 1),
(5, '2024_05_16_210754_create_membership_table', 1),
(6, '2024_05_16_210815_create_about_table', 1),
(7, '2024_05_16_210922_create_header_table', 1),
(8, '2024_05_16_210946_create_social_media_table', 1),
(9, '2024_05_16_211002_create_work_table', 1),
(10, '2024_05_16_211019_create_commitment_table', 1),
(11, '2024_05_16_211039_create_contact_table', 1),
(12, '2024_05_16_211108_create_subscription_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Home', '#home', '2024-05-15 18:59:48', '2024-05-16 03:01:41'),
(2, 'About', '#about', '2024-05-15 18:59:48', '2024-05-16 03:01:52'),
(3, 'Event Promos', '#event_promos', '2024-05-15 18:59:48', '2024-05-16 03:02:03'),
(4, 'Our Products', '#our_products', '2024-05-15 18:59:48', '2024-05-16 03:02:13'),
(5, 'Blog', '#blog', '2024-05-15 18:59:48', '2024-05-16 03:02:20'),
(6, 'Contact Us', '#contact_us', '2024-05-16 02:05:59', '2024-05-16 03:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MuHLOXwvy2TtZLH2OVCyU6luwh5UFdU2hF0BhjIr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienpSb1lqSmlLUGlMUm1RcW45TXREczlJcG5DYmhvNXNER0U0MWtNayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3JtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715902574);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `tag`, `platform`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'Twitter', 'https://codepen.io/collection/XdWJOQ/', 'fa-brands fa-square-x-twitter', '2024-05-16 04:29:25', '2024-05-16 04:29:25'),
(2, 'facebook', 'Facebook', 'https://codepen.io/collection/XdWJOQ/', 'fa-brands fa-square-facebook', '2024-05-16 04:29:32', '2024-05-16 04:30:33'),
(3, 'google-plus', 'Google plus', 'https://codepen.io/collection/XdWJOQ/', 'fa-brands fa-square-google-plus', '2024-05-16 04:29:25', '2024-05-16 04:29:25'),
(4, 'instagram', 'Instagram', 'https://codepen.io/collection/XdWJOQ/', 'fa-brands fa-square-instagram', '2024-05-16 04:29:32', '2024-05-16 04:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mainuromayer@gmail.com', '2024-05-16 05:57:02', '2024-05-16 05:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `modal_title` varchar(255) NOT NULL,
  `modal_url` varchar(255) DEFAULT NULL,
  `modal_content` varchar(255) NOT NULL,
  `facebook_icon` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_icon` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `instagram_icon` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `video_url`, `image_url`, `short_desc`, `modal_title`, `modal_url`, `modal_content`, `facebook_icon`, `facebook_url`, `twitter_icon`, `twitter_url`, `instagram_icon`, `instagram_url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://pbs.twimg.com/profile_images/1192247771882897408/9bVCRo0B_400x400.jpg', 'dicta eum incidunt voluptas perferendis ullam molestias maiores. Distinctio!', 'Manhal Carfts', 'https://pbs.twimg.com/profile_images/1192247771882897408/9bVCRo0B_400x400.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae ullam quae cum? Impedit totam sint necessitatibus modi sit odit autem praesentium iure repellendus eaque perspiciatis, debitis natus at dignissimos error.', 'fab fa-facebook', '#', 'fab fa-twitter', '#', 'fab fa-instagram-square', '#', '2024-05-16 07:10:29', '2024-05-16 07:10:29'),
(2, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea ratione consequuntur nisi, pro', 'Manhal Carfts', 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae ullam quae cum? Impedit totam sint necessitatibus modi sit odit autem praesentium iure repellendus eaque perspiciatis, debitis natus at dignissimos error.', 'fab fa-facebook', '#', 'fab fa-twitter', '#', 'fab fa-instagram-square', '#', '2024-05-16 07:10:29', '2024-05-16 07:10:29'),
(3, NULL, 'https://pbs.twimg.com/profile_images/1192247771882897408/9bVCRo0B_400x400.jpg', 'dicta eum incidunt voluptas perferendis ullam molestias maiores. Distinctio!', 'Manhal Carfts', 'https://pbs.twimg.com/profile_images/1192247771882897408/9bVCRo0B_400x400.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae ullam quae cum? Impedit totam sint necessitatibus modi sit odit autem praesentium iure repellendus eaque perspiciatis, debitis natus at dignissimos error.', 'fab fa-facebook', '#', 'fab fa-twitter', '#', 'fab fa-instagram-square', '#', '2024-05-16 07:10:29', '2024-05-16 07:10:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `commitment`
--
ALTER TABLE `commitment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commitment`
--
ALTER TABLE `commitment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
