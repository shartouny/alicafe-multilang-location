-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 11:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alicafe_voyger`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `featured_img`, `banner`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'coffe range', 'category\\April2021\\vAqxcLeEkaEyzA9OGEgF.png', 'category\\April2021\\Sb326yFfwIui8h5adHqW.png', NULL, '2021-04-17 06:43:46', '2021-04-19 11:50:41'),
(2, 'tea range', 'category\\April2021\\sZrJyiQaqnCe8kutu79M.jpg', 'category\\April2021\\X7gwVHlfA84X3kkNQL7q.png', NULL, '2021-04-17 06:43:47', '2021-04-19 11:50:21'),
(3, 'mixes', NULL, NULL, 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47'),
(4, 'value added', NULL, NULL, 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47'),
(5, 'capucino', NULL, NULL, 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `products_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 2, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 2, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 2, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 2, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 2, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 2, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 2, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 2, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 2, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 2, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 2, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 2, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 2, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 2, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 2, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 41, 2, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 2, NULL, NULL),
(44, 44, 1, NULL, NULL),
(46, 46, 1, NULL, NULL),
(47, 47, 2, NULL, NULL),
(48, 48, 1, NULL, NULL),
(49, 49, 2, NULL, NULL),
(50, 50, 1, NULL, NULL),
(51, 2, 3, NULL, NULL),
(52, 4, 3, NULL, NULL),
(53, 6, 3, NULL, NULL),
(54, 8, 4, NULL, NULL),
(55, 10, 4, NULL, NULL),
(56, 12, 4, NULL, NULL),
(57, 14, 4, NULL, NULL),
(58, 16, 5, NULL, NULL),
(59, 18, 5, NULL, NULL),
(60, 20, 5, NULL, NULL),
(61, 45, 1, NULL, NULL),
(62, 45, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `showintable` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `showintable`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, 0, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, 0, '{}', 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, 0, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, 0, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, 0, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, 0, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, 0, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, 0, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, 0, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, 0, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, 0, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, 0, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, 0, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, 0, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, 0, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, 0, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, 0, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, 0, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, 0, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, 0, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, 0, NULL, 12),
(73, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(74, 10, 'title', 'text', 'Name', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(75, 10, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(76, 10, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, 0, '{}', 4),
(77, 10, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, 1, '{}', 5),
(78, 10, 'img_gallery', 'multiple_images', 'Img Gallery', 1, 1, 1, 1, 1, 1, 0, '{}', 6),
(79, 10, 'categories', 'hidden', 'Categories', 1, 0, 0, 0, 0, 0, 0, '{}', 7),
(80, 10, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, 1, '{\"on\":\"Is Featured\",\"off\":\"Is Not Featured\"}', 8),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, 0, '{}', 9),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 10),
(83, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(84, 11, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(85, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(86, 11, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, 1, '{}', 4),
(87, 11, 'button_text', 'text', 'Button Text', 0, 1, 1, 1, 1, 1, 0, '{}', 5),
(88, 11, 'button_link', 'text', 'Button Link', 0, 1, 1, 1, 1, 1, 0, '{}', 6),
(89, 11, 'text_position', 'select_dropdown', 'Text Position', 1, 1, 1, 1, 1, 1, 0, '{\"default\":\"Left\",\"options\":{\"center\":\"Center\",\"left\":\"Left\"}}', 7),
(90, 11, 'extra_imgs', 'multiple_images', 'Extra Imgs', 0, 1, 1, 1, 1, 1, 0, '{}', 8),
(91, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, 0, '{}', 9),
(92, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 10),
(98, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(99, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(100, 13, 'featured_img', 'image', 'Featured Img', 0, 1, 1, 1, 1, 1, 0, '{}', 3),
(101, 13, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, 0, '{}', 4),
(102, 13, 'parent_id', 'select_dropdown', 'Parent', 0, 1, 1, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"1\":\"Has Parent\",\"\":\"Is Parent\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 5),
(103, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, 0, '{}', 6),
(104, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 7),
(106, 10, 'product_belongstomany_category_relationship', 'relationship', 'Categories', 0, 1, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"category\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_products\",\"pivot\":\"1\",\"taggable\":\"on\"}', 11),
(108, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, 0, '{}', 1),
(109, 15, 'products_id', 'number', 'Products Id', 0, 1, 1, 1, 1, 1, 0, '{}', 2),
(110, 15, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, 0, '{}', 3),
(111, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, 0, '{}', 4),
(112, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, 0, '{}', 5),
(120, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 1, 0, '{}', 1),
(121, 18, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(122, 18, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(123, 18, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, 1, '{}', 4),
(124, 18, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, 0, '{}', 5),
(125, 18, 'slider', 'checkbox', 'In Slider', 1, 1, 1, 1, 1, 1, 1, '{}', 6),
(126, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, 0, '{}', 7),
(127, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 1, 0, '{}', 8),
(128, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, 1, '{}', 6),
(135, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 1, 0, '{}', 1),
(136, 21, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(137, 21, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(138, 21, 'icon', 'select_dropdown', 'Icon', 1, 1, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"\":\"-select-\",\"fa-facebook\":\"Facebook\",\"fa-instagram\":\"Instagram\",\"fa-twitter\":\"Twittwe\",\"fa-youtube\":\"Youtube\"}}', 4),
(139, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, 0, '{}', 5),
(140, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 1, 0, '{}', 6),
(141, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 1, 0, '{}', 1),
(142, 22, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, 0, '{}', 3),
(144, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 1, 0, '{}', 4),
(146, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 1, 0, '{}', 1),
(147, 25, 'question_id', 'hidden', 'Question Id', 1, 1, 1, 1, 1, 1, 0, '{}', 2),
(148, 25, 'answer', 'text', 'Answer', 1, 1, 1, 1, 1, 1, 1, '{}', 3),
(149, 25, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, 1, '{}', 4),
(150, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, 0, '{}', 5),
(151, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 1, 0, '{}', 6),
(155, 22, 'answers_id', 'hidden', 'Answers Id', 0, 0, 0, 0, 0, 1, 0, '{}', 2),
(156, 10, 'in_results', 'checkbox', 'In Results', 1, 1, 1, 1, 1, 1, 1, '{}', 11);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 06:58:53', '2021-04-18 06:31:03'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-17 06:58:53', '2021-04-17 06:58:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 06:58:53', '2021-04-19 02:56:33'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-04-17 06:59:06', '2021-04-17 06:59:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(10, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Models\\Products', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 08:05:07', '2021-04-22 10:12:43'),
(11, 'home_banner_sliders', 'home-banner-sliders', 'Home Banner Slider', 'Home Banner Sliders', 'voyager-images', 'App\\Models\\HomeBannerSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 08:52:23', '2021-04-19 11:54:49'),
(13, 'category', 'category', 'Category', 'Categories', 'voyager-folder', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 10:26:30', '2021-04-20 06:24:22'),
(15, 'category_products', 'category-products', 'Category Product', 'Category Products', NULL, 'App\\Models\\CategoryProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 11:22:23', '2021-04-17 12:35:58'),
(18, 'news', 'news', 'News', 'News', NULL, 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-17 13:31:11', '2021-04-19 11:55:11'),
(21, 'social_media_links', 'social-media-links', 'Social Media Link', 'Social Media Links', NULL, 'App\\Models\\social_media_links', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-20 05:32:59', '2021-04-20 05:32:59'),
(22, 'finder_questions', 'finder-questions', 'Finder Question', 'Finder Questions', NULL, 'App\\Models\\FinderQuestions', NULL, '\\App\\Http\\Controllers\\Voyager\\FinderQuestionsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-20 06:18:37', '2021-04-22 02:35:44'),
(25, 'finder_answers', 'finder-answers', 'Finder Answer', 'Finder Answers', NULL, 'App\\Models\\FinderAnswers', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-20 06:34:07', '2021-04-21 05:17:39');

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
-- Table structure for table `finder_answers`
--

CREATE TABLE `finder_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finder_answers`
--

INSERT INTO `finder_answers` (`id`, `question_id`, `answer`, `img`, `created_at`, `updated_at`) VALUES
(17, 57, 'asda sda sda as', NULL, '2021-04-22 02:41:19', '2021-04-22 02:41:19'),
(18, 58, 'asd asd asd asd', 'answer-imgs/question-1_1619090552.png', '2021-04-22 08:22:32', '2021-04-22 08:22:32'),
(19, 58, 'as dasd asd asd asd', 'answer-imgs/question-2_1619090552.png', '2021-04-22 08:22:32', '2021-04-22 08:22:32'),
(20, 58, 'asd asd asd asd grgdfg fcgdf', 'answer-imgs/question-4_1619090552.png', '2021-04-22 08:22:32', '2021-04-22 08:22:32'),
(21, 58, 'asd asd 34tg tb  f', 'answer-imgs/question-3_1619090552.png', '2021-04-22 08:22:32', '2021-04-22 08:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `finder_questions`
--

CREATE TABLE `finder_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `answers_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finder_questions`
--

INSERT INTO `finder_questions` (`id`, `question`, `created_at`, `updated_at`, `answers_id`) VALUES
(57, 'what is your favorite coffe', '2021-04-22 02:41:03', '2021-04-22 02:41:03', NULL),
(58, 'what the hell are you talking about ?', '2021-04-22 08:22:32', '2021-04-22 08:22:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_banner_sliders`
--

CREATE TABLE `home_banner_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_imgs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banner_sliders`
--

INSERT INTO `home_banner_sliders` (`id`, `img`, `title`, `subtitle`, `button_text`, `button_link`, `text_position`, `extra_imgs`, `created_at`, `updated_at`) VALUES
(1, 'home-banner-sliders\\April2021\\fCFBaYXjiW6879p9gGMZ.jpg', 'French Roast <br> 3 IN 1', NULL, 'view more', '#', 'left', NULL, '2021-04-17 06:43:46', '2021-04-17 07:19:36'),
(2, 'home-banner-sliders\\April2021\\Nu6QMbtCRTZS7nikNKNr.jpg', 'lets chat for the real karak <br> chai experience', NULL, NULL, NULL, 'center', NULL, '2021-04-17 06:43:46', '2021-04-17 07:20:03'),
(3, 'home-banner-sliders\\April2021\\ZuUniinksGSxItREExDK.jpg', 'recipe for life!', NULL, NULL, NULL, 'left', NULL, '2021-04-17 06:43:46', '2021-04-17 07:20:27'),
(4, 'home-banner-sliders\\April2021\\jDWhLLhqLbUXWyyIyHqa.jpg', 'online order', 'now alicafe is available for', NULL, NULL, 'left', '[\"home-banner-sliders\\\\April2021\\\\Qp4QecjaXKwmsdnuLzbG.png\"]', '2021-04-17 06:43:46', '2021-04-19 07:07:42'),
(5, 'home-banner-sliders\\April2021\\8GM7xl4WOpkFf4ix4upN.jpg', 'real coffee <br> no flavors added', NULL, NULL, NULL, 'left', NULL, '2021-04-17 07:43:36', '2021-04-17 07:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-04-17 06:58:54', '2021-04-17 06:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 2, '2021-04-17 06:58:54', '2021-04-19 12:27:20', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2021-04-17 06:58:54', '2021-04-22 02:34:18', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2021-04-17 06:58:54', '2021-04-22 02:34:18', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2021-04-17 06:58:54', '2021-04-22 02:34:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2021-04-17 06:58:54', '2021-04-22 02:34:18', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-17 06:58:54', '2021-04-17 07:46:26', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-17 06:58:54', '2021-04-17 07:46:26', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-17 06:58:54', '2021-04-17 07:46:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-04-17 06:58:54', '2021-04-17 11:19:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2021-04-17 06:58:54', '2021-04-22 02:34:18', 'voyager.settings.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 12, '2021-04-17 06:59:07', '2021-04-22 02:34:18', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 13, '2021-04-17 06:59:08', '2021-04-22 02:34:18', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-04-17 06:59:11', '2021-04-17 11:19:29', 'voyager.hooks', NULL),
(17, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 6, '2021-04-17 08:05:08', '2021-04-22 02:28:19', 'voyager.products.index', NULL),
(18, 1, 'Home Banner Sliders', '', '_self', 'voyager-images', NULL, 21, 1, '2021-04-17 08:52:24', '2021-04-17 11:20:31', 'voyager.home-banner-sliders.index', NULL),
(20, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2021-04-17 10:26:31', '2021-04-19 12:27:20', 'voyager.category.index', 'null'),
(21, 1, 'Home Page', '#', '_self', 'voyager-home', '#000000', NULL, 3, '2021-04-17 11:20:19', '2021-04-19 12:27:20', NULL, ''),
(24, 1, 'News', '', '_self', 'voyager-news', '#000000', 30, 1, '2021-04-17 13:31:11', '2021-04-22 02:28:18', 'voyager.news.index', 'null'),
(25, 1, 'View Website', '', '_blank', 'voyager-move', '#000000', NULL, 1, '2021-04-19 12:26:35', '2021-04-19 12:27:20', 'home', 'null'),
(27, 1, 'Social Media Links', '', '_self', 'voyager-camera', '#000000', 30, 2, '2021-04-20 05:33:00', '2021-04-22 02:28:19', 'voyager.social-media-links.index', 'null'),
(28, 1, 'Find Your Perfect Cup', '', '_self', 'voyager-rum', '#000000', NULL, 7, '2021-04-20 06:18:37', '2021-04-22 02:34:46', 'voyager.finder-questions.index', 'null'),
(30, 1, 'News Page', '#', '_self', 'voyager-categories', '#000000', NULL, 5, '2021-04-22 02:28:05', '2021-04-22 02:28:16', NULL, '');

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
(397, '2014_10_12_000000_create_users_table', 1),
(398, '2014_10_12_100000_create_password_resets_table', 1),
(399, '2016_01_01_000000_add_voyager_user_fields', 1),
(400, '2016_01_01_000000_create_data_types_table', 1),
(401, '2016_05_19_173453_create_menu_table', 1),
(402, '2016_10_21_190000_create_roles_table', 1),
(403, '2016_10_21_190000_create_settings_table', 1),
(404, '2016_11_30_135954_create_permission_table', 1),
(405, '2016_11_30_141208_create_permission_role_table', 1),
(406, '2016_12_26_201236_data_types__add__server_side', 1),
(407, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(408, '2017_01_14_005015_create_translations_table', 1),
(409, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(410, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(411, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(412, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(413, '2017_08_05_000000_add_group_to_settings_table', 1),
(414, '2017_11_26_013050_add_user_role_relationship', 1),
(415, '2017_11_26_015000_create_user_roles_table', 1),
(416, '2018_03_11_000000_add_user_settings', 1),
(417, '2018_03_14_000000_add_details_to_data_types_table', 1),
(418, '2018_03_16_000000_make_settings_value_nullable', 1),
(419, '2019_08_19_000000_create_failed_jobs_table', 1),
(420, '2021_04_16_043845_create_home_banner_sliders_table', 1),
(421, '2021_04_16_075518_create_news_table', 1),
(422, '2021_04_16_084947_create_categories_table', 1),
(423, '2021_04_16_092217_create_products_table', 1),
(424, '2021_04_16_141609_create_categories_products_table', 1),
(425, '2016_01_01_000000_create_pages_table', 2),
(426, '2016_01_01_000000_create_posts_table', 2),
(427, '2016_02_15_204651_create_categories_table', 2),
(428, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(439, '2021_04_20_081258_create_social_media_links_table', 3),
(442, '2021_04_20_091123_create_finder_questions_table', 4),
(443, '2021_04_20_091201_create_finder_answers_table', 4),
(444, '2021_04_20_121507_add_foreign_questions_answers_to_questions_table', 4),
(445, '2021_04_22_121832_add_result_checkbox_to_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `img`, `title`, `date`, `content`, `slider`, `created_at`, `updated_at`) VALUES
(1, '', 'Title of the news comes here0', NULL, '<p>0Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?</p>', 0, '2021-04-17 06:43:46', '2021-04-20 05:02:41'),
(2, '', 'Title of the news comes here1', '', '1Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 1, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(3, '', 'Title of the news comes here2', '', '2Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 0, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(4, '', 'Title of the news comes here3', '', '3Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 1, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(5, '', 'Title of the news comes here4', '', '4Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 0, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(6, '', 'Title of the news comes here5', '', '5Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 1, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(7, '', 'Title of the news comes here6', '', '6Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 0, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(8, '', 'Title of the news comes here7', '', '7Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 1, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(9, '', 'Title of the news comes here8', '', '8Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?', 0, '2021-04-17 06:43:46', '2021-04-17 06:43:46'),
(10, 'news\\April2021\\l04TIyp7GSYhseQ4ordK.png', 'Title of the news comes here9', '2021-04-04 00:00:00', '<p>9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?9Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?</p>', 1, '2021-04-17 06:43:46', '2021-04-19 07:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-04-17 06:59:08', '2021-04-17 06:59:08');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(2, 'browse_bread', NULL, '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(3, 'browse_database', NULL, '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(4, 'browse_media', NULL, '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(5, 'browse_compass', NULL, '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(6, 'browse_menus', 'menus', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(7, 'read_menus', 'menus', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(8, 'edit_menus', 'menus', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(9, 'add_menus', 'menus', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(10, 'delete_menus', 'menus', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(11, 'browse_roles', 'roles', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(12, 'read_roles', 'roles', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(13, 'edit_roles', 'roles', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(14, 'add_roles', 'roles', '2021-04-17 06:58:55', '2021-04-17 06:58:55'),
(15, 'delete_roles', 'roles', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(16, 'browse_users', 'users', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(17, 'read_users', 'users', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(18, 'edit_users', 'users', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(19, 'add_users', 'users', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(20, 'delete_users', 'users', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(21, 'browse_settings', 'settings', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(22, 'read_settings', 'settings', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(23, 'edit_settings', 'settings', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(24, 'add_settings', 'settings', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(25, 'delete_settings', 'settings', '2021-04-17 06:58:56', '2021-04-17 06:58:56'),
(31, 'browse_posts', 'posts', '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(32, 'read_posts', 'posts', '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(33, 'edit_posts', 'posts', '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(34, 'add_posts', 'posts', '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(35, 'delete_posts', 'posts', '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(36, 'browse_pages', 'pages', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(37, 'read_pages', 'pages', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(38, 'edit_pages', 'pages', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(39, 'add_pages', 'pages', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(40, 'delete_pages', 'pages', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(41, 'browse_hooks', NULL, '2021-04-17 06:59:11', '2021-04-17 06:59:11'),
(52, 'browse_products', 'products', '2021-04-17 08:05:08', '2021-04-17 08:05:08'),
(53, 'read_products', 'products', '2021-04-17 08:05:08', '2021-04-17 08:05:08'),
(54, 'edit_products', 'products', '2021-04-17 08:05:08', '2021-04-17 08:05:08'),
(55, 'add_products', 'products', '2021-04-17 08:05:08', '2021-04-17 08:05:08'),
(56, 'delete_products', 'products', '2021-04-17 08:05:08', '2021-04-17 08:05:08'),
(57, 'browse_home_banner_sliders', 'home_banner_sliders', '2021-04-17 08:52:24', '2021-04-17 08:52:24'),
(58, 'read_home_banner_sliders', 'home_banner_sliders', '2021-04-17 08:52:24', '2021-04-17 08:52:24'),
(59, 'edit_home_banner_sliders', 'home_banner_sliders', '2021-04-17 08:52:24', '2021-04-17 08:52:24'),
(60, 'add_home_banner_sliders', 'home_banner_sliders', '2021-04-17 08:52:24', '2021-04-17 08:52:24'),
(61, 'delete_home_banner_sliders', 'home_banner_sliders', '2021-04-17 08:52:24', '2021-04-17 08:52:24'),
(67, 'browse_category', 'category', '2021-04-17 10:26:31', '2021-04-17 10:26:31'),
(68, 'read_category', 'category', '2021-04-17 10:26:31', '2021-04-17 10:26:31'),
(69, 'edit_category', 'category', '2021-04-17 10:26:31', '2021-04-17 10:26:31'),
(70, 'add_category', 'category', '2021-04-17 10:26:31', '2021-04-17 10:26:31'),
(71, 'delete_category', 'category', '2021-04-17 10:26:31', '2021-04-17 10:26:31'),
(72, 'browse_category_products', 'category_products', '2021-04-17 11:22:23', '2021-04-17 11:22:23'),
(73, 'read_category_products', 'category_products', '2021-04-17 11:22:23', '2021-04-17 11:22:23'),
(74, 'edit_category_products', 'category_products', '2021-04-17 11:22:23', '2021-04-17 11:22:23'),
(75, 'add_category_products', 'category_products', '2021-04-17 11:22:23', '2021-04-17 11:22:23'),
(76, 'delete_category_products', 'category_products', '2021-04-17 11:22:23', '2021-04-17 11:22:23'),
(77, 'showintablehome_banner_sliders', 'home_banner_sliders', '2021-04-17 12:42:13', '2021-04-17 12:42:13'),
(78, 'showintablecategory', 'category', '2021-04-17 12:51:48', '2021-04-17 12:51:48'),
(85, 'browse_news', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(86, 'read_news', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(87, 'edit_news', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(88, 'add_news', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(89, 'delete_news', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(90, 'showintablenews', 'news', '2021-04-17 13:31:11', '2021-04-17 13:31:11'),
(91, 'showintableusers', 'users', '2021-04-18 06:31:03', '2021-04-18 06:31:03'),
(92, 'showintableroles', 'roles', '2021-04-19 02:56:33', '2021-04-19 02:56:33'),
(93, 'showintableproducts', 'products', '2021-04-19 11:57:10', '2021-04-19 11:57:10'),
(100, 'browse_social_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(101, 'read_social_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(102, 'edit_social_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(103, 'add_social_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(104, 'delete_social_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(105, 'showintablesocial_media_links', 'social_media_links', '2021-04-20 05:33:00', '2021-04-20 05:33:00'),
(106, 'browse_finder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(107, 'read_finder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(108, 'edit_finder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(109, 'add_finder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(110, 'delete_finder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(111, 'showintablefinder_questions', 'finder_questions', '2021-04-20 06:18:37', '2021-04-20 06:18:37'),
(112, 'browse_finder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08'),
(113, 'read_finder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08'),
(114, 'edit_finder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08'),
(115, 'add_finder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08'),
(116, 'delete_finder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08'),
(117, 'showintablefinder_answers', 'finder_answers', '2021-04-20 06:34:08', '2021-04-20 06:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
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
(41, 1),
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
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-17 06:59:07', '2021-04-17 06:59:07'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-17 06:59:07', '2021-04-17 06:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `in_results` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `details`, `description`, `img`, `img_gallery`, `categories`, `featured`, `created_at`, `updated_at`, `in_results`) VALUES
(1, 'Title of the products comes here0', '25g X 30 Sachets0', '0Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '', '{}', 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47', 0),
(2, 'Title of the products comes here1', '25g X 30 Sachets1', '1Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47', 0),
(3, 'Title of the products comes here2', '25g X 30 Sachets2', '2Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47', 0),
(4, 'Title of the products comes here3', '25g X 30 Sachets3', '3Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:47', '2021-04-17 06:43:47', 0),
(5, 'Title of the products comes here4', '25g X 30 Sachets4', '4Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(6, 'Title of the products comes here5', '25g X 30 Sachets5', '5Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(7, 'Title of the products comes here6', '25g X 30 Sachets6', '6Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(8, 'Title of the products comes here7', '25g X 30 Sachets7', '7Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(9, 'Title of the products comes here8', '25g X 30 Sachets8', '8Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(10, 'Title of the products comes here9', '25g X 30 Sachets9', '9Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(11, 'Title of the products comes here10', '25g X 30 Sachets10', '10Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(12, 'Title of the products comes here11', '25g X 30 Sachets11', '11Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(13, 'Title of the products comes here12', '25g X 30 Sachets12', '12Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:48', '2021-04-17 06:43:48', 0),
(14, 'Title of the products comes here13', '25g X 30 Sachets13', '13Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(15, 'Title of the products comes here14', '25g X 30 Sachets14', '14Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(16, 'Title of the products comes here15', '25g X 30 Sachets15', '15Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(17, 'Title of the products comes here16', '25g X 30 Sachets16', '16Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(18, 'Title of the products comes here17', '25g X 30 Sachets17', '17Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '0000-00-00 00:00:00', 0),
(19, 'Title of the products comes here18', '25g X 30 Sachets18', '18Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(20, 'Title of the products comes here19', '25g X 30 Sachets19', '19Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(21, 'Title of the products comes here20', '25g X 30 Sachets20', '20Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(22, 'Title of the products comes here21', '25g X 30 Sachets21', '21Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(23, 'Title of the products comes here22', '25g X 30 Sachets22', '22Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(24, 'Title of the products comes here23', '25g X 30 Sachets23', '23Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(25, 'Title of the products comes here24', '25g X 30 Sachets24', '24Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:49', '2021-04-17 06:43:49', 0),
(26, 'Title of the products comes here25', '25g X 30 Sachets25', '25Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(27, 'Title of the products comes here26', '25g X 30 Sachets26', '26Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(28, 'Title of the products comes here27', '25g X 30 Sachets27', '27Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(29, 'Title of the products comes here28', '25g X 30 Sachets28', '28Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(30, 'Title of the products comes here29', '25g X 30 Sachets29', '29Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(31, 'Title of the products comes here30', '25g X 30 Sachets30', '30Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(32, 'Title of the products comes here31', '25g X 30 Sachets31', '31Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(33, 'Title of the products comes here32', '25g X 30 Sachets32', '32Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(34, 'Title of the products comes here33', '25g X 30 Sachets33', '33Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(35, 'Title of the products comes here34', '25g X 30 Sachets34', '34Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(36, 'Title of the products comes here35', '25g X 30 Sachets35', '35Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:50', '2021-04-17 06:43:50', 0),
(37, 'Title of the products comes here36', '25g X 30 Sachets36', '36Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(38, 'Title of the products comes here37', '25g X 30 Sachets37', '37Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(39, 'Title of the products comes here38', '25g X 30 Sachets38', '38Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(40, 'Title of the products comes here39', '25g X 30 Sachets39', '39Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(41, 'Title of the products comes here40', '25g X 30 Sachets40', '<p>40Real Coffee, Real Taste, No Flavour Added. <br /><br />A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day</p>', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-22 10:41:07', 1),
(42, 'Title of the products comes here41', '25g X 30 Sachets41', '41Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(43, 'Title of the products comes here42', '25g X 30 Sachets42', '42Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(44, 'Title of the products comes here43', '25g X 30 Sachets43', '43Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:51', '2021-04-17 06:43:51', 0),
(45, 'Title of the products comes here44', '25g X 30 Sachets44', '<p>44Real Coffee, Real Taste, No Flavour Added. <br /><br />A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day</p>', 'products\\April2021\\rjvP0O7EOKYPikRvl1eK.png', '[\"products\\\\April2021\\\\e3VbPf4oOht1zvLJX1aH.png\",\"products\\\\April2021\\\\8R2fg9rl6w8Yr6brpRMJ.png\",\"products\\\\April2021\\\\5EyG9JYaQ5HUo7G3N7gu.png\",\"products\\\\April2021\\\\F85krmAOyCg20nrIfhzm.png\",\"products\\\\April2021\\\\RzhUNmMpKvBCpnTYDQbj.png\"]', '[]', 1, '2021-04-17 06:43:52', '2021-04-22 10:13:50', 1),
(46, 'Title of the products comes here45', '25g X 30 Sachets45', '<p>45Real Coffee, Real Taste, No Flavour Added. <br /><br />A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day</p>', '', '[]', '{}', 1, '2021-04-17 06:43:52', '2021-04-22 10:40:51', 1),
(47, 'Title of the products comes here46', '25g X 30 Sachets46', '<p>46Real Coffee, Real Taste, No Flavour Added. <br /><br />A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day</p>', '', '[]', '{}', 1, '2021-04-17 06:43:52', '2021-04-22 10:40:57', 1),
(48, 'Title of the products comes here47', '25g X 30 Sachets47', '47Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:52', '2021-04-17 06:43:52', 0),
(49, 'Title of the products comes here48', '25g X 30 Sachets48', '48Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:52', '2021-04-17 06:43:52', 0),
(50, 'Title of the products comes here49', '25g X 30 Sachets49', '49Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day', '', '[]', '{}', 1, '2021-04-17 06:43:52', '2021-04-17 06:43:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-04-17 06:58:54', '2021-04-17 06:58:54'),
(2, 'user', 'Normal User', '2021-04-17 06:58:55', '2021-04-17 06:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Alicafe', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2021\\SYXM8csU3syBTpFdC9MU.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2021\\VeZ4XrFohuSRNIgw8UHR.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Alicafe', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Dow Group © COPYRIGHT 2021', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2021\\W6pf1xb8wgP9XnGM1Y0a.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2021\\hSfRylpNmyLiGOGT0wje.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_links`
--

CREATE TABLE `social_media_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-04-17 06:59:08', '2021-04-17 06:59:08'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-04-17 06:59:09', '2021-04-17 06:59:09'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-04-17 06:59:10', '2021-04-17 06:59:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-04-17 06:59:10', '2021-04-17 06:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$7hxp5UhSyggMJrQ.hos.MOzaaIHNn22Pq44tjl5YncVPc6yxlN5LK', 'Wpca1V60l5McstiXiEsg4TxwNYSlp13vqLYmglT0RD6cLe1ew32hk6dQFJ9T', NULL, '2021-04-17 06:59:05', '2021-04-17 06:59:05'),
(2, 2, 'User', 'user@user.com', 'users\\April2021\\VOggPWyYsA3PXnoo9dk1.webp', NULL, '$2y$10$LenJGmwuS6lNh35/GSWfXOylkDPXDxQ45TxGVy.FnCRYPqdoSS04q', NULL, '{\"locale\":\"en\"}', '2021-04-18 06:33:20', '2021-04-18 06:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_products_products_id_foreign` (`products_id`),
  ADD KEY `category_products_category_id_foreign` (`category_id`);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finder_answers`
--
ALTER TABLE `finder_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finder_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `finder_questions`
--
ALTER TABLE `finder_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finder_questions_answers_id_foreign` (`answers_id`);

--
-- Indexes for table `home_banner_sliders`
--
ALTER TABLE `home_banner_sliders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social_media_links`
--
ALTER TABLE `social_media_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finder_answers`
--
ALTER TABLE `finder_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `finder_questions`
--
ALTER TABLE `finder_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `home_banner_sliders`
--
ALTER TABLE `home_banner_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_media_links`
--
ALTER TABLE `social_media_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_products`
--
ALTER TABLE `category_products`
  ADD CONSTRAINT `category_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finder_answers`
--
ALTER TABLE `finder_answers`
  ADD CONSTRAINT `finder_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `finder_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finder_questions`
--
ALTER TABLE `finder_questions`
  ADD CONSTRAINT `finder_questions_answers_id_foreign` FOREIGN KEY (`answers_id`) REFERENCES `finder_answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
