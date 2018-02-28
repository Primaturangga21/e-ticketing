-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 06:06 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_orderticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug` text COLLATE utf8_unicode_ci,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bugs`
--

INSERT INTO `bugs` (`id`, `bug`, `user_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'test', '1', '2018-02-19 22:00:16', '2018-02-19 22:00:16', NULL),
(2, 'test', '1', '2018-02-19 22:00:16', '2018-02-19 22:00:16', NULL),
(3, 'ape naaa', '11', '2018-02-19 22:02:00', '2018-02-19 22:03:05', NULL),
(4, 'dashboard error', '11', '2018-02-19 22:04:05', '2018-02-19 22:04:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`, `province_id`) VALUES
(1, 'Bandung', '2018-02-18 17:27:56', '2018-02-18 17:27:56', 1),
(2, 'Cicalengka', '2018-02-18 17:28:55', '2018-02-18 17:28:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone`, `created_at`, `updated_at`, `gender`, `user_id`) VALUES
(1, 'Ivan Primaturangga', 'sdadsad', '081246866917', '2018-02-14 10:58:00', '2018-02-18 17:48:20', 'option1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(64, 8, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(66, 8, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, NULL, 3),
(67, 8, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:12\",\"messages\":{\"max\":\"This :attribute field maximum :max.\"}}}', 4),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(71, 8, 'gender', 'select_dropdown', 'Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Male\",\"option2\":\"Female\"}}', 8),
(72, 8, 'customer_hasone_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 9),
(73, 11, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(74, 11, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, NULL, 2),
(75, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(76, 12, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, NULL, 2),
(77, 12, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(78, 12, 'seat_qty', 'number', 'Seat Qty', 0, 1, 1, 1, 1, 1, NULL, 4),
(79, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(80, 13, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, NULL, 2),
(81, 14, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 14, 'provinces', 'text', 'Provinces', 0, 1, 1, 1, 1, 1, NULL, 2),
(83, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(84, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(85, 15, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(86, 15, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, NULL, 2),
(87, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(88, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(89, 16, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(90, 16, 'reservation_code', 'text', 'Reservation Code', 0, 1, 1, 1, 1, 1, NULL, 2),
(91, 16, 'reservation_at', 'text', 'Reservation At', 0, 1, 1, 1, 1, 1, NULL, 3),
(92, 16, 'reservation_date', 'date', 'Reservation Date', 0, 1, 1, 1, 1, 1, NULL, 4),
(93, 16, 'seat_code', 'text', 'Seat Code', 0, 1, 1, 1, 1, 1, NULL, 5),
(94, 16, 'depart_at', 'text', 'Depart At', 0, 1, 1, 1, 1, 1, NULL, 6),
(95, 16, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, NULL, 7),
(96, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(97, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(98, 16, 'reservation_hasone_customer_relationship', 'relationship', 'customers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 10),
(99, 16, 'reservation_hasone_rute_relationship', 'relationship', 'rutes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Rute\",\"table\":\"rutes\",\"type\":\"belongsTo\",\"column\":\"rute_id\",\"key\":\"id\",\"label\":\"depart_at\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 11),
(100, 16, 'reservation_hasone_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 12),
(101, 13, 'rute_hasone_transportation_relationship', 'relationship', 'transportations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Transportation\",\"table\":\"transportations\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 3),
(102, 12, 'transportation_hasone_transportation_type_relationship', 'relationship', 'transportation_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TransportationType\",\"table\":\"transportation_types\",\"type\":\"belongsTo\",\"column\":\"transportationType_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 7),
(103, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(104, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(106, 16, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(107, 16, 'rute_id', 'text', 'Rute Id', 0, 1, 1, 1, 1, 1, NULL, 11),
(108, 16, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(109, 8, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(110, 12, 'transportationType_id', 'text', 'TransportationType Id', 0, 1, 1, 1, 1, 1, NULL, 7),
(111, 13, 'rute_belongsto_city_relationship', 'relationship', 'cities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"rute_from\",\"key\":\"id\",\"label\":\"city\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 4),
(112, 13, 'rute_belongsto_city_relationship_1', 'relationship', 'cities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"rute_to\",\"key\":\"id\",\"label\":\"city\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 5),
(113, 13, 'depart_at', 'checkbox', 'Depart At', 0, 1, 1, 1, 1, 1, NULL, 3),
(114, 13, 'rute_from', 'text', 'Rute From', 0, 1, 1, 1, 1, 1, NULL, 4),
(115, 13, 'rute_to', 'text', 'Rute To', 0, 1, 1, 1, 1, 1, NULL, 5),
(116, 13, 'transportation_id', 'text', 'Transportation Id', 0, 1, 1, 1, 1, 1, NULL, 6),
(117, 15, 'city_belongsto_province_relationship', 'relationship', 'provinces', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Province\",\"table\":\"provinces\",\"type\":\"belongsTo\",\"column\":\"province_id\",\"key\":\"id\",\"label\":\"provinces\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 5),
(118, 15, 'province_id', 'checkbox', 'Province Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(119, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(120, 17, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(121, 17, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, NULL, 3),
(122, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 4),
(123, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(124, 17, 'testimonial_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 6),
(133, 20, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(134, 20, 'bug', 'text_area', 'Bug', 0, 1, 1, 1, 1, 1, NULL, 2),
(135, 20, 'user_id', 'hidden', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(136, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(137, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(138, 20, 'bug_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"bugs\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"bugs\",\"pivot\":\"0\"}', 6),
(139, 20, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-02-14 02:41:20', '2018-02-14 02:41:20'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-02-14 02:41:21', '2018-02-14 02:41:21'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-02-14 02:41:21', '2018-02-14 02:41:21'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-02-14 02:41:21', '2018-02-14 02:41:21'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-02-14 02:41:21', '2018-02-14 02:41:21'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-02-14 02:41:21', '2018-02-14 02:41:21'),
(8, 'customers', 'customers', 'Customer', 'Customers', 'voyager-people', 'App\\Customer', NULL, NULL, NULL, 1, 1, '2018-02-14 10:53:14', '2018-02-14 10:53:14'),
(11, 'transportation_types', 'transportation-types', 'Transportation Type', 'Transportation Types', 'voyager-anchor', 'App\\TransportationType', NULL, NULL, NULL, 1, 1, '2018-02-14 11:03:22', '2018-02-14 11:03:22'),
(12, 'transportations', 'transportations', 'Transportation', 'Transportations', 'voyager-boat', 'App\\Transportation', NULL, NULL, NULL, 1, 1, '2018-02-14 11:11:15', '2018-02-14 11:11:15'),
(13, 'rutes', 'rutes', 'Rute', 'Rutes', 'voyager-world', 'App\\Rute', NULL, NULL, NULL, 1, 1, '2018-02-14 11:15:44', '2018-02-14 11:15:44'),
(14, 'provinces', 'provinces', 'Province', 'Provinces', 'voyager-location', 'App\\Province', NULL, NULL, NULL, 1, 1, '2018-02-14 11:18:51', '2018-02-14 11:19:19'),
(15, 'cities', 'cities', 'City', 'Cities', 'voyager-milestone', 'App\\City', NULL, NULL, NULL, 1, 0, '2018-02-14 11:20:17', '2018-02-14 11:20:17'),
(16, 'reservations', 'reservations', 'Reservation', 'Reservations', 'voyager-news', 'App\\Reservation', NULL, NULL, NULL, 1, 0, '2018-02-14 11:25:39', '2018-02-14 11:25:39'),
(17, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-github', 'App\\Testimonial', NULL, NULL, NULL, 1, 1, '2018-02-18 18:48:50', '2018-02-19 21:42:26'),
(20, 'bugs', 'bugs', 'Bug', 'Bugs', 'voyager-bug', 'App\\Bug', NULL, NULL, NULL, 1, 1, '2018-02-19 21:59:22', '2018-02-19 21:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-02-14 02:41:22', '2018-02-14 02:41:22'),
(2, 'Front', '2018-02-14 19:59:45', '2018-02-14 19:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-02-14 02:41:22', '2018-02-14 02:41:22', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 17, 3, '2018-02-14 02:41:22', '2018-02-14 11:05:25', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, 17, 1, '2018-02-14 02:41:22', '2018-02-14 11:05:23', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, 16, 1, '2018-02-14 02:41:22', '2018-02-14 11:04:20', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 17, 4, '2018-02-14 02:41:22', '2018-02-14 11:05:29', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 17, 2, '2018-02-14 02:41:22', '2018-02-14 11:05:25', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 16, 2, '2018-02-14 02:41:22', '2018-02-14 11:04:23', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-02-14 02:41:23', '2018-02-18 18:50:53', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-02-14 02:41:23', '2018-02-14 11:04:15', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-02-14 02:41:23', '2018-02-14 11:04:15', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-02-14 02:41:23', '2018-02-14 11:04:15', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-02-14 02:41:23', '2018-02-18 18:50:53', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-02-14 02:41:26', '2018-02-14 11:04:15', 'voyager.hooks', NULL),
(14, 1, 'Customers', '/admin/customers', '_self', 'voyager-people', NULL, NULL, 6, '2018-02-14 10:33:33', '2018-02-18 17:26:55', NULL, NULL),
(15, 1, 'Transportation Types', '/admin/transportation-types', '_self', 'voyager-anchor', NULL, 18, 2, '2018-02-14 11:03:22', '2018-02-14 11:16:49', NULL, NULL),
(16, 1, 'Account Setting', '', '_self', 'voyager-person', '#000000', NULL, 8, '2018-02-14 11:04:03', '2018-02-18 18:50:53', NULL, ''),
(17, 1, 'Blog', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2018-02-14 11:05:05', '2018-02-14 11:26:06', NULL, ''),
(18, 1, 'Transportations', '', '_self', 'voyager-boat', '#000000', NULL, 4, '2018-02-14 11:06:05', '2018-02-14 11:26:06', NULL, ''),
(19, 1, 'Transportations', '/admin/transportations', '_self', 'voyager-boat', NULL, 18, 1, '2018-02-14 11:11:15', '2018-02-14 11:16:49', NULL, NULL),
(20, 1, 'Rutes', '/admin/rutes', '_self', 'voyager-world', NULL, 21, 1, '2018-02-14 11:15:44', '2018-02-18 17:26:42', NULL, NULL),
(21, 1, 'Rutes', '', '_self', 'voyager-location', '#000000', NULL, 5, '2018-02-14 11:17:21', '2018-02-18 17:26:54', NULL, ''),
(22, 1, 'Provinces', '/admin/provinces', '_self', 'voyager-location', '#000000', 21, 2, '2018-02-14 11:18:51', '2018-02-18 17:27:16', NULL, ''),
(23, 1, 'Cities', '/admin/cities', '_self', 'voyager-milestone', NULL, 21, 3, '2018-02-14 11:20:17', '2018-02-18 17:26:42', NULL, NULL),
(24, 1, 'Reservations', '/admin/reservations', '_self', 'voyager-news', NULL, NULL, 2, '2018-02-14 11:25:39', '2018-02-14 11:26:06', NULL, NULL),
(26, 2, 'Blog', '/blog', '_self', NULL, '#000000', NULL, 9, '2018-02-14 20:01:28', '2018-02-16 07:42:22', NULL, ''),
(27, 2, 'Cek Order', '/order', '_self', NULL, '#000000', NULL, 10, '2018-02-14 20:04:56', '2018-02-18 19:35:06', NULL, ''),
(28, 2, 'Daftar Transaksi', '/transaction', '_self', NULL, '#000000', NULL, 11, '2018-02-14 20:05:46', '2018-02-18 19:35:24', NULL, ''),
(29, 2, 'Bantuan', '/help', '_self', NULL, '#000000', NULL, 12, '2018-02-14 20:06:02', '2018-02-18 19:35:33', NULL, ''),
(30, 1, 'Testimonials', '/admin/testimonials', '_self', '&#xe03c;', NULL, NULL, 7, '2018-02-18 18:48:51', '2018-02-18 18:50:53', NULL, NULL),
(32, 1, 'Bugs', '/admin/bugs', '_self', 'voyager-bug', NULL, NULL, 14, '2018-02-19 21:40:25', '2018-02-19 21:40:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_02_16_181656_create_user_roles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(2, 'browse_database', NULL, '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(3, 'browse_media', NULL, '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(4, 'browse_compass', NULL, '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(5, 'browse_menus', 'menus', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(6, 'read_menus', 'menus', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(7, 'edit_menus', 'menus', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(8, 'add_menus', 'menus', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(9, 'delete_menus', 'menus', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(10, 'browse_pages', 'pages', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(11, 'read_pages', 'pages', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(12, 'edit_pages', 'pages', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(13, 'add_pages', 'pages', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(14, 'delete_pages', 'pages', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(15, 'browse_roles', 'roles', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(16, 'read_roles', 'roles', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(17, 'edit_roles', 'roles', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(18, 'add_roles', 'roles', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(19, 'delete_roles', 'roles', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(20, 'browse_users', 'users', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(21, 'read_users', 'users', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(22, 'edit_users', 'users', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(23, 'add_users', 'users', '2018-02-14 02:41:23', '2018-02-14 02:41:23', NULL),
(24, 'delete_users', 'users', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(25, 'browse_posts', 'posts', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(26, 'read_posts', 'posts', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(27, 'edit_posts', 'posts', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(28, 'add_posts', 'posts', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(29, 'delete_posts', 'posts', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(30, 'browse_categories', 'categories', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(31, 'read_categories', 'categories', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(32, 'edit_categories', 'categories', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(33, 'add_categories', 'categories', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(34, 'delete_categories', 'categories', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(35, 'browse_settings', 'settings', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(36, 'read_settings', 'settings', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(37, 'edit_settings', 'settings', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(38, 'add_settings', 'settings', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(39, 'delete_settings', 'settings', '2018-02-14 02:41:24', '2018-02-14 02:41:24', NULL),
(40, 'browse_hooks', NULL, '2018-02-14 02:41:26', '2018-02-14 02:41:26', NULL),
(46, 'browse_customers', 'customers', '2018-02-14 10:53:14', '2018-02-14 10:53:14', NULL),
(47, 'read_customers', 'customers', '2018-02-14 10:53:14', '2018-02-14 10:53:14', NULL),
(48, 'edit_customers', 'customers', '2018-02-14 10:53:14', '2018-02-14 10:53:14', NULL),
(49, 'add_customers', 'customers', '2018-02-14 10:53:14', '2018-02-14 10:53:14', NULL),
(50, 'delete_customers', 'customers', '2018-02-14 10:53:14', '2018-02-14 10:53:14', NULL),
(51, 'browse_transportation_types', 'transportation_types', '2018-02-14 11:03:22', '2018-02-14 11:03:22', NULL),
(52, 'read_transportation_types', 'transportation_types', '2018-02-14 11:03:22', '2018-02-14 11:03:22', NULL),
(53, 'edit_transportation_types', 'transportation_types', '2018-02-14 11:03:22', '2018-02-14 11:03:22', NULL),
(54, 'add_transportation_types', 'transportation_types', '2018-02-14 11:03:22', '2018-02-14 11:03:22', NULL),
(55, 'delete_transportation_types', 'transportation_types', '2018-02-14 11:03:22', '2018-02-14 11:03:22', NULL),
(56, 'browse_transportations', 'transportations', '2018-02-14 11:11:15', '2018-02-14 11:11:15', NULL),
(57, 'read_transportations', 'transportations', '2018-02-14 11:11:15', '2018-02-14 11:11:15', NULL),
(58, 'edit_transportations', 'transportations', '2018-02-14 11:11:15', '2018-02-14 11:11:15', NULL),
(59, 'add_transportations', 'transportations', '2018-02-14 11:11:15', '2018-02-14 11:11:15', NULL),
(60, 'delete_transportations', 'transportations', '2018-02-14 11:11:15', '2018-02-14 11:11:15', NULL),
(61, 'browse_rutes', 'rutes', '2018-02-14 11:15:44', '2018-02-14 11:15:44', NULL),
(62, 'read_rutes', 'rutes', '2018-02-14 11:15:44', '2018-02-14 11:15:44', NULL),
(63, 'edit_rutes', 'rutes', '2018-02-14 11:15:44', '2018-02-14 11:15:44', NULL),
(64, 'add_rutes', 'rutes', '2018-02-14 11:15:44', '2018-02-14 11:15:44', NULL),
(65, 'delete_rutes', 'rutes', '2018-02-14 11:15:44', '2018-02-14 11:15:44', NULL),
(66, 'browse_provinces', 'provinces', '2018-02-14 11:18:51', '2018-02-14 11:18:51', NULL),
(67, 'read_provinces', 'provinces', '2018-02-14 11:18:51', '2018-02-14 11:18:51', NULL),
(68, 'edit_provinces', 'provinces', '2018-02-14 11:18:51', '2018-02-14 11:18:51', NULL),
(69, 'add_provinces', 'provinces', '2018-02-14 11:18:51', '2018-02-14 11:18:51', NULL),
(70, 'delete_provinces', 'provinces', '2018-02-14 11:18:51', '2018-02-14 11:18:51', NULL),
(71, 'browse_cities', 'cities', '2018-02-14 11:20:17', '2018-02-14 11:20:17', NULL),
(72, 'read_cities', 'cities', '2018-02-14 11:20:17', '2018-02-14 11:20:17', NULL),
(73, 'edit_cities', 'cities', '2018-02-14 11:20:17', '2018-02-14 11:20:17', NULL),
(74, 'add_cities', 'cities', '2018-02-14 11:20:17', '2018-02-14 11:20:17', NULL),
(75, 'delete_cities', 'cities', '2018-02-14 11:20:17', '2018-02-14 11:20:17', NULL),
(76, 'browse_reservations', 'reservations', '2018-02-14 11:25:39', '2018-02-14 11:25:39', NULL),
(77, 'read_reservations', 'reservations', '2018-02-14 11:25:39', '2018-02-14 11:25:39', NULL),
(78, 'edit_reservations', 'reservations', '2018-02-14 11:25:39', '2018-02-14 11:25:39', NULL),
(79, 'add_reservations', 'reservations', '2018-02-14 11:25:39', '2018-02-14 11:25:39', NULL),
(80, 'delete_reservations', 'reservations', '2018-02-14 11:25:39', '2018-02-14 11:25:39', NULL),
(81, 'browse_testimonials', 'testimonials', '2018-02-18 18:48:50', '2018-02-18 18:48:50', NULL),
(82, 'read_testimonials', 'testimonials', '2018-02-18 18:48:50', '2018-02-18 18:48:50', NULL),
(83, 'edit_testimonials', 'testimonials', '2018-02-18 18:48:50', '2018-02-18 18:48:50', NULL),
(84, 'add_testimonials', 'testimonials', '2018-02-18 18:48:50', '2018-02-18 18:48:50', NULL),
(85, 'delete_testimonials', 'testimonials', '2018-02-18 18:48:50', '2018-02-18 18:48:50', NULL),
(86, 'browse_bug', 'bug', '2018-02-19 21:38:48', '2018-02-19 21:38:48', NULL),
(87, 'read_bug', 'bug', '2018-02-19 21:38:48', '2018-02-19 21:38:48', NULL),
(88, 'edit_bug', 'bug', '2018-02-19 21:38:48', '2018-02-19 21:38:48', NULL),
(89, 'add_bug', 'bug', '2018-02-19 21:38:48', '2018-02-19 21:38:48', NULL),
(90, 'delete_bug', 'bug', '2018-02-19 21:38:48', '2018-02-19 21:38:48', NULL),
(96, 'browse_bugs', 'bugs', '2018-02-19 21:59:22', '2018-02-19 21:59:22', NULL),
(97, 'read_bugs', 'bugs', '2018-02-19 21:59:22', '2018-02-19 21:59:22', NULL),
(98, 'edit_bugs', 'bugs', '2018-02-19 21:59:22', '2018-02-19 21:59:22', NULL),
(99, 'add_bugs', 'bugs', '2018-02-19 21:59:22', '2018-02-19 21:59:22', NULL),
(100, 'delete_bugs', 'bugs', '2018-02-19 21:59:22', '2018-02-19 21:59:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
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
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(76, 3),
(77, 1),
(77, 2),
(77, 3),
(78, 1),
(78, 2),
(78, 3),
(79, 1),
(79, 2),
(79, 3),
(80, 1),
(80, 2),
(80, 3),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Cara Mudah Meningkatkan Pengunjung Blog dan Situs-mu', NULL, NULL, '<p><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: \'Open Sans\', serif;\">Cara Menambah Pengunjung Blog</span><span style=\"color: #333333; font-family: \'Open Sans\', serif;\">&nbsp;&ndash; Blog barumu sepi pengunjung? Atau ingin sekedar menambah pembaca artikel-artikel di blog yang kamu miliki? Tentu hal ini mungkin banget untuk diwujudkan. Ada beberapa cara dan tips untuk meningkatkan pengunjung blog.</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Cara Membuat Blog Ramai Pengunjung</span></h2>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\"><img src=\"http://localhost:8000/storage/posts/February2018/cara-meningkatkan-pengunjung-blog-1.jpg\" alt=\"\" width=\"700\" height=\"413\" /></span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">1. Buatlah artikel yang unik, berkualitas, dan dibutuhkan</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Cara paling mendasar untuk menarik pengunjung blog adalah dengan menyajikan artikel-artikel unik dengan topik yang diminati namun masih jarang ditulis blog-blog lain. Kamu bisa mengangkat isu-isu yang tengah viral untuk menarik orang mendatangi blog.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Selain itu, buatlah artikel yang mengandung informasi-informasi yang dibutuhkan oleh pembaca blog seperti&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/blog/info-tips/\" target=\"_blank\" rel=\"noopener\">tips dan trik</a>&nbsp;serta&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/blog/tutorial/\" target=\"_blank\" rel=\"noopener\">tutorial</a>&nbsp;sesuai dengan tema utama dari blog yang kamu miliki.</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">2. Bermain dengan kata kunci</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Kata kunci yang tepat memiliki peran yang penting dalam membantu blog mendapatkan pengunjung dari mesin pencari seperti Google, Yahoo, dan sebagainya. Pastikan kamu menggunakan kata kunci yang relevan dan umum digunakan oleh orang-orang dalam mencari suatu informasi di mesin pencari. Misalkan saja, saat membahas mengenai resep nasi goreng, kata kunci yang bisa digunakan bisa saja &ldquo;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/blog/resep-nasi-goreng-nusantara/\" target=\"_blank\" rel=\"noopener\">resep nasi goreng</a>&rdquo; atau &ldquo;cara membuat nasi goreng&rdquo;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Pastikan juga kata kunci ini terdapat di dalam artikel blog-mu terutama pada bagian judul dan sub-judul.</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">3. Aktif menulis</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Cara meningkatkan jumlah pengunjung Blog selanjutnya adalah dengan terus mengisi blog dengan berbagai artikel baru secara rutin. Luangkanlah waktu untuk meng-<em style=\"box-sizing: border-box;\">update</em>&nbsp;artikel baru paling tidak setiap minggu. Kamu juga bisa meng-<em style=\"box-sizing: border-box;\">edit</em>&nbsp;artikel lama-mu untuk menambah atau membuat informasinya lebih relevan.</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">4. Optimasi gambar yang digunakan di dalam Blog</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Untuk membuat artikel blog lebih menarik, kamu perlu menambahkan gambar yang mampu memperjelas informasi dari artikel yang kamu tulis. Namun, sekedar memasukkan gambar saja nggak cukup. Optimasi gambar tersebut dengan memasukkan kata kunci yang sesuai dengan gambar. Caranya cukup masuk ke pengaturan gambar dan pada bagian&nbsp;<span style=\"box-sizing: border-box; font-weight: bold;\">&ldquo;ALT Text&rdquo;</span>&nbsp;masukkan kata kunci.</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">5. Aktif berinteraksi dengan Blogger lainnya</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0x; color: #333333; font-family: \'Open Sans\', serif;\">Misalkan saja untuk kamu yang memiliki blog bertema&nbsp;<em style=\"box-sizing: border-box;\">traveling</em>, kamu bisa bagikan blog-mu pada forum-forum&nbsp;<em style=\"box-sizing: border-box;\">traveling</em>.</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 1.7em;\">7. Promosikan Blog, manfaatkan media sosial-mu</h3>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Kini hampir semua orang yang memiliki gadget menghabiskan banyak waktu dengan media sosial yang mereka miliki. Jadi, jangan ragu untuk menjadikan media sosial sebagai media mempromosikan blog yang kamu miliki. Bagikan link / url dari artikel terbarumu dan blog-mu akan mulai mendapatkan pengunjung tambah dari media sosial.</p>', 'posts/February2018/4aPgZk8psVQkTF8vd37n.jpg', 'cara-mudah-meningkatkan-pengunjung-blog-dan-situs-mu', NULL, NULL, 'PUBLISHED', 0, '2018-02-16 07:45:29', '2018-02-18 18:21:32'),
(2, 1, NULL, 'LDR? Yuk, Manjakan Pacar Dengan 7 Ide Kejutan Ini!', NULL, NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">LDR (<em style=\"box-sizing: border-box;\">long distance relationship</em>) atau pacaran jarak jauh memang bukan hal mudah untuk pasangan manapun. Faktor jarang bertemu dari LDR membuat banyak pasangan takut hubungan mereka akan terpecah belah. Maka dari itu, dalam kesempatan langka pasangan LDR bertemu, pasti setiap orang ingin beri kejutan atau kado LDR untuk orang tersayang mereka untuk menunjukkan apresiasi dan melepas rasa kangen. Kali ini, Tokopedia akan berbagi 7 ide kejutan LDR untuk pacar bagi kamu yang sedang terpisahkan jarak! Yuk, langsung cek berbagai ide kado LDR di bawah ini.</p>\r\n<blockquote style=\"box-sizing: border-box; padding: 0.5em 10px; margin: 1.5em 10px; font-size: 17.5px; border-left: 10px solid #cccccc; background: #f9f9f9; quotes: \'&ldquo;\' \'&rdquo;\' \'&lsquo;\' \'&rsquo;\'; color: #333333; font-family: \'Open Sans\', serif;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; display: inline; line-height: 25px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Baca juga:&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none; font-weight: 400;\" href=\"https://www.tokopedia.com/blog/cewe-wajib-tahu-7-kado-ulang-tahun-yang-paling-berkesan-untuk-cowo/\" target=\"_blank\" rel=\"bookmark noopener\">Cewe Wajib Tahu: 7 Kado Ulang Tahun yang Paling Berkesan untuk Cowo</a></span></p>\r\n</blockquote>\r\n<h1 style=\"box-sizing: border-box; margin: 0px 0px 0.5em; font-size: 2.5em; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333;\">Ide kejutan LDR &ndash; Kado untuk pacar yang LDR</h1>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1.&nbsp;<em style=\"box-sizing: border-box;\">Scrapbook&nbsp;</em>pasangan LDR</span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><img class=\"aligncenter size-full wp-image-72024\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?resize=700%2C465&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?resize=700%2C465&amp;ssl=1 700w, https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?resize=700%2C465&amp;ssl=1 300w, https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?resize=700%2C465&amp;ssl=1 200w\" alt=\"ide kejutan LDR - Kado LDR\" width=\"700\" height=\"465\" data-attachment-id=\"72024\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-1/\" data-orig-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?fit=700%2C465&amp;ssl=1\" data-orig-size=\"700,465\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"LDR-1\" data-image-description=\"\" data-medium-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?fit=300%2C199&amp;ssl=1\" data-large-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/LDR-1.jpg?fit=700%2C465&amp;ssl=1\" />Sumber gambar: Wikimedia</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Siapa bilang kejutan LDR untuk pacar harus mahal? Dengan buat&nbsp;<em style=\"box-sizing: border-box;\">scrapbook</em>, kamu bisa kumpulkan foto,&nbsp;<em style=\"box-sizing: border-box;\">screenshot</em>pesan, secarik kertas berisi hal-hal yang kamu suka dari pacarmu, dan masih banyak lagi! Dengan membuat&nbsp;<em style=\"box-sizing: border-box;\">scrapbook</em>, pacarmu akan selalu teringat masa-masa terindah dan rasa jenuh pun diusir jauh.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">2. Hadiah LDR globe kecil</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><img class=\"aligncenter size-full wp-image-72025\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?resize=700%2C462&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?resize=700%2C462&amp;ssl=1 700w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?resize=700%2C462&amp;ssl=1 300w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?resize=700%2C462&amp;ssl=1 200w\" alt=\"ide kejutan LDR - kado LDR\" width=\"700\" height=\"462\" data-attachment-id=\"72025\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-2/\" data-orig-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?fit=700%2C462&amp;ssl=1\" data-orig-size=\"700,462\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-2\" data-image-description=\"\" data-medium-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?fit=300%2C198&amp;ssl=1\" data-large-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-2.jpg?fit=700%2C462&amp;ssl=1\" />Sumber gambar: Pixabay</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Coba kasih pacarmu ornamen globe kecil sebagai hadiah anniversary LDR, deh. Mungkin agak membingungkan awalnya, tapi makna yang tersirat di kejutan untuk pacar ini adalah dimanapun pacarmu berada, kalian tetap di bawah naungan planet yang sama. Setiap kali melihat globe kecil itu, pacarmu pasti teringat jarak itu gak ada artinya kalau dua orang sudah saling sayang.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">3.&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/p/kamera-foto-video/frame-album/frame-foto\" target=\"_blank\" rel=\"noopener\">Bingkai foto</a></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><img class=\"aligncenter size-full wp-image-72026\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?resize=700%2C389&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?resize=700%2C389&amp;ssl=1 700w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?resize=700%2C389&amp;ssl=1 300w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?resize=700%2C389&amp;ssl=1 200w\" alt=\"ide kejutan LDR - kado LDR\" width=\"700\" height=\"389\" data-attachment-id=\"72026\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-3/\" data-orig-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?fit=700%2C389&amp;ssl=1\" data-orig-size=\"700,389\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-3\" data-image-description=\"\" data-medium-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?fit=300%2C167&amp;ssl=1\" data-large-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-3.jpg?fit=700%2C389&amp;ssl=1\" />Sumber gambar: Pixabay</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Kejutan satu ini simpel, tapi sangat bermakna dan akan selalu mengingatkan kalian berdua akan satu sama lain. Yuk, cetak foto terbaik kalian dan abadikan dalam frame! Lebih spesial lagi kalau di belakang foto dituliskan betapa kamu menghargai sang pacar dan akan selalu menunggu ia pulang. Manis banget, ya! Jika kamu sudah nggak sempat, edit aja foto romantis kalian dengan pesan-pesan manis dan kirim lewat&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/p/handphone-tablet/handphone\" target=\"_blank\" rel=\"noopener\">smartphone</a>. Kado LDR yang sederhana tapi bermakna.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">4. Mixtape romantis buat Kado LDR</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><img class=\"aligncenter size-full wp-image-72027\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?resize=700%2C467&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?resize=700%2C467&amp;ssl=1 700w, https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?resize=700%2C467&amp;ssl=1 300w, https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?resize=700%2C467&amp;ssl=1 200w\" alt=\"ide kejutan LDR - kado LDR\" width=\"700\" height=\"467\" data-attachment-id=\"72027\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-4/\" data-orig-file=\"https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?fit=700%2C467&amp;ssl=1\" data-orig-size=\"700,467\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-4\" data-image-description=\"\" data-medium-file=\"https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?fit=300%2C200&amp;ssl=1\" data-large-file=\"https://i2.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-4.jpg?fit=700%2C467&amp;ssl=1\" />Sumber gambar: raprehab.com</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Kalau kalian berdua penyuka musik, wajib hukumnya bikin kejutan LDR buat pacar dengan mixtape untuk didengar saat lagi kangen. Untuk mixtape yang lebih tradisional, coba taruh beberapa lagu yang kalian suka dan mengingatkan pada satu sama lain di sebuah CD. Pada sisi lain, kalau mau mixtape yang berkesan &ldquo;milenial&rdquo; banget, coba buat playlist di situs streaming musik yang bisa kalian dengar setiap saat. Tapi ingat Toppers, jangan malah sedih dan galau saat mendengarkan mixtape ini ya!</p>\r\n<blockquote style=\"box-sizing: border-box; padding: 0.5em 10px; margin: 1.5em 10px; font-size: 17.5px; border-left: 10px solid #cccccc; background: #f9f9f9; quotes: \'&ldquo;\' \'&rdquo;\' \'&lsquo;\' \'&rsquo;\'; color: #333333; font-family: \'Open Sans\', serif;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; display: inline; line-height: 25px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Baca juga:&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none; font-weight: 400;\" href=\"https://www.tokopedia.com/blog/deretan-lagu-lagu-yang-bikin-kamu-ingin-balik-ke-masa-lalu/\" target=\"_blank\" rel=\"bookmark noopener\">Deretan Lagu &ndash; Lagu yang Bikin Kamu Ingin Balik ke Masa Lalu</a></span></p>\r\n</blockquote>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">5. Custom case</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/hot/custom-case\" target=\"_blank\" rel=\"noopener\"><img class=\"aligncenter wp-image-72028 size-full\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?resize=700%2C368&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?resize=700%2C368&amp;ssl=1 700w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?resize=700%2C368&amp;ssl=1 300w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?resize=700%2C368&amp;ssl=1 200w\" alt=\"Beli Custom Case\" width=\"700\" height=\"368\" data-attachment-id=\"72028\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-5-banner-custom-case/\" data-orig-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?fit=700%2C368&amp;ssl=1\" data-orig-size=\"700,368\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-5-banner-custom-case\" data-image-description=\"\" data-medium-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?fit=300%2C158&amp;ssl=1\" data-large-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-5-banner-custom-case.jpg?fit=700%2C368&amp;ssl=1\" /></a></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Telepon genggam atau HP gak terlepas dari kehidupan sehari-hari. Biar rasa galau dan kangen berkurang, beri kejutan untuk pacar dengan custom case untuk smartphone masing-masing! Desain custom case bisa kalian putuskan berdua, bisa berupa foto, atau quote yang meningatkan kalian terhadap satu sama lain.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">6. Buat jurnal bersama</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif; text-align: center;\"><img class=\"aligncenter size-full wp-image-72029\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?resize=700%2C488&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?resize=700%2C488&amp;ssl=1 700w, https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?resize=700%2C488&amp;ssl=1 300w, https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?resize=700%2C488&amp;ssl=1 200w\" alt=\"ide kejutan LDR - kado LDR\" width=\"700\" height=\"488\" data-attachment-id=\"72029\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-6/\" data-orig-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?fit=700%2C488&amp;ssl=1\" data-orig-size=\"700,488\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-6\" data-image-description=\"\" data-medium-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?fit=300%2C209&amp;ssl=1\" data-large-file=\"https://i0.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-6.jpg?fit=700%2C488&amp;ssl=1\" />Sumber gambar: Pixabay</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Di saat langka ketika kalian bertemu empat mata, buat kejutan untuk pacar dengan menyusun jurnal bersama. Mirip dengan scrapbook, jurnal yang akan kalian berbagi bersama ini bentuknya lebih kecil, dan lebih banyak ruang untuk menulis pengalaman kalian saat jauh dari sesama. Coba kirimkan jurnal berdua ini ke pacar sebulan sekali dan baca pengalaman mereka dan mereka melakukan sebaliknya. Pasti rasa kangen gak akan terasa lagi!</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', serif; font-weight: inherit; line-height: 1.2; color: #333333; margin: 1.414em 0px 0.5em; font-size: 2em;\">7. Perhiasan matching</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none;\" href=\"https://www.tokopedia.com/hot/kalung-couple\" target=\"_blank\" rel=\"noopener\"><img class=\"aligncenter wp-image-72030 size-full\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto; max-width: 99.9%; height: auto;\" src=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?resize=700%2C368&amp;ssl=1\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?resize=700%2C368&amp;ssl=1 700w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?resize=700%2C368&amp;ssl=1 300w, https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?resize=700%2C368&amp;ssl=1 200w\" alt=\"ide kejutan LDR - kado LDR\" width=\"700\" height=\"368\" data-attachment-id=\"72030\" data-permalink=\"https://www.tokopedia.com/blog/ide-kejutan-ldr-mudah/ldr-7-banner-kalung-couple/\" data-orig-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?fit=700%2C368&amp;ssl=1\" data-orig-size=\"700,368\" data-comments-opened=\"0\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"ldr-7-banner-kalung-couple\" data-image-description=\"\" data-medium-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?fit=300%2C158&amp;ssl=1\" data-large-file=\"https://i1.wp.com/ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/10/ldr-7-banner-kalung-couple.jpg?fit=700%2C368&amp;ssl=1\" /></a></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Butuh sesuatu untuk mengingatkanmu terhadap pacar? Kejutan buat pacar satu ini adalah salah satu yang paling umum, yakni perhiasan matching. Mulai dari cincin, kalung, hingga tali sepatu yang sama, kalian akan teringat bahwa walaupun kalian jauh di mata, bagian dari pacarakan selalu melekat pada dirimu.</p>\r\n<blockquote style=\"box-sizing: border-box; padding: 0.5em 10px; margin: 1.5em 10px; font-size: 17.5px; border-left: 10px solid #cccccc; background: #f9f9f9; quotes: \'&ldquo;\' \'&rdquo;\' \'&lsquo;\' \'&rsquo;\'; color: #333333; font-family: \'Open Sans\', serif;\">\r\n<p style=\"box-sizing: border-box; margin: 0px; display: inline; line-height: 25px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Baca juga:&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #42b549; text-decoration-line: none; font-weight: 400;\" href=\"https://www.tokopedia.com/blog/pacar-kamu-lagi-marah-besar-luluhkan-hatinya-dengan-cara-ini/\" target=\"_blank\" rel=\"bookmark noopener\">Pacar Kamu Lagi Marah Besar? Luluhkan Hatinya dengan Cara Ini!</a></span></p>\r\n</blockquote>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.3em; line-height: 25px; color: #333333; font-family: \'Open Sans\', serif;\">Nah, dengan 7 ide kejutan LDR di atas, pasti rasa galau yang menghantui setiap hari tanpa pacar sudah mulai surut, &lsquo;kan? Kunci dari hubungan LDR yang harmonis adalah apresiasi dan rasa sayang, dan selama kalian bisa mempertahankan itu, hubungan kalian akan baik-baik saja selama LDR berlangsung. Apa menurutmu ide kejutan buat pacar di atas efektif untuk mengobati kangen? Yuk, share ke blog Tokopedia idemu yang lain!</p>', 'posts/February2018/YMLjaLAlAaW1HWOKdnLw.jpg', 'ldr-yuk-manjakan-pacar-dengan-7-ide-kejutan-ini!', NULL, NULL, 'PUBLISHED', 0, '2018-02-20 22:34:55', '2018-02-20 22:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `provinces` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `provinces`, `created_at`, `updated_at`) VALUES
(1, 'Bandung', '2018-02-18 17:27:43', '2018-02-18 17:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reservation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `seat_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depart_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `rute_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-02-14 02:41:23', '2018-02-14 02:41:23'),
(2, 'user', 'Normal User', '2018-02-14 02:41:23', '2018-02-14 02:41:23'),
(3, 'customer', 'Customer', '2018-02-14 06:48:52', '2018-02-14 06:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `rutes`
--

CREATE TABLE `rutes` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `depart_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rute_from` int(11) DEFAULT NULL,
  `rute_to` int(11) DEFAULT NULL,
  `transportation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Order Ticket', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Pesan Tiket Pesawat & Kereta Api dengan Mudah dan Aman', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/February2018/GfJMM72FWDAboJ8ck46u.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/February2018/yDZGLnyannNU2NsAZUg2.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Order Ticket', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat Datang di Admin Order Ticket', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, '7', 'Bingung dengan metode pembayarannya, pas tanya kontak adminnya ehh cepat banget balasnya... Top banget dah', '2018-02-18 18:52:12', '2018-02-18 18:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `seat_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transportationType_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transportation_types`
--

CREATE TABLE `transportation_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transportation_types`
--

INSERT INTO `transportation_types` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pesawat', '2018-02-14 21:01:09', '2018-02-14 21:01:09'),
(2, 'Kereta Api', '2018-02-20 22:37:22', '2018-02-20 22:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ivan Primaturangga', 'primaturangga21@gmail.com', 'users/February2018/Z48qsRKltC7w8Rtw3l1W.jpeg', '$2y$10$WysjaUYFB/u3I5FeLjnbd.mCtcZpg9xhOcO9n9nuPwjO.pIrlsOv6', 'QiQxuyFob9dPuXI5UCf9u4Q7XvBb8GpLids6rcUV1aaYciI1gKBmK7hTnBqS', '2018-02-14 02:43:02', '2018-02-20 22:42:09'),
(2, 2, 'Admin', 'support@orderticket.com', 'users/February2018/u8ceD85nqSflR8tFNPC5.jpg', '$2y$10$f4lvBy4LDMUwmW87byBOWeYxpZY9sgfQeE7QQ0DxGhaeuAJi2C5k6', 'loj2tTRAEpHpIzbhGxAUJBv6WljAdObpbPO8HOSvuO4SRxHr5JdpDoDUuq95', '2018-02-14 06:44:47', '2018-02-14 06:44:47'),
(3, 3, 'Eka', 'eka@gmail.com', 'users/February2018/AIZnCRQBfatBcaSVhpzr.jpeg', '$2y$10$ffghKecbZMzBKav4vY0Id.4xBiXz0gqWFitjWWoUFTDXsgXvYy6gS', 'XOFtqFulPYx4sp4Mvh4PKypIbrtXdkq0JX2McLEbVFbR4B0Cx7uMOvEyAvPK', '2018-02-14 17:05:03', '2018-02-14 17:05:03'),
(4, 2, 'yourname', 'kbudi001@gmail.com', 'users/February2018/BxFka8TlZUIMdVwtsqqR.jpg', '$2y$10$f7XJ3hEW3VBhYQL.jBfNx.1mo1SlZtDCn5appy0.c2hiKcu56SWae', '5GLFxxdO9KmsH37fN83GMxVVcAGpC2pYRYCAXoRTW80m2IqBSRi3SM5jMpEb', '2018-02-14 21:42:57', '2018-02-16 11:18:27'),
(6, 3, 'Hanzu', 'hanzu@gmail.com', 'users/default.png', '$2y$10$9X0iXTImZ.ufoKAaokNICeE6imCwj8eZt0q0QfQzg4x4mV9u1uR7q', 'VdbLKTZsknZDiQuWa5vkSTmASJAS4VFrLhaYmxSCxy9B3663SlA9Hhs7RQ5a', '2018-02-16 10:42:36', '2018-02-16 10:42:36'),
(7, 3, 'primaturangga', 'kombatch21@gmail.com', 'users/default.png', '$2y$10$VoaGwZUcnFC2N0ZTp7j4SeF89ojkH/W8TS1WYKdskkXLqm1BQIyVC', 'xm74kPN5VFogPVwyomKjJKnPZhUXjwgT2UXRUDmuCLNzrzScMRrXhCwUMYSp', '2018-02-16 11:03:39', '2018-02-16 11:03:39'),
(8, 3, 'Gungde', 'gungde@gmail.com', 'users/default.png', '$2y$10$dHfiYO261hhbIcHlN.OI/eS1jJb9S9wDUzCv6DaTKEY/mPVEmwsbG', 'DlM0lNaaEYPnB4EUMEwaGDmEBwSVpQ8H94z8KhjeUBPvNczuY8rdmpZ82xDx', '2018-02-16 21:05:40', '2018-02-16 21:09:38'),
(9, 3, 'ivanbuduh', 'ivanbuduh@gmail.com', 'users/February2018/SDpHnR6txZfMl2NKwg2I.jpg', '$2y$10$o5hHthc8AGWft930L7TZiemwsnpS5GRJo/JR/jcaMoU4kPXS0dicm', NULL, '2018-02-19 21:21:41', '2018-02-19 21:38:24'),
(10, 3, 'Ragil Samsi', 'samsiragil@gmail.com', 'users/February2018/OKS7gB8uG8M0BH5C9t5B.jpg', '$2y$10$GtRKUrMiY7cXeqLwV2vYnupH9menoiQjgwErwNIoV6E41Go9jeuqO', '2E7KnoZPH5GzqQmdINxkJrVsaYpTsyAQpHI6ygg6XJjAlqUYH5kmtmTo3cAC', '2018-02-19 21:27:08', '2018-02-19 21:34:09'),
(11, 3, 'kesyug', 'kesyug@gmail.com', 'users/default.png', '$2y$10$C3gNXpnU0xUsKRX4py1bY.9pvEa3V0uaziDZiwMVYbbsNpRG99S8.', NULL, '2018-02-19 21:52:50', '2018-02-19 21:52:51'),
(12, 3, 'customer', 'customer@gmail.com', 'users/February2018/Y9td9Wc3DNvLi0pEuRQa.jpeg', '$2y$10$8NTjycUD9ah8ZgfpsF16u.JnECM.vIvzB/NbUYUiuTQf4kR5mQ1Su', 'Ypx7BJL9IxrUOtUcbLRdCLJptPSHt4USfsdCbmmdgYXycG1HLuFUHhDr0fWe', '2018-02-19 21:56:10', '2018-02-19 21:56:10'),
(13, 3, 'gustu', 'gustu@gmail.com', 'users/default.png', '$2y$10$m8U2gCus9Bki1FueWLq7uuxGbk1J8MJ1xi03kR5wtiArvZ6MndLtK', NULL, '2018-02-19 22:04:12', '2018-02-19 22:04:12'),
(14, 3, 'agung', 'lalala@gmail.com', 'users/February2018/O6bvP8zgDmtB51DrrzNr.jpeg', '$2y$10$ePhBHtJiJtZhcIQvcS/yBeCS.cUXO8vv7zqFTZuObdyLptuqsYqyi', 'Km6HB2Up9x3k6gZOXi2hfmKX1Qkv4l3PRseIBDiWTK7c2f52Y4KTpXyV8ZBV', '2018-02-20 18:10:40', '2018-02-20 18:25:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `rutes`
--
ALTER TABLE `rutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportation_types`
--
ALTER TABLE `transportation_types`
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
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rutes`
--
ALTER TABLE `rutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transportation_types`
--
ALTER TABLE `transportation_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
