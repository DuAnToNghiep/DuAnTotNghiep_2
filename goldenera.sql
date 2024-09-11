-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2024 at 03:47 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `totnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top-banner',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `header_title`, `title`, `sub_title`, `description`, `image`, `link`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(3, 'Elit ipsa omnis es', 'Sit in dignissimos', 'Dignissimos et fugia', '<p>Dignissimos et fugia</p>', '180629cf1f07940fffde0fab789ad853.png', NULL, 1, 'header', '2024-06-14 04:33:50', '2024-06-14 04:33:50'),
(5, 'Ưu đãi sắp tới', 'Ưu đãi lớn từ', 'Nhà sản xuất', '<p>Quần &aacute;o, Gi&agrave;y d&eacute;p, T&uacute;i x&aacute;ch, V&iacute;...</p>', 'eba28f17fae1be73cfc6cf2189098d25.png', NULL, 1, 'header', '2024-06-13 23:37:28', '2024-06-13 23:37:28'),
(6, 'Khuyến mãi công nghệ', 'Ưu đãi lớn từ', 'Thật tuyệt vời', '<p>Giảm gi&aacute; l&ecirc;n đến 70%</p>', '70de9582894cf4355ca47ca336ab3816.png', NULL, 1, 'header', '2024-06-14 00:24:04', '2024-06-14 00:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Elisa Durgan MD', 'Fugit necessitatibus deserunt ab soluta deleniti laborum doloremque ipsam. Deleniti ab aspernatur vel eligendi asperiores quis repudiandae odio. Voluptas eveniet et quas ut deserunt aliquid vero.', 'prof-elisa-durgan-md', 1, '2024-06-21 07:31:26', '2024-06-21 07:31:26'),
(2, 'Janice Denesik', 'Sit debitis minima ut fugiat ipsam odit assumenda. Fugit adipisci magnam officiis assumenda perspiciatis.', 'janice-denesik', 1, '2024-06-21 07:31:26', '2024-06-21 07:31:26'),
(3, 'Frederic Medhurst', 'Rerum qui illum rerum. Et id ab et quia sit. Hic aut atque qui rerum commodi voluptas dignissimos deleniti.', 'frederic-medhurst', 1, '2024-06-21 07:31:26', '2024-06-21 07:31:26'),
(4, 'Dr. Rozella Schowalter', 'Nihil vel quam et maxime aut aut delectus. Aut labore dolor nesciunt at delectus aut ex.', 'dr-rozella-schowalter', 1, '2024-06-21 07:31:26', '2024-06-21 07:31:26'),
(5, 'Dulce Thompson', '<p>Ratione harum ducimus rerum quia. Itaque laborum aperiam excepturi similique. Ullam et ipsam et commodi est rerum. A nobis voluptas rerum inventore est et.</p>', 'dulce-thompson-669fdfbd739d0', 0, '2024-06-21 07:31:26', '2024-06-21 09:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Acton Turner', 'jawex@mailinator.com', '+1 (563) 618-1913', 'Sed consequat Cum a', 'Mollitia commodi eli', '2024-07-15 21:33:42', '2024-07-15 21:33:42'),
(2, 'Elizabeth Rivas', 'elizabeth@bwebpros.com', '31-63-42-39', 'Enhancing Your Site With AI Chatbots', 'Are you familiar with the growing trend of AI-powered chatbots for websites? These intelligent helpers provide 24/7, personalized customer service, answer common questions instantly, and streamline user journeys. But are they right for you?\r\n\r\nConsider these benefits:\r\n\r\n* 24/7 Availability: Never miss a lead or inquiry, even after hours. Offer instant support, reducing customer frustration and wait times.\r\n* Personalized Assistance: Guide users to relevant information and product recommendations, fostering a positive experience and boosting engagement.\r\n* Valuable Insights: Collect data on customer behavior and preferences, allowing you to continuously optimize your website and offerings.\r\n\r\nBusiness Web Pro ( https://businesswebpros.com/service/ai-chatbot-integration/ )  specializes in crafting custom AI chatbot solutions tailored to your unique business needs and goals. We\'d love to learn more about your current challenges and explore how our chatbots can revolutionize your website experience.\r\n\r\nReady to see if AI chatbots are the missing piece in your puzzle?\r\n\r\n➡️ Schedule a free consultation at https://businesswebpros.com/service/ai-chatbot-integration/ to discuss your specific needs.', '2024-07-10 01:35:18', '2024-07-10 01:35:18'),
(3, 'ngklam', 'ngklam2002@gmail.com', '0972571117', 'tôi bị đang nhập bẳng hai nick', 'dfsfsdfsdfds', '2024-07-23 09:29:26', '2024-07-23 09:29:26'),
(4, 'ngklam', 'ngklam2002@gmail.com', '0972571117', 'tôi bị đang nhập bẳng hai nick', 'dfsfsdfsdfds', '2024-07-23 09:29:28', '2024-07-23 09:29:28'),
(5, 'ngklam', 'ngklam2002@gmail.com', '0972571117', 'tôi bị đang nhập bẳng hai nick', 'dfsfsdfsdfds', '2024-07-23 09:29:30', '2024-07-23 09:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2023_12_28_040710_create_message_table', 2),
(43, '2014_10_12_000000_create_users_table', 3),
(44, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(45, '2019_08_19_000000_create_failed_jobs_table', 3),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(47, '2023_11_29_122118_create_permission_tables', 3),
(48, '2023_11_29_122230_create_product_categories_table', 3),
(49, '2023_11_29_122233_create_brands_table', 3),
(50, '2023_11_29_130122_create_products_table', 3),
(51, '2023_11_29_130142_create_banners_table', 3),
(52, '2023_11_29_130247_create_orders_table', 3),
(53, '2023_11_29_130251_create_order_details_table', 3),
(54, '2023_11_29_130303_create_product_options_table', 3),
(55, '2023_11_29_132544_create_post_categories_table', 3),
(56, '2023_11_29_132553_create_posts_table', 3),
(57, '2023_11_29_134541_create_product_option_values_table', 3),
(58, '2023_12_03_075753_create_product_images_table', 3),
(59, '2023_12_14_135147_create_product_comments_table', 3),
(60, '2024_01_04_032206_create_contacts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cancellation_reason` text COLLATE utf8mb4_unicode_ci,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(8,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `total`, `payment_method`, `payment_status`, `order_status`, `cancellation_reason`, `payment_id`, `user_name`, `user_phone`, `address`, `address_2`, `notes`, `created_at`, `updated_at`, `voucher_code`, `discount_amount`) VALUES
(1, NULL, 'Order-65a27d6f3f7f2', 125730, 'VnPay', 'paid', 'completed', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'zzzzz', '2024-06-13 05:09:19', '2024-06-14 04:31:40', NULL, '0.00'),
(2, NULL, 'Order-65a27dee684ec', 1383030, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'zzz', '2024-06-13 05:11:26', '2024-06-14 04:31:55', NULL, '0.00'),
(3, NULL, 'Order-65a280c0c39ea', 502920, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'zzz', '2024-06-13 05:23:28', '2024-06-14 04:31:15', NULL, '0.00'),
(4, NULL, 'Order-65a3db536de46', 436500, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'Vân Đình', 'Hà Nội', 'test', '2024-06-14 06:02:11', '2024-06-14 06:02:11', NULL, '0.00'),
(5, NULL, 'Order-65a3dd86537aa', 106666.56, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, '0972571117', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'Nisi ab do235 Hoang Quoc Vietloribus di', '2024-06-14 06:11:34', '2024-06-14 06:11:34', NULL, '0.00'),
(6, NULL, 'Order-65a3e7242b9d0', 106666.56, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, '0972571117', '111 hqv', '111 hqv', '111 hqv', '2024-06-14 06:52:36', '2024-06-14 06:52:36', NULL, '0.00'),
(7, NULL, 'Order-65a3e73a0f058', 106666.56, 'VnPay', 'paid', 'completed', NULL, NULL, 'Nguyen van a', '0972571117', '111 hqv', '111 hqv', '111 hqv', '2024-06-14 06:52:58', '2024-06-15 21:47:24', NULL, '0.00'),
(8, NULL, 'Order-65a3e822c024f', 106666.56, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '111 hqv', '111hqv', 'no', '2024-06-14 06:56:50', '2024-06-16 06:56:50', NULL, '0.00'),
(9, NULL, 'Order-65a3e857c9b4b', 106666.56, 'VnPay', 'paid', 'completed', NULL, NULL, NULL, NULL, '111 hqv', '', 'no', '2024-01-14 06:57:43', '2024-01-15 21:46:58', NULL, '0.00'),
(10, NULL, 'Order-65a4db0771a49', 436500, 'VnPay', 'paid', 'confirmed', NULL, '14281566', NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '2024-01-15 00:13:11', '2024-01-15 00:13:43', NULL, '0.00'),
(11, NULL, 'Order-65a60cd700d4a', 190932.48, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '2024-01-15 21:57:59', '2024-01-15 21:57:59', NULL, '0.00'),
(12, NULL, 'Order-65a60cfec1e23', 190932.48, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'NO', '2024-01-15 21:58:38', '2024-01-15 21:58:38', NULL, '0.00'),
(13, NULL, 'Order-65a60d30c3d76', 190932.48, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '2024-01-15 21:59:28', '2024-01-15 21:59:28', NULL, '0.00'),
(14, NULL, 'Order-65a60d7165362', 190932.48, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'no', '2024-01-15 22:00:33', '2024-01-15 22:00:33', NULL, '0.00'),
(20, NULL, 'Order-65a61e6bee1e9', 109948.839, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'Non sed sint cumque', 'Ipsa eos eligendi', 'Quaerat natus corpor', '2024-01-15 23:12:59', '2024-01-15 23:12:59', NULL, '0.00'),
(21, NULL, 'Order-65a61ee383cbe', 109948.839, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'Odio similique est e', 'Dicta voluptatem pos', 'Deleniti eiusmod quo', '2024-01-15 23:14:59', '2024-01-15 23:14:59', NULL, '0.00'),
(22, NULL, 'Order-65a61f4013832', 109839, 'VnPay', 'paid', 'confirmed', NULL, '14282792', NULL, NULL, 'Neque quia ut obcaec', 'Voluptas alias corpo', 'Ut corrupti illum', '2024-01-15 23:16:32', '2024-01-15 23:16:55', NULL, '0.00'),
(23, NULL, 'Order-65a620286c6cb', 180576, 'VnPay', 'paid', 'confirmed', NULL, '14282797', NULL, NULL, 'Est numquam accusant', 'Dolor ea culpa nihi', 'Sunt omnis aliqua', '2024-01-15 23:20:24', '2024-01-15 23:20:48', NULL, '0.00'),
(24, NULL, 'Order-65aafcf969238', 305691, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '2024-01-19 15:51:37', '2024-01-19 15:51:37', NULL, '0.00'),
(25, NULL, 'Order-65aafd05104e2', 305691, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', '2024-01-19 15:51:49', '2024-01-19 15:51:49', NULL, '0.00'),
(26, NULL, 'Order-65ab268dd842d', 1300911, 'VnPay', 'paid', 'confirmed', NULL, '14288033', NULL, NULL, '235 Hoang Quoc Viet', '235 Hoang Quoc Viet', 'zzz', '2024-01-19 18:49:01', '2024-01-19 18:49:30', NULL, '0.00'),
(27, NULL, 'Order-65ab47e322c8e', 180576, 'VnPay', 'paid', 'confirmed', NULL, '14288149', NULL, NULL, '235 Hoang Quoc Viet', '235 hoang quoc viet', 'zzzz', '2024-01-19 21:11:15', '2024-01-19 21:12:05', NULL, '0.00'),
(28, 1, 'Order-669294a6be625', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'sdfsdafsdsd', '2024-07-13 07:52:22', '2024-07-13 07:52:22', NULL, '0.00'),
(29, 1, 'Order-669384d7d90ef', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'dsfdsafdafdsa', '2024-07-14 00:57:11', '2024-07-14 00:57:11', NULL, '0.00'),
(30, 1, 'Order-6693878b04ed4', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'sfdsfds', 'ưqeweq', 'sđfadsfsd', '2024-07-14 01:08:43', '2024-07-14 01:08:43', NULL, '0.00'),
(31, 1, 'Order-669388fed61fd', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'dffsdfsd', '2024-07-14 01:14:54', '2024-07-14 01:14:54', NULL, '0.00'),
(32, 1, 'Order-669389c42e4bd', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'dffsdfsd', '2024-07-14 01:18:12', '2024-07-14 01:18:12', NULL, '0.00'),
(33, 1, 'Order-66938a8375df8', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'dffsdfsd', '2024-07-14 01:21:23', '2024-07-14 01:21:23', NULL, '0.00'),
(34, 1, 'Order-66938a969a8a1', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, '4', 'ưqeweq', 'dffsdfsd', '2024-07-14 01:21:42', '2024-07-14 01:21:42', NULL, '0.00'),
(35, 1, 'Order-66938b101e6fc', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'dssdf', 'ưqeweq', 'sdfdsddsf', '2024-07-14 01:23:44', '2024-07-14 01:23:44', NULL, '0.00'),
(36, 1, 'Order-66938bac5cc80', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'asdas', 'asdas', 'assdasds', '2024-07-14 01:26:20', '2024-07-14 01:26:20', NULL, '0.00'),
(37, 1, 'Order-66938be884265', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'asdas', 'asdas', 'assdasds', '2024-07-14 01:27:20', '2024-07-14 01:27:20', NULL, '0.00'),
(38, 1, 'Order-66938e0614eac', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'fddf', 'dffddfdf', 'dffddfdf', '2024-07-14 01:36:22', '2024-07-14 01:36:22', NULL, '0.00'),
(39, 1, 'Order-669d2bcb6e802', 330240, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'ko co chi', '2024-07-21 08:39:55', '2024-07-21 08:39:55', NULL, '0.00'),
(40, 1, 'Order-669d2cb80a6a5', 990720, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-21 08:43:52', '2024-07-21 08:43:52', NULL, '0.00'),
(41, 1, 'Order-669d2fb4e282b', 523800, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'đá', '2024-07-21 08:56:36', '2024-07-21 08:56:36', NULL, '0.00'),
(42, 1, 'Order-669d305e1fae8', 523800, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'ds', '2024-07-21 08:59:26', '2024-07-21 08:59:26', NULL, '0.00'),
(43, 1, 'Order-669e5916b0af1', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'hhhh', '2024-07-22 06:05:26', '2024-07-22 06:05:26', NULL, '0.00'),
(44, 1, 'Order-669e59906312a', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'hhhh', '2024-07-22 06:07:28', '2024-07-22 06:07:28', NULL, '0.00'),
(45, 1, 'Order-669e5b1c40f30', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'gfffg', '2024-07-22 06:14:04', '2024-07-22 06:14:04', NULL, '0.00'),
(46, 1, 'Order-669e5b4ecd070', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'gfffg', '2024-07-22 06:14:54', '2024-07-22 06:14:54', NULL, '0.00'),
(47, 1, 'Order-669e5b5d7c9c8', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'gfffg', '2024-07-22 06:15:09', '2024-07-22 06:15:09', NULL, '0.00'),
(48, 1, 'Order-669e7184a7268', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jjh', '2024-07-22 07:49:40', '2024-07-22 07:49:40', NULL, '0.00'),
(49, 1, 'Order-669e7192ec4c8', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jjh', '2024-07-22 07:49:54', '2024-07-22 07:49:54', NULL, '0.00'),
(50, 1, 'Order-669fce86aed47', 1097520, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'fdfd', '2024-07-23 08:38:46', '2024-07-23 08:38:46', NULL, '0.00'),
(51, 1, 'Order-669fcea1a5d2b', 1097520, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'fdfd', '2024-07-23 08:39:13', '2024-07-23 08:49:23', NULL, '0.00'),
(52, 1, 'Order-669fcebb5f2d2', 1097520, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'fdfd', '2024-07-23 08:39:39', '2024-07-23 08:48:40', NULL, '0.00'),
(53, 1, 'Order-669fd7316a2da', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jhjjgh', '2024-07-23 09:15:45', '2024-07-23 09:15:45', NULL, '0.00'),
(54, 1, 'Order-669fd74e22de9', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jhjjgh', '2024-07-23 09:16:14', '2024-07-23 09:16:14', NULL, '0.00'),
(55, 1, 'Order-669fd7778e105', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jhjjgh', '2024-07-23 09:16:55', '2024-07-23 09:16:55', NULL, '0.00'),
(56, 1, 'Order-669fd7d2c4db6', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'jhjjgh', '2024-07-23 09:18:26', '2024-07-23 09:18:26', NULL, '0.00'),
(57, 1, 'Order-669fdb7b35c05', 523800, 'VnPay', 'pending', 'cancelled', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'sdfsd', '2024-07-23 09:34:03', '2024-07-23 18:42:50', NULL, '0.00'),
(58, 1, 'Order-669fdb8616ae2', 523800, 'VnPay', 'pending', 'confirmed', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'sdfsd', '2024-07-23 09:34:14', '2024-07-23 18:47:04', NULL, '0.00'),
(59, 1, 'Order-66a05e38da806', 221760, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ủng hộ sản phẩm', '2024-07-23 18:51:52', '2024-07-23 18:51:52', NULL, '0.00'),
(60, 1, 'Order-66a05e9b68734', 221760, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ủng hộ sản phẩm', '2024-07-23 18:53:31', '2024-07-23 18:53:31', NULL, '0.00'),
(61, 1, 'Order-66a05edb67d62', 221760, 'VnPay', 'pending', 'cancelled', 'abc', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ủng hộ sản phẩm', '2024-07-23 18:54:35', '2024-08-31 03:24:12', NULL, '0.00'),
(62, NULL, 'Order-66a11f55a4f2f', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'sda', '2024-07-24 08:35:49', '2024-07-24 08:35:49', NULL, '0.00'),
(63, NULL, 'Order-66a11f5aeb6c5', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'sda', '2024-07-24 08:35:54', '2024-07-24 08:35:54', NULL, '0.00'),
(64, NULL, 'Order-66a11fa6d414a', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-24 08:37:10', '2024-07-24 08:37:10', NULL, '0.00'),
(65, NULL, 'Order-66a12037935cd', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-24 08:39:35', '2024-07-24 08:39:35', NULL, '0.00'),
(66, NULL, 'Order-66a12046c5abe', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-24 08:39:50', '2024-07-24 08:39:50', NULL, '0.00'),
(67, NULL, 'Order-66a1208f1a171', 380160, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'HHH', '2024-07-24 08:41:03', '2024-07-24 08:41:03', NULL, '0.00'),
(68, NULL, 'Order-66a120e0afc83', 380160, 'VnPay', 'paid', 'confirmed', NULL, '14530040', NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-24 08:42:24', '2024-07-24 08:42:47', NULL, '0.00'),
(69, 1, 'Order-66a12428a2a57', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-07-24 08:56:24', '2024-07-24 08:56:24', NULL, '0.00'),
(70, NULL, 'Order-66a1a48508353', 729600, 'VnPay', 'paid', 'confirmed', NULL, '14530280', NULL, NULL, 'tiên phong', 'hahah', 'ko', '2024-07-24 18:04:05', '2024-07-24 18:04:37', NULL, '0.00'),
(71, NULL, 'Order-66a1a4ef131b2', 380160, 'Ship cod', 'pending', 'confirmed', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', NULL, '2024-07-24 18:05:51', '2024-07-24 18:06:41', NULL, '0.00'),
(72, 20, 'Order-66b24ed991f6f', 190080, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'ko có gì', '2024-08-06 09:27:05', '2024-08-06 09:27:05', NULL, '0.00'),
(73, 20, 'Order-66b24ef2c4b00', 190080, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'hahah', 'ko có gì', '2024-08-06 09:27:30', '2024-08-06 09:27:30', NULL, '0.00'),
(74, 1, 'Order-66d098f43322d', 2378880, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ấd', '2024-08-29 08:51:16', '2024-08-29 08:51:16', NULL, '0.00'),
(75, 1, 'Order-66d0992542df1', 729600, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 08:52:05', '2024-08-29 08:52:05', NULL, '0.00'),
(76, 1, 'Order-66d0992f50e37', 729600, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 08:52:15', '2024-08-29 08:52:15', NULL, '0.00'),
(82, 1, 'Order-66d0b08406f3d', 1253400, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 10:31:48', '2024-08-29 10:31:48', NULL, '0.00'),
(83, 1, 'Order-66d0b0892f741', 0, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 10:31:53', '2024-08-29 13:14:00', NULL, '0.00'),
(84, 1, 'Order-66d0b08dca752', 0, 'Ship cod', 'pending', 'cancelled', 'ádsd', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 10:31:57', '2024-08-30 09:32:43', NULL, '0.00'),
(91, 1, 'Order-66d0c19314664', 629600, 'VnPay', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 11:44:35', '2024-08-29 13:04:43', 'kyah1', '100000.00'),
(92, 1, 'Order-66d0c1e39ed47', 343520, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ấdas', '2024-08-29 11:45:55', '2024-08-29 13:02:15', 'kyah1', '100000.00'),
(93, 1, 'Order-66d0ca2371620', 2117600, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'adssa', '2024-08-29 12:21:07', '2024-08-29 13:00:49', 'kyah1', '100000.00'),
(94, 1, 'Order-66d0ce155d1be', 2088800, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-29 12:37:57', '2024-08-29 12:39:13', 'kyah1', '100000.00'),
(95, 1, 'Order-66d0d4cf0fb17', 1359200, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'á', '2024-08-29 13:06:39', '2024-08-29 13:07:00', 'kyah1', '100000.00'),
(96, 1, 'Order-66d0d754a5220', 1800800, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-29 13:17:24', '2024-08-29 13:19:35', 'kyah1', '100000.00'),
(97, 1, 'Order-66d178d7d89cd', 1359200, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 00:46:31', '2024-08-30 00:47:13', 'kyah1', '100000.00'),
(98, 1, 'Order-66d179d5d3a36', 787040, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 00:50:45', '2024-08-30 00:51:09', 'kyah1', '100000.00'),
(99, 1, 'Order-66d17d54eedfe', 629600, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 01:05:40', '2024-08-30 01:06:02', 'kyah1', '100000.00'),
(100, 1, 'Order-66d17e0ae9e64', 1359200, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 01:08:42', '2024-08-30 01:12:46', 'kyah1', '100000.00'),
(101, 1, 'Order-66d17f4b2e266', 1459200, 'Ship cod', 'pending', 'cancelled', 'abc', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-30 01:14:03', '2024-08-30 03:02:43', NULL, '0.00'),
(102, 1, 'Order-66d1892a8642b', 729477, 'Ship cod', 'paid', 'cancelled', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ấd', '2024-08-30 01:56:10', '2024-08-30 02:40:54', 'voucher', '123.00'),
(103, 1, 'Order-66d19996ab640', 380160, 'Ship cod', 'pending', 'cancelled', 'chua can toi', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 03:06:14', '2024-08-30 03:06:42', NULL, '0.00'),
(106, 1, 'Order-66d2034ea5029', 246860, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 10:37:18', '2024-08-30 10:37:42', 'kyah1', '100000.00'),
(107, 1, 'Order-66d203ddd596d', 824960, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 10:39:41', '2024-08-30 10:40:03', 'kyah1', '100000.00'),
(108, 1, 'Order-66d204edb72f1', 1359200, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ấd', '2024-08-30 10:44:13', '2024-08-30 10:44:38', 'kyah1', '100000.00'),
(109, 1, 'Order-66d205fa57fc4', 728600, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-30 10:48:42', '2024-08-30 10:49:19', 'bar', '1000.00'),
(110, 1, 'Order-66d2090a94d28', 869466, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 11:01:46', '2024-08-30 11:02:03', 'bar', '1000.00'),
(111, 1, 'Order-66d20a679e4ca', 728600, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 11:07:35', '2024-08-30 11:10:21', 'bar', '1000.00'),
(112, 1, 'Order-66d20b10da324', 881730, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 11:10:24', '2024-08-30 11:25:30', NULL, '0.00'),
(113, 1, 'Order-66d2100815f3c', 728600, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'sa', '2024-08-30 11:31:36', '2024-08-30 11:33:09', 'bar', '1000.00'),
(114, 1, 'Order-66d210a616c93', 470240, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 11:34:14', '2024-08-30 11:42:04', 'kyah1', '100000.00'),
(115, 1, 'Order-66d210ceb41d9', 443397, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-30 11:34:54', '2024-08-30 11:42:16', '48384234', '123.00'),
(116, 1, 'Order-66d2125ab2229', 443397, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-30 11:41:30', '2024-08-30 11:44:54', 'abn', '123.00'),
(117, 1, 'Order-66d2137e05416', 280160, 'Ship cod', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ádasd', '2024-08-30 11:46:22', '2024-08-30 11:46:22', 'kyah1', '100000.00'),
(118, 1, 'Order-66d2143db1f07', 1046600, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-30 11:49:33', '2024-08-30 11:53:04', 'bar', '1000.00'),
(119, 1, 'Order-66d214b81a58d', 595550, 'VnPay', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'sd', '2024-08-30 11:51:36', '2024-08-30 11:52:57', 'bar', '1000.00'),
(120, 1, 'Order-66d214eb243e3', 1046600, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-08-30 11:52:27', '2024-08-31 02:38:01', 'bar', '1000.00'),
(121, 1, 'Order-66d2bf4ceb257', 335233, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ss', '2024-08-30 23:59:24', '2024-08-31 00:00:03', 'kyah1', '100000.00'),
(122, 1, 'Order-66d2ccefebfef', 1904473, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-31 00:57:35', '2024-08-31 00:58:34', 'kyah1', '100000.00'),
(123, 1, 'Order-66d2cfd5c796e', 523800, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-31 01:09:57', '2024-08-31 01:10:53', NULL, '0.00'),
(124, 1, 'Order-66d2e14b8af7d', 435233, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-31 02:24:27', '2024-08-31 02:25:00', NULL, '0.00'),
(125, 1, 'Order-66d2e2f2e9c1f', 523800, 'Ship cod', 'pending', 'cancelled', 'abc', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-31 02:31:30', '2024-08-31 03:23:04', NULL, '0.00'),
(126, 1, 'Order-66d2e3ab2e3fa', 221760, 'Ship cod', 'pending', 'cancelled', 'acb acb', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-08-31 02:34:35', '2024-08-31 02:35:56', NULL, '0.00'),
(127, 1, 'Order-66d6e765bf699', 1359200, 'Ship cod', 'pending', 'cancelled', 'acc', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'sad', '2024-09-03 03:39:33', '2024-09-03 03:43:53', 'kyah1', '100000.00'),
(128, 1, 'Order-66d6e8b7af3c6', 947600, 'Ship cod', 'paid', 'cancelled', 'zaaas', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'asd', '2024-09-03 03:45:11', '2024-09-03 03:50:06', 'kyah1', '100000.00'),
(129, 1, 'Order-66d6e9a69e282', 119310, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'zxc', '2024-09-03 03:49:10', '2024-09-03 03:49:35', NULL, '0.00'),
(130, 1, 'Order-66d6ea0d6328e', 346860, 'Ship cod', 'paid', 'shipped', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'sa', '2024-09-03 03:50:53', '2024-09-03 03:56:32', NULL, '0.00'),
(131, 1, 'Order-66d6ebdbf335b', 887040, 'VnPay', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-09-03 03:58:35', '2024-09-03 04:27:00', NULL, '0.00'),
(132, 1, 'Order-66d6ec0312db9', 357930, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-09-03 03:59:15', '2024-09-03 04:10:29', NULL, '0.00'),
(133, 1, 'Order-66d6eecbe23fc', 578100, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ads', '2024-09-03 04:11:07', '2024-09-03 04:18:18', NULL, '0.00'),
(135, 1, 'Order-66d6f2f047236', 523800, 'Ship cod', 'pending', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-09-03 04:28:48', '2024-09-03 04:29:26', NULL, '0.00'),
(136, 1, 'Order-66d7097ebf667', 443520, 'Ship cod', 'paid', 'completed', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-09-03 06:05:02', '2024-09-03 06:06:27', NULL, '0.00'),
(138, 1, 'Order-66d7170aeda4d', 1359200, 'VnPay', 'pending', 'cancelled', 'acv acv', NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'toi la ai', '2024-09-03 07:02:50', '2024-09-06 08:37:17', 'kyah1', '100000.00'),
(139, 1, 'Order-66d71957249fa', 134930, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', NULL, '2024-09-03 07:12:39', '2024-09-03 07:12:39', 'kyah1', '100000.00'),
(140, 1, 'Order-66d71abcb61cd', 343520, 'VnPay', 'pending', 'pending', NULL, NULL, NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-09-03 07:18:36', '2024-09-03 07:18:36', 'kyah1', '100000.00'),
(141, 1, 'Order-66d71be480b77', 423800, 'VnPay', 'paid', 'cancelled', 'ad', '14573683', NULL, NULL, 'tiên phong', 'Hà Nội', 'ád', '2024-09-03 07:23:32', '2024-09-06 08:39:53', 'kyah1', '100000.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(16,2) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `name`, `price`, `color`, `size`, `image`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Lars Sweeney', 125730.00, 'Yellow', 'XXL', '1ac6f65ccf7044cfa85e44373d7d204e.jpg', 1, 125730.00, '2024-06-13 05:09:19', '2024-06-13 05:09:19'),
(2, 2, NULL, 'Lars Sweeney', 125730.00, 'Yellow', 'XXL', '1ac6f65ccf7044cfa85e44373d7d204e.jpg', 11, 1383030.00, '2024-06-13 05:11:26', '2024-06-13 05:11:26'),
(3, 3, NULL, 'Lars Sweeney', 125730.00, 'Yellow', 'XXL', '1ac6f65ccf7044cfa85e44373d7d204e.jpg', 4, 502920.00, '2024-01-13 05:23:28', '2024-01-13 05:23:28'),
(4, 4, 8, 'Pillowcase', 436500.00, 'Green', 'L', '3b48e2b0fd4cf5a4c3b34fc8e8f45f80.jpg', 1, 436500.00, '2024-06-14 06:02:11', '2024-06-14 06:02:11'),
(5, 5, 11, 'Daisy Floral Print Straps Jumpsuit', 106666.56, 'Yellow', 'M', '520fe9635f305d3785b4e5d967ba14b3.jpg', 1, 106666.56, '2024-06-14 06:11:34', '2024-06-14 06:11:34'),
(6, 6, 11, 'Daisy Floral Print Straps Jumpsuit', 106666.56, 'Yellow', 'M', '520fe9635f305d3785b4e5d967ba14b3.jpg', 1, 106666.56, '2024-06-14 06:52:36', '2024-06-14 06:52:36'),
(7, 7, 11, 'Daisy Floral Print Straps Jumpsuit', 106666.56, 'Yellow', 'M', '520fe9635f305d3785b4e5d967ba14b3.jpg', 1, 106666.56, '2024-06-18 06:52:58', '2024-06-18 06:52:58'),
(8, 8, 11, 'Daisy Floral Print Straps Jumpsuit', 106666.56, 'Yellow', 'M', '520fe9635f305d3785b4e5d967ba14b3.jpg', 1, 106666.56, '2024-06-18 06:56:50', '2024-06-18 06:56:50'),
(9, 9, 11, 'Daisy Floral Print Straps Jumpsuit', 106666.56, 'Yellow', 'M', '520fe9635f305d3785b4e5d967ba14b3.jpg', 1, 106666.56, '2024-06-18 06:57:43', '2024-06-18 06:57:43'),
(10, 10, 8, 'Pillowcase', 436500.00, 'Green', 'L', '3b48e2b0fd4cf5a4c3b34fc8e8f45f80.jpg', 1, 436500.00, '2024-06-18 00:13:11', '2024-06-18 00:13:11'),
(11, 11, 26, 'September Cobb', 190932.48, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190932.48, '2024-06-17 21:57:59', '2024-06-17 21:57:59'),
(12, 12, 26, 'September Cobb', 190932.48, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190932.48, '2024-07-24 16:30:49', '2024-07-24 16:30:49'),
(13, 13, 26, 'September Cobb', 190932.48, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190932.48, '2024-01-15 21:59:28', '2024-01-15 21:59:28'),
(14, 14, 26, 'September Cobb', 190932.48, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190932.48, '2024-01-15 22:00:33', '2024-01-15 22:00:33'),
(20, 20, 22, 'Sandan Green Colorful', 115735.62, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 1, 115735.62, '2024-01-15 23:12:59', '2024-01-15 23:12:59'),
(21, 21, 22, 'Sandan Green Colorful', 115735.62, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 1, 115735.62, '2024-01-15 23:14:59', '2024-01-15 23:14:59'),
(22, 22, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 1, 115620.00, '2024-01-15 23:16:32', '2024-01-15 23:16:32'),
(23, 23, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-01-15 23:20:24', '2024-01-15 23:20:24'),
(24, 24, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 1, 321780.00, '2024-01-19 15:51:37', '2024-01-19 15:51:37'),
(25, 25, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 1, 321780.00, '2024-01-19 15:51:49', '2024-01-19 15:51:49'),
(26, 26, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 1, 321780.00, '2024-01-19 18:49:01', '2024-01-19 18:49:01'),
(27, 26, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 2, 1047600.00, '2024-01-19 18:49:01', '2024-01-19 18:49:01'),
(28, 27, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-01-19 21:11:15', '2024-01-19 21:11:15'),
(29, 28, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-13 07:52:22', '2024-07-13 07:52:22'),
(30, 28, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-13 07:52:22', '2024-07-13 07:52:22'),
(31, 29, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 00:57:11', '2024-07-14 00:57:11'),
(32, 29, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 00:57:11', '2024-07-14 00:57:11'),
(33, 30, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:08:43', '2024-07-14 01:08:43'),
(34, 30, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:08:43', '2024-07-14 01:08:43'),
(35, 31, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:14:54', '2024-07-14 01:14:54'),
(36, 31, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:14:54', '2024-07-14 01:14:54'),
(37, 32, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:18:12', '2024-07-14 01:18:12'),
(38, 32, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:18:12', '2024-07-14 01:18:12'),
(39, 33, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:21:23', '2024-07-14 01:21:23'),
(40, 33, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:21:23', '2024-07-14 01:21:23'),
(41, 34, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:21:42', '2024-07-14 01:21:42'),
(42, 34, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:21:42', '2024-07-14 01:21:42'),
(43, 35, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:23:44', '2024-07-14 01:23:44'),
(44, 35, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:23:44', '2024-07-14 01:23:44'),
(45, 36, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:26:20', '2024-07-14 01:26:20'),
(46, 36, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:26:20', '2024-07-14 01:26:20'),
(47, 37, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:27:20', '2024-07-14 01:27:20'),
(48, 37, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:27:20', '2024-07-14 01:27:20'),
(49, 38, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:36:22', '2024-07-14 01:36:22'),
(50, 38, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-14 01:36:22', '2024-07-14 01:36:22'),
(51, 39, 16, 'Jumpsuits Susan AC', 330240.00, 'Brown', 'L', '38e032129b746e657eca387501f23012.jpg', 1, 330240.00, '2024-07-21 08:39:55', '2024-07-21 08:39:55'),
(52, 40, 16, 'Jumpsuits Susan AC', 330240.00, 'Brown', 'L', '38e032129b746e657eca387501f23012.jpg', 3, 990720.00, '2024-07-21 08:43:52', '2024-07-21 08:43:52'),
(53, 41, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-07-21 08:56:36', '2024-07-21 08:56:36'),
(54, 42, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-07-21 08:59:26', '2024-07-21 08:59:26'),
(55, 43, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 06:05:26', '2024-07-22 06:05:26'),
(56, 44, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 06:07:28', '2024-07-22 06:07:28'),
(57, 45, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 06:14:04', '2024-07-22 06:14:04'),
(58, 46, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 06:14:54', '2024-07-22 06:14:54'),
(59, 47, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 06:15:09', '2024-07-22 06:15:09'),
(60, 48, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 07:49:40', '2024-07-22 07:49:40'),
(61, 49, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-22 07:49:54', '2024-07-22 07:49:54'),
(62, 50, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 2, 643560.00, '2024-07-23 08:38:46', '2024-07-23 08:38:46'),
(63, 50, 10, 'Colorful Hawaiian Shirts', 226980.00, 'Yellow', 'S', 'af39645247b3f3fc6577a1c95f10eb3f.jpg', 2, 453960.00, '2024-07-23 08:38:46', '2024-07-23 08:38:46'),
(64, 51, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 2, 643560.00, '2024-07-23 08:39:13', '2024-07-23 08:39:13'),
(65, 51, 10, 'Colorful Hawaiian Shirts', 226980.00, 'Yellow', 'S', 'af39645247b3f3fc6577a1c95f10eb3f.jpg', 2, 453960.00, '2024-07-23 08:39:13', '2024-07-23 08:39:13'),
(66, 52, 7, 'Mens Porcelain Shirt', 321780.00, 'Red', 'L', 'd8d5da9689a05eb486950b6e86c86940.jpg', 2, 643560.00, '2024-07-23 08:39:39', '2024-07-23 08:39:39'),
(67, 52, 10, 'Colorful Hawaiian Shirts', 226980.00, 'Yellow', 'S', 'af39645247b3f3fc6577a1c95f10eb3f.jpg', 2, 453960.00, '2024-07-23 08:39:39', '2024-07-23 08:39:39'),
(68, 53, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-23 09:15:45', '2024-07-23 09:15:45'),
(69, 54, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-23 09:16:14', '2024-07-23 09:16:14'),
(70, 55, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-23 09:16:55', '2024-07-23 09:16:55'),
(71, 56, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-23 09:18:26', '2024-07-23 09:18:26'),
(72, 57, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-07-23 09:34:03', '2024-07-23 09:34:03'),
(73, 58, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-07-23 09:34:14', '2024-07-23 09:34:14'),
(74, 59, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 1, 221760.00, '2024-07-23 18:51:52', '2024-07-23 18:51:52'),
(75, 60, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 1, 221760.00, '2024-07-23 18:53:31', '2024-07-23 18:53:31'),
(76, 61, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 1, 221760.00, '2024-07-23 18:54:35', '2024-07-23 18:54:35'),
(77, 62, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-24 08:35:49', '2024-07-24 08:35:49'),
(78, 63, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-24 08:35:54', '2024-07-24 08:35:54'),
(79, 64, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-24 08:37:10', '2024-07-24 08:37:10'),
(80, 65, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-07-24 08:39:35', '2024-07-24 08:39:35'),
(81, 66, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-07-24 08:39:50', '2024-07-24 08:39:50'),
(82, 67, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-07-24 08:41:03', '2024-07-24 08:41:03'),
(83, 68, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-07-24 08:42:24', '2024-07-24 08:42:24'),
(84, 69, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-07-24 08:56:24', '2024-07-24 08:56:24'),
(85, 70, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-07-24 18:04:05', '2024-07-24 18:04:05'),
(86, 71, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-07-24 18:05:51', '2024-07-24 18:05:51'),
(87, 72, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-08-06 09:27:05', '2024-08-06 09:27:05'),
(88, 73, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-08-06 09:27:30', '2024-08-06 09:27:30'),
(89, 74, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 1, 190080.00, '2024-08-29 08:51:16', '2024-08-29 08:51:16'),
(90, 74, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 3, 2188800.00, '2024-08-29 08:51:16', '2024-08-29 08:51:16'),
(91, 75, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-29 08:52:05', '2024-08-29 08:52:05'),
(92, 76, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-29 08:52:15', '2024-08-29 08:52:15'),
(103, 82, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-29 10:31:48', '2024-08-29 10:31:48'),
(104, 82, 25, 'Shoes AC', 523800.00, 'Purple', 'S', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-08-29 10:31:48', '2024-08-29 10:31:48'),
(111, 91, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-29 11:44:35', '2024-08-29 11:44:35'),
(112, 92, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'L', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 1, 221760.00, '2024-08-29 11:45:55', '2024-08-29 11:45:55'),
(113, 92, 20, 'Ethnic Floral Shirts', 221760.00, 'Purple', 'L', 'f1b0e00f4f29d90e6f8efae5337acb84.jpg', 1, 221760.00, '2024-08-29 11:45:55', '2024-08-29 11:45:55'),
(114, 93, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'L', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 10, 2217600.00, '2024-08-29 12:21:07', '2024-08-29 12:21:07'),
(115, 94, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 3, 2188800.00, '2024-08-29 12:37:57', '2024-08-29 12:37:57'),
(116, 95, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-08-29 13:06:39', '2024-08-29 13:06:39'),
(117, 96, 26, 'September Cobb', 190080.00, 'White', 'L', '6832c7bfce2209621562a6bfd80838cb.jpg', 10, 1900800.00, '2024-08-29 13:17:24', '2024-08-29 13:17:24'),
(118, 97, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-08-30 00:46:31', '2024-08-30 00:46:31'),
(119, 98, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'L', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 4, 887040.00, '2024-08-30 00:50:45', '2024-08-30 00:50:45'),
(120, 99, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-30 01:05:40', '2024-08-30 01:05:40'),
(121, 100, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-08-30 01:08:42', '2024-08-30 01:08:42'),
(122, 101, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-08-30 01:14:03', '2024-08-30 01:14:03'),
(123, 102, 27, 'Shoes BCX21', 729600.00, 'Gray', 'XL', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-30 01:56:10', '2024-08-30 01:56:10'),
(124, 103, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-08-30 03:06:14', '2024-08-30 03:06:14'),
(127, 106, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 3, 346860.00, '2024-08-30 10:37:18', '2024-08-30 10:37:18'),
(128, 107, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 8, 924960.00, '2024-08-30 10:39:41', '2024-08-30 10:39:41'),
(129, 108, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-08-30 10:44:13', '2024-08-30 10:44:13'),
(130, 109, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-30 10:48:42', '2024-08-30 10:48:42'),
(131, 110, NULL, 'san pham,', 435233.00, 'Blue', 'XS', '8d0c64e0803a9879c549875b6ddf6a00.jpg', 2, 870466.00, '2024-08-30 11:01:46', '2024-08-30 11:01:46'),
(132, 111, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-30 11:07:35', '2024-08-30 11:07:35'),
(133, 112, 23, 'Blue Hawaiian Shirts', 119310.00, 'Blue', 'M', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 3, 357930.00, '2024-08-30 11:10:24', '2024-08-30 11:10:24'),
(134, 112, 25, 'Shoes AC', 523800.00, 'Brown', 'L', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-08-30 11:10:24', '2024-08-30 11:10:24'),
(135, 113, 27, 'Shoes BCX21', 729600.00, 'Gray', 'M', 'b600cddb9249c98d903287b6e5939b83.jpg', 1, 729600.00, '2024-08-30 11:31:36', '2024-08-30 11:31:36'),
(136, 114, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 3, 570240.00, '2024-08-30 11:34:14', '2024-08-30 11:34:14'),
(137, 115, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 2, 443520.00, '2024-08-30 11:34:54', '2024-08-30 11:34:54'),
(138, 116, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'L', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 2, 443520.00, '2024-08-30 11:41:30', '2024-08-30 11:41:30'),
(139, 117, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-08-30 11:46:22', '2024-08-30 11:46:22'),
(140, 118, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 2, 1047600.00, '2024-08-30 11:49:33', '2024-08-30 11:49:33'),
(141, 119, 23, 'Blue Hawaiian Shirts', 119310.00, 'Blue', 'M', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 5, 596550.00, '2024-08-30 11:51:36', '2024-08-30 11:51:36'),
(142, 120, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 2, 1047600.00, '2024-08-30 11:52:27', '2024-08-30 11:52:27'),
(143, 121, NULL, 'san pham,', 435233.00, 'Blue', 'XS', '8d0c64e0803a9879c549875b6ddf6a00.jpg', 1, 435233.00, '2024-08-30 23:59:24', '2024-08-30 23:59:24'),
(144, 122, NULL, 'san pham,', 435233.00, 'Blue', 'XS', '8d0c64e0803a9879c549875b6ddf6a00.jpg', 1, 435233.00, '2024-08-31 00:57:35', '2024-08-31 00:57:35'),
(145, 122, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 3, 665280.00, '2024-08-31 00:57:35', '2024-08-31 00:57:35'),
(146, 122, 26, 'September Cobb', 190080.00, 'Pink', 'XS', '6832c7bfce2209621562a6bfd80838cb.jpg', 2, 380160.00, '2024-08-31 00:57:35', '2024-08-31 00:57:35'),
(147, 122, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-08-31 00:57:35', '2024-08-31 00:57:35'),
(148, 123, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-08-31 01:09:57', '2024-08-31 01:09:57'),
(149, 124, NULL, 'san pham,', 435233.00, 'Green', 'M', '8d0c64e0803a9879c549875b6ddf6a00.jpg', 1, 435233.00, '2024-08-31 02:24:27', '2024-08-31 02:24:27'),
(150, 125, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-08-31 02:31:30', '2024-08-31 02:31:30'),
(151, 126, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 1, 221760.00, '2024-08-31 02:34:35', '2024-08-31 02:34:35'),
(152, 127, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-09-03 03:39:33', '2024-09-03 03:39:33'),
(153, 128, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 2, 1047600.00, '2024-09-03 03:45:11', '2024-09-03 03:45:11'),
(154, 129, 23, 'Blue Hawaiian Shirts', 119310.00, 'Blue', 'M', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 1, 119310.00, '2024-09-03 03:49:10', '2024-09-03 03:49:10'),
(155, 130, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'L', 'fc9ac021e6562c509035860e4487b724.jpg', 3, 346860.00, '2024-09-03 03:50:53', '2024-09-03 03:50:53'),
(156, 131, 20, 'Ethnic Floral Shirts', 221760.00, 'Purple', 'M', 'f1b0e00f4f29d90e6f8efae5337acb84.jpg', 4, 887040.00, '2024-09-03 03:58:36', '2024-09-03 03:58:36'),
(157, 132, 23, 'Blue Hawaiian Shirts', 119310.00, 'Blue', 'M', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 3, 357930.00, '2024-09-03 03:59:15', '2024-09-03 03:59:15'),
(158, 133, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 5, 578100.00, '2024-09-03 04:11:07', '2024-09-03 04:11:07'),
(160, 135, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-09-03 04:28:48', '2024-09-03 04:28:48'),
(161, 136, 20, 'Ethnic Floral Shirts', 221760.00, 'Purple', 'L', 'f1b0e00f4f29d90e6f8efae5337acb84.jpg', 2, 443520.00, '2024-09-03 06:05:02', '2024-09-03 06:05:02'),
(163, 138, 27, 'Shoes BCX21', 729600.00, 'Gray', 'L', 'b600cddb9249c98d903287b6e5939b83.jpg', 2, 1459200.00, '2024-09-03 07:02:50', '2024-09-03 07:02:50'),
(164, 139, 23, 'Blue Hawaiian Shirts', 119310.00, 'Blue', 'M', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 1, 119310.00, '2024-09-03 07:12:39', '2024-09-03 07:12:39'),
(165, 139, 22, 'Sandan Green Colorful', 115620.00, 'Green', 'M', 'fc9ac021e6562c509035860e4487b724.jpg', 1, 115620.00, '2024-09-03 07:12:39', '2024-09-03 07:12:39'),
(166, 140, 24, 'T-Shirts Ira ACX', 221760.00, 'Brown', 'M', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 2, 443520.00, '2024-09-03 07:18:36', '2024-09-03 07:18:36'),
(167, 141, 25, 'Shoes AC', 523800.00, 'Brown', 'M', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 1, 523800.00, '2024-09-03 07:23:32', '2024-09-03 07:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read user management', 'web', '2024-07-24 16:31:13', '2024-07-24 16:31:13'),
(2, 'create user management', 'web', '2024-07-24 07:31:25', '2024-07-24 16:31:13'),
(3, 'update user management', 'web', '2024-07-24 16:31:13', '2024-07-24 16:31:13'),
(4, 'delete user management', 'web', '2024-07-24 16:31:13', '2024-07-24 16:31:13'),
(5, 'read product management', 'web', '2024-07-24 16:31:13', '2024-07-24 16:31:13'),
(6, 'create product management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(7, 'update product management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(8, 'delete product management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(9, 'read category management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(10, 'create category management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(11, 'update category management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(12, 'delete category management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(13, 'read brand management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(14, 'create brand management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(15, 'update brand management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(16, 'delete brand management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(17, 'read blog management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(18, 'create blog management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(19, 'update blog management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(20, 'delete blog management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(21, 'read banner management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(22, 'create banner management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(23, 'update banner management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(24, 'delete banner management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(25, 'read role management', 'web', '2024-07-24 16:32:13', '2024-07-24 16:32:13'),
(26, 'create role management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(27, 'update role management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(28, 'delete role management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(29, 'read permission management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(30, 'create permission management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(31, 'update permission management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(32, 'delete permission management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(33, 'read order management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(34, 'create order management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(35, 'update order management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(36, 'delete order management', 'web', '2024-01-12 07:31:25', '2024-01-12 07:31:25'),
(49, 'read product option management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(50, 'create product option management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(51, 'update product option management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(52, 'delete product option management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(65, 'read report management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(66, 'create report management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(67, 'update report management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(68, 'delete report management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(73, 'read contact management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(74, 'create contact management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(75, 'update contact management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(76, 'delete contact management', 'web', '2024-01-12 07:31:26', '2024-01-12 07:31:26'),
(77, 'read voucher management', 'web', '2024-08-27 06:51:42', '2024-08-27 06:51:42'),
(78, 'read customer management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(79, 'create customer management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(80, 'create voucher management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(81, 'update customer management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(82, 'update voucher management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(83, 'delete customer management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(84, 'delete voucher management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(85, 'read shipping management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(86, 'read employee management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(87, 'create shipping management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(88, 'create employee management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(89, 'update shipping management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(90, 'update employee management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(91, 'delete shipping management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16'),
(92, 'delete employee management', 'web', '2024-08-26 23:59:16', '2024-08-26 23:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `views` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `views` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `excerpt`, `content`, `thumbnail`, `is_published`, `views`, `slug`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 'Best smartwatch 2024: the top wearables you can buy today', '<p>Best smartwatch 2024: the top wearables you can buy today</p>', '<p>Best smartwatch 2024: the top wearables you can buy today</p>', '6a5b5ba96cbde96bdd7b3619fcac06bc.jpg', 1, 13, 'best-smartwatch-2024-the-top-wearables-you-can-buy-today', '2024-06-15 21:30:04', '2024-04-07 11:35:41'),
(3, 1, 1, 'The litigants on the screen are not actors', '<p>The litigants on the screen are not actors</p>', '<p>The litigants on the screen are not actors</p>', 'ca320d7d42164000aedd901b74bcfbcb.jpg', 1, 7, 'the-litigants-on-the-screen-are-not-actors', '2024-07-24 16:34:53', '2024-07-24 16:34:53'),
(4, 1, 1, 'We got a right to pick a little fight, Bonanza', '<p>We got a right to pick a little fight, Bonanza</p>', '<p>We got a right to pick a little fight, Bonanza</p>', '00a8bcd2b7023df019a3020622bcf5ab.jpg', 1, 19, 'we-got-a-right-to-pick-a-little-fight-bonanza-65a6096d929a4', '2024-01-15 21:31:29', '2024-06-11 05:52:17'),
(5, 1, 1, 'My entrance exam was on a book of matches', '<p>My entrance exam was on a book of matches</p>', '<p>My entrance exam was on a book of matches</p>', '35c4b2222fa516901c107e63cacf85ba.jpg', 1, 11, 'my-entrance-exam-was-on-a-book-of-matches', '2024-01-15 21:31:46', '2024-06-11 05:52:25'),
(6, 1, 2, 'đasa', '<p>đasad</p>', '<p>&aacute;dasd</p>', '89c71f53d6340e96cb36fcde58c800f0.jpg', 1, 0, 'dasa', '2024-07-23 09:48:08', '2024-07-23 09:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'nihil', 'Laudantium consequatur et repellendus. Consequatur et consectetur molestiae et. Officiis cupiditate necessitatibus eius illum voluptates numquam. Impedit aut magnam et.', 'nihil', '2024-07-24 16:36:16', '2024-07-24 16:36:16'),
(2, 'illum', 'Suscipit similique animi sit. Sit facere molestias voluptatem quibusdam.', 'illum', '2024-07-24 16:36:16', '2024-07-24 16:36:16'),
(3, 'ipsa', 'Vero sit quam aliquam praesentium fugiat eveniet corporis. Quia deleniti necessitatibus reiciendis quis quia. Enim ea vel odio nam repellendus fuga magni.', 'ipsa', '2024-07-24 16:36:16', '2024-07-24 16:36:16'),
(4, 'commodi', 'Laudantium minus minima molestiae. Et excepturi ut animi deleniti vitae ad. Illum ut quam quos voluptatibus quis.', 'commodi', '2024-07-24 16:36:16', '2024-07-24 16:36:16'),
(5, 'quia', 'Eum velit aut et expedita. Maxime aut et consequatur animi non reiciendis explicabo. Consequatur sunt dicta dolorem sed quod vero aliquid. Sunt aut eligendi atque praesentium eum sapiente.', 'quia', '2024-07-24 16:36:16', '2024-07-24 16:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `product_category_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(16,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `product_category_id`, `name`, `sku`, `subtitle`, `description`, `thumbnail`, `slug`, `price`, `discount`, `condition`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 1, 16, 'Sandan Colorful AB', 'SCV1', '<p>Sandan Colorful AB</p>', '<p>Sandan Colorful AB</p>', '641ea8fee6a97e31f80989fa7918b3d5.jpg', 'sandan-colorful-ab-65a61ec477379', 117000.00, '3.00', 'new', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(7, 1, 11, 'Mens Porcelain Shirt', '111AB', '<p>Mens Porcelain Shirt</p>', '<p>Mens Porcelain Shirt</p>', 'd8d5da9689a05eb486950b6e86c86940.jpg', 'mens-porcelain-shirt', 346000.00, '7.00', 'new', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(8, 1, 13, 'Pillowcase', 'PLL1', '<p>Pillocase</p>', '<p>Pillocase</p>', '3b48e2b0fd4cf5a4c3b34fc8e8f45f80.jpg', 'pillowcase', 450000.00, '3.00', 'new', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(9, 1, 11, 'Ethnic Dun Shirts', '111ABC', '<p>Ethnic Floral Casual Shirts</p>', '<p>Ethnic Floral Casual Shirts</p>', '06e29be213b5e09a0aa2480a4f079170.jpg', 'ethnic-dun-shirts', 117000.00, '3.00', 'hot', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(10, 2, 11, 'Colorful Hawaiian Shirts', '3', '<p>Colorful Hawaiian Shirts</p>', '<p>Colorful Hawaiian Shirts</p>', 'af39645247b3f3fc6577a1c95f10eb3f.jpg', 'colorful-hawaiian-shirts-65a4f600e0f26', 234000.00, '3.00', 'best_sale', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(11, 1, 11, 'Daisy Floral Print Straps', 'SCS', '<p>Daisy Floral Print Straps Jumpsuit</p>', '<p>Daisy Floral Print Straps Jumpsuit</p>', '520fe9635f305d3785b4e5d967ba14b3.jpg', 'daisy-floral-print-straps-65a61faf649be', 111000.00, '4.00', 'new', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(12, 2, 15, 'Jumpsuits Susan', '111AX', '<p>Jumpsuits Susan</p>', '<p>Jumpsuits Susan</p>', 'f3f4aae6fae97f3778c156f6161ce8ec.jpg', 'jumpsuits-susan', 234000.00, '5.00', 'hot', 1, '2024-07-24 16:36:56', '2024-07-24 16:36:56'),
(13, 1, 17, 'T-Shirts Gray AZZ', 'ADAX', '<p>T-Shirts Gray AZZ</p>', '<p>T-Shirts Gray AZZ</p>', '45646dc6689b6dd27d618423ecffcf34.jpg', 't-shirts-gray-azz', 123000.00, '4.00', 'hot', 1, '2024-07-24 16:36:56', '2024-08-29 07:33:22'),
(14, 4, 17, 'T-Shirts Ira Dalton', 'Quae sunt aut sint', '<p>T-Shirts Ira Dalton</p>', '<p>T-Shirts Ira Dalton</p>', '11c9c4f4dd47bf827a341ef18b746077.jpg', 't-shirts-ira-dalton', 487000.00, '6.00', 'best_sale', 0, '2024-07-24 16:36:56', '2024-09-03 06:53:53'),
(15, 1, 17, 'Sonia Gilliam T-Shirts', 'In commodi laboris a', '<p>Sonia Gilliam T-Shirts</p>', '<p>Sonia Gilliam T-Shirts</p>', '22641071a959359c85f030da41557993.jpg', 'sonia-gilliam-t-shirts', 647000.00, '7.00', 'best_sale', 1, '2024-07-24 16:36:56', '2024-01-15 00:29:49'),
(16, 3, 15, 'Jumpsuits Susan AC', 'Jum12', '<p>Jumpsuits Susan AC</p>', '<p>Jumpsuits Susan AC</p>', '38e032129b746e657eca387501f23012.jpg', 'jumpsuits-susan-ac-65a61f9db7a5c', 344000.00, '4.00', 'new', 1, '2024-01-15 01:57:03', '2024-01-15 23:18:05'),
(17, 1, 14, 'Ruffled Solid Long', 'bag11', '<p>Ruffled Solid Long Sleeve Blouse</p>', '<p>Ruffled Solid Long Sleeve Blouse</p>', '36600d5e5ff49803a9f91c3f0bdcb380.jpg', 'ruffled-solid-long', 710000.00, '3.00', 'new', 1, '2024-01-15 02:03:38', '2024-01-15 21:45:48'),
(18, 3, 15, 'Jumpsuits Sheet', '33B', '<p>Jumpsuits Sheet</p>', '<p>Jumpsuits Sheet</p>', '6f005da9dba4324f895a67c6279f4220.jpg', 'jumpsuits-sheet', 117000.00, '4.00', 'new', 1, '2024-01-15 02:06:02', '2024-01-15 02:06:02'),
(19, 2, 11, 'Hawaiian Sky Shirts', 'AAAAA', '<p>Hawaiian Sky Shirts</p>', '<p>Hawaiian Sky Shirts</p>', 'ec5ad2939ffd34cfef4fd88da4b15350.jpg', 'hawaiian-sky-shirts', 231000.00, '4.00', 'best_sale', 1, '2024-01-15 02:07:43', '2024-01-15 23:19:30'),
(20, 2, 11, 'Ethnic Floral Shirts', 'dddA', '<p>Ethnic Floral Casual Shirts</p>', '<p>Ethnic Floral Casual Shirts</p>', 'f1b0e00f4f29d90e6f8efae5337acb84.jpg', 'ethnic-floral-shirts', 231000.00, '4.00', 'hot', 1, '2024-01-15 02:14:57', '2024-01-16 02:25:53'),
(21, 1, 11, 'Greeen Sleeve Lapel Shirt', '133AB', '<p>Greeen Sleeve Lapel Shirt</p>', '<p>Greeen Sleeve Lapel Shirt</p>', 'c381d28a4dfa4e1ad894827bfd166c4e.jpg', 'greeen-sleeve-lapel-shirt-65a61fe18e8c3', 344000.00, '3.00', 'best_sale', 1, '2024-01-15 02:17:49', '2024-01-15 23:19:13'),
(22, 3, 16, 'Sandan Green Colorful', 'Sa11', '<p>Sandan Green Colorful&nbsp;</p>', '<p>Sandan Green Colorful&nbsp;</p>', 'fc9ac021e6562c509035860e4487b724.jpg', 'sandan-green-colorful', 123000.00, '6.00', 'hot', 1, '2024-01-15 02:19:55', '2024-01-15 23:16:07'),
(23, 3, 11, 'Blue Hawaiian Shirts', '1C1AB', '<p>Blue Hawaiian Shirts</p>', '<p>Blue Hawaiian Shirts</p>', 'a3ec8581b61c04d90e111bc8490207eb.jpg', 'blue-hawaiian-shirts-65a61fbf8232b', 123000.00, '3.00', 'best_sale', 1, '2024-01-15 02:22:33', '2024-01-15 23:18:39'),
(24, 3, 17, 'T-Shirts Ira ACX', 'ACFF', '<p>T-Shirts Ira ACX</p>', '<p>T-Shirts Ira ACX</p>', 'b8116aff72e613c60b8e25fc24e5329d.jpg', 't-shirts-ira-acx', 231000.00, '4.00', 'new', 1, '2024-01-15 02:24:27', '2024-08-29 07:33:09'),
(25, 3, 12, 'Shoes AC', 'Sho111', '<p>Shoes AC</p>', '<p>Shoes AC</p>', '1f01e4fdb95f43b4bad010c69a2c08f0.jpg', 'shoes-ac', 540000.00, '3.00', 'new', 1, '2024-01-15 02:26:54', '2024-01-15 02:26:54'),
(26, 5, 11, 'September Cobb', 'Qui sint aliquip et', '<p>September Cobb</p>', '<p>September Cobb</p>', '6832c7bfce2209621562a6bfd80838cb.jpg', 'september-cobb-65a61f7bab910', 198000.00, '4.00', 'new', 1, '2024-01-15 02:51:34', '2024-01-15 23:17:31'),
(27, 1, 12, 'Shoes BCX21', 'SHRR', '<p>Shoes BCX21</p>', '<p>Shoes BCX21</p>', 'b600cddb9249c98d903287b6e5939b83.jpg', 'shoes-bcx21', 750000.00, '4.00', 'best_sale', 1, '2024-01-19 08:13:51', '2024-08-30 02:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `image`, `slug`, `is_active`, `parent_id`, `created_at`, `updated_at`) VALUES
(11, 'Shirts', '<p>Shirts</p>', 'dd1cf332365aa4e6e8c038d2d96b592a.jpg', 'shirts', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(12, 'Shoes', '<p>Shoes</p>', '96e9283d6e1e305b00660b50bb394872.jpg', 'shoes', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(13, 'Pillowcase', '<p>Pillowcase</p>', 'd8a23113e4c95597f53f355ccf33342e.jpg', 'pillowcase', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(14, 'Bags', '<p>Bags</p>', '1a023eb73acdbd813a7f49ddda5c0716.jpg', 'bags', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(15, 'Jumpsuits', '<p>Jumpsuits</p>', '2093ab2fc0b3de2113643673e6b38dde.jpg', 'jumpsuits', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(16, 'Sandan', '<p>Sandan</p>', 'e0a838eefae5cab56332e1481f5b4d60.jpg', 'sandan', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57'),
(17, 'T-Shirts', '<p>T-Shirts</p>', '3575dd6061b4317e26dedb005e9e994f.jpg', 't-shirts', 1, NULL, '2024-07-24 16:40:57', '2024-07-24 16:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_comments`
--

CREATE TABLE `product_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_comments`
--

INSERT INTO `product_comments` (`id`, `product_id`, `user_id`, `email`, `name`, `messages`, `rating`, `is_active`, `created_at`, `updated_at`) VALUES
(109, 26, 1, 'admin@example.com', 'Giày Nam', 'demo', 5, 1, '2024-05-25 21:04:53', '2024-05-25 21:04:53'),
(110, 26, 1, 'admin@example.com', 'Giày Nam', 'dasdsa', 4, 1, '2024-05-25 21:05:19', '2024-05-25 21:05:19'),
(111, 19, 1, 'admin@example.com', 'ngklam', 'sdadas', 4, 1, '2024-07-22 07:57:57', '2024-07-22 07:57:57'),
(112, 24, 1, 'ngklam2002@gmail.com', 'nguyen kieu lam', 'tôi không thích sản phẩm này lắm', 3, 1, '2024-07-23 18:50:53', '2024-07-23 19:11:25'),
(113, 26, 1, 'ngklam2002@gmail.com', 'nguyen kieu lam', 'sản phẩm đẹp', 3, 1, '2024-07-23 19:17:14', '2024-07-23 19:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(5, 6, '5a32aad1162de9e6229321e7f9984402.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(6, 6, 'eeb3d14f00e819ba93afb42e65a9edfb.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(7, 7, '49b6878495a64863a23fcdff60f99338.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(8, 7, '7cacf1e72d59409bdd40030b1b2b13b1.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(9, 8, '9b699de6fe1c64c435b88215ea846fe2.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(10, 9, 'eb497ff31878a6388ced9302b403fe9f.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(11, 9, '9840c04b6c97199496b2fce0cd6255e0.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(12, 9, '1d09e24c03192779325af15100390a86.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(13, 10, '21bb97b0b3eceb54c4a7603617af014a.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(14, 10, 'b2ccbb3eb1cc1204dcaae11699913020.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(15, 11, '1d2d2d779208fbde6a76bd4ab49dfb28.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(16, 11, 'ad55279be824ed48d95a4620a669c9d3.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(17, 12, 'f1545bd8220ce9a9baa3da88b61c73da.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(18, 12, 'ef0c7198395b7fc75d8790df8b541b5b.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(19, 13, '3cbc8b0b74a52165c0cee569f903398a.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(20, 13, 'fb693f49d04e0aca97303b600b0718cf.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(21, 14, 'f0a22a05517a7363dffbb722337c4afa.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(22, 14, 'afbcbe1733e844b8fa3b36d8fc1aa218.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(23, 15, '7dfe539b3a5f3c99557222d7fcd85b6a.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(24, 15, '6b5c54187cd45a560c1791d550e9b8af.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(25, 16, 'c073c4b9d59447dd5fbbdeefc858de9a.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(26, 16, '56695bf9f953f68175f960d3d0c0d74b.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(27, 17, 'cd4a2c7f72a5494031dfdd4708edeac7.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(28, 17, '348cdb5f9e802d52a31adfa9cdf2389d.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(29, 18, '9eab0ca8bc26f6086183f0df5d470cd2.jpg', '2024-07-24 16:43:08', '2024-07-24 16:43:08'),
(30, 18, '1ff9ec0a9e171e8d6bb0275df6d2dbd0.jpg', '2024-01-15 02:06:02', '2024-01-15 02:06:02'),
(31, 19, '829e707f3e060d4b62f297675fd8a6e2.jpg', '2024-01-15 02:07:43', '2024-01-15 02:07:43'),
(32, 19, '26f2f09cc4088944ca12ecdc0025c3aa.jpg', '2024-01-15 02:07:43', '2024-01-15 02:07:43'),
(33, 20, '2e1c88bd77c7976ae485f79e408119f6.jpg', '2024-01-15 02:14:57', '2024-01-15 02:14:57'),
(34, 20, 'bad20948406642cd8cb8bcb0ebf93e4f.jpg', '2024-01-15 02:14:57', '2024-01-15 02:14:57'),
(35, 21, '229b31871ffa06e7ad60a9c9e61e4882.jpg', '2024-01-15 02:17:49', '2024-01-15 02:17:49'),
(36, 21, 'da3410ff97ce5428ed826e920152607a.jpg', '2024-01-15 02:17:49', '2024-01-15 02:17:49'),
(37, 22, '7f4e72863d6efcc3b5066b29e47f7ab3.jpg', '2024-01-15 02:19:55', '2024-01-15 02:19:55'),
(38, 22, 'ee0c9fdd23cf63da8161716116dc99fe.jpg', '2024-01-15 02:19:55', '2024-01-15 02:19:55'),
(39, 23, '041a303725eede10ff9f725488e38a85.jpg', '2024-01-15 02:22:33', '2024-01-15 02:22:33'),
(40, 23, '834b41645d8f4bf66c4afe4a9250d530.jpg', '2024-01-15 02:22:33', '2024-01-15 02:22:33'),
(41, 24, 'e6f41fb73e4a6c40afd1e284db9d9d10.jpg', '2024-01-15 02:24:27', '2024-01-15 02:24:27'),
(42, 24, '2712c222e2d3d871077819cb5116f5bd.jpg', '2024-01-15 02:24:27', '2024-01-15 02:24:27'),
(43, 25, 'd3d74ae61e00745686a59eb9a845f863.jpg', '2024-01-15 02:26:54', '2024-01-15 02:26:54'),
(44, 25, '4c0525a8134f0a50cc0fd8af98f50e51.jpg', '2024-01-15 02:26:54', '2024-01-15 02:26:54'),
(45, 26, 'd49179ead3c7de2dedd8616e76c075d7.jpg', '2024-01-15 02:51:34', '2024-01-15 02:51:34'),
(46, 26, '3485dd34f3075fd36e03bda14378bcb9.jpg', '2024-01-15 02:51:34', '2024-01-15 02:51:34'),
(47, 27, '91f095e475cfa8f83f483ae05e9f2ed9.jpg', '2024-01-19 08:13:51', '2024-01-19 08:13:51'),
(48, 27, '320484188463573f17f1dfd6e52d8291.jpg', '2024-01-19 08:13:51', '2024-01-19 08:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `name`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Blue', 'color', 'blue', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(2, 'Red', 'color', 'red', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(3, 'Green', 'color', 'green', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(4, 'Yellow', 'color', 'yellow', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(5, 'Black', 'color', 'black', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(6, 'White', 'color', 'white', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(7, 'Pink', 'color', 'pink', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(8, 'Purple', 'color', 'purple', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(9, 'Orange', 'color', 'orange', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(10, 'Brown', 'color', 'brown', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(11, 'Gray', 'color', 'gray', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(12, 'XS', 'size', 'xs', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(13, 'S', 'size', 's', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(14, 'M', 'size', 'm', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(15, 'L', 'size', 'l', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(16, 'XL', 'size', 'xl', '2024-07-24 16:46:18', '2024-07-24 16:46:18'),
(17, 'XXL', 'size', 'xxl', '2024-07-24 16:46:18', '2024-07-24 16:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

CREATE TABLE `product_option_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED NOT NULL,
  `price` double(16,2) NOT NULL,
  `in_stock` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option_values`
--

INSERT INTO `product_option_values` (`id`, `product_id`, `color_id`, `size_id`, `price`, `in_stock`, `created_at`, `updated_at`) VALUES
(7, 7, 2, 15, 346000.00, 11, '2024-07-02 03:45:29', '2024-07-02 03:45:29'),
(8, 7, 1, 15, 346000.00, 22, '2024-07-02 03:45:29', '2024-07-02 03:45:29'),
(9, 7, 9, 16, 346000.00, 11, '2024-07-02 03:45:29', '2024-07-02 03:45:29'),
(10, 8, 3, 15, 450000.00, 11, '2024-07-02 03:47:26', '2024-07-02 03:47:26'),
(24, 12, 11, 14, 234000.00, 22, '2024-07-02 03:57:27', '2024-07-02 03:57:27'),
(25, 12, 11, 15, 234000.00, 11, '2024-07-02 03:57:27', '2024-07-02 03:57:27'),
(34, 15, 11, 14, 647000.00, 47, '2024-07-02 03:57:27', '2024-07-02 00:29:49'),
(35, 15, 10, 14, 647000.00, 33, '2024-07-02 00:29:49', '2024-07-02 00:29:49'),
(39, 18, 8, 15, 117000.00, 11, '2024-07-02 02:06:02', '2024-07-02 02:06:02'),
(40, 18, 8, 14, 117000.00, 23, '2024-07-02 02:06:02', '2024-07-02 02:06:02'),
(43, 10, 4, 12, 234000.00, 22, '2024-07-02 02:08:16', '2024-07-02 02:08:16'),
(44, 10, 4, 13, 234000.00, 33, '2024-07-02 02:08:16', '2024-07-02 02:08:16'),
(45, 10, 4, 15, 234000.00, 22, '2024-07-02 02:08:16', '2024-07-02 02:08:16'),
(58, 25, 10, 14, 540000.00, 9, '2024-07-02 02:26:54', '2024-09-03 07:24:21'),
(59, 25, 10, 15, 540000.00, 22, '2024-07-02 02:26:54', '2024-07-02 02:26:54'),
(60, 25, 8, 13, 540000.00, 12, '2024-07-02 02:26:54', '2024-08-29 10:31:48'),
(66, 17, 3, 16, 710000.00, 11, '2024-07-01 21:45:48', '2024-07-01 21:45:48'),
(69, 6, 1, 15, 117000.00, 11, '2024-07-01 23:14:28', '2024-07-01 23:14:28'),
(70, 6, 1, 16, 117000.00, 33, '2024-07-02 23:14:28', '2024-07-02 23:14:28'),
(71, 22, 3, 14, 123000.00, 11, '2024-07-02 23:16:07', '2024-07-02 23:16:07'),
(72, 22, 3, 15, 123000.00, 33, '2024-07-02 23:16:07', '2024-07-02 23:16:07'),
(73, 26, 7, 12, 198000.00, 3, '2024-07-02 23:17:31', '2024-09-03 04:25:03'),
(74, 26, 6, 15, 198000.00, 32, '2024-07-02 23:17:31', '2024-07-02 23:17:31'),
(77, 16, 10, 14, 344000.00, 11, '2024-01-15 23:18:05', '2024-01-15 23:18:05'),
(78, 16, 10, 15, 344000.00, 16, '2024-01-15 23:18:05', '2024-01-15 23:18:05'),
(79, 11, 4, 14, 111000.00, 22, '2024-01-15 23:18:23', '2024-01-15 23:18:23'),
(80, 11, 4, 15, 111000.00, 33, '2024-01-15 23:18:23', '2024-01-15 23:18:23'),
(81, 23, 1, 14, 123000.00, 29, '2024-01-15 23:18:39', '2024-09-03 04:10:29'),
(82, 23, 1, 15, 123000.00, 44, '2024-01-15 23:18:39', '2024-01-15 23:18:39'),
(85, 21, 3, 14, 344000.00, 33, '2024-01-15 23:19:13', '2024-01-15 23:19:13'),
(86, 21, 3, 15, 344000.00, 11, '2024-01-15 23:19:13', '2024-01-15 23:19:13'),
(87, 19, 9, 14, 231000.00, 11, '2024-01-15 23:19:30', '2024-01-15 23:19:30'),
(88, 19, 9, 15, 231000.00, 44, '2024-01-15 23:19:30', '2024-01-15 23:19:30'),
(89, 20, 8, 14, 231000.00, 7, '2024-01-16 02:25:53', '2024-09-03 04:27:01'),
(90, 20, 8, 15, 231000.00, 31, '2024-01-16 02:25:53', '2024-09-03 06:06:19'),
(91, 9, 1, 12, 117000.00, 11, '2024-01-16 02:26:09', '2024-01-16 02:26:09'),
(92, 9, 1, 15, 117000.00, 22, '2024-01-16 02:26:09', '2024-01-16 02:26:09'),
(93, 9, 1, 16, 117000.00, 9, '2024-01-16 02:26:09', '2024-01-16 02:26:09'),
(94, 9, 10, 12, 117000.00, 22, '2024-01-16 02:26:09', '2024-01-16 02:26:09'),
(109, 24, 10, 14, 231000.00, 33, '2024-08-29 07:33:09', '2024-08-29 07:33:09'),
(110, 24, 10, 15, 231000.00, 33, '2024-08-29 07:33:09', '2024-08-29 07:33:09'),
(111, 13, 1, 15, 123000.00, 20, '2024-08-29 07:33:22', '2024-08-29 07:33:22'),
(112, 13, 1, 15, 123000.00, 11, '2024-08-29 07:33:22', '2024-08-29 07:33:22'),
(113, 13, 2, 15, 123000.00, 11, '2024-08-29 07:33:22', '2024-08-29 07:33:22'),
(114, 13, 3, 14, 123000.00, 13, '2024-08-29 07:33:22', '2024-08-29 07:33:22'),
(117, 27, 11, 15, 760000.00, 10, '2024-08-30 02:14:31', '2024-08-30 02:14:31'),
(118, 27, 11, 14, 760000.00, 28, '2024-08-30 02:14:31', '2024-08-30 02:14:31'),
(139, 14, 5, 15, 487000.00, 25, '2024-09-03 06:53:53', '2024-09-03 06:53:53'),
(140, 14, 2, 14, 487000.00, 22, '2024-09-03 06:53:53', '2024-09-03 06:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2024-07-12 07:31:26', '2024-07-12 07:31:26'),
(2, 'employee', 'web', '2024-07-12 07:31:26', '2024-07-12 07:31:26'),
(3, 'read voucher management', 'web', '2024-08-27 06:48:56', '2024-08-27 06:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(77, 2),
(80, 2),
(82, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_buy` double NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_active`, `phone`, `address`, `address_2`, `total_buy`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@example.com', '2024-07-13 14:51:56', '$2y$12$UGd1v74NFQ7d.5TwQSMIV.NIA4IrN4pJEgDwvSLdtybTqRkquNdd6', 1, '0972571117', 'tiên phong', 'Hà Nội', 0, NULL, '2024-07-24 07:31:25', '2024-07-24 16:49:41'),
(2, 'Employee', 'employee@example.com', '2024-07-24 16:49:41', '$2y$12$orfhzmtSHHHKHxXmYe/v2eStBF5tIIFGiMbpuuWCc8htxXPuanzw6', 1, NULL, NULL, NULL, 0, NULL, '2024-07-24 16:49:41', '2024-07-24 16:49:41'),
(20, 'ngklam', 'ngklam2002@gmail.com', '2024-08-06 08:51:09', '$2y$12$85vUG74xj6eJJXjvPjkb4.50pOkgtyE4TODqnQgpEZMNJuUf9uS56', 1, '097 257 11 17', 'tiên phong', 'hahah', 0, NULL, '2024-08-06 08:50:47', '2024-08-06 09:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text,
  `discount_type` tinyint(1) NOT NULL DEFAULT '1',
  `discount_value` int NOT NULL,
  `min_order_value` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `usage_limit` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `voucher_quantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `description`, `discount_type`, `discount_value`, `min_order_value`, `start_date`, `end_date`, `status`, `usage_limit`, `created_at`, `updated_at`, `voucher_quantity`) VALUES
(9, '4838424', NULL, 1, 12312314, NULL, '2024-08-22', '2024-09-05', 1, NULL, '2024-08-28 08:55:29', '2024-08-29 19:17:36', 10),
(10, '4838424253252525253', NULL, 1, 12312314, NULL, '2024-08-22', '2024-08-31', 1, NULL, '2024-08-28 09:04:42', '2024-08-29 19:17:36', 10),
(11, 'abc abc', '<p>1212</p>', 1, 12312314, NULL, '2024-08-22', '2024-08-30', 1, 1212, '2024-08-28 09:09:15', '2024-08-29 19:17:36', 10),
(12, '48384234', '<p>ấdsad&aacute;d</p>', 1, 123, NULL, '2024-08-22', '2024-09-06', 1, 1221, '2024-08-28 09:15:36', '2024-08-30 11:42:16', 9),
(13, '48384211247', '<p>12121</p>', 1, 1221, NULL, '2024-08-22', '2024-09-06', 1, 1212, '2024-08-28 09:25:12', '2024-08-29 19:17:36', 10),
(14, 'abn', '<p>121212</p>', 1, 123, NULL, '2024-08-21', '2024-09-06', 1, 1212, '2024-08-28 09:28:37', '2024-08-30 11:44:54', 9),
(15, '48384244555677', '<p>1212</p>', 0, 121212, NULL, '2024-08-15', '2024-09-07', 0, 12, '2024-08-28 09:32:56', '2024-08-29 19:17:36', 10),
(16, 'abcnaa', '<p>111</p>', 0, 12312314, 1221, '2024-08-22', '2024-09-05', 1, 12, '2024-08-28 09:40:53', '2024-08-29 19:17:36', 10),
(17, 'kyanh', '<p>1221</p>', 1, 12312314, 1212, '2024-08-08', '2024-09-06', 0, 12, '2024-08-29 07:59:21', '2024-08-31 00:03:50', 10),
(18, 'kyah1', '<p>&aacute;dkashadkahsja</p>', 1, 100000, 1000, '2024-08-22', '2024-09-08', 1, 111, '2024-08-29 09:22:53', '2024-09-03 07:02:33', 2),
(19, 'summ', NULL, 1, 100000, 12, '2024-08-23', '2024-08-29', 1, 12, '2024-08-30 01:20:04', '2024-08-30 10:01:28', 100),
(20, 'bar', NULL, 1, 1000, 500000, '2024-08-29', '2024-09-11', 1, 10, '2024-08-30 01:35:26', '2024-09-06 08:48:17', 1),
(22, 'chimto', '<p>11212</p>', 1, 1212, 12, '2024-08-23', '2024-09-06', 1, 12, '2024-08-30 01:39:35', '2024-08-30 01:39:35', NULL),
(24, 'you', '<p>sd</p>', 0, 10, 100000, '2024-08-30', '2024-09-02', 1, 10, '2024-08-30 12:17:13', '2024-09-03 06:11:50', 12);

-- --------------------------------------------------------

--
-- Table structure for table `voucher_category`
--

CREATE TABLE `voucher_category` (
  `id` bigint UNSIGNED NOT NULL,
  `voucher_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_product`
--

CREATE TABLE `voucher_product` (
  `id` bigint UNSIGNED NOT NULL,
  `voucher_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_usage`
--

CREATE TABLE `voucher_usage` (
  `id` bigint UNSIGNED NOT NULL,
  `voucher_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `used_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voucher_usage`
--

INSERT INTO `voucher_usage` (`id`, `voucher_id`, `user_id`, `order_id`, `used_at`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 106, '2024-08-30 10:37:42', '2024-08-30 10:37:42', '2024-08-30 10:37:42'),
(2, 18, 1, 107, '2024-08-30 10:40:03', '2024-08-30 10:40:03', '2024-08-30 10:40:03'),
(3, 18, 1, 108, '2024-08-30 10:44:38', '2024-08-30 10:44:38', '2024-08-30 10:44:38'),
(4, 20, 1, 109, '2024-08-30 10:49:19', '2024-08-30 10:49:19', '2024-08-30 10:49:19'),
(5, 20, 1, 111, '2024-08-30 11:10:21', '2024-08-30 11:10:21', '2024-08-30 11:10:21'),
(6, 20, 1, 113, '2024-08-30 11:33:09', '2024-08-30 11:33:09', '2024-08-30 11:33:09'),
(7, 18, 1, 114, '2024-08-30 11:42:04', '2024-08-30 11:42:04', '2024-08-30 11:42:04'),
(8, 12, 1, 115, '2024-08-30 11:42:16', '2024-08-30 11:42:16', '2024-08-30 11:42:16'),
(9, 14, 1, 116, '2024-08-30 11:44:54', '2024-08-30 11:44:54', '2024-08-30 11:44:54'),
(10, 20, 1, 120, '2024-08-30 11:52:47', '2024-08-30 11:52:47', '2024-08-30 11:52:47'),
(11, 20, 1, 119, '2024-08-30 11:52:57', '2024-08-30 11:52:57', '2024-08-30 11:52:57'),
(12, 20, 1, 118, '2024-08-30 11:53:04', '2024-08-30 11:53:04', '2024-08-30 11:53:04'),
(13, 18, 1, 121, '2024-08-31 00:00:03', '2024-08-31 00:00:03', '2024-08-31 00:00:03'),
(14, 18, 1, 122, '2024-08-31 00:58:34', '2024-08-31 00:58:34', '2024-08-31 00:58:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_comments_product_id_foreign` (`product_id`),
  ADD KEY `product_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_option_values`
--
ALTER TABLE `product_option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_option_values_product_id_foreign` (`product_id`),
  ADD KEY `product_option_values_color_id_foreign` (`color_id`),
  ADD KEY `product_option_values_size_id_foreign` (`size_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `voucher_category`
--
ALTER TABLE `voucher_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `voucher_product`
--
ALTER TABLE `voucher_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_option_values`
--
ALTER TABLE `product_option_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `voucher_category`
--
ALTER TABLE `voucher_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_product`
--
ALTER TABLE `voucher_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_option_values`
--
ALTER TABLE `product_option_values`
  ADD CONSTRAINT `product_option_values_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `product_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_option_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_option_values_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_category`
--
ALTER TABLE `voucher_category`
  ADD CONSTRAINT `voucher_category_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_product`
--
ALTER TABLE `voucher_product`
  ADD CONSTRAINT `voucher_product_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  ADD CONSTRAINT `voucher_usage_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_usage_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_usage_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
