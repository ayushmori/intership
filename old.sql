-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `old`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'Apple', 'apple', 0, '2024-10-01 01:57:59', '2024-10-11 04:15:18', 33),
(8, 'Leptop 0222', 'leptop-0222', 0, '2024-10-11 00:08:36', '2024-10-11 04:15:09', 34),
(9, 'Adidas', 'adidas', 0, '2024-10-11 00:09:03', '2024-10-11 04:14:57', 35),
(10, 'vivo', 'vivo', 0, '2024-10-11 05:05:12', '2024-10-11 05:05:12', 33),
(11, 'HM', 'hm', 0, '2024-10-16 23:41:18', '2024-10-16 23:41:18', 35);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(33, 'Mobile', 'mobile', 'Mobile', 'uploads/category/1728558564.jpg', 'mobile', 'mobile', 'mobile', 0, '2024-10-10 05:39:24', '2024-10-10 05:39:24'),
(34, 'Leptop', 'leptop', 'Leptop', 'uploads/category/1728558609.png', 'Leptop', 'Leptop', 'Leptop', 0, '2024-10-10 05:40:09', '2024-10-10 05:40:09'),
(35, 'Men\'s', 'mens', 'Men\'s', 'uploads/category/1729160243.jpg', 'Man t-shirt', 'Man t-shirt', 'Man t-shirt', 0, '2024-10-10 05:40:43', '2024-10-17 04:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Green', 'green', 1, '2024-10-07 00:31:49', '2024-10-14 00:06:12'),
(3, 'Red', 'red', 0, '2024-10-07 02:27:55', '2024-10-07 02:27:55'),
(4, 'Blue', 'blue', 0, '2024-10-07 02:28:13', '2024-10-07 02:28:13'),
(6, 'black', 'black', 0, '2024-10-15 02:20:51', '2024-10-15 02:20:51'),
(7, 'White', 'white', 0, '2024-10-16 23:46:41', '2024-10-16 23:46:41'),
(8, 'bisque', 'bisque', 0, '2024-10-21 00:22:52', '2024-10-21 00:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2024_09_26_114914_create_users_table', 2),
(26, '2024_09_27_095158_add_details_to_users_table', 2),
(27, '2024_09_27_100722_add_fields_to_users_table', 3),
(28, '2024_09_28_061620_create_categories_table', 4),
(29, '2024_10_01_054321_create_brands_table', 5),
(30, '2024_10_02_064226_create_products_table', 6),
(31, '2024_10_02_065639_create_product__image_table', 6),
(33, '2024_10_06_073822_create_colors_table', 7),
(34, '2024_10_07_081810_create_product_colors_table', 8),
(35, '2024_10_08_072221_create_silders_table', 9),
(36, '2024_10_11_081612_add_category_id_to_brands_table', 10),
(37, '2024_10_14_094917_create_wishlists_table', 11),
(38, '2024_10_16_072054_create_carts_table', 12),
(39, '2024_10_18_074317_create_orders_table', 13),
(40, '2024_10_18_074937_create_order_items_table', 13),
(42, '2024_10_24_111141_create_settings_table', 14),
(56, '2024_10_26_060236_create_user_details_table', 15),
(57, '2024_11_06_075215_create_contacts_table', 15),
(58, '2024_11_07_062642_add_colors_to_settings_table', 15),
(59, '2024_11_07_080201_add_brand_fields_to_settings_table', 15),
(60, '2024_11_07_082224_add_brand_logo_to_settings_table', 15),
(61, '2024_11_07_104643_add_brand_logo_to_settings_table', 15),
(62, '2024_11_07_110922_add_brand_logo_to_settings_table', 15),
(63, '2024_11_08_055517_add_brand_logo_to_settings_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Fuerte-LknkwecC3h', 'Admin', 'admin@gamil.com', '5411111111', '360311', 'gondal', 'in progress', 'Cash on Delivery', NULL, '2024-10-25 04:30:59', '2024-10-18 05:03:59'),
(2, 2, 'Fuerte-d3nmORJFcm', 'Admin', 'admin@gamil.com', '54141112155', '454555', 'ad', 'pending', 'Cash on Delivery', NULL, '2024-10-25 04:30:07', '2024-10-23 01:27:37'),
(3, 2, 'Fuerte-st2Rr6UA9u', 'Admin', 'admin@gamil.com', '4545455454', '454545', 'gondal', 'in progress', 'Cash on Delivery', NULL, '2024-09-21 00:46:44', '2024-10-21 00:46:44'),
(4, 2, 'Fuerte-prcovw1OaD', 'Admin', 'admin@gamil.com', '4545455445', '454545', 'asdas', 'in progress', 'Cash on Delivery', NULL, '2024-10-21 00:52:21', '2024-10-21 00:52:21'),
(5, 2, 'Fuerte-RTbgPV11Wr', 'Admin', 'admin@gamil.com', '4545454545', '363223', 'sddf', 'in progress', 'Cash on Delivery', NULL, '2024-10-21 01:02:15', '2024-10-21 01:02:15'),
(6, 2, 'Fuerte-CBOvzz8ezI', 'Admin', 'admin@gamil.com', '1212121212', '122345', 'abcd', 'pending', 'Cash on Delivery', NULL, '2024-10-22 23:27:20', '2024-10-23 02:40:14'),
(7, 4, 'Fuerte-l4SgSnDMrr', 'ayush aaa', 'aaa@gamil.com', '4545545454', '666656', 'sss', 'in progress', 'Cash on Delivery', NULL, '2024-10-25 04:59:09', '2024-10-25 04:59:09'),
(8, 2, 'Fuerte-3xmxNprpWT', 'Admin', 'ayushmori2004@gamil.com', '1212212125', '360311', 'gondal', 'in progress', 'Cash on Delivery', NULL, '2024-10-26 04:33:01', '2024-10-26 04:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 24, 2, 35000, '2024-10-18 05:03:59', '2024-10-18 05:03:59'),
(2, 1, 7, NULL, 5, 30000, '2024-10-18 05:03:59', '2024-10-18 05:03:59'),
(3, 2, 10, 24, 2, 35000, '2024-10-18 05:30:07', '2024-10-18 05:30:07'),
(4, 2, 7, NULL, 5, 30000, '2024-10-18 05:30:07', '2024-10-18 05:30:07'),
(5, 3, 18, NULL, 2, 1100, '2024-10-21 00:46:44', '2024-10-21 00:46:44'),
(6, 4, 22, NULL, 1, 2600, '2024-10-21 00:52:21', '2024-10-21 00:52:21'),
(7, 5, 22, NULL, 2, 2600, '2024-10-21 01:02:15', '2024-10-21 01:02:15'),
(8, 6, 21, NULL, 1, 2300, '2024-10-22 23:27:20', '2024-10-22 23:27:20'),
(9, 6, 28, NULL, 1, 750, '2024-10-22 23:27:20', '2024-10-22 23:27:20'),
(10, 7, 17, 19, 1, 98000, '2024-10-25 04:59:09', '2024-10-25 04:59:09'),
(11, 7, 7, NULL, 1, 30000, '2024-10-25 04:59:09', '2024-10-25 04:59:09'),
(12, 8, 7, NULL, 1, 30000, '2024-10-26 04:33:01', '2024-10-26 04:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(7, 33, 'Iphone 11', 'mobile', 'Apple', 'Mobile', 'Mobile', 35000, 30000, 7, 0, 1, 0, 'Iphone 11', 'mobile', 'mobile', '2024-10-10 23:59:24', '2024-10-26 04:33:01'),
(8, 34, 'Leptop', 'leptop', 'Leptop 0222', 'Leptop', 'leptop', 5500, 5000, 5, 1, 1, 0, 'Leptop', 'Leptop', 'Leptop', '2024-10-11 00:11:03', '2024-10-11 00:11:03'),
(10, 33, 'Iphone 12', 'iphone-12', 'Apple', 'Iphone 12', 'Iphone 12', 42000, 35000, 5, 1, 0, 0, 'Iphone 12', 'Iphone 12', 'Iphone 12', '2024-10-11 02:07:34', '2024-10-11 02:07:34'),
(11, 33, 'Iphone 13', 'iphone-13', 'Apple', 'Iphone 13', 'Iphone 13', 45000, 42000, 5, 0, 0, 0, 'Iphone 13', 'Iphone 13', 'Iphone 13', '2024-10-11 02:08:45', '2024-10-11 02:08:45'),
(13, 33, 'Iphone 13 Pro Max', 'iphone-13-pro-max', 'Apple', 'Iphone 13 Pro Max', 'Iphone 13 Pro Max', 60000, 57000, 5, 1, 0, 0, 'Iphone 13 Pro Max', 'Iphone 13 Pro Max', 'Iphone 13 Pro Max', '2024-10-11 02:11:27', '2024-10-11 02:11:27'),
(14, 33, 'Iphone 14', 'iphone-14', 'Apple', 'Iphone 14', 'Iphone 14', 65000, 60000, 5, 0, 0, 0, 'Iphone 14', 'Iphone 14', 'Iphone 14', '2024-10-11 02:12:21', '2024-10-11 02:12:21'),
(15, 33, 'Iphone 15', 'iphone-15', 'Apple', 'Iphone 15', 'Iphone 15', 70000, 68000, 5, 1, 0, 0, 'Iphone 15', 'Iphone 15', 'Iphone 15', '2024-10-11 02:13:53', '2024-10-11 02:13:53'),
(17, 33, 'Iphone 16 Pro Max', 'iphone-16-pro-max', 'Apple', 'Iphone 16 Pro Max', 'Iphone 16 Pro Max', 120000, 98000, 5, 0, 0, 0, 'Iphone 16 Pro Max', 'Iphone 16 Pro Max', 'Iphone 16 Pro Max', '2024-10-11 02:16:02', '2024-10-11 02:16:02'),
(18, 35, 'Shirt', 'shirt', 'HM', 'Shirt', 'Shirt', 1200, 1100, 3, 1, 0, 0, 'Shirt', 'Shirt', 'Shirt', '2024-10-16 23:42:45', '2024-10-21 00:46:44'),
(19, 35, 'Shirt New', 'shirt-new', 'HM', 'Shirt', 'Shirt', 1420, 1350, 5, 0, 0, 0, 'Shirt', 'Shirt', 'Shirt', '2024-10-16 23:43:44', '2024-10-18 06:17:12'),
(20, 35, 'Jeans', 'jeans', 'HM', 'Jeans', 'Jeans', 1700, 1650, 5, 1, 0, 0, 'Jeans', 'Jeans', 'Jeans', '2024-10-16 23:45:20', '2024-10-16 23:45:20'),
(21, 35, 'Jeans Brand', 'jeans-brand', 'HM', 'Jeans', 'Jeans', 2500, 2300, 4, 0, 0, 0, 'Jeans', 'Jeans', 'Jeans', '2024-10-16 23:47:40', '2024-10-22 23:27:20'),
(22, 35, 'Jeans Black_white', 'jeans-black-white', 'HM', 'Jeans', 'Jeans', 2700, 2600, 2, 0, 0, 0, 'Jeans', 'Jeans', 'Jeans', '2024-10-16 23:48:42', '2024-10-21 01:02:15'),
(23, 35, 'Jackets', 'jackets', 'HM', 'Jackets', 'Jackets', 1800, 1650, 5, 0, 0, 0, 'Jackets', 'Jackets', 'Jackets', '2024-10-16 23:50:17', '2024-10-16 23:50:17'),
(24, 35, 'Jacket White', 'jackets-white', 'HM', 'Jackets', 'Jackets', 2650, 2530, 5, 1, 0, 0, 'Jackets', 'Jackets', 'Jackets', '2024-10-16 23:51:33', '2024-10-18 06:19:17'),
(25, 35, 'Jacket Brand', 'jackets-brand', 'HM', 'Jackets', 'Jackets', 1800, 1560, 5, 1, 0, 0, 'Jackets', 'Jackets', 'Jackets', '2024-10-16 23:52:36', '2024-10-18 06:19:32'),
(26, 35, 'T-Shirt Black', 't-shirt-black', 'HM', 'T-Shirt', 'T-Shirt', 800, 875, 5, 0, 0, 0, 'T-Shirt', 'T-Shirt', 'T-Shirt', '2024-10-16 23:54:02', '2024-10-18 06:19:46'),
(27, 35, 'T-Shirt', 't-shirt', 'HM', 'T-Shirt', 'T-Shirt', 900, 850, 5, 0, 0, 0, 'T-Shirt', 'T-Shirt', 'T-Shirt', '2024-10-16 23:55:10', '2024-10-16 23:55:10'),
(28, 35, 'T-Shirt Brand', 't-shirt-brand', 'HM', 'T-Shirt', 'T-Shirt', 900, 750, 4, 0, 0, 0, 'T-Shirt', 'T-Shirt', 'T-Shirt', '2024-10-16 23:56:11', '2024-10-22 23:27:20'),
(29, 35, 'T-Shirt Black-print', 't-shirt-black-print', 'HM', 'T-Shirt', 'T-Shirt', 800, 650, 5, 1, 0, 0, 'T-Shirt', 'T-Shirt', 'T-Shirt', '2024-10-16 23:57:09', '2024-10-18 06:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 8, 2, 5, '2024-10-11 00:11:03', '2024-10-11 00:11:03'),
(8, 8, 3, 2, '2024-10-11 00:11:03', '2024-10-11 00:11:03'),
(11, 10, 2, 5, '2024-10-11 02:07:34', '2024-10-11 02:07:34'),
(12, 11, 3, 5, '2024-10-11 02:08:45', '2024-10-11 02:08:45'),
(14, 13, 2, 5, '2024-10-11 02:11:27', '2024-10-11 02:11:27'),
(15, 14, 2, 5, '2024-10-11 02:12:54', '2024-10-11 02:12:54'),
(16, 15, 4, 5, '2024-10-11 02:13:53', '2024-10-11 02:13:53'),
(18, 17, 2, 5, '2024-10-11 02:16:02', '2024-10-11 02:16:02'),
(19, 17, 3, 4, '2024-10-11 02:16:02', '2024-10-25 04:59:09'),
(24, 10, 3, 5, '2024-10-16 02:45:49', '2024-10-16 02:45:49'),
(25, 18, 3, 5, '2024-10-16 23:42:45', '2024-10-16 23:42:45'),
(26, 19, 4, 5, '2024-10-16 23:43:44', '2024-10-16 23:43:44'),
(27, 20, 6, 5, '2024-10-16 23:45:20', '2024-10-16 23:45:20'),
(29, 22, 7, 5, '2024-10-16 23:48:42', '2024-10-16 23:48:42'),
(30, 23, 6, 5, '2024-10-16 23:50:17', '2024-10-16 23:50:17'),
(33, 26, 6, 5, '2024-10-16 23:54:02', '2024-10-16 23:54:02'),
(34, 27, 4, 5, '2024-10-16 23:55:10', '2024-10-16 23:55:10'),
(36, 29, 6, 5, '2024-10-16 23:57:09', '2024-10-16 23:57:09'),
(37, 21, 8, 5, '2024-10-21 00:23:19', '2024-10-21 00:23:19'),
(38, 28, 8, 5, '2024-10-21 00:23:55', '2024-10-21 00:23:55'),
(39, 24, 8, 5, '2024-10-21 00:24:20', '2024-10-21 00:24:20'),
(40, 25, 8, 5, '2024-10-21 00:25:19', '2024-10-21 00:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `product__image`
--

CREATE TABLE `product__image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product__image`
--

INSERT INTO `product__image` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(12, 8, 'uploads/products/17286252631.png', '2024-10-11 00:11:03', '2024-10-11 00:11:03'),
(15, 10, 'uploads/products/17286322541.jpg', '2024-10-11 02:07:34', '2024-10-11 02:07:34'),
(16, 11, 'uploads/products/17286323251.jpg', '2024-10-11 02:08:45', '2024-10-11 02:08:45'),
(18, 13, 'uploads/products/17286324871.jpeg', '2024-10-11 02:11:27', '2024-10-11 02:11:27'),
(19, 14, 'uploads/products/17286325411.jpeg', '2024-10-11 02:12:21', '2024-10-11 02:12:21'),
(20, 15, 'uploads/products/17286326331.jpg', '2024-10-11 02:13:53', '2024-10-11 02:13:53'),
(22, 17, 'uploads/products/17286327621.jpg', '2024-10-11 02:16:02', '2024-10-11 02:16:02'),
(23, 7, 'uploads/products/17288908351.jpg', '2024-10-14 01:57:15', '2024-10-14 01:57:15'),
(24, 18, 'uploads/products/17291419651.jpg', '2024-10-16 23:42:45', '2024-10-16 23:42:45'),
(25, 19, 'uploads/products/17291420241.jpg', '2024-10-16 23:43:44', '2024-10-16 23:43:44'),
(26, 20, 'uploads/products/17291421201.jpg', '2024-10-16 23:45:20', '2024-10-16 23:45:20'),
(27, 21, 'uploads/products/17291422601.jpg', '2024-10-16 23:47:40', '2024-10-16 23:47:40'),
(28, 22, 'uploads/products/17291423221.jpg', '2024-10-16 23:48:42', '2024-10-16 23:48:42'),
(29, 23, 'uploads/products/17291424171.jpg', '2024-10-16 23:50:17', '2024-10-16 23:50:17'),
(30, 24, 'uploads/products/17291424931.jpg', '2024-10-16 23:51:33', '2024-10-16 23:51:33'),
(31, 25, 'uploads/products/17291425561.jpg', '2024-10-16 23:52:36', '2024-10-16 23:52:36'),
(32, 26, 'uploads/products/17291426421.jpg', '2024-10-16 23:54:02', '2024-10-16 23:54:02'),
(33, 27, 'uploads/products/17291427101.jpg', '2024-10-16 23:55:10', '2024-10-16 23:55:10'),
(34, 28, 'uploads/products/17291427711.jpg', '2024-10-16 23:56:11', '2024-10-16 23:56:11'),
(35, 29, 'uploads/products/17291428291.jpg', '2024-10-16 23:57:09', '2024-10-16 23:57:09'),
(40, 11, 'uploads/products/17297513471.jpg', '2024-10-24 00:59:07', '2024-10-24 00:59:07'),
(41, 11, 'uploads/products/17297513482.jpg', '2024-10-24 00:59:08', '2024-10-24 00:59:08'),
(42, 15, 'uploads/products/17297513801.jpg', '2024-10-24 00:59:40', '2024-10-24 00:59:40'),
(43, 15, 'uploads/products/17297513802.jpg', '2024-10-24 00:59:40', '2024-10-24 00:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(500) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_color` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  `footer_color` varchar(7) NOT NULL DEFAULT '#000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `brand_logo`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`, `header_color`, `footer_color`) VALUES
(1, 'Fuerte ecommm', 'uploads/brand-logo/1731064755_c02ed4266264743.5c08ca25c8a15.png', 'Fuerte', 'Fuerte', 'Fuerte', 'Fuerte', '405 - The Spire, 150 Feet Ring Rd, Rajkot, Gujarat 360007', '9999999999', '99999999', 'fuerteecom@gmail.com', 'fuerteecom@gmail.com', NULL, 'ayush', NULL, NULL, '2024-10-24 06:13:11', '2024-11-08 06:23:02', '#c7a6a6', '#c7a6a6');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1-Hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, '<span>Best Ecommerce Solutions 2 </span> to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients in achieving a strong online presence and maximum company profit.', 'uploads/slider/1728544515.jpg', 0, '2024-10-10 00:40:27', '2024-10-10 01:45:15'),
(4, '<span>Best Ecommerce Solutions 1 </span>  to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our client in achieving a strong online presence and maximum company profit.', 'uploads/slider/1728540763.jpg', 0, '2024-10-10 00:42:43', '2024-10-10 00:42:43'),
(5, '<span>Best Ecommerce Solutions 3 </span> to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients in achieving a strong online presence and maximum company profit.', 'uploads/slider/1728541071.jpg', 0, '2024-10-10 00:47:51', '2024-10-10 00:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `confirm_password`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'ayush', 'ayush@gamil.com', '$2y$10$Uw/I0To0vcvNpAMuKMB21OmhBwje5lvdCiqggQW.G8FMMDI778yf.', NULL, '2024-09-27 04:39:54', '2024-09-27 04:39:54', 0),
(5, 'Admin', 'admin@gmail.com', '$2y$10$w6vEZbW09KIyAVprNdEuBuK6LOLOSfIcqOO8pRZ5vDIxUARttIbJG', NULL, '2024-11-06 01:36:50', '2024-11-06 01:36:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 4, 14, '2024-10-15 23:57:14', '2024-10-15 23:57:14'),
(8, 4, 8, '2024-10-16 00:01:11', '2024-10-16 00:01:11'),
(10, 2, 7, '2024-10-24 01:47:41', '2024-10-24 01:47:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product__image`
--
ALTER TABLE `product__image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product__image_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product__image`
--
ALTER TABLE `product__image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product__image`
--
ALTER TABLE `product__image`
  ADD CONSTRAINT `product__image_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
