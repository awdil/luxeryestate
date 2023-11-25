-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 08:22 AM
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
-- Database: `mainluxrealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30'),
(2, 2, 'bUiPYBbscR6j5dhSlWSesCy0LEXp7LDG', 1, '2021-01-03 17:23:28', '2021-01-03 17:23:28', '2021-01-03 17:23:28'),
(3, 1, 'dtG3n9fA2nz5TPWNuYP1nCFwtfgtVY3Q', 1, '2021-01-12 20:51:55', '2021-01-12 20:51:55', '2021-01-12 20:51:55'),
(4, 1, 'j34UyDusAYW6Qv7W8R9Phy1eS7J6x7VH', 1, '2021-01-12 20:57:53', '2021-01-12 20:57:53', '2021-01-12 20:57:53'),
(5, 1, 'zybfCxjzArgxYwys3SFXJFr5GtrR4fVh', 1, '2021-04-15 01:12:40', '2021-04-15 01:12:40', '2021-04-15 01:12:40'),
(6, 1, 'CdxxFEhkLAEjMbXfwV0sGfYouD04RXxR', 1, '2021-04-18 09:20:14', '2021-04-18 09:20:14', '2021-04-18 09:20:14'),
(7, 1, '5QGfTcVcYiXHzILQHh84iziigUT1Asfo', 1, '2021-04-29 20:46:36', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(8, 1, 'b6OPzC5TBqVWQUjUE6MwNt1xW50BQCiq', 1, '2021-06-11 20:56:49', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 1, 'aErtd3iYdCfFQHt9JGTC6CK2sDEipDfJ', 1, '2021-12-04 05:15:56', '2021-12-04 05:15:56', '2021-12-04 05:15:56'),
(10, 1, 'E2pnOQvxfnxT3FhzIVG3y64EmlSJquav', 1, '2021-12-04 05:17:41', '2021-12-04 05:17:41', '2021-12-04 05:17:41'),
(11, 1, 'aw6YZVSneTmkzQYSO1uZ5sza3JyZYFkk', 1, '2021-12-04 05:21:13', '2021-12-04 05:21:13', '2021-12-04 05:21:13'),
(12, 1, 'NmUPB12SAMkdIku581sX5QpARXMxqJjg', 1, '2021-12-09 21:24:36', '2021-12-09 21:24:36', '2021-12-09 21:24:36'),
(13, 1, 'brlhvZ2kzt9LlSMb4zvTFoibinKxnEQg', 1, '2021-12-09 21:25:34', '2021-12-09 21:25:34', '2021-12-09 21:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` text DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-30 23:47:23', '2023-10-30 23:47:23'),
(2, 1, 'user', '{\"step\":\"3\",\"email\":\"admin@botble.com\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-10-30 23:48:27', '2023-10-30 23:48:27'),
(3, 1, 'user', '{\"step\":\"3\",\"email\":\"admin@botble.com\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'danger', '2023-10-30 23:48:27', '2023-10-30 23:48:27'),
(4, 1, 'user', '{\"step\":\"3\",\"email\":\"admin@botble.com\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'primary', '2023-10-30 23:48:27', '2023-10-30 23:48:27'),
(5, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-10-31 00:12:55', '2023-10-31 00:12:55'),
(6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-31 00:13:12', '2023-10-31 00:13:12'),
(7, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-31 14:47:03', '2023-10-31 14:47:03'),
(8, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-31 23:27:14', '2023-10-31 23:27:14'),
(9, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-10-31 23:28:09', '2023-10-31 23:28:09'),
(10, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-09 07:24:55', '2023-11-09 07:24:55'),
(11, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-11-09 07:25:05', '2023-11-09 07:25:05'),
(12, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-09 07:30:41', '2023-11-09 07:30:41'),
(13, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-09 13:57:38', '2023-11-09 13:57:38'),
(14, 1, 'package', '{\"name\":\"Free First Post\",\"price\":\"0\",\"currency_id\":\"1\",\"percent_save\":\"12\",\"number_of_listings\":\"1\",\"account_limit\":\"100\",\"is_default\":\"0\",\"order\":\"0\",\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Free First Post', 'primary', '2023-11-09 14:40:21', '2023-11-09 14:40:21'),
(15, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-10 12:08:55', '2023-11-10 12:08:55'),
(16, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-10 12:22:50', '2023-11-10 12:22:50'),
(17, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-13 14:03:05', '2023-11-13 14:03:05'),
(18, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2023-11-13 14:03:25', '2023-11-13 14:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `location` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Sales Manager (Up to 2600$)', 'Ho Chi Minh, Viet Nam', '1300$ - 2600$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>', 'published', '2019-11-30 19:43:10', '2019-11-30 19:46:53', NULL),
(3, 'Senior Real Estate Consultant Demo', 'Ho Chi Minh, Viet Nam', 'From 1500$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>', 'published', '2019-11-30 19:52:42', '2021-01-03 17:26:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `careers_translations`
--

CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) NOT NULL,
  `careers_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers_translations`
--

INSERT INTO `careers_translations` (`lang_code`, `careers_id`, `name`, `location`, `salary`, `description`) VALUES
('vi', 1, 'Trưởng Phòng Kinh Doanh ( Lương lên tới 60tr)', 'Ho Chi Minh, Viet Nam', '30,000,000 VND-60,000,000 VND', NULL),
('vi', 3, 'Chuyên Viên Tư Vấn Bất Động Sản Cao Cấp', 'Ho Chi Minh, Viet Nam', 'Từ 30,000,000 VND', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(3, 'Kiến trúc nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(4, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(5, 'Thiết kế nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(6, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(7, 'Vật liệu xây dựng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(8, 'Tin tức', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-22 01:26:08', '2019-11-22 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'Alhambra', 1, 1, 0, 0, 1, 'cities/los-angeles-winter-2016.jpg', 'published', '2019-11-18 08:18:42', '2019-12-03 05:55:52', 'alhambra', NULL),
(2, 'Oakland', 1, 1, 0, 0, 1, 'cities/oaklandnightskylineandlakemerritt.jpg', 'published', '2019-11-18 08:23:14', '2019-12-03 05:55:52', 'oakland', NULL),
(3, 'Bakersfield', 1, 1, 0, 0, 1, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', 'published', '2019-11-18 08:26:54', '2019-12-03 05:55:52', 'bakersfield', NULL),
(4, 'Anaheim', 1, 1, 0, 0, 1, 'cities/castillo-de-disneyland.jpg', 'published', '2019-11-18 08:27:57', '2019-12-03 05:55:52', 'anaheim', NULL),
(5, 'San Francisco', 1, 1, 0, 0, 1, 'cities/goldengatebridge-001.jpg', 'published', '2019-11-18 08:29:18', '2019-12-03 05:55:52', 'san-francisco', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities_translations`
--

INSERT INTO `cities_translations` (`lang_code`, `cities_id`, `name`) VALUES
('vi', 1, 'Alhambra'),
('vi', 2, 'Oakland'),
('vi', 3, 'Bakersfield'),
('vi', 4, 'Anaheim'),
('vi', 5, 'San Francisco');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`) VALUES
(1, 'United States', 'United States of America', 0, 0, 'published', '2019-11-18 08:17:29', '2019-11-18 08:17:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries_translations`
--

INSERT INTO `countries_translations` (`lang_code`, `countries_id`, `name`, `nationality`) VALUES
('vi', 1, 'United States', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(3, 'widget_total_plugins', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(11, 'widget_total_1', '2023-10-30 23:47:24', '2023-10-30 23:47:24'),
(12, 'widget_total_2', '2023-10-30 23:47:24', '2023-10-30 23:47:24'),
(13, 'widget_total_3', '2023-10-30 23:47:24', '2023-10-30 23:47:24'),
(14, 'widget_total_4', '2023-10-30 23:47:24', '2023-10-30 23:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7, 0, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(2, NULL, 1, 5, 1, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(3, NULL, 1, 6, 2, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(4, NULL, 1, 8, 3, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(5, NULL, 1, 9, 4, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(6, NULL, 1, 10, 5, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text DEFAULT NULL,
  `reference_type` varchar(120) NOT NULL,
  `lang_meta_origin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(3, 1, 'en_US', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(4, 2, 'en_US', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(5, 3, 'en_US', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(6, 4, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(7, 1, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '13cf1f003e0c62806dd7ad26f048b91d'),
(8, 2, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'f2356c699c6653bffaff97dd9387717d'),
(12, 3, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'e8c67bae0a5f47fa54a4a76a875daf3f'),
(13, 4, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'd57fa54aad5abc3f0caec4fb0e4e0907'),
(14, 5, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '2d253e85c0394609682b9dbe77705bdb'),
(15, 1, 'en_US', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(16, 5, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(17, 6, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '150d1429049e27e62396ed759719ada4'),
(18, 7, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'a7dd32dd31e9b85768892b17c4b6283b'),
(19, 8, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'bc3b21d633995dfaaa528eeb34b804ca'),
(20, 6, 'en_US', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(21, 7, 'en_US', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(22, 1, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(23, 2, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(24, 3, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(25, 4, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(26, 5, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(27, 6, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(28, 7, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(29, 8, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(30, 9, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(31, 10, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(32, 11, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(33, 12, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(34, 13, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(35, 14, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(36, 15, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(37, 2, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(38, 8, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(39, 9, 'en_US', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(40, 10, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(41, 11, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(42, 1, 'en_US', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(43, 12, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(45, 1, 'en_US', 'Botble\\Blog\\Models\\Tag', 'cb81f9780b7fcdcb490a2dc412bf2dc8'),
(47, 2, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b1f1b44f1eb59e622269e868a16d4ead'),
(50, 3, 'en_US', 'Botble\\Blog\\Models\\Tag', '3facfab60703e4bb17ce679a63d04d6e'),
(51, 3, 'en_US', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(52, 4, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(53, 5, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(54, 6, 'en_US', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(55, 13, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(56, 14, 'en_US', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(57, 15, 'en_US', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(58, 16, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(59, 17, 'en_US', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(83, 16, 'vi', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(84, 17, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(85, 18, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(86, 19, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(87, 20, 'vi', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(88, 21, 'vi', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(89, 22, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(90, 23, 'vi', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(91, 24, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(92, 25, 'vi', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(93, 26, 'vi', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(94, 27, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(96, 29, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(97, 30, 'vi', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(98, 31, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(122, 2, 'en_US', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(123, 3, 'vi', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(124, 4, 'en_US', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(125, 5, 'vi', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(126, 6, 'en_US', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(127, 7, 'vi', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(135, 8, 'vi', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(144, 1, 'en_US', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(146, 3, 'en_US', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(194, 5, 'en_US', 'Botble\\Career\\Models\\Career', '9d36fac293afaacbe2deeaaccc00f346'),
(442, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '5ad59171af0cc4d0dccc3d38422c455d'),
(443, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', 'ffecf7382cb34d54fb4b6879ce3d4cbd'),
(444, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '2171b9545e3c19b81ec7d3448699d972'),
(445, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', 'ed29f281cdb65de4428a630d3b917f83'),
(446, 4, 'en_US', 'Botble\\Menu\\Models\\Menu', '55182b2b4e696c141e5cca8a6f85a29e'),
(447, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'dcaa0fe6da1d86071c035fc304a73d07'),
(448, 5, 'vi', 'Botble\\Menu\\Models\\Menu', 'ffecf7382cb34d54fb4b6879ce3d4cbd'),
(449, 6, 'vi', 'Botble\\Menu\\Models\\Menu', '2171b9545e3c19b81ec7d3448699d972'),
(450, 7, 'vi', 'Botble\\Menu\\Models\\Menu', 'ed29f281cdb65de4428a630d3b917f83'),
(451, 8, 'vi', 'Botble\\Menu\\Models\\Menu', '55182b2b4e696c141e5cca8a6f85a29e');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1483, 0, '1', 80, 'image/jpeg', 11752, 'accounts/1.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1484, 0, '10', 80, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1485, 0, '2', 80, 'image/jpeg', 19005, 'accounts/2.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1486, 0, '3', 80, 'image/jpeg', 20400, 'accounts/3.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1487, 0, '4', 80, 'image/jpeg', 26819, 'accounts/4.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1488, 0, '5', 80, 'image/jpeg', 14367, 'accounts/5.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1489, 0, '6', 80, 'image/jpeg', 12367, 'accounts/6.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1490, 0, '7', 80, 'image/jpeg', 20652, 'accounts/7.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1491, 0, '8', 80, 'image/jpeg', 21164, 'accounts/8.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1492, 0, '9', 80, 'image/jpeg', 6084, 'accounts/9.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1494, 0, 'asset-3-at-3x', 82, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1495, 0, 'asset-4-at-3x', 82, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1496, 0, 'breadcrumb-background', 82, 'image/jpeg', 504692, 'general/breadcrumb-background.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1497, 0, 'copyright', 82, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1498, 0, 'home-banner', 82, 'image/jpeg', 892011, 'general/home-banner.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1499, 0, 'termsconditions-pagedesktop', 82, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1500, 0, 'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri', 82, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1501, 0, 'vietnam-office-4', 82, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1502, 0, '1', 83, 'image/jpeg', 66997, 'news/1.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1503, 0, '10', 83, 'image/jpeg', 66858, 'news/10.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1504, 0, '11', 83, 'image/jpeg', 86492, 'news/11.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1505, 0, '12', 83, 'image/jpeg', 91376, 'news/12.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1506, 0, '13', 83, 'image/jpeg', 82991, 'news/13.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1507, 0, '14', 83, 'image/jpeg', 66997, 'news/14.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1508, 0, '15', 83, 'image/jpeg', 111450, 'news/15.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1509, 0, '16', 83, 'image/jpeg', 464807, 'news/16.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1510, 0, '2', 83, 'image/jpeg', 51884, 'news/2.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1511, 0, '3', 83, 'image/jpeg', 132835, 'news/3.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1512, 0, '4', 83, 'image/jpeg', 948302, 'news/4.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1513, 0, '5', 83, 'image/jpeg', 66858, 'news/5.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1514, 0, '6', 83, 'image/jpeg', 328317, 'news/6.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1515, 0, '7', 83, 'image/jpeg', 249538, 'news/7.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1516, 0, '8', 83, 'image/jpeg', 147871, 'news/8.jpg', '[]', '2021-12-09 21:25:40', '2021-12-09 21:25:40', NULL),
(1517, 0, '9', 83, 'image/jpeg', 194815, 'news/9.jpg', '[]', '2021-12-09 21:25:40', '2021-12-09 21:25:40', NULL),
(1518, 0, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1519, 0, '2009-0726-ca-bakersfield-truxtontower', 84, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1520, 0, 'castillo-de-disneyland', 84, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1521, 0, 'goldengatebridge-001', 84, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1522, 0, 'los-angeles-winter-2016', 84, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1523, 0, 'oaklandnightskylineandlakemerritt', 84, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1524, 0, 'favicon', 85, 'image/png', 3110, 'logo/favicon.png', '[]', '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(1525, 0, 'logo-white', 85, 'image/png', 18120, 'logo/logo-white.png', '[]', '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(1526, 0, 'logo', 85, 'image/png', 23910, 'logo/logo.png', '[]', '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(1527, 0, '1', 86, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(1528, 0, '11', 86, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1529, 0, '12', 86, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1530, 0, '13', 86, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1531, 0, '14', 86, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1532, 0, '2', 86, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1533, 0, '21', 86, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1534, 0, '22', 86, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1535, 0, '23', 86, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1536, 0, '24', 86, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1537, 0, '25', 86, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1538, 0, '26', 86, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1539, 0, '3', 86, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1540, 0, '5', 86, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1541, 0, '1-1', 87, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1542, 0, '1-2', 87, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1543, 0, '1-3', 87, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1544, 0, '1', 87, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1545, 0, '10-1', 87, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1546, 0, '10', 87, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1547, 0, '11-1', 87, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1548, 0, '11', 87, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1549, 0, '12', 87, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1550, 0, '13', 87, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1551, 0, '14', 87, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1552, 0, '15', 87, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1553, 0, '2-1', 87, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1554, 0, '2-2', 87, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1555, 0, '2-3', 87, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1556, 0, '2', 87, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1557, 0, '21', 87, 'image/jpeg', 85475, 'properties/21.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1558, 0, '22-1', 87, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1559, 0, '22', 87, 'image/jpeg', 713091, 'properties/22.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1560, 0, '23', 87, 'image/jpeg', 111948, 'properties/23.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1561, 0, '24-1', 87, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1562, 0, '24', 87, 'image/jpeg', 69034, 'properties/24.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1563, 0, '3-1', 87, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1564, 0, '3-2', 87, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1565, 0, '3-3', 87, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1566, 0, '3', 87, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1567, 0, '31', 87, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1568, 0, '311', 87, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1569, 0, '32', 87, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1570, 0, '32223-43914-378', 87, 'image/jpeg', 716445, 'properties/32223-43914-378.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1571, 0, '33', 87, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1572, 0, '34', 87, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1573, 0, '35', 87, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1574, 0, '4-1', 87, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1575, 0, '4-2', 87, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1576, 0, '4', 87, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1577, 0, '411', 87, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1578, 0, '42', 87, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1579, 0, '421834935dbc9ef3aaa42', 87, 'image/jpeg', 538188, 'properties/421834935dbc9ef3aaa42.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1580, 0, '43', 87, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1581, 0, '44', 87, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1582, 0, '5-1', 87, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1583, 0, '5-2', 87, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1584, 0, '5', 87, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1585, 0, '6-1', 87, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1586, 0, '6-2', 87, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1587, 0, '6', 87, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1588, 0, '7-1', 87, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1589, 0, '7-2', 87, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1590, 0, '7', 87, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1591, 0, '71', 87, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1592, 0, '72', 87, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1593, 0, '73', 87, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1594, 0, '74', 87, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1595, 0, '75', 87, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1596, 0, '78', 87, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1597, 0, '79', 87, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1598, 0, '8-1', 87, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1599, 0, '8-2', 87, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1600, 0, '8', 87, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1601, 0, '9-1', 87, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1602, 0, '9', 87, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1603, 0, 'a1-1', 87, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1604, 0, 'a1-2', 87, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1605, 0, 'a1', 87, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1606, 0, 'a10', 87, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1607, 0, 'a2-1', 87, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1608, 0, 'a2-2', 87, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1609, 0, 'a2', 87, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1610, 0, 'a3-1', 87, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1611, 0, 'a3-2', 87, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1612, 0, 'a3', 87, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1613, 0, 'a4-1', 87, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1614, 0, 'a4-2', 87, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1615, 0, 'a4', 87, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1616, 0, 'a5-1', 87, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1617, 0, 'a5', 87, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1618, 0, 'a6-1', 87, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1619, 0, 'a6', 87, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1620, 0, 'a7', 87, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1621, 0, 'a8', 87, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1622, 0, 'a9', 87, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1623, 0, 'b1', 87, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1624, 0, 'b2', 87, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1625, 0, 'b3', 87, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1626, 0, 'b4-1', 87, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1627, 0, 'b4', 87, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1628, 0, 'b5-1', 87, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1629, 0, 'b5', 87, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1630, 0, 'b6', 87, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1631, 0, 'download', 87, 'image/jpeg', 10833, 'properties/download.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1632, 0, 'e1', 87, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1633, 0, 'e2', 87, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1634, 0, 'e3', 87, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1635, 0, 'e4', 87, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1636, 0, 'e5', 87, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1637, 0, 'e7', 87, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1638, 0, 'e8', 87, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1639, 0, 'p1', 87, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1640, 0, 'p2', 87, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1641, 0, 'property-video-thumb', 87, 'image/jpeg', 26909, 'properties/property-video-thumb.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1642, 0, 'q1', 87, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1643, 0, 'q2', 87, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1644, 0, 'q3', 87, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1645, 0, 'q6', 87, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1646, 0, 'q7', 87, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1647, 0, 'q8', 87, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1648, 0, 't1', 87, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1649, 0, 't2', 87, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1650, 0, 't3', 87, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1651, 0, 't4', 87, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1652, 0, 't5', 87, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1653, 0, 'wp1a', 87, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1654, 0, 'avatar', 88, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1655, 1, 'lux-elogon-n', 0, 'image/png', 106446, 'lux-elogon-n.png', '[]', '2023-10-30 23:47:52', '2023-10-30 23:47:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(80, 0, 'accounts', 'accounts', 0, '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(82, 0, 'general', 'general', 0, '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(83, 0, 'news', 'news', 0, '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(84, 0, 'cities', 'cities', 0, '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(85, 0, 'logo', 'logo', 0, '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(86, 0, 'projects', 'projects', 0, '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(87, 0, 'properties', 'properties', 0, '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(88, 0, 'users', 'users', 0, '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(2, 'About', 'about', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(3, 'More information', 'more-information', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(4, 'News', 'news', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(5, 'Menu chính', 'menu-chinh', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(6, 'Về chúng tôi', 've-chung-toi', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(8, 'Tin tức', 'tin-tuc', 'published', '2021-12-09 21:25:35', '2021-12-09 21:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(2, 5, 'main-menu', '2021-12-09 21:25:35', '2021-12-09 21:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT 0,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/projects', NULL, 0, 'Projects', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(2, 1, 0, 0, NULL, '/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(3, 1, 0, 0, NULL, '/agents', NULL, 0, 'Agents', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(4, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'News', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(5, 1, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(6, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(7, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(8, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(9, 2, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(10, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(11, 3, 0, 0, NULL, '/projects', NULL, 0, 'All projects', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(12, 3, 0, 0, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(13, 3, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(14, 3, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(15, 4, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(16, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/news/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(17, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/news/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(18, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/news/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(19, 5, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(20, 5, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn Hộ', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(21, 5, 0, 0, NULL, '/agents', NULL, 0, 'Đại lý', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(22, 5, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(23, 5, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(24, 5, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(25, 6, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(26, 6, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(27, 6, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(28, 6, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(29, 7, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(30, 7, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(31, 7, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(32, 7, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(33, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(34, 8, 0, 2, 'Botble\\Blog\\Models\\Category', '/news/house-architecture', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(35, 8, 0, 4, 'Botble\\Blog\\Models\\Category', '/news/house-design', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36'),
(36, 8, 0, 6, 'Botble\\Blog\\Models\\Category', '/news/building-materials', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2021-12-09 21:25:35', '2021-12-09 21:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(17, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:59:01', '2019-11-18 02:59:01'),
(23, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(74, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(80, 2, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(81, 4, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(82, 6, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(83, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(84, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(85, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(86, 14, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(87, 16, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(88, 18, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(89, 20, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(90, 22, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(91, 24, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(92, 26, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(93, 28, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(94, 30, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(95, 32, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(96, 34, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(97, 2, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(98, 4, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(99, 6, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(100, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(101, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(102, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(39, '2016_10_03_032336_create_languages_table', 5),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47),
(101, '2020_12_05_112556_change_contact_page_to_a_page', 48),
(102, '2021_02_11_031126_update_price_column_in_projects_and_properties', 49),
(103, '2021_02_16_092633_remove_default_value_for_author_type', 50),
(104, '2021_03_08_024049_add_lat_long_into_real_estate_tables', 51),
(105, '2021_03_27_144913_add_customer_type_into_table_payments', 52),
(106, '2021_05_24_034720_make_column_currency_nullable', 53),
(107, '2021_06_10_091950_add_column_is_featured_to_table_re_accounts', 54),
(108, '2021_07_07_021757_update_table_account_activity_logs', 55),
(109, '2021_07_18_101839_fix_old_theme_options', 56),
(110, '2021_08_05_134214_fix_social_link_theme_options', 57),
(111, '2021_08_09_161302_add_metadata_column_to_payments_table', 58),
(112, '2021_09_29_042758_create_re_categories_multilevel_table', 59),
(113, '2021_10_19_020859_update_metadata_field', 60),
(114, '2021_10_31_031254_add_company_to_accounts_table', 61),
(115, '2021_10_25_021023_fix-priority-load-for-language-advanced', 62),
(116, '2021_12_03_030600_create_blog_translations', 62),
(117, '2021_12_03_075608_create_page_translations', 62),
(118, '2021_12_03_084118_create_location_translations', 62),
(119, '2021_12_03_094518_migrate_old_location_data', 62),
(120, '2021_12_04_095357_create_careers_translations_table', 62),
(121, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 63),
(122, '2021_12_10_034807_create_real_estate_translation_tables', 64),
(123, '2021_12_18_081636_add_property_project_views_count', 65),
(124, '2022_01_16_085908_improve_plugin_location', 66),
(125, '2022_04_19_113923_add_index_to_table_posts', 67),
(126, '2022_04_20_100851_add_index_to_media_table', 67),
(127, '2022_04_20_101046_add_index_to_menu_table', 67),
(128, '2022_05_03_033044_update_column_images_in_real_estate_tables', 68),
(129, '2022_05_04_033044_update_column_images_in_real_estate_tables', 69),
(130, '2022_06_04_033634_improve_homepage_content', 70),
(131, '2022_06_28_151901_activate_paypal_stripe_plugin', 71),
(132, '2022_07_02_081723_fix_expired_date_column', 71),
(133, '2019_12_14_000001_create_personal_access_tokens_table', 72),
(134, '2022_07_07_153354_update_charge_id_in_table_payments', 72),
(135, '2022_07_10_034813_move_lang_folder_to_root', 72),
(136, '2022_08_01_090213_update_table_properties_and_projects', 72),
(137, '2022_08_04_051940_add_missing_column_expires_at', 72),
(138, '2022_08_04_052122_delete_location_backup_tables', 72);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\"][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(2, 'News', '---', 1, NULL, 'default', 0, NULL, 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(3, 'About us', '<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"http://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"http://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n', 1, NULL, 'default', 0, 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(4, 'Contact', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(5, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"http://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-06-03 21:00:12', '2022-06-03 21:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang chủ', NULL, '<div>[featured-projects title=\"Dự án nổi bật\" subtitle=\"Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot nhất và uy tín nhất, vui lòng truy cập chi tiết bên dưới để tìm hiểu thêm.\"][/featured-projects]</div><div>[properties-by-locations title=\"Bất động sản theo khu vực\" subtitle=\"Mỗi nơi là một sự lựa chọn tốt sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những bất động sản tuyệt vời của chúng tôi.\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Bất động sản bán\" subtitle=\"Dưới đây là danh sách các bất động sản hiện đang được bán.\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Bất động sản ở cho thuê\" subtitle=\"Dưới đây là danh sách các bất động sản hiện đang được cho thuê.\"][/properties-for-rent]</div><div>[featured-agents title=\"Đại lý nổi bật\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Nhà/căn hộ đã xem\" description=\"Các căn hộ/nhà mà bạn đã xem.\"][/recently-viewed-properties]</div><div>[latest-news title=\"Tin tức\" subtitle=\"Dưới đây là tin tức bất động sản mới nhất được chúng tôi cập nhật thường xuyên từ các nguồn đáng tin cậy.\"][/latest-news]</div>'),
('vi', 2, 'Tin tức', NULL, '---'),
('vi', 3, 'Về chúng tôi', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. Với khẩu hiệu  “Đánh bật thời gian, xuyên qua không gian” cùng chiến lược phát triển bền vững, Flex Home không ngừng kết nối giữa người cần mua và người cần bán trong lĩnh vực bất động sản', '<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. SƠ LƯỢC VỀ C&Ocirc;NG TY</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Được th&agrave;nh lập ng&agrave;y 28 - 08 -1993 (tiền th&acirc;n l&agrave; c&ocirc;ng ty TNHH X&acirc;y Dựng Trường Thịnh Ph&aacute;t), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, x&acirc;y biệt thự cho thu&ecirc;.&nbsp;<br />\nVới khẩu hiệu &nbsp;&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; c&ugrave;ng chiến lược ph&aacute;t triển bền vững, lấy Bất Động Sản l&agrave;m lĩnh vực trọng t&acirc;m, Flex Home kh&ocirc;ng ngừng kết nối giữa người cần mua v&agrave; người cần b&aacute;n trong lĩnh vực bất động sản, đưa mọi người x&iacute;ch lại gần nhau hơn, vượt qua khoảng c&aacute;ch về thời gian v&agrave; kh&ocirc;ng gian, l&agrave; nơi đ&aacute;ng tin tưởng cho sự đầu tư bất động sản - một lĩnh vực kh&ocirc;ng ngừng ph&aacute;t triển qua thời gian.</span></span></p>\n\n<blockquote>\n<h3 style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><em><strong><span style=\"color:#1abc9c;\">&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; </span></strong></em></span></span></h3>\n</blockquote>\n\n<h3 style=\"text-align: center;\"><img alt=\"\" src=\"http://flex-home.test/storage/general/asset-4-at-3x.png\" style=\"width: 90%;\" /></h3>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. TẦM NH&Igrave;N</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&acirc;u t&oacute;m địa b&agrave;n trong nước.</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vươn xa khắp c&aacute;c ch&acirc;u lục.</span></span></li>\n</ul>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. SỨ MẠNG</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kiến tạo cộng đồng</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&acirc;y dựng điểm đến</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vun đắp niềm vui</span></span></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://flex-home.test/storage/general/vietnam-office-4.jpg\" style=\"width: 100%;\" /></p>\n\n<p>&nbsp;</p>\n'),
('vi', 4, 'Liên hệ', NULL, '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Tìm đường đi</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>'),
('vi', 5, 'Điều khoản và quy định', 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Flex Home cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Flex Home phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Flex Home c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n'),
('vi', 6, 'Cookie Policy', NULL, '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@botble.com', '$2y$10$TFWLnjQbTYv0ufpER3tfh.A4x4pkbiI.ILJzyzwK35YNS7h3d.BHW', '2023-10-30 23:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(255) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store by real estate negotiations', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 1647, NULL, '2021-12-09 21:25:40', '2023-10-31 15:03:31'),
(2, 'Private Home Sales Drop 27% In October', 'New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month', '<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 1061, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(3, 'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects', 'Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.', '<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 764, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(4, 'S. Korea’s Big Investors Flocking to Overseas Real Estate', 'An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.', '<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpg', 2331, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(105, 'The Top 2020 Handbag Trends to Know', 'Vitae sapiente qui deleniti sed est. Ullam dolore et et dolor dolorum a. Culpa et et ullam suscipit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Mock Turtle recovered his voice, and, with tears running down his brush, and had to do so. \'Shall we try another figure of the Mock Turtle. Alice was a dead silence. Alice noticed with some curiosity. \'What a curious feeling!\' said Alice; \'it\'s laid for a minute, nurse! But I\'ve got to the Cheshire Cat, she was always ready to play croquet with the edge of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, and, as they all crowded round her at the mushroom for a conversation. \'You don\'t know what to uglify is, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'that only makes the matter with it. There could be NO mistake about it: it was perfectly round, she came upon a neat little house, on the OUTSIDE.\' He unfolded the paper as he spoke. \'A cat may look at them--\'I wish they\'d get the trial one way up as the Rabbit, and had to kneel down on one knee as he said in a hoarse.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>PLEASE mind what you\'re doing!\' cried Alice, quite forgetting in the sun. (IF you don\'t explain it as far down the hall. After a while she ran, as well as if he would deny it too: but the Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a walrus or hippopotamus, but then she looked up, but it is.\' \'I quite agree with you,\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the glass, and she ran with all their.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/9.jpg\"></p><p>Caterpillar. \'Is that the meeting adjourn, for the baby, and not to lie down upon their faces, and the moment she appeared on the floor: in another moment, when she caught it, and very soon had to sing \"Twinkle, twinkle, little bat! How I wonder what CAN have happened to me! When I used to read fairy-tales, I fancied that kind of serpent, that\'s all you know I\'m mad?\' said Alice. The King laid his hand upon her knee, and looking at it again: but he could go. Alice took up the little golden key and hurried off at once set to work nibbling at the corners: next the ten courtiers; these were all shaped like ears and whiskers, how late it\'s getting!\' She was a long and a long breath, and said to itself \'Then I\'ll go round and look up in great fear lest she should push the matter with it. There was no time to see it quite plainly through the glass, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was not even get her head in the wood, \'is to grow.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>What happened to me! When I used to come yet, please your Majesty,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she squeezed herself up closer to Alice\'s side as she added, to herself, for she had never seen such a nice little dog near our house I should frighten them out again. That\'s all.\' \'Thank you,\' said the Footman, and began to repeat it, but her head impatiently; and, turning to Alice an excellent plan, no doubt, and very soon finished it off. \'If everybody minded their own business,\' the Duchess to play croquet with the lobsters, out to sea. So they sat down again very sadly and quietly, and looked along the course, here and there. There was a long tail, certainly,\' said Alice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 2479, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(106, 'Top Search Engine Optimization Strategies!', 'Quo veniam distinctio qui provident dolorem. Nulla veniam a nostrum optio odio sit nihil distinctio. Quae est tempora qui aperiam. Animi vitae ea qui saepe nihil.', '<p>WAS a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up this morning, but I grow at a king,\' said Alice. \'Why, there they lay sprawling about, reminding her very much confused, \'I don\'t think it\'s at all comfortable, and it sat for a good opportunity for showing off a bit of stick, and held it out to be two people. \'But it\'s no use going back to the Gryphon. \'It\'s all about for some time after the rest waited in silence. Alice noticed with some severity; \'it\'s very easy to know what you would seem to see if she had been to her, one on each side, and opened their eyes and mouths so VERY wide, but she had a door leading right into a tidy little room with a sigh: \'he taught Laughing and Grief, they used to come upon them THIS size: why, I should think it would like the look of things at all, as the rest were quite silent, and looked along the passage into the jury-box, and saw that, in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/2.jpg\"></p><p>I suppose Dinah\'ll be sending me on messages next!\' And she opened the door and found that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen furiously, throwing an inkstand at the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on, \'if you don\'t explain it is all the jelly-fish out of the bottle was a different person then.\' \'Explain all that,\' said the Gryphon. Alice did not quite sure whether it would be of any.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/9.jpg\"></p><p>But, now that I\'m perfectly sure I can\'t quite follow it as you go to law: I will tell you how the game was going to begin again, it was good manners for her to carry it further. So she swallowed one of the table. \'Have some wine,\' the March Hare. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Cat; and this Alice would not join the dance. Would not, could not remember ever having seen in her lessons in here? Why, there\'s hardly enough of me left to make out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice sharply, for she was walking by the soldiers, who of course had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was out of the guinea-pigs cheered, and was just saying to herself, \'the way all the creatures wouldn\'t be so kind,\' Alice replied, so eagerly that the best way to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not get dry again: they had to.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>And she thought it would be offended again. \'Mine is a long breath, and said \'That\'s very important,\' the King added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and behind it, it occurred to her great delight it fitted! Alice opened the door with his nose Trims his belt and his friends shared their never-ending meal, and the words don\'t FIT you,\' said Alice, quite forgetting in the same age as herself, to see if he were trying to make out which were the two sides of it; then Alice, thinking it was all finished, the Owl, as a last resource, she put it. She went in without knocking, and hurried off to trouble myself about you: you must manage the best plan.\' It sounded an excellent opportunity for making her escape; so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said the Pigeon the opportunity of saying to her chin in salt water. Her first idea was that you never had fits, my dear.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 430, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(107, 'Which Company Would You Choose?', 'Ut quod dolorum et modi. At quae ratione quos facere. Molestiae expedita ratione vitae ut ratione. Officia et blanditiis tempore ullam dolores autem quis.', '<p>The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, as well as if she were looking up into the loveliest garden you ever saw. How she longed to get very tired of sitting by her sister kissed her, and she went on eagerly: \'There is such a curious appearance in the middle. Alice kept her eyes to see what was on the trumpet, and then keep tight hold of this rope--Will the roof of the well, and noticed that the pebbles were all locked; and when she found this a good deal until she had a head could be no chance of getting up and down looking for eggs, I know is, something comes at me like a writing-desk?\' \'Come, we shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg your pardon!\' cried Alice again, in a game of play with a pair of white kid gloves: she took up the chimney, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing what she was out of a tree in front of them, and all dripping wet, cross, and.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>IT. It\'s HIM.\' \'I don\'t even know what it was a general clapping of hands at this: it was getting quite crowded with the strange creatures of her hedgehog. The hedgehog was engaged in a very fine day!\' said a timid voice at her side. She was a little girl or a serpent?\' \'It matters a good deal to come out among the trees, a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use in talking to herself, \'if one only knew how to get an opportunity of taking it away. She did not.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>I should be raving mad--at least not so mad as it happens; and if the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the garden, called out as loud as she could. \'No,\' said Alice. \'Did you say it.\' \'That\'s nothing to do: once or twice, and shook itself. Then it got down off the fire, stirring a large canvas bag, which tied up at the number of executions the Queen was to eat the comfits: this caused some noise and confusion, as the White Rabbit, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess said after a fashion, and this time she heard a little snappishly. \'You\'re enough to look over their heads. She felt that it seemed quite natural to Alice for protection. \'You shan\'t be beheaded!\' said Alice, who was reading the list of singers. \'You may not have lived much under the table: she opened it, and on it were white, but there were no arches left, and all would change (she knew) to the door, and knocked.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>English,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to have wondered at this, but at any rate,\' said Alice: \'three inches is such a thing as \"I sleep when I sleep\" is the use of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle repeated thoughtfully. \'I should like to be Number One,\' said Alice. \'Of course twinkling begins with a trumpet in one hand and a sad tale!\' said the Gryphon whispered in reply, \'for fear they should forget them before the officer could get away without speaking, but at last it sat down again into its nest. Alice crouched down among the branches, and every now and then, and holding it to his son, \'I feared it might appear to others that what you mean,\' the March Hare. \'He denies it,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know I\'m mad?\' said Alice. \'Exactly so,\' said the cook. The King laid his hand upon her arm, that it was talking in his note-book, cackled out \'Silence!\' and.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2387, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(108, 'Used Car Dealer Sales Tricks Exposed', 'Ab itaque eaque quisquam ut dolor quia nobis maxime. Ex reiciendis unde cum voluptatem quisquam ducimus. Sed numquam sit harum qui culpa nihil tempore. Laboriosam occaecati eligendi praesentium.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>VERY wide, but she added, to herself, \'I wonder if I\'ve kept her eyes to see that queer little toss of her sharp little chin. \'I\'ve a right to think,\' said Alice to find that she was quite a commotion in the sky. Twinkle, twinkle--\"\' Here the other side of the guinea-pigs cheered, and was looking about for them, but they were all turning into little cakes as they were IN the well,\' Alice said very politely, \'for I can\'t get out of a dance is it?\' Alice panted as she spoke. (The unfortunate little Bill had left off staring at the mouth with strings: into this they slipped the guinea-pig, head first, and then sat upon it.) \'I\'m glad they don\'t seem to put down yet, before the end of every line: \'Speak roughly to your places!\' shouted the Gryphon, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the entrance of the table, but there were TWO little shrieks, and more sounds of broken glass, from which she found herself at last it sat for a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over their heads. She felt very glad that it ought to eat or drink something or other; but the wise little Alice herself, and once she remembered the number of bathing machines in the last few minutes, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was a dead silence instantly, and neither of the ground--and I.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>I don\'t understand. Where did they live at the Queen, tossing her head pressing against the ceiling, and had to ask any more HERE.\' \'But then,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they went on saying to herself what such an extraordinary ways of living would be very likely to eat some of them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Caterpillar. \'Well, perhaps you haven\'t found it made no mark; but he could think of any use, now,\' thought poor Alice, who had been to the other side, the puppy began a series of short charges at the thought that SOMEBODY ought to be no sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, timidly; \'some of the water, and seemed to be in Bill\'s place for a baby: altogether Alice did not see anything that looked like the wind, and was delighted to find quite a commotion in the distance. \'Come on!\' and ran the faster, while more and.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. So you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook tulip-roots instead of onions.\' Seven flung down his brush, and had just begun to dream that she wasn\'t a bit of the doors of the court,\" and I never was so full of smoke from one end to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Pigeon had finished. \'As if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, my poor little thing sobbed again (or grunted, it was indeed: she was saying, and the choking of the house if it had come back with the words came very queer to ME.\' \'You!\' said the others. \'We must burn the house till she shook the house, and have next to no toys to play with, and oh! ever so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the way, was the first position in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 898, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(109, '20 Ways To Sell Your Product Faster', 'Dolorem iure nam est sunt. Cumque quidem voluptatem et eos non sit aut. Voluptatibus ex ullam impedit.', '<p>There seemed to Alice severely. \'What are tarts made of?\' Alice asked in a bit.\' \'Perhaps it doesn\'t matter much,\' thought Alice, \'they\'re sure to do so. \'Shall we try another figure of the words a little, half expecting to see what was on the stairs. Alice knew it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl and the poor child, \'for I can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to a day-school, too,\' said Alice; \'living at the Gryphon said, in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Gryphon. \'Of course,\' the Gryphon added \'Come, let\'s try Geography. London is the use of this was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a smile. There was a good opportunity for making her escape; so she tried to look over their slates; \'but it sounds uncommon nonsense.\' Alice said with a round face, and large eyes like a tunnel for some time.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Pigeon had finished. \'As if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was obliged to say when I learn music.\' \'Ah! that accounts for it,\' said the Mock Turtle with a soldier on each side to guard him; and near the centre of the way to hear his history. I must sugar.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>Dormouse again, so violently, that she was to find her in a day did you manage to do that,\' said the Duchess: \'and the moral of that is--\"Be what you were me?\' \'Well, perhaps you were all writing very busily on slates. \'What are they doing?\' Alice whispered to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ever saw in another moment down went Alice after it, never once considering how in the kitchen that did not like to have it explained,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, who felt ready to agree to everything that Alice had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have to go through next walking about at the top of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had been found and handed them round as prizes. There was a very little use without my shoulders. Oh, how I wish I could.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>When the sands are all dry, he is gay as a last resource, she put one arm out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little bit, and said anxiously to herself, \'after such a new kind of thing never happened, and now here I am very tired of being such a dear quiet thing,\' Alice went on saying to herself, \'Which way? Which way?\', holding her hand on the top of his pocket, and was going to happen next. First, she tried to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it out to the jury, in a furious passion, and went to the door. \'Call the next witness.\' And he got up and walking off to other parts of the court. All this time with great emphasis, looking hard at Alice the moment she appeared on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the pack, she.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1427, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(110, 'The Secrets Of Rich And Famous Writers', 'Eos dolores quam mollitia ipsa libero neque. Libero placeat voluptatum ad eum rerum incidunt et. Voluptatum dolor aut nulla harum non ut ut.', '<p>Lobster; I heard him declare, \"You have baked me too brown, I must have been that,\' said the Gryphon: \'I went to work very carefully, with one finger for the baby, it was very fond of beheading people here; the great wonder is, that there\'s any one of the March Hare and his friends shared their never-ending meal, and the shrill voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse was swimming away from her as hard as it was only the pepper that makes people hot-tempered,\' she went on growing, and very soon found an opportunity of adding, \'You\'re looking for eggs, as it went, \'One side of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not stoop? Soup of the hall; but, alas! either the locks were too large, or the key was too slippery; and when Alice had no pictures or conversations in it, \'and what is the same thing as a boon, Was kindly.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>Dormouse indignantly. However, he consented to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King. \'Then it wasn\'t very civil of you to learn?\' \'Well, there was no longer to be a very pretty dance,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the arm that was said, and went by without noticing her. Then.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>I know!\' exclaimed Alice, who was trembling down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to leave off being arches to do it.\' (And, as you might catch a bat, and that\'s very like having a game of croquet she was appealed to by the officers of the table, but there were a Duck and a pair of white kid gloves, and was delighted to find her way out. \'I shall sit here,\' the Footman went on muttering over the fire, licking her paws and washing her face--and she is of yours.\"\' \'Oh, I BEG your pardon!\' said the Mock Turtle. \'And how did you ever eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the other side. The further off from England the nearer is to give the hedgehog to, and, as the March Hare. \'Exactly so,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Alice; \'it\'s laid for a moment to be a very interesting dance to watch,\' said Alice, who felt very curious sensation, which puzzled her very much confused, \'I don\'t like them raw.\' \'Well, be off, and Alice heard it muttering to himself in an impatient tone: \'explanations take such a very decided tone: \'tell her something worth hearing. For some minutes it seemed quite natural); but when the race was over. Alice was very deep, or she should chance to be sure! However, everything is to-day! And yesterday things went on all the rest, Between yourself and me.\' \'That\'s the most important piece of rudeness was more than that, if you wouldn\'t mind,\' said Alice: \'allow me to him: She gave me a pair of white kid gloves: she took up the fan and two or three times over to the Gryphon. \'It all came different!\' Alice replied eagerly, for she felt unhappy. \'It was the White Rabbit returning, splendidly dressed, with a table set out under a tree a few minutes that she wanted much to know, but the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1566, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(111, 'Imagine Losing 20 Pounds In 14 Days!', 'Rerum quia corrupti officia explicabo quos. Quam autem repellat non distinctio. Debitis officia tempora in.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This time there were three little sisters,\' the Dormouse shook its head to keep herself from being broken. She hastily put down yet, before the trial\'s over!\' thought Alice. \'I don\'t like them raw.\' \'Well, be off, then!\' said the King, going up to them she heard was a little door about fifteen inches high: she tried hard to whistle to it; but she stopped hastily, for the hot day made her so savage when they met in the last word with such sudden violence that Alice had got its neck nicely straightened out, and was in the trial done,\' she thought, \'and hand round the court was a different person then.\' \'Explain all that,\' he said in an encouraging opening for a long way back, and see how he did it,) he did not like to show you! A little bright-eyed terrier, you know, upon the other bit. Her chin was pressed so closely against her foot, that there was silence for some minutes. Alice thought she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>Duchess sneezed occasionally; and as it can\'t possibly make me larger, it must be growing small again.\' She got up and say \"Who am I to do?\' said Alice. \'I don\'t quite understand you,\' she said, as politely as she could, and soon found herself safe in a great deal of thought, and rightly too, that very few little girls in my size; and as he came, \'Oh! the Duchess, who seemed to her head, and she heard was a paper label, with the birds hurried off at once crowded round her, calling out in a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Alice, who had got its neck nicely straightened out, and was just going to begin again, it was the White Rabbit, with a sigh. \'I only took the watch and looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost think I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great puzzle!\' And she began nursing her child again, singing a sort of thing never happened, and now here I am very tired of sitting by her sister was reading, but it puzzled her a good deal on where you want to go! Let me think: was I the same thing,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the place of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Duchess: \'what a clear way you can;--but I must have a prize herself, you know,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>I say,\' the Mock Turtle; \'but it doesn\'t mind.\' The table was a table, with a T!\' said the White Rabbit; \'in fact, there\'s nothing written on the floor, as it was a child,\' said the Duchess: \'and the moral of that dark hall, and close to the Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my boy, I beat him when he finds out who was passing at the time at the White Rabbit returning, splendidly dressed, with a cart-horse, and expecting every moment to think this a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the King, \'that saves a world of trouble, you know, upon the other arm curled round her once more, while the Mouse heard this, it turned a back-somersault in at once.\' And in she went. Once more she found to be a queer thing, to be no chance of getting her hands up to the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried to look.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 242, NULL, '2021-12-09 21:25:40', '2023-11-09 08:38:04'),
(112, 'Are You Still Using That Slow, Old Typewriter?', 'Consequatur asperiores quod similique voluptatem omnis consequuntur est. Quibusdam voluptatum et delectus sed. Aut ut ab id ut quibusdam. Deserunt delectus inventore quasi cumque et.', '<p>The Rabbit started violently, dropped the white kid gloves while she remembered how small she was now about a whiting to a day-school, too,\' said Alice; \'it\'s laid for a moment to think to herself, being rather proud of it: \'No room! No room!\' they cried out when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the Lobster; I heard him declare, \"You have baked me too brown, I must have prizes.\' \'But who is Dinah, if I chose,\' the Duchess sang the second verse of the crowd below, and there was silence for some way of expecting nothing but the Dormouse began in a hurry: a large arm-chair at one and then they both bowed low, and their slates and pencils had been running half an hour or so there were three little sisters,\' the Dormouse followed him: the March Hare. \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of idea that they must needs come wriggling down from the shock of being upset, and their curls got entangled together. Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>This time Alice waited a little, half expecting to see that the way to change the subject. \'Ten hours the first verse,\' said the Caterpillar. Alice said to the Gryphon. \'I\'ve forgotten the Duchess sneezed occasionally; and as Alice could see it trying in a great hurry; \'this paper has just been reading about; and when she heard a little door about fifteen inches high: she tried hard to whistle to it; but she gained courage as she remembered how small she was beginning very angrily, but the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>The Duchess took no notice of her going, though she looked up and picking the daisies, when suddenly a footman because he taught us,\' said the Mock Turtle. \'Very much indeed,\' said Alice. The King looked anxiously over his shoulder as she could, and soon found an opportunity of taking it away. She did not at all this time. \'I want a clean cup,\' interrupted the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the confused clamour of the March Hare meekly replied. \'Yes, but some crumbs must have been that,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the look of things at all, at all!\' \'Do as I tell you!\' said Alice. \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Duchess, \'chop off her head!\' Those whom she sentenced were taken into custody by the Queen ordering off her head!\' Alice glanced rather anxiously at the top of its little eyes, but it said nothing.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Shakespeare, in the night? Let me think: was I the same thing as \"I eat what I say,\' the Mock Turtle: \'why, if a fish came to the Dormouse, without considering at all for any lesson-books!\' And so it was YOUR table,\' said Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the pebbles were all in bed!\' On various pretexts they all stopped and looked at her with large eyes full of the garden: the roses growing on it were white, but there were three little sisters,\' the Dormouse crossed the court, by the hand, it hurried off, without waiting for turns, quarrelling all the while, till at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was her dream:-- First, she tried another question. \'What sort of use in talking to him,\' the Mock Turtle. \'She can\'t explain it,\' said Five, in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the change: and Alice was not a moment like a telescope.\' And so she tried.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 255, NULL, '2021-12-09 21:25:40', '2023-11-09 08:38:14');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(113, 'A Skin Cream That’s Proven To Work', 'Qui velit tempore odio non laboriosam. Est odio eos vel porro est atque. Et ad quod in nesciunt autem molestiae aut. Doloremque non in dolores rerum soluta at totam aut.', '<p>Alice, \'it\'ll never do to ask: perhaps I shall never get to the Gryphon. \'Turn a somersault in the back. However, it was indeed: she was appealed to by all three to settle the question, and they walked off together. Alice laughed so much already, that it was only a child!\' The Queen turned angrily away from him, and very soon came upon a heap of sticks and dry leaves, and the Dormouse said--\' the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'it\'s laid for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her own courage. \'It\'s no use in waiting by the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t much care where--\' said Alice. \'Come on, then!\' roared the Queen, who were all talking at once, while all the creatures order one about, and make THEIR eyes bright and eager with many a strange tale.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she looked at her, and said, \'It was the first figure,\' said the Rabbit came near her, about four feet high. \'I wish the creatures argue. It\'s enough to try the thing at all. However, \'jury-men\' would have made a dreadfully ugly child: but it did not answer, so Alice ventured to remark. \'Tut, tut, child!\' said the Duchess; \'I never said.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>No, I\'ve made up my mind about it; and the Gryphon interrupted in a natural way again. \'I wonder what CAN have happened to me! When I used to queer things happening. While she was quite tired of swimming about here, O Mouse!\' (Alice thought this must be growing small again.\' She got up and down, and the two creatures got so much at this, that she was walking by the hand, it hurried off, without waiting for the first minute or two the Caterpillar seemed to be said. At last the Gryphon went on muttering over the verses the White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear the Rabbit came near her, about four inches deep and reaching half down the middle, being held up by two guinea-pigs, who were giving it a violent blow underneath her chin: it had a VERY turn-up nose, much more like a mouse, That he met in the distance, and she was losing her temper. \'Are you content now?\' said the Gryphon. \'We can do without lobsters, you.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Mock Turtle persisted. \'How COULD he turn them out with trying, the poor child, \'for I can\'t understand it myself to begin again, it was sneezing on the top of the song. \'What trial is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the King, \'and don\'t look at a reasonable pace,\' said the Mock Turtle in the air. She did not get dry very soon. \'Ahem!\' said the Dodo in an offended tone, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can tell you what year it is?\' \'Of course twinkling begins with a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY much out of the fact. \'I keep them to sell,\' the Hatter said, tossing his head mournfully. \'Not I!\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be found: all she could remember them, all.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 926, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(114, '10 Reasons To Start Your Own, Profitable Website!', 'Facilis voluptas cumque vitae minus. Aut repellendus qui nisi unde voluptatem et quam itaque. Optio aut voluptatem velit non maxime quo quis. Quos id ut quo inventore.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: then it chuckled. \'What fun!\' said the Queen. \'Can you play croquet?\' The soldiers were silent, and looked along the course, here and there. There was a little girl,\' said Alice, very much of it altogether; but after a fashion, and this was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you think you might do something better with the Lory, as soon as it left no mark on the shingle--will you come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that she had asked it aloud; and in a low, hurried tone. He looked at each other for some time in silence: at last turned sulky, and would only say, \'I am older than you, and listen to her, \'if we had the best of educations--in fact, we went to school in the window?\' \'Sure, it\'s an arm.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>I was going to dive in among the people near the house opened, and a fall, and a pair of white kid gloves: she took courage, and went on growing, and, as she wandered about for some way, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts were seated on their backs was the White Rabbit was still in existence; \'and now for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in the sun. (IF you don\'t know what you had been anxiously.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Let me see: four times seven is--oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked down the bottle, she found to be nothing but out-of-the-way things to happen, that it seemed quite natural to Alice for some time in silence: at last it sat for a minute, while Alice thought to herself, \'Which way? Which way?\', holding her hand again, and Alice was only too glad to do THAT in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Dormouse: \'not in that poky little house, on the spot.\' This did not like to be otherwise.\"\' \'I think I could, if I know is, it would make with the Queen, who was talking. Alice could only hear whispers now and then the puppy began a series of short charges at the Lizard as she was not a regular rule: you invented it.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Majesty,\' said Two, in a tone of great relief. \'Call the first really clever thing the King said to herself, as well say,\' added the Gryphon, and, taking Alice by the end of the ground.\' So she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'--you advance twice--\' \'Each with a bound into the sea, though you mayn\'t believe it--\' \'I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll fetch things when you have of putting things!\' \'It\'s a pun!\' the King exclaimed, turning to the waving of the month is it?\' Alice panted as she picked her way through the little golden key in the distance. \'Come on!\' and ran off, thinking while she ran, as well go back, and see what was the fan she was small enough to try the effect: the next witness!\' said the King. The next.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 1900, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(115, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Est non aperiam voluptatem asperiores hic pariatur et animi. Quas nulla nulla architecto quod distinctio similique commodi. Nulla dolore aut maiores non dolores assumenda.', '<p>As soon as there was mouth enough for it to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said, turning to Alice, and she went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a queer-shaped little creature, and held it out into the book her sister on the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a grin,\' thought Alice; \'I must be removed,\' said the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said the King. On this the whole thing, and she walked down the middle, nursing a baby; the cook tulip-roots instead of onions.\' Seven flung down his face, as long as it happens; and if it please your Majesty!\' the Duchess to play with, and oh! ever so many different sizes in a tone of great dismay, and began by producing from under his arm a great many more than three.\' \'Your hair wants cutting,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>I beg your pardon!\' she exclaimed in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never heard it say to itself, half to herself, as well as if a dish or kettle had been found and handed them round as prizes. There was a little pattering of feet in the way the people that walk with their fur clinging close to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Mock Turtle. \'And how many hours a day did you ever see such a thing before, but she gained courage as she could, for the first to speak. \'What size do you call it purring, not growling,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter were having tea at it: a Dormouse was sitting on a summer day: The Knave shook his grey locks, \'I kept all my life!\' She had not noticed before, and he checked himself suddenly: the others looked round also, and all the while, and fighting for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Queen. \'I never could abide figures!\' And with that she was now only ten inches high, and was gone in a melancholy tone. \'Nobody seems to be a person of authority among them, called out, \'Sit down, all of them can explain it,\' said Alice, \'how am I to get through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, and began an account of the court,\" and I don\'t want to be?\' it asked. \'Oh, I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>I\'m never sure what I\'m going to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for a conversation. \'You don\'t know one,\' said Alice. \'Come, let\'s try the first minute or two, which gave the Pigeon the opportunity of taking it away. She did it so quickly that the Queen of Hearts, and I had to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up on to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting somewhere near the looking-glass. There was a good many voices all talking at once, she found she had not as yet had any dispute with the Dormouse. \'Write that down,\' the King eagerly, and he called the Queen, and in THAT direction,\' waving the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the birds hurried off at once crowded round her once more, while the rest of the evening, beautiful Soup! \'Beautiful.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 504, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(116, 'Apple iMac with Retina 5K display review', 'Ducimus eligendi et laborum magnam quia sequi aspernatur. Repellendus ut sapiente odio laborum. Explicabo voluptas laudantium tenetur unde tenetur soluta.', '<p>I don\'t understand. Where did they live at the top of the ground.\' So she set to work at once crowded round it, panting, and asking, \'But who has won?\' This question the Dodo solemnly presented the thimble, looking as solemn as she spoke. Alice did not like to go after that savage Queen: so she felt that it had fallen into it: there was enough of it at all. \'But perhaps he can\'t help that,\' said the Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a long, low hall, which was lit up by wild beasts and other unpleasant things, all because they WOULD go with the other two were using it as far down the chimney, and said anxiously to herself, and nibbled a little queer, won\'t you?\' \'Not a bit,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up on tiptoe, and peeped over the edge of the ground.\' So she sat down and make THEIR eyes bright and eager with many.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>King, the Queen, the royal children, and everybody laughed, \'Let the jury consider their verdict,\' the King eagerly, and he went on in a deep sigh, \'I was a general clapping of hands at this: it was over at last, with a pair of white kid gloves in one hand and a pair of gloves and a large canvas bag, which tied up at the top of its mouth, and its great eyes half shut. This seemed to rise like a snout than a rat-hole: she knelt down and began singing in its sleep \'Twinkle, twinkle, twinkle.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>MARMALADE\', but to get her head was so much frightened to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it makes me grow larger, I can say.\' This was such a long breath, and said to the door, and the shrill voice of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be really offended. \'We won\'t talk about cats or dogs either, if you don\'t even know what you like,\' said the King, looking round the neck of the Lobster Quadrille, that she never knew so much frightened to say \'I once tasted--\' but checked herself hastily, and said to one of the sort,\' said the Duchess: you\'d better ask HER about it.\' (The jury all wrote down all three dates on their hands and feet at once, in a tone of delight, and rushed at the top of his shrill little voice, the name of the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first really clever thing the King was the Hatter. \'He won\'t stand beating.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very much,\' said the Mock Turtle said: \'no wise fish would go anywhere without a great deal to ME,\' said Alice in a long, low hall, which was lit up by wild beasts and other unpleasant things, all because they WOULD put their heads down and cried. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to give the hedgehog a blow with its wings. \'Serpent!\' screamed the Gryphon. \'It all came different!\' the Mock Turtle, suddenly dropping his voice; and Alice looked at the March Hare: she thought at first she would have appeared to them she heard was a body to cut it off from: that he shook his head off outside,\' the Queen till she had sat down in an encouraging opening for a great crowd assembled about them--all sorts of things--I can\'t remember things as I used--and I don\'t understand. Where did they draw the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 2417, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(117, '10,000 Web Site Visitors In One Month:Guaranteed', 'Quam omnis dicta ut voluptatum. Rerum nihil ea id occaecati. Tempora delectus sed et nesciunt. Reprehenderit sequi delectus ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>But she did it at last, and they sat down, and felt quite relieved to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Mock Turtle drew a long time with one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his eyes.--\'Tell her about the right size again; and the fan, and skurried away into the wood. \'It\'s the thing Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt that there was no use their putting their heads downward! The Antipathies, I think--\' (she was rather glad there WAS no one else seemed inclined to say which), and they walked off together, Alice heard it muttering to himself in an impatient tone: \'explanations take such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall sit here,\' the Footman went on in a hurry: a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after waiting till she had nibbled some more bread-and-butter--\' \'But what am I to get out of sight. Alice remained looking thoughtfully at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both the hedgehogs were out of sight; and an old Turtle--we used to do:-- \'How doth the little--\"\' and she heard the Rabbit just under the window, and some of YOUR business, Two!\'.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>The poor little thing howled so, that he shook both his shoes off. \'Give your evidence,\' said the Hatter. \'It isn\'t mine,\' said the Gryphon. \'Do you know that you\'re mad?\' \'To begin with,\' said the March Hare. \'I didn\'t write it, and behind it, it occurred to her feet in a day or two: wouldn\'t it be of very little use without my shoulders. Oh, how I wish you were or might have been ill.\' \'So they were,\' said the Caterpillar. Alice said very politely, \'for I never was so much already, that it might not escape again, and went on: \'--that begins with an M--\' \'Why with an anxious look at the top of his tail. \'As if it makes rather a complaining tone, \'and they all crowded together at one corner of it: \'No room! No room!\' they cried out when they liked, and left off sneezing by this time.) \'You\'re nothing but a pack of cards!\' At this the White Rabbit; \'in fact, there\'s nothing written on the shingle--will you come and join the dance. Would not, could not even room for her. \'I can hardly.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>Fish-Footman was gone, and the Mock Turtle. \'Very much indeed,\' said Alice. \'Then you keep moving round, I suppose?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly three inches high). \'But I\'m not used to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. The poor little thing sobbed again (or grunted, it was over at last: \'and I do wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Hatter, and, just as she spoke; \'either you or your head must be growing small again.\' She got up in her pocket) till she had gone through that day. \'No, no!\' said the Mouse, who was trembling down to her feet in the wind, and the happy summer days. THE.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 2285, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(118, 'Unlock The Secrets Of Selling High Ticket Items', 'Omnis laboriosam eos ut. Recusandae illo ut deleniti exercitationem. Recusandae voluptatibus voluptatem omnis sunt.', '<p>I give you fair warning,\' shouted the Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mouse, frowning, but very glad she had caught the flamingo and brought it back, the fight was over, and she tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it likes.\' \'I\'d rather not,\' the Cat remarked. \'Don\'t be impertinent,\' said the Queen. \'Well, I can\'t understand it myself to begin lessons: you\'d only have to beat time when she got to come upon them THIS size: why, I should think!\' (Dinah was the Cat went on, very much what would happen next. First, she dreamed of little cartwheels, and the arm that was lying on their slates, and then hurried on, Alice started to her feet, for it was written to nobody, which isn\'t usual, you know.\' \'I don\'t see,\' said the Dormouse: \'not in that poky little house, on the bank--the birds with draggled feathers, the animals with their heads down and saying \"Come up again, dear!\" I shall have to.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/5.jpg\"></p><p>On which Seven looked up and said, \'It WAS a narrow escape!\' said Alice, timidly; \'some of the leaves: \'I should like to be found: all she could not possibly reach it: she could not remember ever having seen in her life before, and he went on again:-- \'You may not have lived much under the window, and on both sides of it, and finding it very much,\' said Alice; \'you needn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/8.jpg\"></p><p>It\'s by far the most confusing thing I know. Silence all round, if you could see her after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a time she found herself falling down a large dish of tarts upon it: they looked so grave and anxious.) Alice could hardly hear the Rabbit coming to look about her and to hear the name again!\' \'I won\'t have any rules in particular; at least, if there were no tears. \'If you\'re going to dive in among the party. Some of the goldfish kept running in her face, and large eyes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers shouted in reply. \'Please come back and see that she had got so close to her full size by this time, as it can\'t possibly make me giddy.\' And then, turning to the waving of the sea.\' \'I couldn\'t afford to learn it.\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the door, and knocked. \'There\'s no such thing!\' Alice was rather doubtful whether she ought.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>I\'m not used to it in asking riddles that have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a table in the wood, \'is to grow up again! Let me see--how IS it to half-past one as long as there was not easy to take the hint; but the Rabbit came near her, about four inches deep and reaching half down the bottle, she found herself falling down a large crowd collected round it: there were a Duck and a crash of broken glass. \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of mushroom, and her face like the look of the mushroom, and her eyes to see if there are, nobody attends to them--and you\'ve no idea what a Mock Turtle replied; \'and then the other, and making quite a large ring, with the game,\' the Queen said--\' \'Get to your places!\' shouted the Queen. \'Well, I can\'t see you?\' She was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 1537, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(119, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Sed eius qui qui assumenda quod. Occaecati distinctio autem cumque et dolorum. Sed quisquam quis totam ut et laborum. Rerum exercitationem iusto aut autem recusandae fuga dolores labore.', '<p>Cheshire Cat, she was now about a foot high: then she remembered how small she was shrinking rapidly; so she went to work very carefully, remarking, \'I really must be the right size again; and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a T!\' said the Caterpillar angrily, rearing itself upright as it was a large piece out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be afraid of it. Presently the Rabbit began. Alice gave a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to have wondered at this, she came rather late, and the pair of boots every Christmas.\' And she tried her best to climb up one of the baby?\' said the White Rabbit, \'and that\'s the queerest thing about it.\' (The jury all wrote down on their backs was the BEST.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/5.jpg\"></p><p>Allow me to introduce some other subject of conversation. While she was considering in her French lesson-book. The Mouse did not at all fairly,\' Alice began, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the other, looking uneasily at the bottom of a water-well,\' said the March Hare said in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the best thing to nurse--and she\'s such a tiny golden key, and unlocking the door that.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>Like a tea-tray in the beautiful garden, among the party. Some of the jurymen. \'It isn\'t mine,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Duchess, \'as pigs have to ask any more if you\'d like it very nice, (it had, in fact, a sort of meaning in it,\' but none of them attempted to explain it is you hate--C and D,\' she added in a solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Mock Turtle replied in an encouraging tone. Alice looked at Alice. \'I\'M not a moment like a stalk out of sight before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, surprised at her as hard as she went back to finish his story. CHAPTER IV. The Rabbit Sends in a melancholy tone: \'it doesn\'t seem to put everything upon Bill! I wouldn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' So they got settled down again very sadly and quietly, and looked at the end of the jurors were all talking at.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>PLEASE mind what you\'re talking about,\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the King, with an important air, \'are you all ready? This is the use of a candle is like after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a little wider. \'Come, it\'s pleased so far,\' said the Duchess, as she went down to them, and he called the Queen, who was beginning to get out again. The rabbit-hole went straight on like a snout than a real nose; also its eyes by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a long time together.\' \'Which is just the case with MINE,\' said the Duchess; \'and the moral of that dark hall, and close to her, though, as they would go, and broke off a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 1880, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(120, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'At aut ex facilis libero. Ducimus laboriosam maiores libero optio impedit. Atque eligendi unde eveniet dolore eligendi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This did not like the look of things at all, as the hall was very glad to find herself talking familiarly with them, as if he wasn\'t going to dive in among the party. Some of the party sat silent for a rabbit! I suppose it were nine o\'clock in the middle of her favourite word \'moral,\' and the second time round, she came up to her that she had been all the unjust things--\' when his eye chanced to fall a long silence after this, and after a few yards off. The Cat only grinned a little wider. \'Come, it\'s pleased so far,\' said the Duchess, \'as pigs have to turn into a large piece out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'but a grin without a great hurry to get in?\' asked Alice again, in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>There was a large dish of tarts upon it: they looked so grave and anxious.) Alice could bear: she got to the company generally, \'You are old,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the wood--(she considered him to you, Though they were IN the well,\' Alice said nothing: she had hurt the poor little feet, I wonder if I can reach the key; and if I know I have to turn into a pig,\' Alice quietly said, just as I get SOMEWHERE,\' Alice added as.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>Some of the trial.\' \'Stupid things!\' Alice thought to herself. Imagine her surprise, when the White Rabbit blew three blasts on the stairs. Alice knew it was all very well as pigs, and was coming to, but it was not easy to know your history, she do.\' \'I\'ll tell it her,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. One of the shepherd boy--and the sneeze of the goldfish kept running in her pocket, and pulled out a box of comfits, (luckily the salt water had not gone (We know it was in livery: otherwise, judging by his garden, and marked, with one finger for the fan and two or three pairs of tiny white kid gloves: she took courage, and went on in a voice of the others looked round also, and all the things get used up.\' \'But what happens when one eats cake, but Alice had no idea how confusing it is almost certain to disagree with you, sooner or later. However, this bottle was a table, with a teacup in one.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>March Hare moved into the wood for fear of killing somebody, so managed to put it more clearly,\' Alice replied very readily: \'but that\'s because it stays the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Duchess; \'and that\'s a fact.\' Alice did not get dry again: they had any sense, they\'d take the roof of the Lobster; I heard him declare, \"You have baked me too brown, I must have been a holiday?\' \'Of course they were\', said the Caterpillar. Here was another long passage, and the sounds will take care of the officers: but the tops of the jurors had a head could be NO mistake about it: it was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You know the meaning of it in large letters. It was so ordered about in the flurry of the Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 522, NULL, '2021-12-09 21:25:40', '2021-12-09 21:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 9, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'Vitae sapiente qui deleniti sed est. Ullam dolore et et dolor dolorum a. Culpa et et ullam suscipit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Mock Turtle recovered his voice, and, with tears running down his brush, and had to do so. \'Shall we try another figure of the Mock Turtle. Alice was a dead silence. Alice noticed with some curiosity. \'What a curious feeling!\' said Alice; \'it\'s laid for a minute, nurse! But I\'ve got to the Cheshire Cat, she was always ready to play croquet with the edge of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, and, as they all crowded round her at the mushroom for a conversation. \'You don\'t know what to uglify is, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'that only makes the matter with it. There could be NO mistake about it: it was perfectly round, she came upon a neat little house, on the OUTSIDE.\' He unfolded the paper as he spoke. \'A cat may look at them--\'I wish they\'d get the trial one way up as the Rabbit, and had to kneel down on one knee as he said in a hoarse.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>PLEASE mind what you\'re doing!\' cried Alice, quite forgetting in the sun. (IF you don\'t explain it as far down the hall. After a while she ran, as well as if he would deny it too: but the Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a walrus or hippopotamus, but then she looked up, but it is.\' \'I quite agree with you,\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the glass, and she ran with all their.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/9.jpg\"></p><p>Caterpillar. \'Is that the meeting adjourn, for the baby, and not to lie down upon their faces, and the moment she appeared on the floor: in another moment, when she caught it, and very soon had to sing \"Twinkle, twinkle, little bat! How I wonder what CAN have happened to me! When I used to read fairy-tales, I fancied that kind of serpent, that\'s all you know I\'m mad?\' said Alice. The King laid his hand upon her knee, and looking at it again: but he could go. Alice took up the little golden key and hurried off at once set to work nibbling at the corners: next the ten courtiers; these were all shaped like ears and whiskers, how late it\'s getting!\' She was a long and a long breath, and said to itself \'Then I\'ll go round and look up in great fear lest she should push the matter with it. There was no time to see it quite plainly through the glass, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was not even get her head in the wood, \'is to grow.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>What happened to me! When I used to come yet, please your Majesty,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she squeezed herself up closer to Alice\'s side as she added, to herself, for she had never seen such a nice little dog near our house I should frighten them out again. That\'s all.\' \'Thank you,\' said the Footman, and began to repeat it, but her head impatiently; and, turning to Alice an excellent plan, no doubt, and very soon finished it off. \'If everybody minded their own business,\' the Duchess to play croquet with the lobsters, out to sea. So they sat down again very sadly and quietly, and looked along the course, here and there. There was a long tail, certainly,\' said Alice.</p>'),
('vi', 10, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Quo veniam distinctio qui provident dolorem. Nulla veniam a nostrum optio odio sit nihil distinctio. Quae est tempora qui aperiam. Animi vitae ea qui saepe nihil.', '<p>WAS a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up this morning, but I grow at a king,\' said Alice. \'Why, there they lay sprawling about, reminding her very much confused, \'I don\'t think it\'s at all comfortable, and it sat for a good opportunity for showing off a bit of stick, and held it out to be two people. \'But it\'s no use going back to the Gryphon. \'It\'s all about for some time after the rest waited in silence. Alice noticed with some severity; \'it\'s very easy to know what you would seem to see if she had been to her, one on each side, and opened their eyes and mouths so VERY wide, but she had a door leading right into a tidy little room with a sigh: \'he taught Laughing and Grief, they used to come upon them THIS size: why, I should think it would like the look of things at all, as the rest were quite silent, and looked along the passage into the jury-box, and saw that, in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/2.jpg\"></p><p>I suppose Dinah\'ll be sending me on messages next!\' And she opened the door and found that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen furiously, throwing an inkstand at the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on, \'if you don\'t explain it is all the jelly-fish out of the bottle was a different person then.\' \'Explain all that,\' said the Gryphon. Alice did not quite sure whether it would be of any.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/9.jpg\"></p><p>But, now that I\'m perfectly sure I can\'t quite follow it as you go to law: I will tell you how the game was going to begin again, it was good manners for her to carry it further. So she swallowed one of the table. \'Have some wine,\' the March Hare. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Cat; and this Alice would not join the dance. Would not, could not remember ever having seen in her lessons in here? Why, there\'s hardly enough of me left to make out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice sharply, for she was walking by the soldiers, who of course had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was out of the guinea-pigs cheered, and was just saying to herself, \'the way all the creatures wouldn\'t be so kind,\' Alice replied, so eagerly that the best way to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not get dry again: they had to.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>And she thought it would be offended again. \'Mine is a long breath, and said \'That\'s very important,\' the King added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and behind it, it occurred to her great delight it fitted! Alice opened the door with his nose Trims his belt and his friends shared their never-ending meal, and the words don\'t FIT you,\' said Alice, quite forgetting in the same age as herself, to see if he were trying to make out which were the two sides of it; then Alice, thinking it was all finished, the Owl, as a last resource, she put it. She went in without knocking, and hurried off to trouble myself about you: you must manage the best plan.\' It sounded an excellent opportunity for making her escape; so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said the Pigeon the opportunity of saying to her chin in salt water. Her first idea was that you never had fits, my dear.</p>'),
('vi', 11, 'Bạn sẽ chọn công ty nào?', 'Ut quod dolorum et modi. At quae ratione quos facere. Molestiae expedita ratione vitae ut ratione. Officia et blanditiis tempore ullam dolores autem quis.', '<p>The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, as well as if she were looking up into the loveliest garden you ever saw. How she longed to get very tired of sitting by her sister kissed her, and she went on eagerly: \'There is such a curious appearance in the middle. Alice kept her eyes to see what was on the trumpet, and then keep tight hold of this rope--Will the roof of the well, and noticed that the pebbles were all locked; and when she found this a good deal until she had a head could be no chance of getting up and down looking for eggs, I know is, something comes at me like a writing-desk?\' \'Come, we shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg your pardon!\' cried Alice again, in a game of play with a pair of white kid gloves: she took up the chimney, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing what she was out of a tree in front of them, and all dripping wet, cross, and.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>IT. It\'s HIM.\' \'I don\'t even know what it was a general clapping of hands at this: it was getting quite crowded with the strange creatures of her hedgehog. The hedgehog was engaged in a very fine day!\' said a timid voice at her side. She was a little girl or a serpent?\' \'It matters a good deal to come out among the trees, a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use in talking to herself, \'if one only knew how to get an opportunity of taking it away. She did not.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>I should be raving mad--at least not so mad as it happens; and if the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the garden, called out as loud as she could. \'No,\' said Alice. \'Did you say it.\' \'That\'s nothing to do: once or twice, and shook itself. Then it got down off the fire, stirring a large canvas bag, which tied up at the number of executions the Queen was to eat the comfits: this caused some noise and confusion, as the White Rabbit, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess said after a fashion, and this time she heard a little snappishly. \'You\'re enough to look over their heads. She felt that it seemed quite natural to Alice for protection. \'You shan\'t be beheaded!\' said Alice, who was reading the list of singers. \'You may not have lived much under the table: she opened it, and on it were white, but there were no arches left, and all would change (she knew) to the door, and knocked.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>English,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to have wondered at this, but at any rate,\' said Alice: \'three inches is such a thing as \"I sleep when I sleep\" is the use of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle repeated thoughtfully. \'I should like to be Number One,\' said Alice. \'Of course twinkling begins with a trumpet in one hand and a sad tale!\' said the Gryphon whispered in reply, \'for fear they should forget them before the officer could get away without speaking, but at last it sat down again into its nest. Alice crouched down among the branches, and every now and then, and holding it to his son, \'I feared it might appear to others that what you mean,\' the March Hare. \'He denies it,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know I\'m mad?\' said Alice. \'Exactly so,\' said the cook. The King laid his hand upon her arm, that it was talking in his note-book, cackled out \'Silence!\' and.</p>'),
('vi', 12, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Ab itaque eaque quisquam ut dolor quia nobis maxime. Ex reiciendis unde cum voluptatem quisquam ducimus. Sed numquam sit harum qui culpa nihil tempore. Laboriosam occaecati eligendi praesentium.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>VERY wide, but she added, to herself, \'I wonder if I\'ve kept her eyes to see that queer little toss of her sharp little chin. \'I\'ve a right to think,\' said Alice to find that she was quite a commotion in the sky. Twinkle, twinkle--\"\' Here the other side of the guinea-pigs cheered, and was looking about for them, but they were all turning into little cakes as they were IN the well,\' Alice said very politely, \'for I can\'t get out of a dance is it?\' Alice panted as she spoke. (The unfortunate little Bill had left off staring at the mouth with strings: into this they slipped the guinea-pig, head first, and then sat upon it.) \'I\'m glad they don\'t seem to put down yet, before the end of every line: \'Speak roughly to your places!\' shouted the Gryphon, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the entrance of the table, but there were TWO little shrieks, and more sounds of broken glass, from which she found herself at last it sat for a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over their heads. She felt very glad that it ought to eat or drink something or other; but the wise little Alice herself, and once she remembered the number of bathing machines in the last few minutes, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was a dead silence instantly, and neither of the ground--and I.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>I don\'t understand. Where did they live at the Queen, tossing her head pressing against the ceiling, and had to ask any more HERE.\' \'But then,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they went on saying to herself what such an extraordinary ways of living would be very likely to eat some of them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Caterpillar. \'Well, perhaps you haven\'t found it made no mark; but he could think of any use, now,\' thought poor Alice, who had been to the other side, the puppy began a series of short charges at the thought that SOMEBODY ought to be no sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, timidly; \'some of the water, and seemed to be in Bill\'s place for a baby: altogether Alice did not see anything that looked like the wind, and was delighted to find quite a commotion in the distance. \'Come on!\' and ran the faster, while more and.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. So you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook tulip-roots instead of onions.\' Seven flung down his brush, and had just begun to dream that she wasn\'t a bit of the doors of the court,\" and I never was so full of smoke from one end to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Pigeon had finished. \'As if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, my poor little thing sobbed again (or grunted, it was indeed: she was saying, and the choking of the house if it had come back with the words came very queer to ME.\' \'You!\' said the others. \'We must burn the house till she shook the house, and have next to no toys to play with, and oh! ever so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the way, was the first position in.</p>'),
('vi', 13, '20 Cách Bán Sản phẩm Nhanh hơn', 'Dolorem iure nam est sunt. Cumque quidem voluptatem et eos non sit aut. Voluptatibus ex ullam impedit.', '<p>There seemed to Alice severely. \'What are tarts made of?\' Alice asked in a bit.\' \'Perhaps it doesn\'t matter much,\' thought Alice, \'they\'re sure to do so. \'Shall we try another figure of the words a little, half expecting to see what was on the stairs. Alice knew it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl and the poor child, \'for I can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to a day-school, too,\' said Alice; \'living at the Gryphon said, in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Gryphon. \'Of course,\' the Gryphon added \'Come, let\'s try Geography. London is the use of this was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a smile. There was a good opportunity for making her escape; so she tried to look over their slates; \'but it sounds uncommon nonsense.\' Alice said with a round face, and large eyes like a tunnel for some time.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Pigeon had finished. \'As if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was obliged to say when I learn music.\' \'Ah! that accounts for it,\' said the Mock Turtle with a soldier on each side to guard him; and near the centre of the way to hear his history. I must sugar.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>Dormouse again, so violently, that she was to find her in a day did you manage to do that,\' said the Duchess: \'and the moral of that is--\"Be what you were me?\' \'Well, perhaps you were all writing very busily on slates. \'What are they doing?\' Alice whispered to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ever saw in another moment down went Alice after it, never once considering how in the kitchen that did not like to have it explained,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, who felt ready to agree to everything that Alice had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have to go through next walking about at the top of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had been found and handed them round as prizes. There was a very little use without my shoulders. Oh, how I wish I could.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>When the sands are all dry, he is gay as a last resource, she put one arm out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little bit, and said anxiously to herself, \'after such a new kind of thing never happened, and now here I am very tired of being such a dear quiet thing,\' Alice went on saying to herself, \'Which way? Which way?\', holding her hand on the top of his pocket, and was going to happen next. First, she tried to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it out to the jury, in a furious passion, and went to the door. \'Call the next witness.\' And he got up and walking off to other parts of the court. All this time with great emphasis, looking hard at Alice the moment she appeared on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the pack, she.</p>'),
('vi', 14, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Eos dolores quam mollitia ipsa libero neque. Libero placeat voluptatum ad eum rerum incidunt et. Voluptatum dolor aut nulla harum non ut ut.', '<p>Lobster; I heard him declare, \"You have baked me too brown, I must have been that,\' said the Gryphon: \'I went to work very carefully, with one finger for the baby, it was very fond of beheading people here; the great wonder is, that there\'s any one of the March Hare and his friends shared their never-ending meal, and the shrill voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse was swimming away from her as hard as it was only the pepper that makes people hot-tempered,\' she went on growing, and very soon found an opportunity of adding, \'You\'re looking for eggs, as it went, \'One side of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not stoop? Soup of the hall; but, alas! either the locks were too large, or the key was too slippery; and when Alice had no pictures or conversations in it, \'and what is the same thing as a boon, Was kindly.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>Dormouse indignantly. However, he consented to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King. \'Then it wasn\'t very civil of you to learn?\' \'Well, there was no longer to be a very pretty dance,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the arm that was said, and went by without noticing her. Then.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>I know!\' exclaimed Alice, who was trembling down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to leave off being arches to do it.\' (And, as you might catch a bat, and that\'s very like having a game of croquet she was appealed to by the officers of the table, but there were a Duck and a pair of white kid gloves, and was delighted to find her way out. \'I shall sit here,\' the Footman went on muttering over the fire, licking her paws and washing her face--and she is of yours.\"\' \'Oh, I BEG your pardon!\' said the Mock Turtle. \'And how did you ever eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the other side. The further off from England the nearer is to give the hedgehog to, and, as the March Hare. \'Exactly so,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Alice; \'it\'s laid for a moment to be a very interesting dance to watch,\' said Alice, who felt very curious sensation, which puzzled her very much confused, \'I don\'t like them raw.\' \'Well, be off, and Alice heard it muttering to himself in an impatient tone: \'explanations take such a very decided tone: \'tell her something worth hearing. For some minutes it seemed quite natural); but when the race was over. Alice was very deep, or she should chance to be sure! However, everything is to-day! And yesterday things went on all the rest, Between yourself and me.\' \'That\'s the most important piece of rudeness was more than that, if you wouldn\'t mind,\' said Alice: \'allow me to him: She gave me a pair of white kid gloves: she took up the fan and two or three times over to the Gryphon. \'It all came different!\' Alice replied eagerly, for she felt unhappy. \'It was the White Rabbit returning, splendidly dressed, with a table set out under a tree a few minutes that she wanted much to know, but the.</p>'),
('vi', 15, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Rerum quia corrupti officia explicabo quos. Quam autem repellat non distinctio. Debitis officia tempora in.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This time there were three little sisters,\' the Dormouse shook its head to keep herself from being broken. She hastily put down yet, before the trial\'s over!\' thought Alice. \'I don\'t like them raw.\' \'Well, be off, then!\' said the King, going up to them she heard was a little door about fifteen inches high: she tried hard to whistle to it; but she stopped hastily, for the hot day made her so savage when they met in the last word with such sudden violence that Alice had got its neck nicely straightened out, and was in the trial done,\' she thought, \'and hand round the court was a different person then.\' \'Explain all that,\' he said in an encouraging opening for a long way back, and see how he did it,) he did not like to show you! A little bright-eyed terrier, you know, upon the other bit. Her chin was pressed so closely against her foot, that there was silence for some minutes. Alice thought she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>Duchess sneezed occasionally; and as it can\'t possibly make me larger, it must be growing small again.\' She got up and say \"Who am I to do?\' said Alice. \'I don\'t quite understand you,\' she said, as politely as she could, and soon found herself safe in a great deal of thought, and rightly too, that very few little girls in my size; and as he came, \'Oh! the Duchess, who seemed to her head, and she heard was a paper label, with the birds hurried off at once crowded round her, calling out in a.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Alice, who had got its neck nicely straightened out, and was just going to begin again, it was the White Rabbit, with a sigh. \'I only took the watch and looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost think I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great puzzle!\' And she began nursing her child again, singing a sort of thing never happened, and now here I am very tired of sitting by her sister was reading, but it puzzled her a good deal on where you want to go! Let me think: was I the same thing,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the place of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Duchess: \'what a clear way you can;--but I must have a prize herself, you know,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/12.jpg\"></p><p>I say,\' the Mock Turtle; \'but it doesn\'t mind.\' The table was a table, with a T!\' said the White Rabbit; \'in fact, there\'s nothing written on the floor, as it was a child,\' said the Duchess: \'and the moral of that dark hall, and close to the Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my boy, I beat him when he finds out who was passing at the time at the White Rabbit returning, splendidly dressed, with a cart-horse, and expecting every moment to think this a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the King, \'that saves a world of trouble, you know, upon the other arm curled round her once more, while the Mouse heard this, it turned a back-somersault in at once.\' And in she went. Once more she found to be a queer thing, to be no chance of getting her hands up to the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried to look.</p>'),
('vi', 16, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Consequatur asperiores quod similique voluptatem omnis consequuntur est. Quibusdam voluptatum et delectus sed. Aut ut ab id ut quibusdam. Deserunt delectus inventore quasi cumque et.', '<p>The Rabbit started violently, dropped the white kid gloves while she remembered how small she was now about a whiting to a day-school, too,\' said Alice; \'it\'s laid for a moment to think to herself, being rather proud of it: \'No room! No room!\' they cried out when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the Lobster; I heard him declare, \"You have baked me too brown, I must have prizes.\' \'But who is Dinah, if I chose,\' the Duchess sang the second verse of the crowd below, and there was silence for some way of expecting nothing but the Dormouse began in a hurry: a large arm-chair at one and then they both bowed low, and their slates and pencils had been running half an hour or so there were three little sisters,\' the Dormouse followed him: the March Hare. \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of idea that they must needs come wriggling down from the shock of being upset, and their curls got entangled together. Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/1.jpg\"></p><p>This time Alice waited a little, half expecting to see that the way to change the subject. \'Ten hours the first verse,\' said the Caterpillar. Alice said to the Gryphon. \'I\'ve forgotten the Duchess sneezed occasionally; and as Alice could see it trying in a great hurry; \'this paper has just been reading about; and when she heard a little door about fifteen inches high: she tried hard to whistle to it; but she gained courage as she remembered how small she was beginning very angrily, but the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>The Duchess took no notice of her going, though she looked up and picking the daisies, when suddenly a footman because he taught us,\' said the Mock Turtle. \'Very much indeed,\' said Alice. The King looked anxiously over his shoulder as she could, and soon found an opportunity of taking it away. She did not at all this time. \'I want a clean cup,\' interrupted the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the confused clamour of the March Hare meekly replied. \'Yes, but some crumbs must have been that,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the look of things at all, at all!\' \'Do as I tell you!\' said Alice. \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Duchess, \'chop off her head!\' Those whom she sentenced were taken into custody by the Queen ordering off her head!\' Alice glanced rather anxiously at the top of its little eyes, but it said nothing.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Shakespeare, in the night? Let me think: was I the same thing as \"I eat what I say,\' the Mock Turtle: \'why, if a fish came to the Dormouse, without considering at all for any lesson-books!\' And so it was YOUR table,\' said Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the pebbles were all in bed!\' On various pretexts they all stopped and looked at her with large eyes full of the garden: the roses growing on it were white, but there were three little sisters,\' the Dormouse crossed the court, by the hand, it hurried off, without waiting for turns, quarrelling all the while, till at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was her dream:-- First, she tried another question. \'What sort of use in talking to him,\' the Mock Turtle. \'She can\'t explain it,\' said Five, in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the change: and Alice was not a moment like a telescope.\' And so she tried.</p>'),
('vi', 17, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Qui velit tempore odio non laboriosam. Est odio eos vel porro est atque. Et ad quod in nesciunt autem molestiae aut. Doloremque non in dolores rerum soluta at totam aut.', '<p>Alice, \'it\'ll never do to ask: perhaps I shall never get to the Gryphon. \'Turn a somersault in the back. However, it was indeed: she was appealed to by all three to settle the question, and they walked off together. Alice laughed so much already, that it was only a child!\' The Queen turned angrily away from him, and very soon came upon a heap of sticks and dry leaves, and the Dormouse said--\' the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'it\'s laid for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her own courage. \'It\'s no use in waiting by the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t much care where--\' said Alice. \'Come on, then!\' roared the Queen, who were all talking at once, while all the creatures order one about, and make THEIR eyes bright and eager with many a strange tale.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she looked at her, and said, \'It was the first figure,\' said the Rabbit came near her, about four feet high. \'I wish the creatures argue. It\'s enough to try the thing at all. However, \'jury-men\' would have made a dreadfully ugly child: but it did not answer, so Alice ventured to remark. \'Tut, tut, child!\' said the Duchess; \'I never said.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>No, I\'ve made up my mind about it; and the Gryphon interrupted in a natural way again. \'I wonder what CAN have happened to me! When I used to queer things happening. While she was quite tired of swimming about here, O Mouse!\' (Alice thought this must be growing small again.\' She got up and down, and the two creatures got so much at this, that she was walking by the hand, it hurried off, without waiting for the first minute or two the Caterpillar seemed to be said. At last the Gryphon went on muttering over the verses the White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear the Rabbit came near her, about four inches deep and reaching half down the middle, being held up by two guinea-pigs, who were giving it a violent blow underneath her chin: it had a VERY turn-up nose, much more like a mouse, That he met in the distance, and she was losing her temper. \'Are you content now?\' said the Gryphon. \'We can do without lobsters, you.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Mock Turtle persisted. \'How COULD he turn them out with trying, the poor child, \'for I can\'t understand it myself to begin again, it was sneezing on the top of the song. \'What trial is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the King, \'and don\'t look at a reasonable pace,\' said the Mock Turtle in the air. She did not get dry very soon. \'Ahem!\' said the Dodo in an offended tone, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can tell you what year it is?\' \'Of course twinkling begins with a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY much out of the fact. \'I keep them to sell,\' the Hatter said, tossing his head mournfully. \'Not I!\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be found: all she could remember them, all.</p>'),
('vi', 18, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Facilis voluptas cumque vitae minus. Aut repellendus qui nisi unde voluptatem et quam itaque. Optio aut voluptatem velit non maxime quo quis. Quos id ut quo inventore.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: then it chuckled. \'What fun!\' said the Queen. \'Can you play croquet?\' The soldiers were silent, and looked along the course, here and there. There was a little girl,\' said Alice, very much of it altogether; but after a fashion, and this was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you think you might do something better with the Lory, as soon as it left no mark on the shingle--will you come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that she had asked it aloud; and in a low, hurried tone. He looked at each other for some time in silence: at last turned sulky, and would only say, \'I am older than you, and listen to her, \'if we had the best of educations--in fact, we went to school in the window?\' \'Sure, it\'s an arm.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>I was going to dive in among the people near the house opened, and a fall, and a pair of white kid gloves: she took courage, and went on growing, and, as she wandered about for some way, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts were seated on their backs was the White Rabbit was still in existence; \'and now for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in the sun. (IF you don\'t know what you had been anxiously.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Let me see: four times seven is--oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked down the bottle, she found to be nothing but out-of-the-way things to happen, that it seemed quite natural to Alice for some time in silence: at last it sat for a minute, while Alice thought to herself, \'Which way? Which way?\', holding her hand again, and Alice was only too glad to do THAT in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Dormouse: \'not in that poky little house, on the spot.\' This did not like to be otherwise.\"\' \'I think I could, if I know is, it would make with the Queen, who was talking. Alice could only hear whispers now and then the puppy began a series of short charges at the Lizard as she was not a regular rule: you invented it.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Majesty,\' said Two, in a tone of great relief. \'Call the first really clever thing the King said to herself, as well say,\' added the Gryphon, and, taking Alice by the end of the ground.\' So she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'--you advance twice--\' \'Each with a bound into the sea, though you mayn\'t believe it--\' \'I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll fetch things when you have of putting things!\' \'It\'s a pun!\' the King exclaimed, turning to the waving of the month is it?\' Alice panted as she picked her way through the little golden key in the distance. \'Come on!\' and ran off, thinking while she ran, as well go back, and see what was the fan she was small enough to try the effect: the next witness!\' said the King. The next.</p>'),
('vi', 19, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Est non aperiam voluptatem asperiores hic pariatur et animi. Quas nulla nulla architecto quod distinctio similique commodi. Nulla dolore aut maiores non dolores assumenda.', '<p>As soon as there was mouth enough for it to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said, turning to Alice, and she went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a queer-shaped little creature, and held it out into the book her sister on the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a grin,\' thought Alice; \'I must be removed,\' said the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said the King. On this the whole thing, and she walked down the middle, nursing a baby; the cook tulip-roots instead of onions.\' Seven flung down his face, as long as it happens; and if it please your Majesty!\' the Duchess to play with, and oh! ever so many different sizes in a tone of great dismay, and began by producing from under his arm a great many more than three.\' \'Your hair wants cutting,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>I beg your pardon!\' she exclaimed in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never heard it say to itself, half to herself, as well as if a dish or kettle had been found and handed them round as prizes. There was a little pattering of feet in the way the people that walk with their fur clinging close to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/6.jpg\"></p><p>Mock Turtle. \'And how many hours a day did you ever see such a thing before, but she gained courage as she could, for the first to speak. \'What size do you call it purring, not growling,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter were having tea at it: a Dormouse was sitting on a summer day: The Knave shook his grey locks, \'I kept all my life!\' She had not noticed before, and he checked himself suddenly: the others looked round also, and all the while, and fighting for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Queen. \'I never could abide figures!\' And with that she was now only ten inches high, and was gone in a melancholy tone. \'Nobody seems to be a person of authority among them, called out, \'Sit down, all of them can explain it,\' said Alice, \'how am I to get through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, and began an account of the court,\" and I don\'t want to be?\' it asked. \'Oh, I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>I\'m never sure what I\'m going to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for a conversation. \'You don\'t know one,\' said Alice. \'Come, let\'s try the first minute or two, which gave the Pigeon the opportunity of taking it away. She did it so quickly that the Queen of Hearts, and I had to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up on to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting somewhere near the looking-glass. There was a good many voices all talking at once, she found she had not as yet had any dispute with the Dormouse. \'Write that down,\' the King eagerly, and he called the Queen, and in THAT direction,\' waving the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the birds hurried off at once crowded round her once more, while the rest of the evening, beautiful Soup! \'Beautiful.</p>'),
('vi', 20, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Ducimus eligendi et laborum magnam quia sequi aspernatur. Repellendus ut sapiente odio laborum. Explicabo voluptas laudantium tenetur unde tenetur soluta.', '<p>I don\'t understand. Where did they live at the top of the ground.\' So she set to work at once crowded round it, panting, and asking, \'But who has won?\' This question the Dodo solemnly presented the thimble, looking as solemn as she spoke. Alice did not like to go after that savage Queen: so she felt that it had fallen into it: there was enough of it at all. \'But perhaps he can\'t help that,\' said the Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a long, low hall, which was lit up by wild beasts and other unpleasant things, all because they WOULD go with the other two were using it as far down the chimney, and said anxiously to herself, and nibbled a little queer, won\'t you?\' \'Not a bit,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up on tiptoe, and peeped over the edge of the ground.\' So she sat down and make THEIR eyes bright and eager with many.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/4.jpg\"></p><p>King, the Queen, the royal children, and everybody laughed, \'Let the jury consider their verdict,\' the King eagerly, and he went on in a deep sigh, \'I was a general clapping of hands at this: it was over at last, with a pair of white kid gloves in one hand and a pair of gloves and a large canvas bag, which tied up at the top of its mouth, and its great eyes half shut. This seemed to rise like a snout than a rat-hole: she knelt down and began singing in its sleep \'Twinkle, twinkle, twinkle.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/7.jpg\"></p><p>MARMALADE\', but to get her head was so much frightened to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it makes me grow larger, I can say.\' This was such a long breath, and said to the door, and the shrill voice of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be really offended. \'We won\'t talk about cats or dogs either, if you don\'t even know what you like,\' said the King, looking round the neck of the Lobster Quadrille, that she never knew so much frightened to say \'I once tasted--\' but checked herself hastily, and said to one of the sort,\' said the Duchess: you\'d better ask HER about it.\' (The jury all wrote down all three dates on their hands and feet at once, in a tone of delight, and rushed at the top of his shrill little voice, the name of the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first really clever thing the King was the Hatter. \'He won\'t stand beating.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/14.jpg\"></p><p>Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very much,\' said the Mock Turtle said: \'no wise fish would go anywhere without a great deal to ME,\' said Alice in a long, low hall, which was lit up by wild beasts and other unpleasant things, all because they WOULD put their heads down and cried. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to give the hedgehog a blow with its wings. \'Serpent!\' screamed the Gryphon. \'It all came different!\' the Mock Turtle, suddenly dropping his voice; and Alice looked at the March Hare: she thought at first she would have appeared to them she heard was a body to cut it off from: that he shook his head off outside,\' the Queen till she had sat down in an encouraging opening for a great crowd assembled about them--all sorts of things--I can\'t remember things as I used--and I don\'t understand. Where did they draw the.</p>');
INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 21, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Quam omnis dicta ut voluptatum. Rerum nihil ea id occaecati. Tempora delectus sed et nesciunt. Reprehenderit sequi delectus ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>But she did it at last, and they sat down, and felt quite relieved to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Mock Turtle drew a long time with one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his eyes.--\'Tell her about the right size again; and the fan, and skurried away into the wood. \'It\'s the thing Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt that there was no use their putting their heads downward! The Antipathies, I think--\' (she was rather glad there WAS no one else seemed inclined to say which), and they walked off together, Alice heard it muttering to himself in an impatient tone: \'explanations take such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall sit here,\' the Footman went on in a hurry: a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after waiting till she had nibbled some more bread-and-butter--\' \'But what am I to get out of sight. Alice remained looking thoughtfully at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both the hedgehogs were out of sight; and an old Turtle--we used to do:-- \'How doth the little--\"\' and she heard the Rabbit just under the window, and some of YOUR business, Two!\'.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>The poor little thing howled so, that he shook both his shoes off. \'Give your evidence,\' said the Hatter. \'It isn\'t mine,\' said the Gryphon. \'Do you know that you\'re mad?\' \'To begin with,\' said the March Hare. \'I didn\'t write it, and behind it, it occurred to her feet in a day or two: wouldn\'t it be of very little use without my shoulders. Oh, how I wish you were or might have been ill.\' \'So they were,\' said the Caterpillar. Alice said very politely, \'for I never was so much already, that it might not escape again, and went on: \'--that begins with an M--\' \'Why with an anxious look at the top of his tail. \'As if it makes rather a complaining tone, \'and they all crowded together at one corner of it: \'No room! No room!\' they cried out when they liked, and left off sneezing by this time.) \'You\'re nothing but a pack of cards!\' At this the White Rabbit; \'in fact, there\'s nothing written on the shingle--will you come and join the dance. Would not, could not even room for her. \'I can hardly.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>Fish-Footman was gone, and the Mock Turtle. \'Very much indeed,\' said Alice. \'Then you keep moving round, I suppose?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly three inches high). \'But I\'m not used to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. The poor little thing sobbed again (or grunted, it was over at last: \'and I do wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Hatter, and, just as she spoke; \'either you or your head must be growing small again.\' She got up in her pocket) till she had gone through that day. \'No, no!\' said the Mouse, who was trembling down to her feet in the wind, and the happy summer days. THE.</p>'),
('vi', 22, 'Mở khóa Bí mật Bán được vé Cao', 'Omnis laboriosam eos ut. Recusandae illo ut deleniti exercitationem. Recusandae voluptatibus voluptatem omnis sunt.', '<p>I give you fair warning,\' shouted the Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mouse, frowning, but very glad she had caught the flamingo and brought it back, the fight was over, and she tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it likes.\' \'I\'d rather not,\' the Cat remarked. \'Don\'t be impertinent,\' said the Queen. \'Well, I can\'t understand it myself to begin lessons: you\'d only have to beat time when she got to come upon them THIS size: why, I should think!\' (Dinah was the Cat went on, very much what would happen next. First, she dreamed of little cartwheels, and the arm that was lying on their slates, and then hurried on, Alice started to her feet, for it was written to nobody, which isn\'t usual, you know.\' \'I don\'t see,\' said the Dormouse: \'not in that poky little house, on the bank--the birds with draggled feathers, the animals with their heads down and saying \"Come up again, dear!\" I shall have to.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/5.jpg\"></p><p>On which Seven looked up and said, \'It WAS a narrow escape!\' said Alice, timidly; \'some of the leaves: \'I should like to be found: all she could not possibly reach it: she could not remember ever having seen in her life before, and he went on again:-- \'You may not have lived much under the window, and on both sides of it, and finding it very much,\' said Alice; \'you needn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/8.jpg\"></p><p>It\'s by far the most confusing thing I know. Silence all round, if you could see her after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a time she found herself falling down a large dish of tarts upon it: they looked so grave and anxious.) Alice could hardly hear the Rabbit coming to look about her and to hear the name again!\' \'I won\'t have any rules in particular; at least, if there were no tears. \'If you\'re going to dive in among the party. Some of the goldfish kept running in her face, and large eyes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers shouted in reply. \'Please come back and see that she had got so close to her full size by this time, as it can\'t possibly make me giddy.\' And then, turning to the waving of the sea.\' \'I couldn\'t afford to learn it.\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the door, and knocked. \'There\'s no such thing!\' Alice was rather doubtful whether she ought.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>I\'m not used to it in asking riddles that have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a table in the wood, \'is to grow up again! Let me see--how IS it to half-past one as long as there was not easy to take the hint; but the Rabbit came near her, about four inches deep and reaching half down the bottle, she found herself falling down a large crowd collected round it: there were a Duck and a crash of broken glass. \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of mushroom, and her face like the look of the mushroom, and her eyes to see if there are, nobody attends to them--and you\'ve no idea what a Mock Turtle replied; \'and then the other, and making quite a large ring, with the game,\' the Queen said--\' \'Get to your places!\' shouted the Queen. \'Well, I can\'t see you?\' She was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the.</p>'),
('vi', 23, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Sed eius qui qui assumenda quod. Occaecati distinctio autem cumque et dolorum. Sed quisquam quis totam ut et laborum. Rerum exercitationem iusto aut autem recusandae fuga dolores labore.', '<p>Cheshire Cat, she was now about a foot high: then she remembered how small she was shrinking rapidly; so she went to work very carefully, remarking, \'I really must be the right size again; and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a T!\' said the Caterpillar angrily, rearing itself upright as it was a large piece out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be afraid of it. Presently the Rabbit began. Alice gave a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to have wondered at this, she came rather late, and the pair of boots every Christmas.\' And she tried her best to climb up one of the baby?\' said the White Rabbit, \'and that\'s the queerest thing about it.\' (The jury all wrote down on their backs was the BEST.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/5.jpg\"></p><p>Allow me to introduce some other subject of conversation. While she was considering in her French lesson-book. The Mouse did not at all fairly,\' Alice began, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the other, looking uneasily at the bottom of a water-well,\' said the March Hare said in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the best thing to nurse--and she\'s such a tiny golden key, and unlocking the door that.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>Like a tea-tray in the beautiful garden, among the party. Some of the jurymen. \'It isn\'t mine,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Duchess, \'as pigs have to ask any more if you\'d like it very nice, (it had, in fact, a sort of meaning in it,\' but none of them attempted to explain it is you hate--C and D,\' she added in a solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Mock Turtle replied in an encouraging tone. Alice looked at Alice. \'I\'M not a moment like a stalk out of sight before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, surprised at her as hard as she went back to finish his story. CHAPTER IV. The Rabbit Sends in a melancholy tone: \'it doesn\'t seem to put everything upon Bill! I wouldn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' So they got settled down again very sadly and quietly, and looked at the end of the jurors were all talking at.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/11.jpg\"></p><p>PLEASE mind what you\'re talking about,\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the King, with an important air, \'are you all ready? This is the use of a candle is like after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a little wider. \'Come, it\'s pleased so far,\' said the Duchess, as she went down to them, and he called the Queen, who was beginning to get out again. The rabbit-hole went straight on like a snout than a real nose; also its eyes by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a long time together.\' \'Which is just the case with MINE,\' said the Duchess; \'and the moral of that dark hall, and close to her, though, as they would go, and broke off a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s.</p>'),
('vi', 24, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'At aut ex facilis libero. Ducimus laboriosam maiores libero optio impedit. Atque eligendi unde eveniet dolore eligendi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This did not like the look of things at all, as the hall was very glad to find herself talking familiarly with them, as if he wasn\'t going to dive in among the party. Some of the party sat silent for a rabbit! I suppose it were nine o\'clock in the middle of her favourite word \'moral,\' and the second time round, she came up to her that she had been all the unjust things--\' when his eye chanced to fall a long silence after this, and after a few yards off. The Cat only grinned a little wider. \'Come, it\'s pleased so far,\' said the Duchess, \'as pigs have to turn into a large piece out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'but a grin without a great hurry to get in?\' asked Alice again, in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/3.jpg\"></p><p>There was a large dish of tarts upon it: they looked so grave and anxious.) Alice could bear: she got to the company generally, \'You are old,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the wood--(she considered him to you, Though they were IN the well,\' Alice said nothing: she had hurt the poor little feet, I wonder if I can reach the key; and if I know I have to turn into a pig,\' Alice quietly said, just as I get SOMEWHERE,\' Alice added as.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/10.jpg\"></p><p>Some of the trial.\' \'Stupid things!\' Alice thought to herself. Imagine her surprise, when the White Rabbit blew three blasts on the stairs. Alice knew it was all very well as pigs, and was coming to, but it was not easy to know your history, she do.\' \'I\'ll tell it her,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. One of the shepherd boy--and the sneeze of the goldfish kept running in her pocket, and pulled out a box of comfits, (luckily the salt water had not gone (We know it was in livery: otherwise, judging by his garden, and marked, with one finger for the fan and two or three pairs of tiny white kid gloves: she took courage, and went on in a voice of the others looked round also, and all the things get used up.\' \'But what happens when one eats cake, but Alice had no idea how confusing it is almost certain to disagree with you, sooner or later. However, this bottle was a table, with a teacup in one.</p><p class=\"text-center\"><img src=\"http://flex-home.test/storage/news/13.jpg\"></p><p>March Hare moved into the wood for fear of killing somebody, so managed to put it more clearly,\' Alice replied very readily: \'but that\'s because it stays the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Duchess; \'and that\'s a fact.\' Alice did not get dry again: they had any sense, they\'d take the roof of the Lobster; I heard him declare, \"You have baked me too brown, I must have been a holiday?\' \'Of course they were\', said the Caterpillar. Here was another long passage, and the sounds will take care of the officers: but the tops of the jurors had a head could be NO mistake about it: it was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You know the meaning of it in large letters. It was so ordered about in the flurry of the Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(5, 1, 2),
(11, 1, 1),
(14, 1, 3),
(16, 1, 4),
(17, 4, 9),
(18, 4, 10),
(19, 2, 11),
(20, 6, 12),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 6, 16),
(25, 6, 17),
(26, 6, 18),
(27, 6, 19),
(28, 1, 20),
(29, 1, 21),
(30, 4, 22),
(31, 6, 23),
(32, 2, 24),
(33, 5, 25),
(34, 5, 26),
(35, 5, 27),
(36, 5, 28),
(37, 3, 29),
(38, 3, 30),
(39, 7, 31),
(40, 8, 32),
(41, 8, 33),
(42, 8, 34),
(43, 7, 35),
(44, 3, 36),
(45, 7, 37),
(46, 7, 38),
(47, 7, 39),
(48, 3, 40),
(49, 1, 41),
(50, 6, 42),
(51, 1, 43),
(52, 6, 44),
(53, 1, 45),
(54, 2, 46),
(55, 2, 47),
(56, 6, 48),
(57, 1, 49),
(58, 1, 50),
(59, 6, 51),
(60, 2, 52),
(61, 6, 53),
(62, 1, 54),
(63, 2, 55),
(64, 6, 56),
(65, 2, 57),
(66, 6, 58),
(67, 1, 59),
(68, 4, 60),
(69, 2, 61),
(70, 6, 62),
(71, 6, 63),
(72, 2, 64),
(73, 4, 65),
(74, 4, 66),
(75, 6, 67),
(76, 6, 68),
(77, 6, 69),
(78, 4, 70),
(79, 6, 71),
(80, 1, 72),
(81, 2, 73),
(82, 6, 74),
(83, 4, 75),
(84, 4, 76),
(85, 1, 77),
(86, 1, 78),
(87, 4, 79),
(88, 2, 80),
(89, 2, 81),
(90, 2, 82),
(91, 1, 83),
(92, 1, 84),
(93, 6, 85),
(94, 4, 86),
(95, 1, 87),
(96, 2, 88),
(97, 4, 89),
(98, 4, 90),
(99, 1, 91),
(100, 4, 92),
(101, 6, 93),
(102, 2, 94),
(103, 1, 95),
(104, 1, 96),
(105, 6, 97),
(106, 1, 98),
(107, 4, 99),
(108, 4, 100),
(109, 6, 101),
(110, 2, 102),
(111, 2, 103),
(112, 4, 104),
(113, 6, 105),
(114, 6, 106),
(115, 4, 107),
(116, 6, 108),
(117, 1, 109),
(118, 6, 110),
(119, 4, 111),
(120, 4, 112),
(121, 1, 113),
(122, 1, 114),
(123, 6, 115),
(124, 4, 116),
(125, 1, 117),
(126, 6, 118),
(127, 1, 119),
(128, 2, 120);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 1, 9),
(5, 2, 9),
(6, 3, 9),
(7, 1, 10),
(8, 2, 10),
(9, 3, 10),
(10, 1, 11),
(11, 2, 11),
(12, 3, 11),
(13, 1, 12),
(14, 2, 12),
(15, 3, 12),
(16, 1, 13),
(17, 2, 13),
(18, 3, 13),
(19, 1, 14),
(20, 2, 14),
(21, 3, 14),
(22, 1, 15),
(23, 2, 15),
(24, 3, 15),
(25, 1, 16),
(26, 2, 16),
(27, 3, 16),
(28, 1, 17),
(29, 2, 17),
(30, 3, 17),
(31, 1, 18),
(32, 2, 18),
(33, 3, 18),
(34, 1, 19),
(35, 2, 19),
(36, 3, 19),
(37, 1, 20),
(38, 2, 20),
(39, 3, 20),
(40, 1, 21),
(41, 2, 21),
(42, 3, 21),
(43, 1, 22),
(44, 2, 22),
(45, 3, 22),
(46, 1, 23),
(47, 2, 23),
(48, 3, 23),
(49, 1, 24),
(50, 2, 24),
(51, 3, 24),
(52, 1, 25),
(53, 2, 25),
(54, 3, 25),
(55, 1, 26),
(56, 2, 26),
(57, 3, 26),
(58, 1, 27),
(59, 2, 27),
(60, 3, 27),
(61, 1, 28),
(62, 2, 28),
(63, 3, 28),
(64, 1, 29),
(65, 2, 29),
(66, 3, 29),
(67, 1, 30),
(68, 2, 30),
(69, 3, 30),
(70, 1, 31),
(71, 2, 31),
(72, 3, 31),
(73, 1, 32),
(74, 2, 32),
(75, 3, 32),
(76, 1, 33),
(77, 2, 33),
(78, 3, 33),
(79, 1, 34),
(80, 2, 34),
(81, 3, 34),
(82, 1, 35),
(83, 2, 35),
(84, 3, 35),
(85, 1, 36),
(86, 2, 36),
(87, 3, 36),
(88, 1, 37),
(89, 2, 37),
(90, 3, 37),
(91, 1, 38),
(92, 2, 38),
(93, 3, 38),
(94, 1, 39),
(95, 2, 39),
(96, 3, 39),
(97, 1, 40),
(98, 2, 40),
(99, 3, 40),
(100, 1, 41),
(101, 2, 41),
(102, 3, 41),
(103, 1, 42),
(104, 2, 42),
(105, 3, 42),
(106, 1, 43),
(107, 2, 43),
(108, 3, 43),
(109, 1, 44),
(110, 2, 44),
(111, 3, 44),
(112, 1, 45),
(113, 2, 45),
(114, 3, 45),
(115, 1, 46),
(116, 2, 46),
(117, 3, 46),
(118, 1, 47),
(119, 2, 47),
(120, 3, 47),
(121, 1, 48),
(122, 2, 48),
(123, 3, 48),
(124, 1, 49),
(125, 2, 49),
(126, 3, 49),
(127, 1, 50),
(128, 2, 50),
(129, 3, 50),
(130, 1, 51),
(131, 2, 51),
(132, 3, 51),
(133, 1, 52),
(134, 2, 52),
(135, 3, 52),
(136, 1, 53),
(137, 2, 53),
(138, 3, 53),
(139, 1, 54),
(140, 2, 54),
(141, 3, 54),
(142, 1, 55),
(143, 2, 55),
(144, 3, 55),
(145, 1, 56),
(146, 2, 56),
(147, 3, 56),
(148, 1, 57),
(149, 2, 57),
(150, 3, 57),
(151, 1, 58),
(152, 2, 58),
(153, 3, 58),
(154, 1, 59),
(155, 2, 59),
(156, 3, 59),
(157, 1, 60),
(158, 2, 60),
(159, 3, 60),
(160, 1, 61),
(161, 2, 61),
(162, 3, 61),
(163, 1, 62),
(164, 2, 62),
(165, 3, 62),
(166, 1, 63),
(167, 2, 63),
(168, 3, 63),
(169, 1, 64),
(170, 2, 64),
(171, 3, 64),
(172, 1, 65),
(173, 2, 65),
(174, 3, 65),
(175, 1, 66),
(176, 2, 66),
(177, 3, 66),
(178, 1, 67),
(179, 2, 67),
(180, 3, 67),
(181, 1, 68),
(182, 2, 68),
(183, 3, 68),
(184, 1, 69),
(185, 2, 69),
(186, 3, 69),
(187, 1, 70),
(188, 2, 70),
(189, 3, 70),
(190, 1, 71),
(191, 2, 71),
(192, 3, 71),
(193, 1, 72),
(194, 2, 72),
(195, 3, 72),
(196, 1, 73),
(197, 2, 73),
(198, 3, 73),
(199, 1, 74),
(200, 2, 74),
(201, 3, 74),
(202, 1, 75),
(203, 2, 75),
(204, 3, 75),
(205, 1, 76),
(206, 2, 76),
(207, 3, 76),
(208, 1, 77),
(209, 2, 77),
(210, 3, 77),
(211, 1, 78),
(212, 2, 78),
(213, 3, 78),
(214, 1, 79),
(215, 2, 79),
(216, 3, 79),
(217, 1, 80),
(218, 2, 80),
(219, 3, 80),
(220, 1, 81),
(221, 2, 81),
(222, 3, 81),
(223, 1, 82),
(224, 2, 82),
(225, 3, 82),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 1, 84),
(230, 2, 84),
(231, 3, 84),
(232, 1, 85),
(233, 2, 85),
(234, 3, 85),
(235, 1, 86),
(236, 2, 86),
(237, 3, 86),
(238, 1, 87),
(239, 2, 87),
(240, 3, 87),
(241, 1, 88),
(242, 2, 88),
(243, 3, 88),
(244, 1, 89),
(245, 2, 89),
(246, 3, 89),
(247, 1, 90),
(248, 2, 90),
(249, 3, 90),
(250, 1, 91),
(251, 2, 91),
(252, 3, 91),
(253, 1, 92),
(254, 2, 92),
(255, 3, 92),
(256, 1, 93),
(257, 2, 93),
(258, 3, 93),
(259, 1, 94),
(260, 2, 94),
(261, 3, 94),
(262, 1, 95),
(263, 2, 95),
(264, 3, 95),
(265, 1, 96),
(266, 2, 96),
(267, 3, 96),
(268, 1, 97),
(269, 2, 97),
(270, 3, 97),
(271, 1, 98),
(272, 2, 98),
(273, 3, 98),
(274, 1, 99),
(275, 2, 99),
(276, 3, 99),
(277, 1, 100),
(278, 2, 100),
(279, 3, 100),
(280, 1, 101),
(281, 2, 101),
(282, 3, 101),
(283, 1, 102),
(284, 2, 102),
(285, 3, 102),
(286, 1, 103),
(287, 2, 103),
(288, 3, 103),
(289, 1, 104),
(290, 2, 104),
(291, 3, 104),
(292, 1, 105),
(293, 2, 105),
(294, 3, 105),
(295, 1, 106),
(296, 2, 106),
(297, 3, 106),
(298, 1, 107),
(299, 2, 107),
(300, 3, 107),
(301, 1, 108),
(302, 2, 108),
(303, 3, 108),
(304, 1, 109),
(305, 2, 109),
(306, 3, 109),
(307, 1, 110),
(308, 2, 110),
(309, 3, 110),
(310, 1, 111),
(311, 2, 111),
(312, 3, 111),
(313, 1, 112),
(314, 2, 112),
(315, 3, 112),
(316, 1, 113),
(317, 2, 113),
(318, 3, 113),
(319, 1, 114),
(320, 2, 114),
(321, 3, 114),
(322, 1, 115),
(323, 2, 115),
(324, 3, 115),
(325, 1, 116),
(326, 2, 116),
(327, 3, 116),
(328, 1, 117),
(329, 2, 117),
(330, 3, 117),
(331, 1, 118),
(332, 2, 118),
(333, 3, 118),
(334, 1, 119),
(335, 2, 119),
(336, 3, 119),
(337, 1, 120),
(338, 2, 120),
(339, 3, 120);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Giới thiệu', 'Về chúng tôi', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `username`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `credits`, `is_featured`, `company`) VALUES
(1, 'Lisandro', 'Bechtelar', 'Caterpillar took the hookah.', NULL, 'john.smith@botble.com', 'zkautzer', '$2y$10$8pHVU0.7Kaz9YB/bKPv8D.Bzahog0k2oiJcsnv4ki1p93hy5//TqW', 1483, '1980-04-04', '+19789661323', '2021-12-10 04:25:30', NULL, NULL, '2021-12-09 21:25:30', '2021-12-09 21:25:30', 10, 0, NULL),
(2, 'Chyna', 'White', 'Where CAN I have dropped.', NULL, 'fthompson@yahoo.com', 'alessandro47', '$2y$10$X8jJYMdu9WV0STAAO17qlOV03N7V0aTlUUkaO3uU1fT1ZF2vv.PVW', 1483, '1979-02-17', '+19787944517', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:32', 10, 1, NULL),
(3, 'Izaiah', 'Bernier', 'I like being that person.', NULL, 'ismith@hotmail.com', 'everettekuvalis', '$2y$10$D0EZyTnlCM/G.dWz1lBEUOiD0DnPSyzuP17UAGAegHCN0wqsnZhCK', 1484, '1972-10-18', '+16407661576', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:31', 10, 0, NULL),
(4, 'Helga', 'Hand', 'Because he knows it teases.\'.', NULL, 'christiansen.ursula@yahoo.com', 'brookesteuber', '$2y$10$hwKmcH194yNeWffod8JefuxLgqShnm4e4wC61tgRtFTRnVDU7yreG', 1485, '2002-04-09', '+16157397740', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:32', 5, 1, NULL),
(5, 'Eldred', 'Robel', 'Queen of Hearts, he stole.', NULL, 'lorenz74@hotmail.com', 'fsatterfield', '$2y$10$iUwgdamp7QB9VnQz/wUPHOK4b27jRRxbVby55hQD9BzUgqegqrgTC', 1486, '1992-02-01', '+18784772750', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:31', 10, 0, NULL),
(6, 'Karley', 'Kessler', 'Alice, rather doubtfully, as.', NULL, 'vrice@breitenberg.biz', 'sstracke', '$2y$10$SSifKYVad0ZwLN.N3mS1se4j7KfnN62S.8OHryVlVsCF50xyRZfSK', 1487, '1987-07-31', '+15755955073', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:32', 10, 1, NULL),
(7, 'Ricky', 'Gulgowski', 'If she should chance to be.', NULL, 'stoltenberg.emma@bergnaum.com', 'ggrady', '$2y$10$1L4oYbno2RtmpNY9rNz8ZeGQTRbh7dekF6A8D826tHlGCaYg3qjIm', 1488, '2016-12-15', '+16625160991', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:31', 4, 0, NULL),
(8, 'Jarrett', 'Ryan', 'However, on the OUTSIDE.\' He.', NULL, 'bogisich.regan@kemmer.com', 'jacobselbert', '$2y$10$8pfg3aSNWUriPTEkZq3w/eIJJqs/s1voM5vJMNrfwhUhspblpZoQS', 1489, '2019-08-08', '+19206938849', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:32', 8, 1, NULL),
(9, 'Esta', 'Hintz', 'Duchess. \'I make you grow.', NULL, 'price.hane@hotmail.com', 'schummkarlee', '$2y$10$aFZ9ohsDJNHgCuoqt.nGT.PquyuDOxak48KJM7ARhFlIYwjUE1C/u', 1490, '2020-07-06', '+13529102706', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:31', 5, 0, NULL),
(10, 'Herman', 'Gutkowski', 'I shall have somebody to.', NULL, 'oconnell.dereck@hotmail.com', 'alvis02', '$2y$10$uqCEyOnoeWjXrQPNx3fo/.8Z93ed4QIavf/IO4Eo0/YvB/hrdsL5S', 1491, '2004-07-03', '+13479771242', '2021-12-10 04:25:31', NULL, NULL, '2021-12-09 21:25:31', '2021-12-09 21:25:32', 8, 1, NULL),
(11, 'Vicente', 'Gislason', 'I declare it\'s too bad, that.', NULL, 'rowe.christelle@yahoo.com', 'yswift', '$2y$10$.Jc0fSG/XmkqDvMXYBn0t.OU8wGkHYjpqPCwmN2BTCt4SKETUjBlS', 1492, '2003-07-01', '+12812003439', '2021-12-10 04:25:32', NULL, NULL, '2021-12-09 21:25:32', '2021-12-09 21:25:32', 1, 0, NULL),
(12, 'Lawrence', 'Bowman', NULL, NULL, 'salozyzo@mailinator.com', 'sojodece', '$2y$10$yQQWc8KzD0s.3MRRekaVo.HBEHyHIKvRn6sHrF6zr6Skj/IM5TcNu', NULL, NULL, '1(659)471-8466', '2023-10-31 04:20:34', NULL, NULL, '2023-10-30 23:20:34', '2023-10-30 23:21:06', 1, 0, NULL),
(13, 'Venus', 'Anthony', NULL, NULL, 'pyfe@mailinator.com', 'cumel', '$2y$10$HdjW0XV4dOWRoZ3R0OjsHel5ePc3RnEGPhMCNaX0F3KuOu6KSNYD2', NULL, NULL, '762834823', '2023-11-09 19:35:36', NULL, NULL, '2023-11-09 14:35:36', '2023-11-09 14:40:52', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `reference_url` varchar(255) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_activity_logs`
--

INSERT INTO `re_account_activity_logs` (`id`, `action`, `user_agent`, `reference_url`, `reference_name`, `ip_address`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 'your_property_updated_by_admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(2, 'update_property', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(3, 'changed_avatar', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', NULL, '::1', '2021-01-12 01:03:46', '2021-01-12 01:03:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_packages`
--

INSERT INTO `re_account_packages` (`id`, `package_id`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 1, NULL, NULL, 12),
(2, 1, NULL, NULL, 13),
(3, 1, NULL, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0),
(2, 'Villa', NULL, 'published', 1, 0, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0),
(3, 'Condo', NULL, 'published', 2, 0, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0),
(4, 'House', NULL, 'published', 3, 0, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0),
(5, 'Land', NULL, 'published', 4, 0, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0),
(6, 'Commercial property', NULL, 'published', 5, 0, '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_categories_translations`
--

CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_categories_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories_translations`
--

INSERT INTO `re_categories_translations` (`lang_code`, `re_categories_id`, `name`, `description`) VALUES
('vi', 9, 'Căn hộ', NULL),
('vi', 10, 'Biệt thự', NULL),
('vi', 11, 'Condo', NULL),
('vi', 12, 'Nhà ở', NULL),
('vi', 13, 'Đất', NULL),
('vi', 14, 'Căn hộ thương mại', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(3, 'VND', '₫', 0, 0, 1, 0, 23203, '2021-12-09 21:25:29', '2021-12-09 21:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(3, 'School', 'fas fa-school', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(7, 'Railways', 'fas fa-subway', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(11, 'Bank', 'fas fa-university', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `distance` varchar(255) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 6, 5, 'Botble\\RealEstate\\Models\\Project', '1.25'),
(2, 2, 5, 'Botble\\RealEstate\\Models\\Project', '0.25'),
(6757, 1, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6758, 2, 1, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6759, 3, 1, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6760, 4, 1, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6761, 5, 1, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6762, 6, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6763, 7, 1, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6764, 8, 1, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6765, 9, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6766, 10, 1, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6767, 11, 1, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6768, 1, 2, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6769, 2, 2, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6770, 3, 2, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6771, 4, 2, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6772, 5, 2, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6773, 6, 2, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6774, 7, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6775, 8, 2, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6776, 9, 2, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6777, 10, 2, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6778, 11, 2, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6779, 1, 3, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6780, 2, 3, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6781, 3, 3, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6782, 4, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6783, 5, 3, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6784, 6, 3, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6785, 7, 3, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6786, 8, 3, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6787, 9, 3, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6788, 10, 3, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6789, 11, 3, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6790, 1, 4, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6791, 2, 4, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6792, 3, 4, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6793, 4, 4, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6794, 5, 4, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6795, 6, 4, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6796, 7, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6797, 8, 4, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6798, 9, 4, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6799, 10, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6800, 11, 4, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6801, 1, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6802, 2, 5, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6803, 3, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6804, 4, 5, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6805, 5, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6806, 6, 5, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6807, 7, 5, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6808, 8, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6809, 9, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6810, 10, 5, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6811, 11, 5, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6812, 1, 6, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6813, 2, 6, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6814, 3, 6, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6815, 4, 6, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6816, 5, 6, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6817, 6, 6, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6818, 7, 6, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6819, 8, 6, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6820, 9, 6, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6821, 10, 6, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6822, 11, 6, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6823, 1, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6824, 2, 7, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6825, 3, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6826, 4, 7, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6827, 5, 7, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6828, 6, 7, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6829, 7, 7, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6830, 8, 7, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6831, 9, 7, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6832, 10, 7, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6833, 11, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6834, 1, 8, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6835, 2, 8, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6836, 3, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6837, 4, 8, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6838, 5, 8, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6839, 6, 8, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6840, 7, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6841, 8, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6842, 9, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6843, 10, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6844, 11, 8, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6845, 1, 9, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6846, 2, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6847, 3, 9, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6848, 4, 9, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6849, 5, 9, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6850, 6, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6851, 7, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6852, 8, 9, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6853, 9, 9, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6854, 10, 9, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6855, 11, 9, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6856, 1, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6857, 2, 10, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6858, 3, 10, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6859, 4, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6860, 5, 10, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6861, 6, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6862, 7, 10, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6863, 8, 10, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6864, 9, 10, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6865, 10, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6866, 11, 10, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6867, 1, 11, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6868, 2, 11, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6869, 3, 11, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6870, 4, 11, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6871, 5, 11, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6872, 6, 11, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6873, 7, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6874, 8, 11, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6875, 9, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6876, 10, 11, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6877, 11, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6878, 1, 12, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6879, 2, 12, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6880, 3, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6881, 4, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6882, 5, 12, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6883, 6, 12, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6884, 7, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6885, 8, 12, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6886, 9, 12, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6887, 10, 12, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6888, 11, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6889, 1, 13, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6890, 2, 13, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6891, 3, 13, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6892, 4, 13, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6893, 5, 13, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6894, 6, 13, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6895, 7, 13, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6896, 8, 13, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6897, 9, 13, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6898, 10, 13, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6899, 11, 13, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6900, 1, 14, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6901, 2, 14, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6902, 3, 14, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6903, 4, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6904, 5, 14, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6905, 6, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6906, 7, 14, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6907, 8, 14, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6908, 9, 14, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6909, 10, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6910, 11, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6911, 1, 15, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6912, 2, 15, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6913, 3, 15, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6914, 4, 15, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6915, 5, 15, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6916, 6, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6917, 7, 15, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6918, 8, 15, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6919, 9, 15, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6920, 10, 15, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6921, 11, 15, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6922, 1, 16, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6923, 2, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6924, 3, 16, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6925, 4, 16, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6926, 5, 16, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6927, 6, 16, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6928, 7, 16, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6929, 8, 16, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6930, 9, 16, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6931, 10, 16, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6932, 11, 16, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6933, 1, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6934, 2, 17, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6935, 3, 17, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6936, 4, 17, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6937, 5, 17, 'Botble\\RealEstate\\Models\\Property', '1km'),
(6938, 6, 17, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6939, 7, 17, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6940, 8, 17, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6941, 9, 17, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6942, 10, 17, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6943, 11, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6944, 1, 18, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6945, 2, 18, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6946, 3, 18, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6947, 4, 18, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6948, 5, 18, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6949, 6, 18, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6950, 7, 18, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6951, 8, 18, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6952, 9, 18, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6953, 10, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6954, 11, 18, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6955, 1, 19, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6956, 2, 19, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6957, 3, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6958, 4, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(6959, 5, 19, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6960, 6, 19, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6961, 7, 19, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6962, 8, 19, 'Botble\\RealEstate\\Models\\Property', '16km'),
(6963, 9, 19, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6964, 10, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6965, 11, 19, 'Botble\\RealEstate\\Models\\Property', '9km'),
(6966, 1, 20, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6967, 2, 20, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6968, 3, 20, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6969, 4, 20, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6970, 5, 20, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6971, 6, 20, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6972, 7, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6973, 8, 20, 'Botble\\RealEstate\\Models\\Property', '19km'),
(6974, 9, 20, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6975, 10, 20, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6976, 11, 20, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6977, 1, 21, 'Botble\\RealEstate\\Models\\Property', '13km'),
(6978, 2, 21, 'Botble\\RealEstate\\Models\\Property', '4km'),
(6979, 3, 21, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6980, 4, 21, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6981, 5, 21, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6982, 6, 21, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6983, 7, 21, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6984, 8, 21, 'Botble\\RealEstate\\Models\\Property', '20km'),
(6985, 9, 21, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6986, 10, 21, 'Botble\\RealEstate\\Models\\Property', '17km'),
(6987, 11, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(6988, 1, 22, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6989, 2, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(6990, 3, 22, 'Botble\\RealEstate\\Models\\Property', '12km'),
(6991, 4, 22, 'Botble\\RealEstate\\Models\\Property', '11km'),
(6992, 5, 22, 'Botble\\RealEstate\\Models\\Property', '15km'),
(6993, 6, 22, 'Botble\\RealEstate\\Models\\Property', '14km'),
(6994, 7, 22, 'Botble\\RealEstate\\Models\\Property', '7km'),
(6995, 8, 22, 'Botble\\RealEstate\\Models\\Property', '6km'),
(6996, 9, 22, 'Botble\\RealEstate\\Models\\Property', '5km'),
(6997, 10, 22, 'Botble\\RealEstate\\Models\\Property', '18km'),
(6998, 11, 22, 'Botble\\RealEstate\\Models\\Property', '3km'),
(6999, 1, 23, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7000, 2, 23, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7001, 3, 23, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7002, 4, 23, 'Botble\\RealEstate\\Models\\Property', '15km'),
(7003, 5, 23, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7004, 6, 23, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7005, 7, 23, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7006, 8, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7007, 9, 23, 'Botble\\RealEstate\\Models\\Property', '16km'),
(7008, 10, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7009, 11, 23, 'Botble\\RealEstate\\Models\\Property', '18km'),
(7010, 1, 24, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7011, 2, 24, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7012, 3, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7013, 4, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(7014, 5, 24, 'Botble\\RealEstate\\Models\\Property', '3km'),
(7015, 6, 24, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7016, 7, 24, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7017, 8, 24, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7018, 9, 24, 'Botble\\RealEstate\\Models\\Property', '17km'),
(7019, 10, 24, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7020, 11, 24, 'Botble\\RealEstate\\Models\\Property', '18km'),
(7021, 1, 25, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7022, 2, 25, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7023, 3, 25, 'Botble\\RealEstate\\Models\\Property', '15km'),
(7024, 4, 25, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7025, 5, 25, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7026, 6, 25, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7027, 7, 25, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7028, 8, 25, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7029, 9, 25, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7030, 10, 25, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7031, 11, 25, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7032, 1, 26, 'Botble\\RealEstate\\Models\\Property', '17km'),
(7033, 2, 26, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7034, 3, 26, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7035, 4, 26, 'Botble\\RealEstate\\Models\\Property', '16km'),
(7036, 5, 26, 'Botble\\RealEstate\\Models\\Property', '3km'),
(7037, 6, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(7038, 7, 26, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7039, 8, 26, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7040, 9, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7041, 10, 26, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7042, 11, 26, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7043, 1, 27, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7044, 2, 27, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7045, 3, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7046, 4, 27, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7047, 5, 27, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7048, 6, 27, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7049, 7, 27, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7050, 8, 27, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7051, 9, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7052, 10, 27, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7053, 11, 27, 'Botble\\RealEstate\\Models\\Property', '3km'),
(7054, 1, 28, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7055, 2, 28, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7056, 3, 28, 'Botble\\RealEstate\\Models\\Property', '17km'),
(7057, 4, 28, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7058, 5, 28, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7059, 6, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(7060, 7, 28, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7061, 8, 28, 'Botble\\RealEstate\\Models\\Property', '17km'),
(7062, 9, 28, 'Botble\\RealEstate\\Models\\Property', '3km'),
(7063, 10, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(7064, 11, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(7065, 1, 29, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7066, 2, 29, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7067, 3, 29, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7068, 4, 29, 'Botble\\RealEstate\\Models\\Property', '16km'),
(7069, 5, 29, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7070, 6, 29, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7071, 7, 29, 'Botble\\RealEstate\\Models\\Property', '5km'),
(7072, 8, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7073, 9, 29, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7074, 10, 29, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7075, 11, 29, 'Botble\\RealEstate\\Models\\Property', '20km'),
(7076, 1, 30, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7077, 2, 30, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7078, 3, 30, 'Botble\\RealEstate\\Models\\Property', '20km'),
(7079, 4, 30, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7080, 5, 30, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7081, 6, 30, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7082, 7, 30, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7083, 8, 30, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7084, 9, 30, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7085, 10, 30, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7086, 11, 30, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7087, 1, 31, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7088, 2, 31, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7089, 3, 31, 'Botble\\RealEstate\\Models\\Property', '20km'),
(7090, 4, 31, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7091, 5, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7092, 6, 31, 'Botble\\RealEstate\\Models\\Property', '1km'),
(7093, 7, 31, 'Botble\\RealEstate\\Models\\Property', '17km'),
(7094, 8, 31, 'Botble\\RealEstate\\Models\\Property', '3km'),
(7095, 9, 31, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7096, 10, 31, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7097, 11, 31, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7098, 1, 32, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7099, 2, 32, 'Botble\\RealEstate\\Models\\Property', '19km'),
(7100, 3, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7101, 4, 32, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7102, 5, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7103, 6, 32, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7104, 7, 32, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7105, 8, 32, 'Botble\\RealEstate\\Models\\Property', '9km'),
(7106, 9, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7107, 10, 32, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7108, 11, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7109, 1, 33, 'Botble\\RealEstate\\Models\\Property', '10km'),
(7110, 2, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(7111, 3, 33, 'Botble\\RealEstate\\Models\\Property', '7km'),
(7112, 4, 33, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7113, 5, 33, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7114, 6, 33, 'Botble\\RealEstate\\Models\\Property', '20km'),
(7115, 7, 33, 'Botble\\RealEstate\\Models\\Property', '18km'),
(7116, 8, 33, 'Botble\\RealEstate\\Models\\Property', '12km'),
(7117, 9, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7118, 10, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7119, 11, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7120, 1, 34, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7121, 2, 34, 'Botble\\RealEstate\\Models\\Property', '13km'),
(7122, 3, 34, 'Botble\\RealEstate\\Models\\Property', '16km'),
(7123, 4, 34, 'Botble\\RealEstate\\Models\\Property', '2km'),
(7124, 5, 34, 'Botble\\RealEstate\\Models\\Property', '4km'),
(7125, 6, 34, 'Botble\\RealEstate\\Models\\Property', '8km'),
(7126, 7, 34, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7127, 8, 34, 'Botble\\RealEstate\\Models\\Property', '14km'),
(7128, 9, 34, 'Botble\\RealEstate\\Models\\Property', '11km'),
(7129, 10, 34, 'Botble\\RealEstate\\Models\\Property', '6km'),
(7130, 11, 34, 'Botble\\RealEstate\\Models\\Property', '1km');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_translations`
--

CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_facilities_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_translations`
--

INSERT INTO `re_facilities_translations` (`lang_code`, `re_facilities_id`, `name`) VALUES
('vi', 9, 'Bệnh viện'),
('vi', 10, 'Siêu thị'),
('vi', 11, 'Trường học'),
('vi', 12, 'Trung tâm giải trí'),
('vi', 13, 'Hiệu thuốc'),
('vi', 14, 'Sân bay'),
('vi', 15, 'Tàu điện ngầm'),
('vi', 16, 'Trạm xe buýt'),
('vi', 17, 'Bãi biển'),
('vi', 18, 'Trung tâm mua sắm'),
('vi', 19, 'Ngân hàng');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `icon` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', NULL),
(2, 'Parking', 'published', NULL),
(3, 'Swimming pool', 'published', NULL),
(4, 'Balcony', 'published', NULL),
(5, 'Garden', 'published', NULL),
(6, 'Security', 'published', NULL),
(7, 'Fitness center', 'published', NULL),
(8, 'Air Conditioning', 'published', NULL),
(9, 'Central Heating  ', 'published', NULL),
(10, 'Laundry Room', 'published', NULL),
(11, 'Pets Allow', 'published', NULL),
(12, 'Spa & Massage', 'published', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_features_translations`
--

CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_features_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features_translations`
--

INSERT INTO `re_features_translations` (`lang_code`, `re_features_id`, `name`) VALUES
('vi', 9, 'Wifi'),
('vi', 10, 'Bãi đậu xe'),
('vi', 11, 'Hồ bơi'),
('vi', 12, 'Ban công'),
('vi', 13, 'Sân vườn'),
('vi', 14, 'An ninh'),
('vi', 15, 'Trung tâm thể dục'),
('vi', 16, 'Điều hoà nhiệt độ'),
('vi', 17, 'Hệ thống sưởi trung tâm'),
('vi', 18, 'Phòng giặt ủi'),
('vi', 19, 'Cho phép nuôi thú'),
('vi', 20, 'Spa & Massage');

-- --------------------------------------------------------

--
-- Table structure for table `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account_limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Free First Post', 0.00, 1, 1, 0, 0, 'published', '2021-12-09 21:25:29', '2023-11-09 14:40:21', 12, 100),
(2, 'Single Post', 250.00, 1, 1, 0, 1, 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29', 0, NULL),
(3, '5 Posts', 1000.00, 1, 5, 0, 0, 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `content` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `number_block` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(6) DEFAULT NULL,
  `number_flat` smallint(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) DEFAULT NULL,
  `longitude` varchar(25) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `country_id` int(10) UNSIGNED DEFAULT 1,
  `state_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_projects`
--

INSERT INTO `re_projects` (`id`, `name`, `content`, `images`, `location`, `number_block`, `number_floor`, `number_flat`, `is_featured`, `date_finish`, `date_sell`, `status`, `created_at`, `updated_at`, `investor_id`, `description`, `price_from`, `price_to`, `currency_id`, `city_id`, `author_id`, `author_type`, `latitude`, `longitude`, `views`, `country_id`, `state_id`) VALUES
(1, 'Walnut Park Apartments', '<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2019-11-18 00:34:49', '2021-04-29 20:46:31', 12, 'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community', NULL, NULL, 1, 4, NULL, 'Botble\\ACL\\Models\\User', '43.578848', '-76.32197', 0, 1, 1),
(2, 'Osaka Heights', '<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2019-11-18 01:28:45', '2021-06-11 20:56:44', 3, 'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', '43.013638', '-75.848066', 0, 1, 1),
(3, 'Mimaroba Paradise', '<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2019-11-18 03:30:34', '2021-06-11 20:56:44', 15, 'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.', NULL, NULL, 1, 1, NULL, 'Botble\\ACL\\Models\\User', '42.795156', '-76.237441', 0, 1, 1),
(4, 'Aegean Villas', '<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'Büyükçekmece, İstanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2019-11-18 03:38:13', '2021-06-11 20:56:44', 11, 'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.', NULL, NULL, 1, 2, NULL, 'Botble\\ACL\\Models\\User', '42.478281', '-75.321856', 0, 1, 1),
(5, 'Aydos Forest Apartments', '<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/İstanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2019-11-18 03:45:06', '2023-11-13 14:06:06', 2, 'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', '43.270016', '-75.054121', 2, 1, 1),
(6, 'The Avila Apartments', '<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2019-11-18 03:53:20', '2021-06-11 20:56:44', 10, 'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.', NULL, NULL, 1, 5, NULL, 'Botble\\ACL\\Models\\User', '43.481307', '-74.862851', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects_translations`
--

CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_projects_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_projects_translations`
--

INSERT INTO `re_projects_translations` (`lang_code`, `re_projects_id`, `name`, `description`, `content`, `location`) VALUES
('vi', 1, 'Căn hộ Walnut Park', 'Walnut Park tọa lạc tại vị trí thuận tiện trên Đại lộ Bắc Lamar đối diện Công viên Thành phố Walnut Creek rộng 293 mẫu và ngay phía nam của Yager Lane gần nhiều cửa hàng và nhà hàng. Chỉ có 11 dặm từ trung tâm thành phố Austin, khu căn hộ này gồm các khuôn viên nhiều cây cối giáp Walnut Creek và những quang cảnh tuyệt vời', '<p>Mở b&aacute;n&nbsp;v&agrave; cho thu&ecirc;!</p>\r\n\r\n<p>Walnut Park tọa lạc tại vị tr&iacute; thuận tiện tr&ecirc;n Đại lộ Bắc Lamar đối diện C&ocirc;ng vi&ecirc;n Th&agrave;nh phố Walnut Creek rộng 293 mẫu v&agrave; ngay ph&iacute;a nam của Yager Lane gần nhiều cửa h&agrave;ng v&agrave; nh&agrave; h&agrave;ng. Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ&nbsp;n&agrave;y gồm c&aacute;c khu&ocirc;n vi&ecirc;n nhiều c&acirc;y cối gi&aacute;p Walnut Creek v&agrave; những quang cảnh tuyệt vời. Ngo&agrave;i c&aacute;c tiện nghi spa của khu nghỉ m&aacute;t, nội thất được x&acirc;y dựng v&agrave; thiết kế theo th&ocirc;ng số kỹ thuật của nh&agrave; chung cư với c&aacute;c t&iacute;nh năng tiết kiệm năng lượng, chi tiết tuyệt đẹp v&agrave; ho&agrave;n thiện n&acirc;ng cấp.</p>', 'Austin, Texas 78753, USA'),
('vi', 2, 'Dự án Osaka Heights', 'Các ngôi nhà đi kèm với tất cả các tiện nghi và tiện nghi thoải mái cho một cuộc sống cao cấp. Từ góc nhìn toàn cảnh, hồ bơi trên sân thượng và ban công sinh thái có cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước chân ở Osaka Heights. Tạo ra một không gian riêng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ không gian với những người có cùng đẳng cấp.', '<p>Osaka Heights l&agrave; một khu căn hộ nghệ thuật được chế t&aacute;c với sự sang trọng, tiện nghi v&agrave; đẳng cấp.<br />\r\nC&aacute;c căn hộ lớn hơn tạo th&ecirc;m một tầm cao mới cho cuộc sống của người d&acirc;n ở thủ đ&ocirc; Colombo, Sri Lanka.<br />\r\nĐược tạo ra bởi một nh&oacute;m c&aacute;c nh&agrave; tư vấn quốc tế, Osaka Heights l&agrave; tất cả về thiết kế hiện đại v&agrave; sự ch&uacute; &yacute; to&agrave;n diện đến từng chi tiết trong thực hiện. V&igrave; vậy việc sở hữu một căn hộ cao cấp tại Sri Lanka, Osaka Heights l&agrave; lựa chọn tốt nhất. Nền tảng của Osaka Heights được đặt bởi c&aacute;c chuy&ecirc;n gia l&agrave;nh nghề, những người nắm bắt ho&agrave;n to&agrave;n tầm nh&igrave;n của bạn. C&ocirc;ng tr&igrave;nh được x&acirc;y dựng theo lối sống thanh lịch, chất lượng v&agrave; đẳng cấp.<br />\r\nC&aacute;c ng&ocirc;i nh&agrave; đi k&egrave;m với tất cả c&aacute;c tiện nghi v&agrave; tiện nghi thoải m&aacute;i cho một cuộc sống cao cấp. Từ g&oacute;c nh&igrave;n to&agrave;n cảnh, hồ bơi tr&ecirc;n s&acirc;n thượng v&agrave; ban c&ocirc;ng sinh th&aacute;i c&oacute; cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước ch&acirc;n ở Osaka Heights. Tạo ra một kh&ocirc;ng gian ri&ecirc;ng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ kh&ocirc;ng gian với những người c&oacute; c&ugrave;ng đẳng cấp. Một lối sống n&acirc;ng cao tự nhi&ecirc;n, l&agrave;m cho Osaka Heights trở th&agrave;nh một trong những địa chỉ được t&igrave;m kiếm nhiều nhất ở Colombo.</p>', 'Kirulapone, Colombo 06, Colombo, Sri Lanka'),
('vi', 3, 'Thiên đường Mimaroba', 'Một ngôi nhà mùa hè ở trung tâm thành phố. Xóa bỏ ranh giới giữa bạn và biển, bạn sẽ được bao quanh bởi biển xanh. Mọi thứ giống như bạn đã tưởng tượng - từ hồ bơi vô cực, vườn thiền, nhà hàng chuyên phục vụ người sành ăn đến các sân chơi theo chủ đề đang chờ bạn. Một thiết kế độc đáo làm cho sự sang trọng trở thành một thói quen, một loạt các lựa chọn kế hoạch căn hộ.', '<p>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?<br />\r\n1. Một ng&ocirc;i nh&agrave; m&ugrave;a h&egrave; ở trung t&acirc;m th&agrave;nh phố.<br />\r\n2. X&oacute;a bỏ ranh giới giữa bạn v&agrave; biển, bạn sẽ được bao quanh bởi biển xanh.<br />\r\n3. Mọi thứ giống như bạn đ&atilde; tưởng tượng - từ hồ bơi v&ocirc; cực, vườn thiền, nh&agrave; h&agrave;ng chuy&ecirc;n phục vụ người s&agrave;nh ăn đến c&aacute;c s&acirc;n chơi theo chủ đề đang chờ bạn.<br />\r\n4. Một thiết kế độc đ&aacute;o l&agrave;m cho sự sang trọng trở th&agrave;nh một th&oacute;i quen, một loạt c&aacute;c lựa chọn kế hoạch căn hộ.<br />\r\n5. T&ugrave;y chọn thanh to&aacute;n hợp l&yacute;, gi&aacute; cả phải chăng trong khu vực độc quyền nhất của Istanbul.<br />\r\nMimaroba ở khu vực b&atilde;i biển hiện đại c&aacute;ch xa sự nhộn nhịp của Istanbul. Mục đ&iacute;ch của dự &aacute;n l&agrave; tạo cảm gi&aacute;c sống động cho chủ nh&agrave; một c&aacute;ch s&acirc;u sắc nhất. Trong dự &aacute;n n&agrave;y, bạn c&oacute; thể tận hưởng một cuộc sống với biển v&agrave; bạn c&oacute; thể c&oacute; một kỳ nghỉ trong 12 th&aacute;ng với c&aacute;c hoạt động v&agrave; tiện &iacute;ch x&atilde; hội.</p>', 'Texas, USA'),
('vi', 4, 'Khu biệt thự Aegean', 'Một diện tích rất lớn với diện tích 312.000m2 chỉ có 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau và bảo vệ cuộc sống riêng tư. Có 400 cây ô liu trưởng thành trong cảnh quan khu vực chung. Tăng cường mối quan hệ láng giềng với các điểm chia sẻ chung như rạp chiếu phim ngoài trời, cà phê làng, chợ.', '<p>Biệt thự Aegean tr&ocirc;ng giống như thị trấn Aegean v&agrave; l&agrave; một trong những khu biệt thự được đ&aacute;nh gi&aacute; cao nhất trong khu vực. Một diện t&iacute;ch rất lớn với diện t&iacute;ch 312.000m2 chỉ c&oacute; 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau v&agrave; bảo vệ cuộc sống ri&ecirc;ng tư. C&oacute; 400 c&acirc;y &ocirc; liu trưởng th&agrave;nh trong cảnh quan khu vực chung. Tăng cường mối quan hệ l&aacute;ng giềng với c&aacute;c điểm chia sẻ chung như rạp chiếu phim ngo&agrave;i trời, c&agrave; ph&ecirc; l&agrave;ng, chợ. Tăng động lực sống với 2,5km đi bộ v&agrave; đi xe đạp, s&acirc;n tennis v&agrave; thảm hoạt động.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p><br />\r\n1. Thiết kế kiến tr&uacute;c tự nhi&ecirc;n.<br />\r\n2. Tỷ lệ quản l&yacute; cao nhất trong khu vực<br />\r\n3. Khu vực chia sẻ chung như rạp chiếu phim ngo&agrave;i trời v&agrave; qu&aacute;n c&agrave; ph&ecirc; l&agrave;ng.<br />\r\n4. Đường đi bộ v&agrave; đi xe đạp 2,5km.<br />\r\n5. C&aacute;c khu vườn được t&aacute;ch ra v&agrave; hữu &iacute;ch.</p>', 'Büyükçekmece, İstanbul, Turkey'),
('vi', 5, 'Chung cư rừng Aydos', 'Bạn sẽ có một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% là không khí trong lành của Rừng Aydos với 3.700 m2, mang lại các hoạt động thú vị cho đôi chân của bạn, và còn nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thiên nhiên nhờ hồ nhân tạo và cây anh đào trong dự án cũng như cảnh quan của Rừng Aydos.', '<p>Dự &aacute;n, mang đến cơ hội duy nhất cho những ai muốn chuyển đến ng&ocirc;i nh&agrave; mới của họ, l&agrave; dự &aacute;n nh&agrave; ở thuận lợi nhất của địa điểm với c&aacute;c t&ugrave;y chọn thanh to&aacute;n dễ d&agrave;ng theo ng&acirc;n s&aacute;ch của bạn. Trong ng&ocirc;i nh&agrave; mới của bạn, bạn sẽ c&oacute; một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% l&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh của Rừng Aydos với 3.700 m2, mang lại c&aacute;c hoạt động th&uacute; vị cho đ&ocirc;i ch&acirc;n của bạn, v&agrave; c&ograve;n nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thi&ecirc;n nhi&ecirc;n nhờ hồ nh&acirc;n tạo v&agrave; c&acirc;y anh đ&agrave;o trong dự &aacute;n cũng như cảnh quan của Rừng Aydos. V&agrave; bởi v&igrave; kết nối dễ d&agrave;ng với c&aacute;c con đường ch&iacute;nh, bạn c&oacute; thể dễ d&agrave;ng đến c&aacute;c trung t&acirc;m quan trọng của Istanbul.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Sẵn s&agrave;ng giao nh&agrave;.<br />\r\n2. 82% diện t&iacute;ch l&agrave; cảnh quan.<br />\r\n3. Rừng Aydos nằm ngay cạnh dự &aacute;n.<br />\r\n4. Đ&atilde; b&agrave;n giao hơn 90% dự &aacute;n.<br />\r\n5. Dễ vận chuyển.</p>', 'Sancaktepe/İstanbul, Turkey'),
('vi', 6, 'Khu chung cư The Avila', 'Trong bán đảo lịch sử, có một khu vực rất đặc biệt, nơi bạn sẽ không bao giờ tìm thấy một khu vực tương tự. Cảnh biển độc đáo với kết cấu lịch sử của Istanbul. Trong cuộc sống thành phố nhộn nhịp, ở giữa mọi khả năng giao thông. Khu vực cảnh quan rộng lớn, quán cà phê, cơ hội mua sắm.', '<p>Một dự &aacute;n đặc biệt s&acirc;u sắc giữa lịch sử v&agrave; Istanbul. Ở trung t&acirc;m của b&aacute;n đảo lịch sử.&nbsp;<br />\r\nMột thẩm mỹ vượt thời gian l&agrave;m phong ph&uacute; trong c&aacute;c chi tiết ho&agrave;n hảo.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Trong b&aacute;n đảo lịch sử, c&oacute; một khu vực rất đặc biệt, nơi bạn sẽ kh&ocirc;ng bao giờ t&igrave;m thấy một khu vực tương tự.<br />\r\n2. Cảnh biển độc đ&aacute;o với kết cấu lịch sử của Istanbul.<br />\r\n3. Trong cuộc sống th&agrave;nh phố nhộn nhịp, ở giữa mọi khả năng giao th&ocirc;ng.<br />\r\n4. 1 + 1 đến 6 + 1 rất đặc biệt, ph&ugrave; hợp với mọi nhu cầu căn hộ g&aacute;c x&eacute;p<br />\r\n5. Khu vực cảnh quan rộng lớn, qu&aacute;n c&agrave; ph&ecirc;, cơ hội mua sắm.</p>', 'Singapore Island, Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `re_project_categories`
--

CREATE TABLE `re_project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_categories`
--

INSERT INTO `re_project_categories` (`id`, `project_id`, `category_id`) VALUES
(45, 3, 4),
(46, 5, 2),
(54, 1, 4),
(55, 2, 3),
(56, 4, 6),
(57, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_bedroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(5) UNSIGNED DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sale',
  `description` varchar(400) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `never_expired` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` varchar(25) DEFAULT NULL,
  `longitude` varchar(25) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `country_id` int(10) UNSIGNED DEFAULT 1,
  `state_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `views`, `country_id`, `state_id`) VALUES
(1, '3 Beds Villa Calpe, Alicante', '<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]', 6, 3, 3, 1, 600, 700000.00, NULL, 1, 'selling', '2019-11-17 20:34:59', '2021-12-09 21:25:32', 'sale', 'This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.', 1, 5, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.954366', '-76.204832', 0, 1, 1),
(2, 'Property For sale , Johannesburg, South Africa', '<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]', 6, 4, 4, 2, 800, 800000.00, NULL, 1, 'selling', '2019-11-17 20:53:34', '2021-12-09 21:25:32', 'sale', 'Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.', 1, 2, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.819483', '-76.703637', 0, 1, 1),
(3, 'Stunning French Inspired Manor', '<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 5, 4, 3, 1, 450, 1695000.00, NULL, 1, 'selling', '2019-11-17 21:09:55', '2021-12-09 21:24:36', 'sale', 'This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide', 1, 5, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.722299', '-75.466082', 0, 1, 1),
(4, 'Villa for sale at Bermuda Dunes', '<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 4, 4, 3, 1, 480, 1295000.00, NULL, 1, 'selling', '2019-11-17 21:18:11', '2021-12-09 21:25:32', 'sale', 'This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club', 1, 1, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.982274', '-76.182356', 0, 1, 1),
(5, 'Walnut Park Apartment', '<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>', 'North Lamar Boulevard, Austin, Texas 78753, USA', '[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]', 1, 2, 2, 1, 980, 2035.00, NULL, 1, 'renting', '2019-11-18 00:47:52', '2021-12-09 21:25:32', 'rent', 'Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda', 1, 1, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.669053', '-75.578469', 0, 1, 1),
(6, '5 beds luxury house', '<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 2, 5, 4, 3, 270, 1808.00, NULL, 1, 'renting', '2019-11-18 01:05:58', '2021-12-09 21:25:32', 'rent', 'Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate', 1, 1, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.946985', '-76.206616', 0, 1, 1),
(7, 'Family Victorian \"View\" Home', '<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]', 3, 3, 2, 1, 180, 2580.00, NULL, 1, 'renting', '2019-11-18 01:12:07', '2021-12-09 21:25:32', 'rent', 'There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t', 1, 1, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.819646', '-74.89512', 0, 1, 1),
(8, 'Osaka Heights Apartment', '<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 2, 2, 2, 1, 110, 150000.00, NULL, 1, 'selling', '2019-11-18 01:49:36', '2021-12-09 21:25:32', 'sale', 'Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.', 1, 5, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.928003', '-74.902172', 0, 1, 1),
(9, 'Private Estate Magnificent Views', '<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 2, 3, 1, 1, 2000, 694000.00, NULL, 1, 'selling', '2019-11-18 02:02:19', '2021-12-09 21:25:32', 'sale', 'Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater', 1, 5, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.812299', '-76.137607', 0, 1, 1),
(10, 'Thompsons Road House for rent', '<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 6, 3, 3, 1, 160, 1465.00, NULL, 1, 'renting', '2019-11-18 02:16:53', '2021-12-09 21:24:36', 'rent', 'Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage', 1, 3, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.601639', '-76.36969', 0, 1, 1),
(11, 'Brand New 1 Bedroom Apartment In First Class Location', '<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 5, 1, 1, 1, 80, 1680.00, NULL, 1, 'renting', '2019-11-18 02:22:48', '2021-12-09 21:25:32', 'rent', 'Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.', 1, 5, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.659611', '-76.197177', 0, 1, 1),
(12, 'Elegant family home presents premium modern living', '<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]', 6, 3, 3, 1, 658, 1574.00, NULL, 1, 'renting', '2019-11-18 02:47:05', '2021-12-09 21:24:36', 'rent', 'Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.', 1, 5, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.137361', '-76.539998', 0, 1, 1),
(13, 'Luxury Apartments in Singapore for Sale', '<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 6, 2, 2, 1, 78, 918000.00, NULL, 1, 'selling', '2019-11-18 07:23:02', '2023-11-14 00:18:25', 'sale', 'This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard', 1, 5, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.813772', '-76.615855', 2, 1, 1),
(14, '5 room luxury penthouse for sale in Kuala Lumpur', '<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 1, 5, 7, 20, 377, 1590000.00, NULL, 1, 'selling', '2019-11-18 07:36:29', '2021-12-09 21:25:32', 'sale', 'Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW', 1, 4, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.504328', '-76.341293', 0, 1, 1),
(15, '2 Floor house in Compound Pejaten Barat Kemang', '<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 1, 3, 2, 2, 200, 1400.00, NULL, 1, 'renting', '2019-11-18 07:44:44', '2021-12-09 21:25:32', 'rent', 'Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ', 1, 5, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.636294', '-76.116519', 0, 1, 1),
(16, 'Apartment Muiderstraatweg in Diemen', '<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 3, 3, 1, 2, 90, 2123.00, NULL, 1, 'renting', '2019-11-18 07:59:14', '2023-11-09 13:59:02', 'rent', 'Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.', 1, 3, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.52876', '-76.65882', 2, 1, 1),
(17, 'Nice Apartment for rent in Berlin', '<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 6, 1, 1, 1, 33, 1217.00, NULL, 1, 'renting', '2019-11-18 08:13:07', '2021-12-09 21:25:32', 'rent', 'Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.', 1, 5, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.222732', '-76.105523', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties_translations`
--

CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_properties_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties_translations`
--

INSERT INTO `re_properties_translations` (`lang_code`, `re_properties_id`, `name`, `description`, `content`, `location`) VALUES
('vi', 1, 'Bán biệt thự 3 phòng ngủ Calpe, Alicante', 'Biệt thự được trang bị đầy đủ tiện nghi. Ba phòng ngủ rộng rãi đều có lối đi thẳng ra sân thượng hồ bơi và phòng khách rộng rãi với nhà bếp kiểu Mỹ có thể nấu ăn, từ đó bạn có thể đi bộ lên sân thượng qua cửa kính lớn. Ở tầng dưới có một nhà để xe trong nhà, phòng giặt đồ với một cầu thang nội bộ đến nhà', '<p>Biệt thự được trang bị đầy đủ tiện nghi. Ba ph&ograve;ng ngủ rộng r&atilde;i đều c&oacute; lối đi thẳng ra s&acirc;n thượng hồ bơi v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i với nh&agrave; bếp kiểu Mỹ c&oacute; thể nấu ăn, từ đ&oacute; bạn c&oacute; thể đi bộ l&ecirc;n s&acirc;n thượng qua cửa k&iacute;nh lớn. Ở tầng dưới c&oacute; một nh&agrave; để xe trong nh&agrave;, ph&ograve;ng giặt đồ với một cầu thang nội bộ đến nh&agrave;. Nhưng bạn cũng c&oacute; thể l&aacute;i xe l&ecirc;n đến cửa trước bằng &ocirc; t&ocirc;. S&acirc;n thượng rộng r&atilde;i v&agrave; c&oacute; một bể bơi cực d&agrave;i, thoải m&aacute;i bơi lội. Xung quanh c&oacute; một khu vườn cảnh quan. H&atilde;y d&agrave;nh thời gian để tận hưởng tuyệt vời trong v&agrave; xung quanh biệt thự xinh đẹp n&agrave;y.</p>', 'Alicante, Spain'),
('vi', 2, 'Bán nhà tại Johannesburg, South Africa', 'Nhà đẹp. Nép mình trên một mỏm đá của những tảng đá khổng lồ, ngôi nhà độc đáo này là một chiến thắng kiến trúc được thiết kế để chuẩn độ các giác quan ngay từ đầu với một thác nước đổ xuống hồ thạch anh đen nóng bỏng và hồ cá koi tuyệt đẹp. Hương vị của Seychelles', '<p>Nh&agrave; đẹp. N&eacute;p m&igrave;nh tr&ecirc;n một mỏm đ&aacute; của những tảng đ&aacute; khổng lồ, ng&ocirc;i nh&agrave; độc đ&aacute;o n&agrave;y l&agrave; một chiến thắng kiến tr&uacute;c được thiết kế để chuẩn độ c&aacute;c gi&aacute;c quan ngay từ đầu với một th&aacute;c nước đổ xuống hồ thạch anh đen n&oacute;ng bỏng v&agrave; hồ c&aacute; koi tuyệt đẹp. Hương vị của Seychelles. Đường v&agrave;o nh&agrave; được bao phủ bởi c&acirc;y dương sỉ 2 b&ecirc;n h&agrave;nh lang. Ph&ograve;ng kh&aacute;ch rộng r&atilde;i với l&ograve; sưởi đốt củi tuyệt đẹp v&agrave; ph&ograve;ng ăn lớn c&oacute; th&ecirc;m quầy rượu, được thiết kế v&agrave; x&acirc;y dựng như những bức tường hầm rượu.</p>', 'Johannesburg, South Africa'),
('vi', 3, 'Nhà phong cách Pháp', 'Khu nhà này có 4 phòng ngủ, sấp sỉ 5,000sqft, 3 nhà tắm với nội thất trang nhã và rộng rãi bao gồm phòng khách và ăn uống chính thức, phòng và nhà bếp tuyệt vời, phòng thư viện lớn với quầy bar.\r\nHồ bơi cạnh vô cực tuyệt đẹp giống như lối vào bãi biển, thác nước và cầu trượt.', '<p>Trang vi&ecirc;n&nbsp;lấy cảm hứng từ Ph&aacute;p tuyệt đẹp nằm trong Briarwood Ranch gần Solvang ở trung t&acirc;m thung lũng Santa Ynez tr&aacute;ng lệ. Khu nh&agrave; n&agrave;y c&oacute; 4 ph&ograve;ng ngủ, sấp sỉ 5,000sqft, 3 nh&agrave; tắm với nội thất trang nh&atilde; v&agrave; rộng r&atilde;i bao gồm ph&ograve;ng kh&aacute;ch v&agrave; ăn uống ch&iacute;nh thức, ph&ograve;ng v&agrave; nh&agrave; bếp tuyệt vời, ph&ograve;ng thư viện lớn với quầy bar.<br />\r\nHồ bơi cạnh v&ocirc; cực tuyệt đẹp giống như lối v&agrave;o b&atilde;i biển, th&aacute;c nước v&agrave; cầu trượt, Cabana v&agrave; nh&agrave; bếp kết hợp quầy bar BBQ b&ecirc;n hồ bơi miễn ph&iacute;. Nh&agrave; để xe rộng r&atilde;i, rộng r&atilde;i, liền kề với ph&ograve;ng thủ c&ocirc;ng v&agrave; studio nghệ thuật lớn</p>', 'Solvang, Santa Barbara County, CA 93463, USA'),
('vi', 4, 'Nhà bán tại Bermuda Dunes', 'Ngôi nhà được xây dựng tùy chỉnh hiếm có và đặc biệt này nằm trên một khu đất ra mắt trong khu vực riêng, độc quyền của Castle Harbor. Khu nhà có dải cỏ rộng 360 bước chân, không chỉ có tầm nhìn tuyệt đẹp mà còn hoàn toàn riêng tư. Ngôi nhà nằm phía trên sân cỏ, để có thêm sự riêng tư, và nằm giữa các luồng thứ 5 và thứ 6 của Câu lạc bộ Quốc gia Bermuda Dunes danh tiếng', '<p>Ng&ocirc;i nh&agrave; được x&acirc;y dựng t&ugrave;y chỉnh hiếm c&oacute; v&agrave; đặc biệt n&agrave;y nằm tr&ecirc;n một khu đất ra mắt trong khu vực ri&ecirc;ng, độc quyền của Castle Harbor. Khu nh&agrave; c&oacute; dải cỏ rộng 360 bước ch&acirc;n, kh&ocirc;ng chỉ c&oacute; tầm nh&igrave;n tuyệt đẹp m&agrave; c&ograve;n ho&agrave;n to&agrave;n ri&ecirc;ng tư. Ng&ocirc;i nh&agrave; nằm ph&iacute;a tr&ecirc;n s&acirc;n cỏ, để c&oacute; th&ecirc;m sự ri&ecirc;ng tư, v&agrave; nằm giữa c&aacute;c luồng thứ 5 v&agrave; thứ 6 của C&acirc;u lạc bộ Quốc gia Bermuda Dunes danh tiếng. Cửa ra v&agrave;o bằng k&iacute;nh được đưa bạn v&agrave;o một lối v&agrave;o Đ&aacute; cẩm thạch &Yacute; tuyệt đẹp bao gồm to&agrave;n bộ h&agrave;nh lang v&agrave; ph&ograve;ng kh&aacute;ch với một l&ograve; sưởi. Ph&ograve;ng lớn rộng lớn, với trần nh&agrave; cao l&ecirc;n, thu h&uacute;t hồ bơi, s&acirc;n g&ocirc;n, hồ nước v&agrave; hướng nam năng động, cảnh n&uacute;i non. C&oacute; một thư viện đ&aacute;ng y&ecirc;u được x&acirc;y dựng tr&ecirc;n c&aacute;c kệ tr&ecirc;n một bức tường. C&oacute; một qu&aacute;n bar m&aacute;t mẻ, với s&agrave;n l&aacute;t đ&aacute; cẩm thạch của &Yacute;, cung cấp tầm nh&igrave;n ra s&acirc;n g&ocirc;n v&agrave; những ngọn n&uacute;i xung quanh.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA'),
('vi', 5, 'Căn hộ Walnut Park', 'Khu rừng rậm rạp với những ngọn cây dài 30 feet nhìn xuống. Walnut Creek tuyệt đẹp.\r\nVị trí thuận tiện trên North Lamar gần nhiều cửa hàng, doanh nghiệp và nhà hàng.\r\nDễ dàng truy cập I-35 và một khoảng cách ngắn đến US-183 và SH-45 Có câu lạc bộ thanh lịch với nhà bếp đầy đủ, khu vực quầy bar, khu vực thư giãn và hiên nhìn ra thung lũng.', '<p>Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ nhiều c&acirc;y cối rậm rạp gi&aacute;p Walnut Creek v&agrave; tạo cho người d&acirc;n cảm hứng trong một cộng đồng đẳng cấp ri&ecirc;ng biệt.<br />\r\nKhu rừng rậm rạp với những ngọn c&acirc;y d&agrave;i 30 feet nh&igrave;n xuống. Walnut Creek tuyệt đẹp.<br />\r\nVị tr&iacute; thuận tiện tr&ecirc;n North Lamar gần nhiều cửa h&agrave;ng, doanh nghiệp v&agrave; nh&agrave; h&agrave;ng.<br />\r\nDễ d&agrave;ng truy cập I-35 v&agrave; một khoảng c&aacute;ch ngắn đến US-183 v&agrave; SH-45 C&oacute; c&acirc;u lạc bộ thanh lịch với nh&agrave; bếp đầy đủ, khu vực quầy bar, khu vực thư gi&atilde;n v&agrave; hi&ecirc;n nh&igrave;n ra thung lũng.<br />\r\nTrung t&acirc;m thể dục được trang bị đầy đủ 24 giờ với tủ kh&oacute;a v&agrave; khu vực thay đồ.<br />\r\nSpa trong nh&agrave; với th&aacute;c nước, ph&ograve;ng tắm hơi v&agrave; ph&ograve;ng x&ocirc;ng hơi tuyết t&ugrave;ng.<br />\r\nNh&agrave; bếp rộng r&atilde;i, s&agrave;nh điệu với mặt đ&aacute; granite v&agrave; ốp lưng.<br />\r\nThiết bị bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; phạm vi kh&iacute; đốt tự nhi&ecirc;n.<br />\r\nThiết kế tủ gỗ cứng với &aacute;nh s&aacute;ng dưới tủ</p>', 'North Lamar Boulevard, Austin, Texas, USA'),
('vi', 6, 'Cho thuê nhà cao cấp 5 phòng ngủ', 'Ngôi nhà được tu sửa sang trọng và rộng rãi ở Sea Cliff với 3 tầng, 5 phòng ngủ và 4 phòng tắm, và Golden Gate View. Gara ô tô 4 chỗ. Ngôi nhà được tu sửa và rộng rãi với bố cục tuyệt vời, và được cung cấp nội thất. Nó quyến rũ và xinh đẹp với nhiều chi tiết, có cảnh quan phía trước chu đáo và sân sau rộng và sân trong, và có một cái nhìn tuyệt vời về Cổng Vàng', '<p>Ng&ocirc;i nh&agrave; được tu sửa sang trọng v&agrave; rộng r&atilde;i ở Sea Cliff với 3 tầng, 5 ph&ograve;ng ngủ v&agrave; 4 ph&ograve;ng tắm, v&agrave; Golden Gate View. Gara &ocirc; t&ocirc; 4 chỗ. Ng&ocirc;i nh&agrave; được tu sửa v&agrave; rộng r&atilde;i với bố cục tuyệt vời, v&agrave; được cung cấp nội thất. N&oacute; quyến rũ v&agrave; xinh đẹp với nhiều chi tiết, c&oacute; cảnh quan ph&iacute;a trước chu đ&aacute;o v&agrave; s&acirc;n sau rộng v&agrave; s&acirc;n trong, v&agrave; c&oacute; một c&aacute;i nh&igrave;n tuyệt vời về Cổng V&agrave;ng. Ở cấp độ ch&iacute;nh, lối v&agrave;o mở ra một sảnh lớn kết nối với ph&ograve;ng kh&aacute;ch đẹp v&agrave; rộng c&oacute; l&ograve; sưởi v&agrave; ph&ograve;ng ăn trang trọng.<br />\r\n<br />\r\nNg&ocirc;i nh&agrave; c&oacute; một nh&agrave; để xe c&oacute; thể chứa 3 đến 4 xe hơi. Ng&ocirc;i nh&agrave; được cung cấp nội thất. C&oacute; thể được cho thu&ecirc; ngắn hạn hoặc d&agrave;i hạn. Thời hạn thu&ecirc; tối thiểu l&agrave; 3 th&aacute;ng.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA'),
('vi', 7, 'Cho thuê nhà view đẹp', 'Có một phòng ăn chính thức và phòng khách rộng rãi nằm ở hai bên của giếng trời nhà bếp được cập nhật, tủ màu trắng và các thiết bị bằng thép không gỉ. Tận hưởng ánh sáng tự nhiên rộng rãi và quang cảnh phía nam ngoạn mục từ các cửa sổ lớn của phòng khách chính và sàn đi bộ. Một phòng thưởng (phòng ngủ cho khách / văn phòng) và phòng tắm đầy đủ.', '<p>C&oacute; một ph&ograve;ng ăn ch&iacute;nh thức v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i nằm ở hai b&ecirc;n của giếng trời nh&agrave; bếp được cập nhật, tủ m&agrave;u trắng v&agrave; c&aacute;c thiết bị bằng th&eacute;p kh&ocirc;ng gỉ. Tận hưởng &aacute;nh s&aacute;ng tự nhi&ecirc;n rộng r&atilde;i v&agrave; quang cảnh ph&iacute;a nam ngoạn mục từ c&aacute;c cửa sổ lớn của ph&ograve;ng kh&aacute;ch ch&iacute;nh v&agrave; s&agrave;n đi bộ. Một ph&ograve;ng thưởng (ph&ograve;ng ngủ cho kh&aacute;ch / văn ph&ograve;ng) v&agrave; ph&ograve;ng tắm đầy đủ.</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA'),
('vi', 8, 'Bán căn hộ Osaka Heights', 'Sàn lát gạch men, mặt bàn đá granite, chậu rửa bát inox đơn có bảng thoát nước và các quy định cho máy lọc nước, máy hút mùi điện, quạt hút sẽ được cung cấp. Gạch chống trượt trên sàn và gạch ốp tường có chiều cao lên đến 7 feet. Phụ kiện vệ sinh thương hiệu màu trắng, vòi mạ crom, hệ thống ống nước che giấu.', '<p><strong>Ph&ograve;ng bếp</strong><br />\r\nS&agrave;n l&aacute;t gạch men, mặt b&agrave;n đ&aacute; granite, chậu rửa b&aacute;t inox đơn c&oacute; bảng tho&aacute;t nước v&agrave; c&aacute;c quy định cho m&aacute;y lọc nước, m&aacute;y h&uacute;t m&ugrave;i điện, quạt h&uacute;t sẽ được cung cấp</p>\r\n\r\n<p><strong>Nh&agrave; vệ sinh</strong><br />\r\nGạch chống trượt tr&ecirc;n s&agrave;n v&agrave; gạch ốp tường c&oacute; chiều cao l&ecirc;n đến 7 feet. Phụ kiện vệ sinh thương hiệu m&agrave;u trắng, v&ograve;i mạ crom, hệ thống ống nước che giấu</p>\r\n\r\n<p><strong>Cửa ra v&agrave;o</strong><br />\r\nCửa ch&iacute;nh sẽ l&agrave; cửa gỗ chất lượng cao, cửa b&ecirc;n trong chất lượng cao cấp Windows c&oacute; khung gỗ, cửa trượt bằng nhựa UPVC hoặc nh&ocirc;m v&agrave; khung nh&ocirc;m c&oacute; k&iacute;nh cho cửa sổ</p>\r\n\r\n<p>9 km đến lối v&agrave;o đường cao tốc s&acirc;n bay Katunayaka</p>\r\n\r\n<p>12 km đến lối v&agrave;o đường cao tốc ph&iacute;a Nam tại Kottawa</p>\r\n\r\n<p>2 km đến bệnh viện đa khoa Kalubowila</p>\r\n\r\n<p>Tất cả c&aacute;c ng&acirc;n h&agrave;ng h&agrave;ng đầu trong v&ograve;ng v&agrave;i km b&aacute;n k&iacute;nh</p>\r\n\r\n<p>Rất gần c&aacute;c ga đường sắt</p>\r\n\r\n<p>Nhiều trường h&agrave;ng đầu bao gồm CIS trong b&aacute;n k&iacute;nh 5 km</p>', 'High Level Road, Colombo 06, Sri Lanka'),
('vi', 9, 'Bán nhà chính chủ Magnificent View', 'Nhà rộng rãi 3 phòng ngủ, sáng sủa với lối vào sảnh. Phòng tắm nắng, nhà bếp / phòng ăn / phòng khách có không gian mở với trần lót gỗ tuyết tùng, nhà bếp với tủ gỗ oregon và lò nướng Smeg mới. Máy lạnh & máy sưởi gỗ', '<p>Nh&agrave; rộng r&atilde;i 3 ph&ograve;ng ngủ, s&aacute;ng sủa với lối v&agrave;o sảnh. Ph&ograve;ng tắm nắng, nh&agrave; bếp / ph&ograve;ng ăn / ph&ograve;ng kh&aacute;ch c&oacute; kh&ocirc;ng gian mở với trần l&oacute;t gỗ tuyết t&ugrave;ng, nh&agrave; bếp với tủ gỗ oregon v&agrave; l&ograve; nướng Smeg mới. M&aacute;y lạnh &amp; m&aacute;y sưởi gỗ<br />\r\nPh&ograve;ng ngủ k&iacute;ch thước tốt v&agrave; ph&ograve;ng ngủ ch&iacute;nh với spa nh&igrave;n ra khu vườn y&ecirc;n tĩnh v&agrave; lối v&agrave;o.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia'),
('vi', 10, 'Cho thuê nhà trên đường Thompsons', 'Nằm ở vị trí hoàn hảo trong vùng ngoại ô độc quyền của Bulleen, ngôi nhà 3 phòng ngủ được cải tạo này mang đến một lối sống tuyệt vời cho những người tìm kiếm tất cả các tiện nghi, sự riêng tư, thuận tiện cho đường cao tốc & giao thông, và không gian.\r\nBạn được chào đón bởi một khu vườn phía trước đẹp, ít bảo trì và được thiết lập, với bãi đậu xe rộng rãi, một hiên nhà cao và nhà để xe lớn tantum', '<p>Nằm ở vị tr&iacute; ho&agrave;n hảo trong v&ugrave;ng ngoại &ocirc; độc quyền của Bulleen, ng&ocirc;i nh&agrave; 3 ph&ograve;ng ngủ được cải tạo n&agrave;y mang đến một lối sống tuyệt vời cho những người t&igrave;m kiếm tất cả c&aacute;c tiện nghi, sự ri&ecirc;ng tư, thuận tiện cho đường cao tốc &amp; giao th&ocirc;ng, v&agrave; kh&ocirc;ng gian.<br />\r\nBạn được ch&agrave;o đ&oacute;n bởi một khu vườn ph&iacute;a trước đẹp, &iacute;t bảo tr&igrave; v&agrave; được thiết lập, với b&atilde;i đậu xe rộng r&atilde;i, một hi&ecirc;n nh&agrave; cao v&agrave; nh&agrave; để xe lớn tantum. B&ecirc;n trong, bạn sẽ t&igrave;m thấy một bảng m&agrave;u trung t&iacute;nh đ&aacute;ng y&ecirc;u v&agrave; gần s&agrave;n gỗ mới lấp l&aacute;nh. C&oacute; ba ph&ograve;ng ngủ rộng r&atilde;i, tất cả đều được x&acirc;y dựng với &aacute;o cho&agrave;ng, được phục vụ bởi ph&ograve;ng tắm gia đ&igrave;nh trung t&acirc;m v&agrave; ph&ograve;ng bột ri&ecirc;ng biệt, c&ugrave;ng với một ph&ograve;ng kh&aacute;ch rộng mở v&agrave; ph&ograve;ng ăn trang trọng rạng rỡ với &aacute;nh s&aacute;ng tự nhi&ecirc;n. Nh&agrave; bếp tuyệt đẹp đi k&egrave;m với c&aacute;c thiết bị Blanco, quầy bar ăn s&aacute;ng v&agrave; c&aacute;c phụ kiện v&agrave; đồ đạc chất lượng h&agrave;ng đầu.</p>', 'Thompsons Road, Bulleen VIC, Australia'),
('vi', 11, 'Căn hộ 1 phòng ngủ hoàn toàn mới ở vị trí hạng nhất', 'Nằm phía sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: làng Battery Point sôi động, Salamanca Place (khu giải trí hàng đầu của Tasmania), Trung tâm thành phố, Đại học Tasmania, khách sạn, bán lẻ và dễ dàng đi bộ từ các cửa hàng Sandy Bay nhộn nhịp, trường học địa phương và với giao thông công cộng bên ngoài cửa trước của bạn.', '<p>Nằm ph&iacute;a sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: l&agrave;ng Battery Point s&ocirc;i động, Salamanca Place (khu giải tr&iacute; h&agrave;ng đầu của Tasmania), Trung t&acirc;m th&agrave;nh phố, Đại học Tasmania, kh&aacute;ch sạn, b&aacute;n lẻ v&agrave; dễ d&agrave;ng đi bộ từ c&aacute;c cửa h&agrave;ng Sandy Bay nhộn nhịp, trường học địa phương v&agrave; với giao th&ocirc;ng c&ocirc;ng cộng b&ecirc;n ngo&agrave;i cửa trước của bạn.<br />\r\nXin lưu &yacute;: Người cao tuổi Brown v&agrave; Ng&acirc;n h&agrave;ng kh&ocirc;ng chấp nhận đơn đăng k&yacute; từ những người nộp đơn chưa kiểm tra t&agrave;i sản trong nội bộ.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia'),
('vi', 12, 'Nhà cao cấp thanh lịch', 'Dọn vào ở ngay, ngôi nhà bốn phòng ngủ được trình bày đẹp mắt này và tận hưởng những điều tốt nhất trong cuộc sống gia đình hiện đại không cần trang bị tu sửa gì thêm. Hai khu vực sinh hoạt riêng biệt và bốn phòng ngủ rộng rãi cung cấp nhiều không gian để phát triển, và giải trí là một niềm vui thực sự trên sân hiên thanh lịch trong một khung cảnh vườn yên bình', '<p>Dọn v&agrave;o ở ngay, ng&ocirc;i nh&agrave; bốn ph&ograve;ng ngủ được tr&igrave;nh b&agrave;y đẹp mắt n&agrave;y v&agrave; tận hưởng những điều tốt nhất trong cuộc sống gia đ&igrave;nh hiện đại kh&ocirc;ng cần trang bị tu sửa g&igrave; th&ecirc;m. Hai khu vực sinh hoạt ri&ecirc;ng biệt v&agrave; bốn ph&ograve;ng ngủ rộng r&atilde;i cung cấp nhiều kh&ocirc;ng gian để ph&aacute;t triển, v&agrave; giải tr&iacute; l&agrave; một niềm vui thực sự tr&ecirc;n s&acirc;n hi&ecirc;n thanh lịch trong một khung cảnh vườn y&ecirc;n b&igrave;nh. Ng&ocirc;i nh&agrave; l&yacute; tưởng đặt khoảng c&aacute;ch đi bộ đến c&ocirc;ng vi&ecirc;n v&agrave; trạm dừng xe bu&yacute;t, những khoảnh khắc bạn chọn trường v&agrave; chỉ v&agrave;i ph&uacute;t đến Westfield North Lakes.</p>', 'North Lakes QLD 4509, Australia'),
('vi', 13, 'Cần bán căn hộ cao cấp tại Singapore', 'Căn hộ này nằm ở Singapore, tầng cao, gia đình Trung Quốc, khu vườn Trên Mây, sân thượng đẹp với Jaccuzzi và phòng ăn Alfresco, được cải tạo với chất lượng hoàn thiện, gần Tiện nghi, rất nhiều quán ăn, 5 phút đi bộ đến NTUC / Shaw Plaza, chỉ mất vài phút lái xe đến đại lộ', '<p>Căn hộ n&agrave;y nằm ở Singapore, nơi đ&atilde; trở th&agrave;nh một trung t&acirc;m sống thoải m&aacute;i cho người sống, cung cấp cả lợi nhuận hấp dẫn cho c&aacute;c nh&agrave; đầu tư v&agrave; ph&iacute; bảo hiểm cao.<br />\r\n- Tầng cao<br />\r\n- Gia đ&igrave;nh trung quốc<br />\r\n- Khu vườn Tr&ecirc;n M&acirc;y<br />\r\n- S&acirc;n thượng đẹp với Jaccuzzi v&agrave; Ph&ograve;ng ăn Alfresco<br />\r\n- Được cải tạo với chất lượng ho&agrave;n thiện<br />\r\n- Gần Tiện nghi<br />\r\n- Rất nhiều qu&aacute;n ăn.<br />\r\n- 5 ph&uacute;t đi bộ đến NTUC / Shaw Plaza<br />\r\n- Chỉ mất v&agrave;i ph&uacute;t l&aacute;i xe đến đại lộ</p>', 'Balestier Road, Singapore'),
('vi', 14, 'Cần bán căn hộ cao cấp 5 phòng tại Kuala Lumpur', 'Kế bên khách sạn 5 sao St Regis\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)\r\nPhòng chờ trên tầng thượng, hồ bơi ngoài trời, phòng tập thể dục ngoài trời, View KLCC và Lake Garden', '<p>The Sentral Residence (CONDO LUXURY MỚI)</p>\r\n\r\n<p>Kế b&ecirc;n&nbsp;kh&aacute;ch sạn 5 sao St Regis<br />\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)<br />\r\nPh&ograve;ng chờ tr&ecirc;n tầng thượng, hồ bơi ngo&agrave;i&nbsp;trời, ph&ograve;ng tập thể dục ngo&agrave;i&nbsp;trời<br />\r\n-Private n&acirc;ng sảnh để sở hữu đơn vị</p>\r\n\r\n<p>ĐƠN VỊ PREMIUM EPIC LUXE<br />\r\n(View KLCC v&agrave;&nbsp;Lake Garden)</p>\r\n\r\n<p>Đơn vị lớn nhất tại Sentral Residence</p>', 'Kuala Lumpur, Malaysia'),
('vi', 15, 'Nhà 2 tầng tại Compound Pejaten Barat Kemang', 'Muốn cho thuê một ngôi nhà đẹp trong khu phức hợp. Được cải tạo, theo phong cách Bali, khu nhà ấm cúng và thoải mái 220/300, 3 phòng ngủ, 2 phòng tắm, sân vườn được cải tạo: hồ bơi, khu đánh tenis, đường chạy bộ 24 giờ giá thuê an ninh: 250.000 IDR. 000 / năm', '<p>Muốn cho thu&ecirc; một ng&ocirc;i nh&agrave; đẹp trong khu phức hợp. Được cải tạo, theo phong c&aacute;ch Bali, khu nh&agrave; ấm c&uacute;ng v&agrave; thoải m&aacute;i 220/300, 3 ph&ograve;ng ngủ, 2 ph&ograve;ng tắm, s&acirc;n vườn được cải tạo: hồ bơi, khu đ&aacute;nh tenis, đường chạy bộ 24 giờ gi&aacute; thu&ecirc; an ninh: 250.000 IDR. 000 / năm</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia'),
('vi', 16, 'Căn hộ Muiderstraatweg ở Diemen', 'Căn hộ hiện đại đáng yêu và được bảo trì rất tốt ở Diemen.\r\nNhà khách nằm ở tầng một, nơi bạn sẽ tìm thấy phòng khách và nhà bếp với tất cả các tiện nghi hiện đại.\r\nTrên tầng hai, 2 phòng ngủ và một phòng tắm đẹp với vòi sen và bồn tắm riêng biệt.\r\nTrên tầng này bạn có quyền ra vào sân thượng nhỏ.', '<p>Cho thu&ecirc; căn hộ 3 ph&ograve;ng ngủ đầy đủ nội thất ở Diemen.<br />\r\nRất th&iacute;ch hợp cho một cặp vợ chồng&nbsp;hoặc tối đa 2 người chia sẻ l&agrave;m việc, kh&ocirc;ng bị kiểm so&aacute;t bởi chủ nh&agrave;</p>\r\n\r\n<p>Căn hộ hiện đại đ&aacute;ng y&ecirc;u v&agrave; được bảo tr&igrave; rất tốt ở Diemen.<br />\r\nNh&agrave; kh&aacute;ch&nbsp;nằm ở tầng một, nơi bạn sẽ t&igrave;m thấy ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; bếp với tất cả c&aacute;c tiện nghi hiện đại.<br />\r\nTr&ecirc;n tầng hai, 2 ph&ograve;ng ngủ v&agrave; một ph&ograve;ng tắm đẹp với v&ograve;i sen v&agrave; bồn tắm ri&ecirc;ng biệt.<br />\r\nTr&ecirc;n tầng n&agrave;y bạn c&oacute; quyền ra v&agrave;o s&acirc;n thượng nhỏ.<br />\r\nCuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng l&agrave; một ph&ograve;ng g&aacute;c m&aacute;i rộng r&atilde;i tr&ecirc;n tầng ba.<br />\r\nXe điện dừng trước cửa v&agrave; trong v&ograve;ng 20 ph&uacute;t, bạn sẽ ở trung t&acirc;m của Amsterdam.<br />\r\nTh&uacute; cưng kh&ocirc;ng được ph&eacute;p nu&ocirc;i.</p>', 'Diemen, Netherlands'),
('vi', 17, 'Căn hộ đẹp cho thuê ở Berlin', 'Căn hộ đầy đủ nội thất, với các tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nhà. Một điểm khởi đầu tuyệt vời để khám phá phần còn lại của thành phố và nhiều viên ngọc ẩn của nó. Khu vực Ở trung tâm của Đông Berlin, bạn sẽ tìm thấy mọi thứ, từ những món ăn đường phố ngon đến những khu chợ trời, đến những nhà hàng cao cấp.', '<p>Căn hộ đầy đủ nội thất, với c&aacute;c tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nh&agrave;. Một điểm khởi đầu tuyệt vời để kh&aacute;m ph&aacute; phần c&ograve;n lại của th&agrave;nh phố v&agrave; nhiều vi&ecirc;n ngọc ẩn của n&oacute;. Khu vực Ở trung t&acirc;m của Đ&ocirc;ng Berlin, bạn sẽ t&igrave;m thấy mọi thứ, từ những m&oacute;n ăn đường phố ngon đến những khu chợ trời, đến những nh&agrave; h&agrave;ng cao cấp.<br />\r\nTrong nh&agrave; c&oacute;&nbsp;một chiếc giường cỡ Queen, nh&agrave; bếp đầy đủ tiện nghi, ph&ograve;ng tắm ri&ecirc;ng biệt với v&ograve;i sen kh&ocirc;ng cửa v&agrave; khu vực học tập khi sinh vi&ecirc;n tận tụy thức dậy. Một số ph&ograve;ng c&oacute; tầm nh&igrave;n tuyệt vời, số kh&aacute;c c&oacute; ban c&ocirc;ng đẹp v&agrave; ấm c&uacute;ng.</p>', 'Berlin, Germany');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_categories`
--

CREATE TABLE `re_property_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_categories`
--

INSERT INTO `re_property_categories` (`id`, `property_id`, `category_id`) VALUES
(111, 13, 5),
(156, 1, 1),
(162, 8, 6),
(164, 10, 5),
(169, 17, 4),
(182, 2, 1),
(183, 3, 5),
(184, 4, 6),
(185, 5, 6),
(186, 6, 3),
(187, 7, 5),
(188, 9, 2),
(189, 11, 5),
(190, 12, 2),
(191, 14, 5),
(192, 15, 5),
(193, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(14, 11),
(14, 12),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(19, 11),
(19, 12),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(21, 11),
(21, 12),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(22, 11),
(22, 12),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(26, 11),
(26, 12),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(29, 8),
(29, 9),
(29, 10),
(29, 11),
(29, 12),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 11),
(31, 12),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 11),
(34, 12);

-- --------------------------------------------------------

--
-- Table structure for table `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'Demo', '{\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true}', 'Test', 0, 1, 1, '2021-01-03 17:23:52', '2021-01-03 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-01-03 17:24:01', '2021-01-03 17:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(11, 'admin_email', '[]', NULL, NULL),
(12, 'time_zone', 'UTC', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'Luxe Lagoon Estate', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-flex-home-site_title', 'Luxe Lagoon Estate', NULL, NULL),
(30, 'theme-flex-home-show_site_name', '', NULL, NULL),
(33, 'theme-flex-home-copyright', '© 2020 Luxe Lagoon Estate is Proudly Powered by  Team', NULL, NULL),
(37, 'theme-flex-home-logo', 'lux-elogon-n.png', NULL, NULL),
(40, 'theme-flex-home-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-flex-home-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-flex-home-hotline', '18006268', NULL, NULL),
(45, 'theme-flex-home-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(46, 'theme-flex-home-email', 'contact@luxelagoonestate.com', NULL, NULL),
(49, 'theme-flex-home-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2020-09-23 12:52:41', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-flex-home-seo_title', 'Luxe Lagoon Estate', NULL, NULL),
(85, 'theme-flex-home-vi-site_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(86, 'theme-flex-home-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-flex-home-vi-seo_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(90, 'theme-flex-home-vi-copyright', '© 2020 Flex Home là một sản phẩm về lĩnh vực bất động sản của Botble Team', NULL, NULL),
(91, 'theme-flex-home-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-flex-home-vi-address', 'Tòa nhà North Link, Đường 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-flex-home-vi-email', 'contact@flex-home.com', NULL, NULL),
(95, 'theme-flex-home-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-flex-home-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-flex-home-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-flex-home-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-flex-home-favicon', 'lux-elogon-n.png', NULL, NULL),
(143, 'theme-flex-home-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-flex-home-seo_description', 'Find your favorite homes at Luxe Lagoon Estate', NULL, NULL),
(149, 'theme-flex-home-about-us', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Luxe Lagoon Estate operates in the field of real estate business, building villas for rent.\r\n\r\nSlogan \"Breaking time, through space\".', NULL, NULL),
(150, 'theme-flex-home-home_project_description', 'We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more', NULL, NULL),
(151, 'theme-flex-home-home_description_for_properties_by_locations', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(152, 'theme-flex-home-home_description_for_news', 'Below is the latest real estate news we get regularly updated from reliable sources.', NULL, NULL),
(153, 'theme-flex-home-vi-seo_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(154, 'theme-flex-home-vi-about-us', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. \nPhương châm  “Đánh bật thời gian, xuyên qua không gian\"', NULL, NULL),
(155, 'theme-flex-home-vi-home_project_description', 'Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot và uy tín bậc nhất hiện nay, hãy truy cập vào thông tin chi tiết bên dưới để tìm hiểu thêm nhé.', NULL, NULL),
(156, 'theme-flex-home-vi-home_description_for_properties_by_locations', 'Mỗi căn hộ là một lựa chọn tốt, nó sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những căn hộ tuyệt vời của chúng tôi.', NULL, NULL),
(157, 'theme-flex-home-vi-home_description_for_news', 'Bên dưới đây là những tin tức mới nhất về lĩnh vực bất động sản được chúng tôi cập nhật thường xuyên từ những nguồn tin đáng tin cậy.', NULL, NULL),
(167, 'theme-flex-home-primary_font', 'Poppins', NULL, NULL),
(168, 'theme-flex-home-twitter', '', NULL, NULL),
(169, 'theme-flex-home-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-flex-home-number_of_featured_cities', '10', NULL, NULL),
(171, 'theme-flex-home-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-flex-home-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-flex-home-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-flex-home-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-flex-home-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-flex-home-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-flex-home-properties_description', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(178, 'theme-flex-home-home_description_for_properties_for_sale', 'Below is a list of properties that are currently up for sale', NULL, NULL),
(179, 'theme-flex-home-home_description_for_properties_for_rent', 'Below is a detailed price list of each property for rent', NULL, NULL),
(196, 'theme-flex-home-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-flex-home-home_banner_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(198, 'theme-flex-home-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-flex-home-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-flex-home-vi-twitter', '', NULL, NULL),
(201, 'theme-flex-home-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-flex-home-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-flex-home-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-flex-home-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-flex-home-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-flex-home-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-flex-home-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-flex-home-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-flex-home-vi-home_banner_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(210, 'theme-flex-home-vi-properties_description', '', NULL, NULL),
(211, 'theme-flex-home-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-flex-home-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-flex-home-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Cash on delivery (COD)', NULL, NULL),
(216, 'payment_cod_status', '1', NULL, NULL),
(217, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-flex-home-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-flex-home-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-flex-home-vi-primary_color_hover', '#063A5D', NULL, NULL),
(224, 'theme-flex-home-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-flex-home-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-flex-home-vi-cookie_consent_enable', 'yes', NULL, NULL),
(229, 'theme-flex-home-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-flex-home-seo_og_image', '', NULL, NULL),
(231, 'theme-flex-home-primary_color', '#1D5F6F', NULL, NULL),
(232, 'theme-flex-home-primary_color_hover', '#063A5D', NULL, NULL),
(234, 'theme-flex-home-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-flex-home-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-flex-home-cookie_consent_enable', 'yes', NULL, NULL),
(239, 'theme-flex-home-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(270, 'activated_plugins', '[\"language\",\"language-advanced\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"translation\",\"analytics\",\"paypal\",\"stripe\"]', NULL, NULL),
(285, 'theme', 'flex-home', NULL, NULL),
(296, 'theme-flex-home-vi-homepage_id', '1', NULL, NULL),
(297, 'theme-flex-home-vi-blog_page_id', '2', NULL, NULL),
(391, 'language_hide_default', '1', NULL, NULL),
(392, 'language_switcher_display', 'dropdown', NULL, NULL),
(393, 'language_display', 'all', NULL, NULL),
(394, 'language_hide_languages', '[]', NULL, NULL),
(395, 'media_random_hash', 'a07c138f200e77fcfc67b25d74745ae7', NULL, NULL),
(400, 'theme-flex-home-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(401, 'theme-flex-home-cookie_consent_learn_more_url', 'http://flex-home.test/cookie-policy', NULL, NULL),
(402, 'theme-flex-home-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(403, 'theme-flex-home-homepage_id', '1', NULL, NULL),
(404, 'theme-flex-home-blog_page_id', '2', NULL, NULL),
(405, 'theme-flex-home-home_banner', 'general/home-banner.jpg', NULL, NULL),
(406, 'theme-flex-home-breadcrumb_background', 'general/breadcrumb-background.jpg', NULL, NULL),
(407, 'theme-flex-home-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(408, 'theme-flex-home-vi-cookie_consent_learn_more_url', 'http://flex-home.test/cookie-policy', NULL, NULL),
(409, 'theme-flex-home-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(410, 'theme-flex-home-vi-home_banner', 'general/home-banner.jpg', NULL, NULL),
(411, 'theme-flex-home-vi-breadcrumb_background', 'general/breadcrumb-background.jpg', NULL, NULL),
(413, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(414, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(415, 'admin_logo', 'lux-elogon-n.png', NULL, NULL),
(416, 'admin_favicon', 'logo/favicon.png', NULL, NULL),
(417, 'theme-flex-home-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(418, 'theme-flex-home-admin_logo', 'logo/logo-white.png', NULL, NULL),
(419, 'is_completed_get_started', '1', NULL, NULL),
(420, 'theme-flex-home-enable_sticky_header', 'yes', NULL, NULL),
(421, 'theme-flex-home-show_map_on_properties_page', 'yes', NULL, NULL),
(422, 'theme-flex-home-facebook_chat_enabled', 'no', NULL, NULL),
(423, 'theme-flex-home-facebook_page_id', '', NULL, NULL),
(424, 'theme-flex-home-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(425, 'theme-flex-home-facebook_comment_enabled_in_property', 'no', NULL, NULL),
(426, 'theme-flex-home-facebook_comment_enabled_in_project', 'no', NULL, NULL),
(427, 'theme-flex-home-facebook_app_id', '', NULL, NULL),
(428, 'theme-flex-home-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(429, 'theme-flex-home-enable_search_projects_on_homepage_search', 'yes', NULL, NULL),
(430, 'theme-flex-home-default_home_search_type', 'project', NULL, NULL),
(431, 'theme-flex-home-cookie_consent_style', 'full-width', NULL, NULL),
(432, 'theme-flex-home-cookie_consent_background_color', '#000000', NULL, NULL),
(433, 'theme-flex-home-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(434, 'theme-flex-home-cookie_consent_max_width', '1170', NULL, NULL),
(435, 'locale_direction', 'ltr', NULL, NULL),
(436, 'login_screen_backgrounds', '[]', NULL, NULL),
(437, 'optimize_collapse_white_space', '0', NULL, NULL),
(438, 'optimize_elide_attributes', '0', NULL, NULL),
(439, 'optimize_inline_css', '0', NULL, NULL),
(440, 'optimize_insert_dns_prefetch', '0', NULL, NULL),
(441, 'optimize_remove_comments', '0', NULL, NULL),
(442, 'optimize_trim_urls', '0', NULL, NULL),
(443, 'optimize_remove_quotes', '0', NULL, NULL),
(444, 'optimize_defer_javascript', '0', NULL, NULL),
(445, 'google_site_verification', '', NULL, NULL),
(446, 'enable_cache_site_map', '1', NULL, NULL),
(447, 'redirect_404_to_homepage', '0', NULL, NULL),
(448, 'blacklist_keywords', '', NULL, NULL),
(449, 'blacklist_email_domains', '', NULL, NULL),
(450, 'enable_math_captcha_for_contact_form', '0', NULL, NULL),
(451, 'google_analytics', '', NULL, NULL),
(452, 'analytics_view_id', '', NULL, NULL),
(453, 'analytics_service_account_credentials', '', NULL, NULL),
(454, 'blog_post_schema_enabled', '1', NULL, NULL),
(455, 'blog_post_schema_type', 'NewsArticle', NULL, NULL),
(456, 'captcha_type', 'v2', NULL, NULL),
(457, 'captcha_hide_badge', '0', NULL, NULL),
(458, 'locale', 'en', NULL, NULL),
(459, 'admin_locale_direction', 'ltr', NULL, NULL),
(460, 'licensed_to', 'asoi23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, '3-beds-villa-calpe-alicante', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 'property-for-sale-johannesburg-south-africa', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 'stunning-french-inspired-manor', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, '42460-buccaneer-court', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 'wifi', 1, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 'walnut-park-apartment', 1, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 'walnut-park-apartment', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 'el-camino-del-mar', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 'family-victorian-view-home', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 'osaka-heights', 2, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 'osaka-heights-apartment', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 'private-estate-magnificent-views', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 'harry-baskervilles-hay-loft', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 'break-lease-available', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 'category-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-18 02:33:35', '2021-12-09 21:25:35'),
(17, 'elegant-family-home-presents-premium-modern-living', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 'bcg-sets-great-store-by-real-estate-negotiations', 1, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:51:35', '2021-12-09 21:25:35'),
(19, 'bcg-sets-great-store', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 'private-home-sales-drop-27-in-october', 2, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:55:53', '2021-12-09 21:25:35'),
(21, 'private-home-sales', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects', 3, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:59:01', '2021-12-09 21:25:35'),
(23, 's-koreas-big-investors-flocking-to-overseas-real-estate', 4, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 03:07:27', '2021-12-09 21:25:35'),
(24, 'south-korean-investors', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 'mimaroba-paradise', 3, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 'aegean-villas', 4, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 'aydos-forest-apartment', 5, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 'park', 6, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 'the-avila-apartment', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 'villa-for-sale-in-lavanya-residences', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 'want-to-lease-a-house-in-compound-pejaten-barat-kemang', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 'apartment-muiderstraatweg-in-diemen', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 'nice-apartment-for-rent-in-berlin', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 'can-ho-walnut-park', 7, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, '1574328489', 8, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 'thien-duong-mimaroba', 9, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 'khu-biet-thu-aegean', 10, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 'chung-cu-rung-aydos', 11, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 'khu-chung-cu-the-avila', 12, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:03:12', '2019-11-21 06:03:12'),
(42, 'nha-phong-cach-phap', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 'nha-ban-tai', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 'can-ho-walnut-park', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 'cho-thue-nha-view-dep', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 'ban-can-ho-osaka-heights', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 'nha-chinh-chu', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:25', '2021-12-09 21:25:35'),
(53, 'kien-truc-nha', 3, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:35', '2021-12-09 21:25:35'),
(54, 'house-design', 4, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:02', '2021-12-09 21:25:35'),
(55, 'thiet-ke-nha', 5, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:17', '2021-12-09 21:25:35'),
(56, 'building-materials', 6, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:36', '2021-12-09 21:25:35'),
(57, 'vat-lieu-xay-dung', 7, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:58', '2021-12-09 21:25:35'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 'tin-tuc-1', 8, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-22 01:26:08', '2021-12-09 21:25:35'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:26:31', '2021-12-09 21:25:35'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:29:45', '2021-12-09 21:25:35'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:33:23', '2021-12-09 21:25:35'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:39:38', '2021-12-09 21:25:35'),
(74, 'sales-manager-real-estate', 1, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 'senior-real-estate-consultant', 3, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(348, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(349, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(350, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(351, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(352, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(353, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(360, 'the-top-2020-handbag-trends-to-know', 105, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(361, 'top-search-engine-optimization-strategies', 106, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(362, 'which-company-would-you-choose', 107, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(363, 'used-car-dealer-sales-tricks-exposed', 108, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(364, '20-ways-to-sell-your-product-faster', 109, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(365, 'the-secrets-of-rich-and-famous-writers', 110, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(366, 'imagine-losing-20-pounds-in-14-days', 111, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(367, 'are-you-still-using-that-slow-old-typewriter', 112, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(368, 'a-skin-cream-thats-proven-to-work', 113, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(369, '10-reasons-to-start-your-own-profitable-website', 114, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(370, 'simple-ways-to-reduce-your-unwanted-wrinkles', 115, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(371, 'apple-imac-with-retina-5k-display-review', 116, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(372, '10000-web-site-visitors-in-one-monthguaranteed', 117, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(373, 'unlock-the-secrets-of-selling-high-ticket-items', 118, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(374, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 119, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(375, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 120, 'Botble\\Blog\\Models\\Post', 'news', '2021-12-09 21:25:40', '2021-12-09 21:25:40'),
(382, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(383, 'news', 2, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(384, 'about-us', 3, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(385, 'contact', 4, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(386, 'terms-conditions', 5, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12'),
(387, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2022-06-03 21:00:12', '2022-06-03 21:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'California', 1, 0, 0, 'published', '2019-11-18 08:17:57', '2019-11-18 08:17:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states_translations`
--

INSERT INTO `states_translations` (`lang_code`, `states_id`, `name`, `abbreviation`) VALUES
('vi', 1, 'California', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `credits`, `description`, `user_id`, `account_id`, `type`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 12, 'add', NULL, '2023-10-30 23:21:06', '2023-10-30 23:21:06'),
(2, 1, NULL, 0, 13, 'add', NULL, '2023-11-09 14:36:07', '2023-11-09 14:36:07'),
(3, 1, NULL, 0, 13, 'add', NULL, '2023-11-09 14:40:52', '2023-11-09 14:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(22, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(24, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(25, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(32, 0, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(33, 0, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(34, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(35, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(36, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(37, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(38, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(39, 0, 'en', 'validation', 'doesnt_end_with', 'The :attribute may not end with one of the following: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(40, 0, 'en', 'validation', 'doesnt_start_with', 'The :attribute may not start with one of the following: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(41, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(42, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(43, 0, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(44, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(45, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(46, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(47, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(48, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(49, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(50, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(51, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(52, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(53, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(54, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(55, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(56, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(57, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(58, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(59, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(60, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(61, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(62, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(63, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(64, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(65, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(66, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(67, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(68, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(69, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(70, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(71, 0, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(72, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(73, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(74, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(75, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(76, 0, 'en', 'validation', 'max_digits', 'The :attribute must not have more than :max digits.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(77, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(78, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(79, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(80, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(81, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(82, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(83, 0, 'en', 'validation', 'min_digits', 'The :attribute must have at least :min digits.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(84, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(85, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(86, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(87, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(88, 0, 'en', 'validation', 'password.letters', 'The :attribute must contain at least one letter.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(89, 0, 'en', 'validation', 'password.mixed', 'The :attribute must contain at least one uppercase and one lowercase letter.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(90, 0, 'en', 'validation', 'password.numbers', 'The :attribute must contain at least one number.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(91, 0, 'en', 'validation', 'password.symbols', 'The :attribute must contain at least one symbol.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(92, 0, 'en', 'validation', 'password.uncompromised', 'The given :attribute has appeared in a data leak. Please choose a different :attribute.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(93, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(94, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(95, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(96, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(97, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(98, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(99, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(100, 0, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(101, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(102, 0, 'en', 'validation', 'required_if_accepted', 'The :attribute field is required when :other is accepted.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(103, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(104, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(105, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(106, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(107, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(108, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(109, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(110, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(111, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(112, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(113, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(114, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(115, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(116, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(117, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(118, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(119, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(120, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(121, 0, 'ru', 'auth', 'failed', 'Неверное имя пользователя или пароль.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(122, 0, 'ru', 'auth', 'password', 'Неверный пароль.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(123, 0, 'ru', 'auth', 'throttle', 'Слишком много попыток входа. Пожалуйста, попробуйте еще раз через :seconds секунд.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(124, 0, 'ru', 'pagination', 'next', 'Вперёд &raquo;', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(125, 0, 'ru', 'pagination', 'previous', '&laquo; Назад', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(126, 0, 'ru', 'passwords', 'reset', 'Ваш пароль был сброшен!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(127, 0, 'ru', 'passwords', 'sent', 'Ссылка на сброс пароля была отправлена!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(128, 0, 'ru', 'passwords', 'throttled', 'Пожалуйста, подождите перед повторной попыткой.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(129, 0, 'ru', 'passwords', 'token', 'Ошибочный код сброса пароля.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(130, 0, 'ru', 'passwords', 'user', 'Не удалось найти пользователя с указанным электронным адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(131, 0, 'ru', 'validation', 'accepted', 'Вы должны принять :attribute.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(132, 0, 'ru', 'validation', 'accepted_if', 'Вы должны принять :attribute, когда :other соответствует :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(133, 0, 'ru', 'validation', 'active_url', 'Значение поля :attribute не является действительным URL.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(134, 0, 'ru', 'validation', 'after', 'Значение поля :attribute должно быть датой после :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(135, 0, 'ru', 'validation', 'after_or_equal', 'Значение поля :attribute должно быть датой после или равной :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(136, 0, 'ru', 'validation', 'alpha', 'Значение поля :attribute может содержать только буквы.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(137, 0, 'ru', 'validation', 'alpha_dash', 'Значение поля :attribute может содержать только буквы, цифры, дефис и нижнее подчеркивание.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(138, 0, 'ru', 'validation', 'alpha_num', 'Значение поля :attribute может содержать только буквы и цифры.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(139, 0, 'ru', 'validation', 'array', 'Значение поля :attribute должно быть массивом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(140, 0, 'ru', 'validation', 'before', 'Значение поля :attribute должно быть датой до :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(141, 0, 'ru', 'validation', 'before_or_equal', 'Значение поля :attribute должно быть датой до или равной :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(142, 0, 'ru', 'validation', 'between.array', 'Количество элементов в поле :attribute должно быть между :min и :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(143, 0, 'ru', 'validation', 'between.file', 'Размер файла в поле :attribute должен быть между :min и :max Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(144, 0, 'ru', 'validation', 'between.numeric', 'Значение поля :attribute должно быть между :min и :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(145, 0, 'ru', 'validation', 'between.string', 'Количество символов в поле :attribute должно быть между :min и :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(146, 0, 'ru', 'validation', 'boolean', 'Значение поля :attribute должно быть логического типа.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(147, 0, 'ru', 'validation', 'confirmed', 'Значение поля :attribute не совпадает с подтверждаемым.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(148, 0, 'ru', 'validation', 'current_password', 'Неверный пароль.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(149, 0, 'ru', 'validation', 'date', 'Значение поля :attribute не является датой.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(150, 0, 'ru', 'validation', 'date_equals', 'Значение поля :attribute должно быть датой равной :date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(151, 0, 'ru', 'validation', 'date_format', 'Значение поля :attribute не соответствует формату даты :format.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(152, 0, 'ru', 'validation', 'declined', 'Поле :attribute должно быть отклонено.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(153, 0, 'ru', 'validation', 'declined_if', 'Поле :attribute должно быть отклонено, когда :other равно :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(154, 0, 'ru', 'validation', 'different', 'Значения полей :attribute и :other должны различаться.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(155, 0, 'ru', 'validation', 'digits', 'Длина значения цифрового поля :attribute должна быть :digits.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(156, 0, 'ru', 'validation', 'digits_between', 'Длина значения цифрового поля :attribute должна быть между :min и :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(157, 0, 'ru', 'validation', 'dimensions', 'Изображение в поле :attribute имеет недопустимые размеры.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(158, 0, 'ru', 'validation', 'distinct', 'Значения поля :attribute не должны повторяться.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(159, 0, 'ru', 'validation', 'email', 'Значение поля :attribute должно быть действительным электронным адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(160, 0, 'ru', 'validation', 'ends_with', 'Поле :attribute должно заканчиваться одним из следующих значений: :values', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(161, 0, 'ru', 'validation', 'enum', 'Выбранное значение для :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(162, 0, 'ru', 'validation', 'exists', 'Выбранное значение для :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(163, 0, 'ru', 'validation', 'file', 'В поле :attribute должен быть указан файл.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(164, 0, 'ru', 'validation', 'filled', 'Поле :attribute обязательно для заполнения.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(165, 0, 'ru', 'validation', 'gt.array', 'Количество элементов в поле :attribute должно быть больше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(166, 0, 'ru', 'validation', 'gt.file', 'Размер файла в поле :attribute должен быть больше :value Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(167, 0, 'ru', 'validation', 'gt.numeric', 'Значение поля :attribute должно быть больше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(168, 0, 'ru', 'validation', 'gt.string', 'Количество символов в поле :attribute должно быть больше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(169, 0, 'ru', 'validation', 'gte.array', 'Количество элементов в поле :attribute должно быть :value или больше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(170, 0, 'ru', 'validation', 'gte.file', 'Размер файла в поле :attribute должен быть :value Килобайт(а) или больше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(171, 0, 'ru', 'validation', 'gte.numeric', 'Значение поля :attribute должно быть :value или больше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(172, 0, 'ru', 'validation', 'gte.string', 'Количество символов в поле :attribute должно быть :value или больше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(173, 0, 'ru', 'validation', 'image', 'Файл в поле :attribute должен быть изображением.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(174, 0, 'ru', 'validation', 'in', 'Выбранное значение для :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(175, 0, 'ru', 'validation', 'in_array', 'Значение поля :attribute не существует в :other.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(176, 0, 'ru', 'validation', 'integer', 'Значение поля :attribute должно быть целым числом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(177, 0, 'ru', 'validation', 'ip', 'Значение поля :attribute должно быть действительным IP-адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(178, 0, 'ru', 'validation', 'ipv4', 'Значение поля :attribute должно быть действительным IPv4-адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(179, 0, 'ru', 'validation', 'ipv6', 'Значение поля :attribute должно быть действительным IPv6-адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(180, 0, 'ru', 'validation', 'json', 'Значение поля :attribute должно быть JSON строкой.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(181, 0, 'ru', 'validation', 'lt.array', 'Количество элементов в поле :attribute должно быть меньше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(182, 0, 'ru', 'validation', 'lt.file', 'Размер файла в поле :attribute должен быть меньше :value Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(183, 0, 'ru', 'validation', 'lt.numeric', 'Значение поля :attribute должно быть меньше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(184, 0, 'ru', 'validation', 'lt.string', 'Количество символов в поле :attribute должно быть меньше :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(185, 0, 'ru', 'validation', 'lte.array', 'Количество элементов в поле :attribute должно быть :value или меньше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(186, 0, 'ru', 'validation', 'lte.file', 'Размер файла в поле :attribute должен быть :value Килобайт(а) или меньше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(187, 0, 'ru', 'validation', 'lte.numeric', 'Значение поля :attribute должно быть :value или меньше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(188, 0, 'ru', 'validation', 'lte.string', 'Количество символов в поле :attribute должно быть :value или меньше.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(189, 0, 'ru', 'validation', 'mac_address', 'Значение поля :attribute должно быть корректным MAC-адресом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(190, 0, 'ru', 'validation', 'max.array', 'Количество элементов в поле :attribute не может превышать :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(191, 0, 'ru', 'validation', 'max.file', 'Размер файла в поле :attribute не может быть больше :max Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(192, 0, 'ru', 'validation', 'max.numeric', 'Значение поля :attribute не может быть больше :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(193, 0, 'ru', 'validation', 'max.string', 'Количество символов в поле :attribute не может превышать :max.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(194, 0, 'ru', 'validation', 'mimes', 'Файл в поле :attribute должен быть одного из следующих типов: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(195, 0, 'ru', 'validation', 'mimetypes', 'Файл в поле :attribute должен быть одного из следующих типов: :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(196, 0, 'ru', 'validation', 'min.array', 'Количество элементов в поле :attribute должно быть не меньше :min.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(197, 0, 'ru', 'validation', 'min.file', 'Размер файла в поле :attribute должен быть не меньше :min Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(198, 0, 'ru', 'validation', 'min.numeric', 'Значение поля :attribute должно быть не меньше :min.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(199, 0, 'ru', 'validation', 'min.string', 'Количество символов в поле :attribute должно быть не меньше :min.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(200, 0, 'ru', 'validation', 'multiple_of', 'Значение поля :attribute должно быть кратным :value', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(201, 0, 'ru', 'validation', 'not_in', 'Выбранное значение для :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(202, 0, 'ru', 'validation', 'not_regex', 'Значение поля :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(203, 0, 'ru', 'validation', 'numeric', 'Значение поля :attribute должно быть числом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(204, 0, 'ru', 'validation', 'present', 'Значение поля :attribute должно присутствовать.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(205, 0, 'ru', 'validation', 'prohibited', 'Значение поля :attribute запрещено.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(206, 0, 'ru', 'validation', 'prohibited_if', 'Значение поля :attribute запрещено, когда :other равно :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(207, 0, 'ru', 'validation', 'prohibited_unless', 'Значение поля :attribute запрещено, если :other не состоит в :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(208, 0, 'ru', 'validation', 'prohibits', 'Значение поля :attribute запрещает присутствие :other.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(209, 0, 'ru', 'validation', 'regex', 'Значение поля :attribute некорректно.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(210, 0, 'ru', 'validation', 'required', 'Поле :attribute обязательно для заполнения.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(211, 0, 'ru', 'validation', 'required_array_keys', 'Массив в поле :attribute обязательно должен иметь ключи: :values', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(212, 0, 'ru', 'validation', 'required_if', 'Поле :attribute обязательно для заполнения, когда :other равно :value.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(213, 0, 'ru', 'validation', 'required_unless', 'Поле :attribute обязательно для заполнения, когда :other не равно :values.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(214, 0, 'ru', 'validation', 'required_with', 'Поле :attribute обязательно для заполнения, когда :values указано.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(215, 0, 'ru', 'validation', 'required_with_all', 'Поле :attribute обязательно для заполнения, когда :values указано.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(216, 0, 'ru', 'validation', 'required_without', 'Поле :attribute обязательно для заполнения, когда :values не указано.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(217, 0, 'ru', 'validation', 'required_without_all', 'Поле :attribute обязательно для заполнения, когда ни одно из :values не указано.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(218, 0, 'ru', 'validation', 'same', 'Значения полей :attribute и :other должны совпадать.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(219, 0, 'ru', 'validation', 'size.array', 'Количество элементов в поле :attribute должно быть равным :size.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(220, 0, 'ru', 'validation', 'size.file', 'Размер файла в поле :attribute должен быть равен :size Килобайт(а).', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(221, 0, 'ru', 'validation', 'size.numeric', 'Значение поля :attribute должно быть равным :size.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(222, 0, 'ru', 'validation', 'size.string', 'Количество символов в поле :attribute должно быть равным :size.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(223, 0, 'ru', 'validation', 'starts_with', 'Поле :attribute должно начинаться с одного из следующих значений: :values', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(224, 0, 'ru', 'validation', 'string', 'Значение поля :attribute должно быть строкой.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(225, 0, 'ru', 'validation', 'timezone', 'Значение поля :attribute должно быть действительным часовым поясом.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(226, 0, 'ru', 'validation', 'unique', 'Такое значение поля :attribute уже существует.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(227, 0, 'ru', 'validation', 'uploaded', 'Загрузка поля :attribute не удалась.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(228, 0, 'ru', 'validation', 'url', 'Значение поля :attribute имеет ошибочный формат URL.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(229, 0, 'ru', 'validation', 'uuid', 'Значение поля :attribute должно быть корректным UUID.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(230, 0, 'ru', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(231, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(232, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(233, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(234, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(235, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(236, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(237, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(238, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(239, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(240, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(241, 0, 'en', 'core/acl/api', 'name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(242, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(243, 0, 'en', 'core/acl/api', 'save', 'Save', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(244, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(245, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(246, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(247, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(248, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(249, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(250, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(251, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(252, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(253, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(254, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(255, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(256, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(257, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(258, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(259, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(260, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(261, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(262, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(263, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(264, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(265, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(266, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(267, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(268, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(269, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(270, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(271, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(272, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(273, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(274, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(275, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(276, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(277, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(278, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(279, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(280, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(281, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(282, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(283, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(284, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(285, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(286, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(287, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(288, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(289, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(290, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(291, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(292, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(293, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(294, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(295, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(296, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(297, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(298, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(299, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(300, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(301, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(302, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(303, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(304, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(305, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(306, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(307, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(308, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(309, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(310, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(311, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(312, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(313, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(314, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(315, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(316, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(317, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(318, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(319, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(320, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(321, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(322, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(323, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(324, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(325, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(326, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(327, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(328, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(329, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(330, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(331, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(332, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(333, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(334, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(335, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(336, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(337, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(338, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(339, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(340, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(341, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(342, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(343, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(344, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(345, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(346, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(347, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(348, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(349, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(350, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(351, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(352, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(353, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(354, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(355, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(356, 0, 'en', 'core/acl/users', 'email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(357, 0, 'en', 'core/acl/users', 'role', 'Role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(358, 0, 'en', 'core/acl/users', 'username', 'Username', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(359, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(360, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(361, 0, 'en', 'core/acl/users', 'message', 'Message', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(362, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(363, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(364, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(365, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(366, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(367, 0, 'en', 'core/acl/users', 'password', 'Password', '2022-09-28 19:28:57', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(368, 0, 'en', 'core/acl/users', 'save', 'Save', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(369, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(370, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(371, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(372, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(373, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(374, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(375, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(376, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(377, 0, 'en', 'core/acl/users', 'close', 'Close', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(378, 0, 'en', 'core/acl/users', 'update', 'Update', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(379, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(380, 0, 'en', 'core/acl/users', 'users', 'Users', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(381, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(382, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(383, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(384, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(385, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(386, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(387, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(388, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(389, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(390, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(391, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(392, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(393, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(394, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(395, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(396, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(397, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(398, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(399, 0, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(400, 0, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(401, 0, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(402, 0, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(403, 0, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(404, 0, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(405, 0, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(406, 0, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(407, 0, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(408, 0, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(409, 0, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(410, 0, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(411, 0, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(412, 0, 'vi', 'core/acl/auth', 'login.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(413, 0, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(414, 0, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(415, 0, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(416, 0, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(417, 0, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(418, 0, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(419, 0, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(420, 0, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(421, 0, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(422, 0, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(423, 0, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(424, 0, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(425, 0, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(426, 0, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(427, 0, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(428, 0, 'vi', 'core/acl/auth', 'reset.password_confirmation', 'Xác nhận mật khẩu mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(429, 0, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(430, 0, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(431, 0, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(432, 0, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(433, 0, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(434, 0, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(435, 0, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(436, 0, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(437, 0, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(438, 0, 'vi', 'core/acl/auth', 'languages', 'Ngôn ngữ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(439, 0, 'vi', 'core/acl/auth', 'password_confirmation', 'Xác nhận mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(440, 0, 'vi', 'core/acl/auth', 'reset_password', 'Khôi phục mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(441, 0, 'vi', 'core/acl/auth', 'sign_in_below', 'Đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(442, 0, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(443, 0, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(444, 0, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(445, 0, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(446, 0, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(447, 0, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(448, 0, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(449, 0, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(450, 0, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(451, 0, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(452, 0, 'vi', 'core/acl/permissions', 'name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(453, 0, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(454, 0, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(455, 0, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(456, 0, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(457, 0, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(458, 0, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(459, 0, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(460, 0, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(461, 0, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(462, 0, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(463, 0, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(464, 0, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(465, 0, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(466, 0, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(467, 0, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(468, 0, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(469, 0, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(470, 0, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(471, 0, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(472, 0, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(473, 0, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(474, 0, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(475, 0, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(476, 0, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(477, 0, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(478, 0, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(479, 0, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(480, 0, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(481, 0, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(482, 0, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(483, 0, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(484, 0, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(485, 0, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(486, 0, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(487, 0, 'vi', 'core/acl/permissions', 'action_unauthorized', 'Hành động này không được phép', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(488, 0, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(489, 0, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(490, 0, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(491, 0, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(492, 0, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(493, 0, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(494, 0, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(495, 0, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(496, 0, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(497, 0, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(498, 0, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(499, 0, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(500, 0, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(501, 0, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(502, 0, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(503, 0, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(504, 0, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(505, 0, 'vi', 'core/acl/users', 'email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(506, 0, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(507, 0, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(508, 0, 'vi', 'core/acl/users', 'first_name', 'Họ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(509, 0, 'vi', 'core/acl/users', 'last_name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(510, 0, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(511, 0, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(512, 0, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(513, 0, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(514, 0, 'vi', 'core/acl/users', 'save', 'Lưu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(515, 0, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(516, 0, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(517, 0, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(518, 0, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(519, 0, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(520, 0, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(521, 0, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(522, 0, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(523, 0, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(524, 0, 'vi', 'core/acl/users', 'close', 'Đóng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(525, 0, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(526, 0, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(527, 0, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(528, 0, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(529, 0, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(530, 0, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(531, 0, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(532, 0, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(533, 0, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(534, 0, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(535, 0, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(536, 0, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(537, 0, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(538, 0, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(539, 0, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(540, 0, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(541, 0, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(542, 0, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(543, 0, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(544, 0, 'vi', 'core/acl/users', 'assigned_role', 'Cấp quyền', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(545, 0, 'vi', 'core/acl/users', 'total_users', 'Tổng số người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(546, 0, 'vi', 'core/acl/users', 'view_user_profile', 'Xem thông tin người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(547, 0, 'vi', 'core/acl/users', 'no_role_assigned', 'Chưa có quyền nào', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(548, 0, 'en', 'core/base/base', 'yes', 'Yes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(549, 0, 'en', 'core/base/base', 'no', 'No', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(550, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(551, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(552, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(553, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(554, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(555, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(556, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(557, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(558, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(559, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(560, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(561, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(562, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(563, 0, 'en', 'core/base/base', 'image', 'Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(564, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(565, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(566, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(567, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(568, 0, 'en', 'core/base/base', 'tools', 'Tools', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(569, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(570, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(571, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(572, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(573, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(574, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(575, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(576, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(577, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(578, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(579, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(580, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(581, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(582, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(583, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(584, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(585, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(586, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(587, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(588, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(589, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(590, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(591, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(592, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(593, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(594, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(595, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(596, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"https://flex-home.test/admin\">clicking here</a>.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(597, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(598, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(599, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(600, 0, 'en', 'core/base/forms', 'save', 'Save', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(601, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(602, 0, 'en', 'core/base/forms', 'image', 'Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(603, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(604, 0, 'en', 'core/base/forms', 'create', 'Create', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(605, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(606, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(607, 0, 'en', 'core/base/forms', 'ok', 'OK', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(608, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(609, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(610, 0, 'en', 'core/base/forms', 'template', 'Template', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(611, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(612, 0, 'en', 'core/base/forms', 'file', 'File', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(613, 0, 'en', 'core/base/forms', 'content', 'Content', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(614, 0, 'en', 'core/base/forms', 'description', 'Description', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(615, 0, 'en', 'core/base/forms', 'name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(616, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(617, 0, 'en', 'core/base/forms', 'title', 'Title', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(618, 0, 'en', 'core/base/forms', 'value', 'Value', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(619, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(620, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(621, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(622, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(623, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(624, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(625, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(626, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(627, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(628, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(629, 0, 'en', 'core/base/forms', 'update', 'Update', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(630, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(631, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(632, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(633, 0, 'en', 'core/base/forms', 'order', 'Order', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(634, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(635, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(636, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(637, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(638, 0, 'en', 'core/base/forms', 'add', 'Add', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(639, 0, 'en', 'core/base/forms', 'link', 'Link', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(640, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(641, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(642, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(643, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(644, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(645, 0, 'en', 'core/base/forms', 'view_preview_image', 'View preview image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(646, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(647, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(648, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(649, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(650, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(651, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(652, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(653, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(654, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(655, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(656, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(657, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(658, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(659, 0, 'en', 'core/base/layouts', 'home', 'Home', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(660, 0, 'en', 'core/base/layouts', 'search', 'Search', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(661, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(662, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(663, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(664, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(665, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(666, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(667, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(668, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(669, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(670, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(671, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(672, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(673, 0, 'en', 'core/base/notices', 'error', 'Error!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(674, 0, 'en', 'core/base/notices', 'success', 'Success!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(675, 0, 'en', 'core/base/notices', 'info', 'Info!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(676, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(677, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(678, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(679, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(680, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(681, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(682, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(683, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(684, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(685, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(686, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(687, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(688, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(689, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(690, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(691, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(692, 0, 'en', 'core/base/system', 'user.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(693, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(694, 0, 'en', 'core/base/system', 'user.username', 'Username', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(695, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(696, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(697, 0, 'en', 'core/base/system', 'user.create', 'Create', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(698, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(699, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(700, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(701, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(702, 0, 'en', 'core/base/system', 'options.info', 'System information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(703, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(704, 0, 'en', 'core/base/system', 'info.title', 'System information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(705, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(706, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(707, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(708, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(709, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(710, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(711, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(712, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(713, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(714, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(715, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(716, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(717, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(718, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(719, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(720, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(721, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(722, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(723, 0, 'en', 'core/base/system', 'database', 'Database', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(724, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(725, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(726, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(727, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(728, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(729, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(730, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(731, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(732, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(733, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(734, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(735, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(736, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(737, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(738, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(739, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(740, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(741, 0, 'en', 'core/base/system', 'version', 'Version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(742, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(743, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(744, 0, 'en', 'core/base/system', 'updater', 'System Updater', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(745, 0, 'en', 'core/base/system', 'zip', 'Zip Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(746, 0, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(747, 0, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(748, 0, 'en', 'core/base/system', 'php_version_warning', 'You are using an out of date PHP version (:version). Please upgrade PHP version on your server to >= 8.0.2 for better security and performance!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(749, 0, 'en', 'core/base/system', 'upgrade_php_version_required', 'You are using an unsupported PHP version (:version). You need to upgrade PHP version on your server to greater than or equal to 8.0.2 before upgrading to this version!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(750, 0, 'en', 'core/base/tables', 'id', 'ID', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(751, 0, 'en', 'core/base/tables', 'name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(752, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(753, 0, 'en', 'core/base/tables', 'title', 'Title', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(754, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(755, 0, 'en', 'core/base/tables', 'order', 'Order', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(756, 0, 'en', 'core/base/tables', 'status', 'Status', '2022-09-28 19:28:57', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(757, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(758, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(759, 0, 'en', 'core/base/tables', 'description', 'Description', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(760, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(761, 0, 'en', 'core/base/tables', 'url', 'URL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(762, 0, 'en', 'core/base/tables', 'author', 'Author', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(763, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(764, 0, 'en', 'core/base/tables', 'column', 'Column', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(765, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(766, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(767, 0, 'en', 'core/base/tables', 'views', 'Views', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(768, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(769, 0, 'en', 'core/base/tables', 'session', 'Session', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(770, 0, 'en', 'core/base/tables', 'activated', 'activated', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(771, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(772, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(773, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(774, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(775, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(776, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(777, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(778, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(779, 0, 'en', 'core/base/tables', 'export', 'Export', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(780, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(781, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(782, 0, 'en', 'core/base/tables', 'print', 'Print', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(783, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(784, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(785, 0, 'en', 'core/base/tables', 'display', 'Display', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(786, 0, 'en', 'core/base/tables', 'all', 'All', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(787, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(788, 0, 'en', 'core/base/tables', 'action', 'Actions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(789, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(790, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(791, 0, 'en', 'core/base/tables', 'save', 'Save', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(792, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(793, 0, 'en', 'core/base/tables', 'to', 'to', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(794, 0, 'en', 'core/base/tables', 'in', 'in', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(795, 0, 'en', 'core/base/tables', 'records', 'records', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(796, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(797, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(798, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(799, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(800, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(801, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(802, 0, 'en', 'core/base/tables', 'template', 'Template', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(803, 0, 'en', 'core/base/tables', 'email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(804, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(805, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(806, 0, 'en', 'core/base/tables', 'image', 'Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(807, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(808, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(809, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(810, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(811, 0, 'en', 'core/base/tabs', 'file', 'Files', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(812, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(813, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(814, 0, 'vi', 'core/base/base', 'yes', 'Có', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(815, 0, 'vi', 'core/base/base', 'no', 'Không', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(816, 0, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(817, 0, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(818, 0, 'vi', 'core/base/base', 'add_image', 'Thêm ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(819, 0, 'vi', 'core/base/base', 'change_image', 'Đổi ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(820, 0, 'vi', 'core/base/base', 'delete_image', 'Xóa ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(821, 0, 'vi', 'core/base/base', 'email_template.date_time', 'Ngày giờ hiện tại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(822, 0, 'vi', 'core/base/base', 'email_template.date_year', 'Năm hiện tại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(823, 0, 'vi', 'core/base/base', 'email_template.footer', 'Mẫu chân trang email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(824, 0, 'vi', 'core/base/base', 'email_template.header', 'Mẫu đầu trang email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(825, 0, 'vi', 'core/base/base', 'email_template.site_admin_email', 'Email quản trị viên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(826, 0, 'vi', 'core/base/base', 'email_template.site_logo', 'Logo của trang', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(827, 0, 'vi', 'core/base/base', 'email_template.site_title', 'Tiêu đề trang', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(828, 0, 'vi', 'core/base/base', 'email_template.site_url', 'URL trang', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(829, 0, 'vi', 'core/base/base', 'image', 'Hình ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(830, 0, 'vi', 'core/base/base', 'preview_image', 'Ảnh xem trước', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(831, 0, 'vi', 'core/base/base', 'select_image', 'Chọn ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(832, 0, 'vi', 'core/base/base', 'to_add_more_image', 'để thêm hình ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(833, 0, 'vi', 'core/base/base', 'using_button', 'Sử dụng nút', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(834, 0, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(835, 0, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(836, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(837, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(838, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(839, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(840, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(841, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(842, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(843, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(844, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(845, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(846, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(847, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(848, 0, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(849, 0, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(850, 0, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(851, 0, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(852, 0, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(853, 0, 'vi', 'core/base/enums', 'statuses.published', 'Đã xuất bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(854, 0, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(855, 0, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(856, 0, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(857, 0, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(858, 0, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(859, 0, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(860, 0, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(861, 0, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(862, 0, 'vi', 'core/base/errors', 'not_found', 'Không tìm thấy', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(863, 0, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(864, 0, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(865, 0, 'vi', 'core/base/forms', 'save', 'Lưu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(866, 0, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(867, 0, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(868, 0, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(869, 0, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(870, 0, 'vi', 'core/base/forms', 'edit', 'Sửa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(871, 0, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(872, 0, 'vi', 'core/base/forms', 'ok', 'OK', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(873, 0, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(874, 0, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(875, 0, 'vi', 'core/base/forms', 'template', 'Template', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(876, 0, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(877, 0, 'vi', 'core/base/forms', 'file', 'Tập tin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(878, 0, 'vi', 'core/base/forms', 'content', 'Nội dung', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(879, 0, 'vi', 'core/base/forms', 'description', 'Mô tả', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(880, 0, 'vi', 'core/base/forms', 'name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(881, 0, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(882, 0, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(883, 0, 'vi', 'core/base/forms', 'parent', 'Cha', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(884, 0, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(885, 0, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(886, 0, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(887, 0, 'vi', 'core/base/forms', 'slug', 'Slug', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(888, 0, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(889, 0, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(890, 0, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(891, 0, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(892, 0, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(893, 0, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(894, 0, 'vi', 'core/base/forms', 'add', 'Thêm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(895, 0, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(896, 0, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(897, 0, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(898, 0, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(899, 0, 'vi', 'core/base/forms', 'link', 'Liên kết', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(900, 0, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(901, 0, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(902, 0, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(903, 0, 'vi', 'core/base/forms', 'value', 'Giá trị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(904, 0, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(905, 0, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(906, 0, 'vi', 'core/base/forms', 'remove_file', 'Xóa tập tin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(907, 0, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(908, 0, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(909, 0, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(910, 0, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(911, 0, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(912, 0, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(913, 0, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(914, 0, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(915, 0, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(916, 0, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(917, 0, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(918, 0, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(919, 0, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(920, 0, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(921, 0, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(922, 0, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(923, 0, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(924, 0, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(925, 0, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(926, 0, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(927, 0, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(928, 0, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(929, 0, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(930, 0, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(931, 0, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(932, 0, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(933, 0, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(934, 0, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(935, 0, 'vi', 'core/base/notices', 'success', 'Thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(936, 0, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(937, 0, 'vi', 'core/base/notices', 'enum.validate_message', 'Giá trị của :attribute không hợp lệ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(938, 0, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(939, 0, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(940, 0, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(941, 0, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(942, 0, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(943, 0, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(944, 0, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(945, 0, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(946, 0, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(947, 0, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(948, 0, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(949, 0, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(950, 0, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(951, 0, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(952, 0, 'vi', 'core/base/system', 'user.email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(953, 0, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(954, 0, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(955, 0, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(956, 0, 'vi', 'core/base/system', 'user.create', 'Thêm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(957, 0, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(958, 0, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(959, 0, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(960, 0, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(961, 0, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(962, 0, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(963, 0, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(964, 0, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(965, 0, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(966, 0, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(967, 0, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(968, 0, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(969, 0, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(970, 0, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(971, 0, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(972, 0, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(973, 0, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(974, 0, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(975, 0, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(976, 0, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(977, 0, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(978, 0, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(979, 0, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(980, 0, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(981, 0, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(982, 0, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(983, 0, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(984, 0, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(985, 0, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(986, 0, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(987, 0, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(988, 0, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(989, 0, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(990, 0, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(991, 0, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(992, 0, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(993, 0, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(994, 0, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(995, 0, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(996, 0, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(997, 0, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(998, 0, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(999, 0, 'vi', 'core/base/system', 'version', 'Phiên bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1000, 0, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1001, 0, 'vi', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1002, 0, 'vi', 'core/base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1003, 0, 'vi', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1004, 0, 'vi', 'core/base/system', 'php_version_error', 'Phiên bản PHP phải >= :version', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1005, 0, 'vi', 'core/base/system', 'updater', 'Nâng cấp hệ thống', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1006, 0, 'vi', 'core/base/tables', 'id', 'ID', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1007, 0, 'vi', 'core/base/tables', 'name', 'Tên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1008, 0, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1009, 0, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1010, 0, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1011, 0, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1012, 0, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1013, 0, 'vi', 'core/base/tables', 'url', 'URL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1014, 0, 'vi', 'core/base/tables', 'author', 'Người tạo', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1015, 0, 'vi', 'core/base/tables', 'column', 'Cột', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1016, 0, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1017, 0, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1018, 0, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1019, 0, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1020, 0, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1021, 0, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1022, 0, 'vi', 'core/base/tables', 'description', 'Mô tả', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1023, 0, 'vi', 'core/base/tables', 'session', 'Phiên', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1024, 0, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1025, 0, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1026, 0, 'vi', 'core/base/tables', 'edit', 'Sửa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1027, 0, 'vi', 'core/base/tables', 'delete', 'Xóa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1028, 0, 'vi', 'core/base/tables', 'action', 'Hành động', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1029, 0, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1030, 0, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1031, 0, 'vi', 'core/base/tables', 'all', 'Tất cả', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1032, 0, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1033, 0, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1034, 0, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1035, 0, 'vi', 'core/base/tables', 'csv', 'CSV', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1036, 0, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1037, 0, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1038, 0, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1039, 0, 'vi', 'core/base/tables', 'excel', 'Excel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1040, 0, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1041, 0, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1042, 0, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1043, 0, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1044, 0, 'vi', 'core/base/tables', 'pdf', 'PDF', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1045, 0, 'vi', 'core/base/tables', 'print', 'In', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1046, 0, 'vi', 'core/base/tables', 'records', 'bản ghi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1047, 0, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1048, 0, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1049, 0, 'vi', 'core/base/tables', 'save', 'Lưu', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1050, 0, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1051, 0, 'vi', 'core/base/tables', 'template', 'Giao diện', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1052, 0, 'vi', 'core/base/tables', 'to', 'đến', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1053, 0, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1054, 0, 'vi', 'core/base/tables', 'email', 'Email', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1055, 0, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1056, 0, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1057, 0, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1058, 0, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1059, 0, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1060, 0, 'vi', 'core/base/tables', 'slug', 'Slug', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1061, 0, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1062, 0, 'vi', 'core/base/tables', 'bulk_changes', 'Thay đổi hàng loạt', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1063, 0, 'vi', 'core/base/tables', 'confirm_delete_many_msg', 'Bạn có chắc chắn muốn xóa những bản ghi này?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1064, 0, 'vi', 'core/base/tables', 'submit', 'Hoàn tất', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1065, 0, 'vi', 'core/base/tables', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1066, 0, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1067, 0, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1068, 0, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1069, 0, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1070, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1071, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1072, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1073, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1074, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1075, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1076, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1077, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1078, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1079, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1080, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1081, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1082, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1083, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1084, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1085, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1086, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1087, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1088, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1089, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1090, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1091, 0, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1092, 0, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1093, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1094, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1095, 0, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1096, 0, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1097, 0, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1098, 0, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1099, 0, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1100, 0, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1101, 0, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1102, 0, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1103, 0, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1104, 0, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1105, 0, 'en', 'core/media/media', 'filter', 'Filter', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1106, 0, 'en', 'core/media/media', 'everything', 'Everything', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1107, 0, 'en', 'core/media/media', 'image', 'Image', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1108, 0, 'en', 'core/media/media', 'video', 'Video', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1109, 0, 'en', 'core/media/media', 'document', 'Document', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1110, 0, 'en', 'core/media/media', 'view_in', 'View in', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1111, 0, 'en', 'core/media/media', 'all_media', 'All media', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1112, 0, 'en', 'core/media/media', 'trash', 'Trash', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1113, 0, 'en', 'core/media/media', 'recent', 'Recent', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1114, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1115, 0, 'en', 'core/media/media', 'upload', 'Upload', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1116, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1117, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1118, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1119, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1120, 0, 'en', 'core/media/media', 'sort', 'Sort', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1121, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1122, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1123, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1124, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1125, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1126, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1127, 0, 'en', 'core/media/media', 'actions', 'Actions', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1128, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1129, 0, 'en', 'core/media/media', 'insert', 'Insert', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1130, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1131, 0, 'en', 'core/media/media', 'create', 'Create', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1132, 0, 'en', 'core/media/media', 'rename', 'Rename', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1133, 0, 'en', 'core/media/media', 'close', 'Close', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1134, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1135, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1136, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1137, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1138, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1139, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1140, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1141, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1142, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1143, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1144, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1145, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1146, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1147, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1148, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1149, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1150, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1151, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1152, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1153, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1154, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1155, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1156, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1157, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1158, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1159, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1160, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1161, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1162, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1163, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1164, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1165, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1166, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1167, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1168, 0, 'en', 'core/media/media', 'add', 'Add media', '2022-09-28 19:28:57', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1169, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1170, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1171, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2022-09-28 19:28:57', '2022-09-28 19:29:19'),
(1172, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1173, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1174, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1175, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1176, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1177, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1178, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1179, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1180, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1181, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1182, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1183, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1184, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1185, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1186, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1187, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1188, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1189, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1190, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1191, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1192, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1193, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1194, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1195, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1196, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1197, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1198, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1199, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1200, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1201, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1202, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1203, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1204, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1205, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1206, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1207, 0, 'en', 'core/media/media', 'javascript.change_image', 'Change image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1208, 0, 'en', 'core/media/media', 'javascript.delete_image', 'Delete image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1209, 0, 'en', 'core/media/media', 'javascript.choose_image', 'Choose image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1210, 0, 'en', 'core/media/media', 'javascript.preview_image', 'Preview image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1211, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1212, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1213, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1214, 0, 'en', 'core/media/media', 'download_link', 'Download', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1215, 0, 'en', 'core/media/media', 'url', 'URL', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1216, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1217, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1218, 0, 'vi', 'core/media/media', 'filter', 'Lọc', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1219, 0, 'vi', 'core/media/media', 'everything', 'Tất cả', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1220, 0, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1221, 0, 'vi', 'core/media/media', 'video', 'Phim', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1222, 0, 'vi', 'core/media/media', 'document', 'Tài liệu', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1223, 0, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1224, 0, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1225, 0, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1226, 0, 'vi', 'core/media/media', 'recent', 'Gần đây', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1227, 0, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1228, 0, 'vi', 'core/media/media', 'upload', 'Tải lên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1229, 0, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1230, 0, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1231, 0, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1232, 0, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1233, 0, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1234, 0, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1235, 0, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1236, 0, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1237, 0, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1238, 0, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1239, 0, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1240, 0, 'vi', 'core/media/media', 'actions', 'Hành động', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1241, 0, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1242, 0, 'vi', 'core/media/media', 'insert', 'Chèn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1243, 0, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1244, 0, 'vi', 'core/media/media', 'create', 'Tạo', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1245, 0, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1246, 0, 'vi', 'core/media/media', 'close', 'Đóng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1247, 0, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1248, 0, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1249, 0, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1250, 0, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1251, 0, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1252, 0, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1253, 0, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1254, 0, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1255, 0, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1256, 0, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1257, 0, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1258, 0, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1259, 0, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1260, 0, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1261, 0, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1262, 0, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1263, 0, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1264, 0, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1265, 0, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1266, 0, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1267, 0, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1268, 0, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1269, 0, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1270, 0, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1271, 0, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1272, 0, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1273, 0, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1274, 0, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1275, 0, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1276, 0, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1277, 0, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1278, 0, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1279, 0, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1280, 0, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1281, 0, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1282, 0, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1283, 0, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1284, 0, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1285, 0, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1286, 0, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1287, 0, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1288, 0, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1289, 0, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1290, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1291, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1292, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1293, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1294, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1295, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1296, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1297, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1298, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1299, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1300, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1301, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1302, 0, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1303, 0, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1304, 0, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1305, 0, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1306, 0, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1307, 0, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1308, 0, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1309, 0, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1310, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1311, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1312, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1313, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1314, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1315, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1316, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1317, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1318, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1319, 0, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1320, 0, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1321, 0, 'vi', 'core/media/media', 'path_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1322, 0, 'vi', 'core/media/media', 'url_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1323, 0, 'vi', 'core/media/media', 'download_explain', 'Mỗi URL trên 1 dòng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1324, 0, 'vi', 'core/media/media', 'download_link', 'Tải xuống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1325, 0, 'vi', 'core/media/media', 'downloading', 'Đang tải xuống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1326, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1327, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1328, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1329, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1330, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1331, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1332, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1333, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1334, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1335, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1336, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1337, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1338, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1339, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1340, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1341, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1342, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1343, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1344, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1345, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1346, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1347, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1348, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1349, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1350, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1351, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1352, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1353, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1354, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1355, 0, 'en', 'core/setting/setting', 'general.enable_cache_site_map', 'Enable cache site map?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1356, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map (minutes)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1357, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1358, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1359, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1360, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1361, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1362, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1363, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1364, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1365, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1366, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1367, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1368, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1369, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1370, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1371, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1372, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1373, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1374, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1375, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1376, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1377, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1378, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1379, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1380, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1381, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1382, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1383, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1384, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1385, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1386, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1387, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1388, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1389, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1390, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1391, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1392, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1393, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1394, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1395, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1396, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1397, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1398, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1399, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1400, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1401, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1402, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1403, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1404, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1405, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1406, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1407, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1408, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1409, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1410, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1411, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1412, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1413, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1414, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1415, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1416, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1417, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1418, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1419, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1420, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1421, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1422, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1423, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1424, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1425, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1426, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1427, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1428, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1429, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1430, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1431, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1432, 0, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1433, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1434, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1435, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1436, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1437, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1438, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1439, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1440, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1441, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1442, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1443, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1444, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1445, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1446, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1447, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1448, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1449, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1450, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1451, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1452, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1453, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1454, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1455, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1456, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1457, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1458, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1459, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1460, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1461, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1462, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1463, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1464, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1465, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1466, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1467, 0, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1468, 0, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1469, 0, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1470, 0, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1471, 0, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1472, 0, 'en', 'core/setting/setting', 'media.sizes', 'Media thumbnails sizes', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1473, 0, 'en', 'core/setting/setting', 'media.media_sizes_helper', 'Set width or height to 0 if you just want to crop by width or height. Need to click on \"Generate thumbnails\" to apply changes.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1474, 0, 'en', 'core/setting/setting', 'media.width', 'Width', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1475, 0, 'en', 'core/setting/setting', 'media.height', 'Height', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1476, 0, 'en', 'core/setting/setting', 'media.default_size_value', 'Default: :size', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1477, 0, 'en', 'core/setting/setting', 'media.all', 'All', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1478, 0, 'en', 'core/setting/setting', 'media.media_folders_can_add_watermark', 'Add watermark for images in folders:', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1479, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1480, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1481, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1482, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1483, 0, 'en', 'core/setting/setting', 'template', 'Template', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1484, 0, 'en', 'core/setting/setting', 'description', 'Description', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1485, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1486, 0, 'en', 'core/setting/setting', 'send', 'Send', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1487, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1488, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1489, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1490, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1491, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1492, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1493, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1494, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1495, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1496, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1497, 0, 'en', 'core/setting/setting', 'generate', 'Generate', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1498, 0, 'en', 'core/setting/setting', 'generate_thumbnails', 'Generate thumbnails', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1499, 0, 'en', 'core/setting/setting', 'generate_thumbnails_success', 'Generate thumbnails successfully. :count files are generated!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1500, 0, 'en', 'core/setting/setting', 'generate_thumbnails_error', 'We are unable to regenerate thumbnail for these files :count files!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1501, 0, 'en', 'core/setting/setting', 'generate_thumbnails_description', 'Are you sure you want to re-generate thumbnails for all images? It will take time so please DO NOT leave this page, wait until it is finished.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1502, 0, 'en', 'core/setting/setting', 'enable_chunk_description', 'Chunk size upload is used to upload large file size.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1503, 0, 'en', 'core/setting/setting', 'watermark_description', 'WARNING: Watermark is just added to new uploaded images, it won\'t be added to existing images. Disable watermark won\'t remove watermark from existing images.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1504, 0, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1505, 0, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1506, 0, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1507, 0, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1508, 0, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1509, 0, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1510, 0, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1511, 0, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1512, 0, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1513, 0, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1514, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1515, 0, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1516, 0, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1517, 0, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1518, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1519, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1520, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1521, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1522, 0, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1523, 0, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1524, 0, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1525, 0, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1526, 0, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1527, 0, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1528, 0, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1529, 0, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1530, 0, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1531, 0, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1532, 0, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1533, 0, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1534, 0, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1535, 0, 'vi', 'core/setting/setting', 'general.locale', 'Ngôn ngữ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1536, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1537, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-09-28 19:28:58', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1538, 0, 'vi', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1539, 0, 'vi', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1540, 0, 'vi', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1541, 0, 'vi', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1542, 0, 'vi', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1543, 0, 'vi', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1544, 0, 'vi', 'core/setting/setting', 'general.locale_direction', 'Hướng chữ viết', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1545, 0, 'vi', 'core/setting/setting', 'general.select', '-- Lựa chọn --', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1546, 0, 'vi', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1547, 0, 'vi', 'core/setting/setting', 'general.show_on_front', 'Thiết lập trang chủ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1548, 0, 'vi', 'core/setting/setting', 'general.show_site_name', 'Hiển thị tên trang web sau tiêu đề trang, tách biệt bằng \"-\"?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1549, 0, 'vi', 'core/setting/setting', 'general.time_zone', 'Múi giờ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1550, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_description', 'Công cụ quản trị trang web của Google (GWT) là phần mềm miễn phí giúp bạn quản lý khía cạnh kỹ thuật của trang web của mình', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1551, 0, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1552, 0, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1553, 0, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1554, 0, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1555, 0, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1556, 0, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1557, 0, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1558, 0, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1559, 0, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1560, 0, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1561, 0, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1562, 0, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1563, 0, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1564, 0, 'vi', 'core/setting/setting', 'email.mailer', 'Loại', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1565, 0, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1566, 0, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1567, 0, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1568, 0, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1569, 0, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1570, 0, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1571, 0, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1572, 0, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1573, 0, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1574, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1575, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1576, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1577, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1578, 0, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1579, 0, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1580, 0, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1581, 0, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1582, 0, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1583, 0, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1584, 0, 'vi', 'core/setting/setting', 'email.default', 'Mặc định', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1585, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1586, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1587, 0, 'vi', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1588, 0, 'vi', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1589, 0, 'vi', 'core/setting/setting', 'email.encryption_placeholder', 'Kiểu mã hóa: ssl hoặc tls', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1590, 0, 'vi', 'core/setting/setting', 'email.log_channel', 'Phương thức log', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1591, 0, 'vi', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1592, 0, 'vi', 'core/setting/setting', 'email.ses_key', 'Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1593, 0, 'vi', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1594, 0, 'vi', 'core/setting/setting', 'email.ses_region', 'Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1595, 0, 'vi', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1596, 0, 'vi', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1597, 0, 'vi', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1598, 0, 'vi', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Sử dụng job queue để gửi email (Trước tiên phải thiết lập Queue https://laravel.com/docs/queues#supervisor-configuration)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1599, 0, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1600, 0, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1601, 0, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1602, 0, 'vi', 'core/setting/setting', 'enable', 'Bật', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1603, 0, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1604, 0, 'vi', 'core/setting/setting', 'email_setting_title', 'Cấu hình email', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1605, 0, 'vi', 'core/setting/setting', 'field_type_not_exists', 'Loại field này không được hỗ trợ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1606, 0, 'vi', 'core/setting/setting', 'test_email_description', 'Để gửi email thử nghiệm, hãy đảm bảo rằng bạn đã cập nhật cấu hình để gửi thư!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1607, 0, 'vi', 'core/setting/setting', 'test_email_input_placeholder', 'Nhập email mà bạn muốn gửi email thử nghiệm.', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1608, 0, 'vi', 'core/setting/setting', 'test_email_modal_title', 'Gửi một email thử nghiệm', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1609, 0, 'vi', 'core/setting/setting', 'test_email_send_success', 'Gửi email thành công!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1610, 0, 'vi', 'core/setting/setting', 'send', 'Gửi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1611, 0, 'vi', 'core/setting/setting', 'license.buyer', 'Tên đăng nhập', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1612, 0, 'vi', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1613, 0, 'vi', 'core/setting/setting', 'locale_direction_ltr', 'Trái sang phải', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1614, 0, 'vi', 'core/setting/setting', 'locale_direction_rtl', 'Phải sang trái', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1615, 0, 'vi', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1616, 0, 'vi', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1617, 0, 'vi', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1618, 0, 'vi', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1619, 0, 'vi', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1620, 0, 'vi', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1621, 0, 'vi', 'core/setting/setting', 'media.chunk_size_placeholder', 'Mặc định: 1048576 ~ 1MB', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1622, 0, 'vi', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1623, 0, 'vi', 'core/setting/setting', 'media.description', 'Cài đặt cho media', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1624, 0, 'vi', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1625, 0, 'vi', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Bật DO Spaces CDN?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1626, 0, 'vi', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1627, 0, 'vi', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1628, 0, 'vi', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1629, 0, 'vi', 'core/setting/setting', 'media.driver', 'Driver', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1630, 0, 'vi', 'core/setting/setting', 'media.enable_chunk', 'Bật chunk size upload?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1631, 0, 'vi', 'core/setting/setting', 'media.enable_watermark', 'Bật watermark?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1632, 0, 'vi', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1633, 0, 'vi', 'core/setting/setting', 'media.max_file_size_placeholder', 'Mặc định: 1048576 ~ 1GB', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1634, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1635, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://ten-mien-cua-ban.com', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1636, 0, 'vi', 'core/setting/setting', 'media.title', 'Media', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1637, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1638, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Mặc định: 70 (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1639, 0, 'vi', 'core/setting/setting', 'media.watermark_position', 'Vị trí watermark', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1640, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bên trái dưới cùng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1641, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bên phải dưới cùng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1642, 0, 'vi', 'core/setting/setting', 'media.watermark_position_center', 'Chính giữa', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1643, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_left', 'Bên trái trên cùng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1644, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_right', 'Bên phải trên cùng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1645, 0, 'vi', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1646, 0, 'vi', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1647, 0, 'vi', 'core/setting/setting', 'media.watermark_size', 'Kích thước của watermark (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1648, 0, 'vi', 'core/setting/setting', 'media.watermark_size_placeholder', 'Mặc định: 10 (%)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1649, 0, 'vi', 'core/setting/setting', 'media.watermark_source', 'Hình ảnh watermark', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1650, 0, 'en', 'core/table/general', 'operations', 'Operations', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1651, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1652, 0, 'en', 'core/table/general', 'display', 'Display', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1653, 0, 'en', 'core/table/general', 'all', 'All', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1654, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1655, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1656, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1657, 0, 'en', 'core/table/general', 'to', 'to', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1658, 0, 'en', 'core/table/general', 'in', 'in', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1659, 0, 'en', 'core/table/general', 'records', 'records', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1660, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1661, 0, 'en', 'core/table/general', 'no_record', 'No record', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1662, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1663, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1664, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1665, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1666, 0, 'en', 'core/table/general', 'delete', 'Delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1667, 0, 'en', 'core/table/general', 'close', 'Close', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1668, 0, 'en', 'core/table/general', 'contains', 'Contains', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1669, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1670, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1671, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1672, 0, 'en', 'core/table/general', 'value', 'Value', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1673, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1674, 0, 'en', 'core/table/general', 'reset', 'Reset', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1675, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1676, 0, 'en', 'core/table/general', 'apply', 'Apply', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1677, 0, 'en', 'core/table/general', 'filters', 'Filters', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1678, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1679, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1680, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1681, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1682, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1683, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1684, 0, 'en', 'core/table/general', 'search', 'Search...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1685, 0, 'en', 'core/table/table', 'operations', 'Operations', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1686, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1687, 0, 'en', 'core/table/table', 'display', 'Display', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1688, 0, 'en', 'core/table/table', 'all', 'All', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1689, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1690, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1691, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1692, 0, 'en', 'core/table/table', 'to', 'to', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1693, 0, 'en', 'core/table/table', 'in', 'in', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1694, 0, 'en', 'core/table/table', 'records', 'records', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1695, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1696, 0, 'en', 'core/table/table', 'no_record', 'No record', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1697, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1698, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1699, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1700, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1701, 0, 'en', 'core/table/table', 'delete', 'Delete', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1702, 0, 'en', 'core/table/table', 'close', 'Close', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1703, 0, 'en', 'core/table/table', 'contains', 'Contains', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1704, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1705, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1706, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1707, 0, 'en', 'core/table/table', 'value', 'Value', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1708, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1709, 0, 'en', 'core/table/table', 'reset', 'Reset', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1710, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1711, 0, 'en', 'core/table/table', 'apply', 'Apply', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1712, 0, 'en', 'core/table/table', 'filters', 'Filters', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1713, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1714, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1715, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1716, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1717, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1718, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1719, 0, 'en', 'core/table/table', 'search', 'Search...', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1720, 0, 'vi', 'core/table/general', 'operations', 'Hành động', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1721, 0, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1722, 0, 'vi', 'core/table/general', 'display', 'Hiển thị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1723, 0, 'vi', 'core/table/general', 'all', 'Tất cả', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1724, 0, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1725, 0, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1726, 0, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1727, 0, 'vi', 'core/table/general', 'to', 'đến', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1728, 0, 'vi', 'core/table/general', 'in', 'trong tổng số', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1729, 0, 'vi', 'core/table/general', 'records', 'bản ghi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1730, 0, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1731, 0, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1732, 0, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1733, 0, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1734, 0, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1735, 0, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1736, 0, 'vi', 'core/table/general', 'delete', 'Xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1737, 0, 'vi', 'core/table/general', 'close', 'Đóng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1738, 0, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1739, 0, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1740, 0, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1741, 0, 'vi', 'core/table/general', 'value', 'Giá trị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1742, 0, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1743, 0, 'vi', 'core/table/general', 'reset', 'Làm mới', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1744, 0, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1745, 0, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1746, 0, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1747, 0, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1748, 0, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1749, 0, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1750, 0, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1751, 0, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1752, 0, 'vi', 'core/table/table', 'operations', 'Hành động', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1753, 0, 'vi', 'core/table/table', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1754, 0, 'vi', 'core/table/table', 'display', 'Hiển thị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1755, 0, 'vi', 'core/table/table', 'all', 'Tất cả', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1756, 0, 'vi', 'core/table/table', 'edit_entry', 'Sửa', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1757, 0, 'vi', 'core/table/table', 'delete_entry', 'Xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1758, 0, 'vi', 'core/table/table', 'show_from', 'Hiển thị từ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1759, 0, 'vi', 'core/table/table', 'to', 'đến', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1760, 0, 'vi', 'core/table/table', 'in', 'trong tổng số', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1761, 0, 'vi', 'core/table/table', 'records', 'bản ghi', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1762, 0, 'vi', 'core/table/table', 'no_data', 'Không có dữ liệu để hiển thị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1763, 0, 'vi', 'core/table/table', 'no_record', 'không có bản ghi nào', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1764, 0, 'vi', 'core/table/table', 'loading', 'Đang tải dữ liệu từ hệ thống', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1765, 0, 'vi', 'core/table/table', 'confirm_delete', 'Xác nhận xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1766, 0, 'vi', 'core/table/table', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1767, 0, 'vi', 'core/table/table', 'cancel', 'Huỷ bỏ', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1768, 0, 'vi', 'core/table/table', 'delete', 'Xoá', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1769, 0, 'vi', 'core/table/table', 'close', 'Đóng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1770, 0, 'vi', 'core/table/table', 'is_equal_to', 'Bằng với', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1771, 0, 'vi', 'core/table/table', 'greater_than', 'Lớn hơn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1772, 0, 'vi', 'core/table/table', 'less_than', 'Nhỏ hơn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1773, 0, 'vi', 'core/table/table', 'value', 'Giá trị', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1774, 0, 'vi', 'core/table/table', 'select_field', 'Chọn trường', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1775, 0, 'vi', 'core/table/table', 'reset', 'Làm mới', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1776, 0, 'vi', 'core/table/table', 'add_additional_filter', 'Thêm bộ lọc', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1777, 0, 'vi', 'core/table/table', 'apply', 'Áp dụng', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1778, 0, 'vi', 'core/table/table', 'select_option', 'Lựa chọn', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1779, 0, 'vi', 'core/table/table', 'filters', 'Lọc dữ liệu', '2022-09-28 19:28:58', '2022-09-28 19:29:19'),
(1780, 0, 'vi', 'core/table/table', 'bulk_change', 'Thay đổi hàng loạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1781, 0, 'vi', 'core/table/table', 'bulk_actions', 'Hành động', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1782, 0, 'vi', 'core/table/table', 'contains', 'Bao gồm', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1783, 0, 'vi', 'core/table/table', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1784, 0, 'vi', 'core/table/table', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1785, 0, 'vi', 'core/table/table', 'save_bulk_change_success', 'Cập nhật dữ liệu cho các bản ghi thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1786, 0, 'vi', 'core/table/table', 'search', 'Tìm kiếm...', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1787, 0, 'en', 'packages/api/api', 'settings', 'API Settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1788, 0, 'en', 'packages/api/api', 'save_settings', 'Save settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1789, 0, 'en', 'packages/api/api', 'setting_title', 'API settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1790, 0, 'en', 'packages/api/api', 'setting_description', 'Settings for API', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1791, 0, 'en', 'packages/api/api', 'api_enabled', 'API enabled?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1792, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1793, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1794, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1795, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1796, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1797, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1798, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1799, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1800, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1801, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1802, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1803, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1804, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1805, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1806, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1807, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1808, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1809, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1810, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1811, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1812, 0, 'en', 'packages/menu/menu', 'title_placeholder', 'Title', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1813, 0, 'en', 'packages/menu/menu', 'icon_placeholder', 'Icon', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1814, 0, 'en', 'packages/menu/menu', 'url_placeholder', 'URL', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1815, 0, 'en', 'packages/menu/menu', 'css_class_placeholder', 'CSS class', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1816, 0, 'en', 'packages/menu/menu', 'menu_id', 'Menu ID', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1817, 0, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1818, 0, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1819, 0, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1820, 0, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1821, 0, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1822, 0, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1823, 0, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1824, 0, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1825, 0, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1826, 0, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1827, 0, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1828, 0, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1829, 0, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1830, 0, 'vi', 'packages/menu/menu', 'target', 'Target', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1831, 0, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1832, 0, 'vi', 'packages/menu/menu', 'url', 'URL', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1833, 0, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1834, 0, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1835, 0, 'vi', 'packages/menu/menu', 'display_location', 'Vị trí hiển thị', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1836, 0, 'vi', 'packages/menu/menu', 'menu_settings', 'Cấu hình menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1837, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1838, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1839, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1840, 0, 'en', 'packages/optimize/optimize', 'collapse_white_space', 'Collapse white space', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1841, 0, 'en', 'packages/optimize/optimize', 'collapse_white_space_description', 'This filter reduces bytes transmitted in an HTML file by removing unnecessary whitespace.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1842, 0, 'en', 'packages/optimize/optimize', 'elide_attributes', 'Elide attributes', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1843, 0, 'en', 'packages/optimize/optimize', 'elide_attributes_description', 'This filter reduces the transfer size of HTML files by removing attributes from tags when the specified value is equal to the default value for that attribute. This can save a modest number of bytes, and may make the document more compressible by canonicalizing the affected tags.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1844, 0, 'en', 'packages/optimize/optimize', 'inline_css', 'Inline CSS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1845, 0, 'en', 'packages/optimize/optimize', 'inline_css_description', 'This filter transforms the inline \"style\" attribute of tags into classes by moving the CSS to the header.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1846, 0, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch', 'Insert DNS prefetch', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1847, 0, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch_description', 'This filter injects tags in the HEAD to enable the browser to do DNS prefetching.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1848, 0, 'en', 'packages/optimize/optimize', 'remove_comments', 'Remove comments', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1849, 0, 'en', 'packages/optimize/optimize', 'remove_comments_description', 'This filter eliminates HTML, JS and CSS comments. The filter reduces the transfer size of HTML files by removing the comments. Depending on the HTML file, this filter can significantly reduce the number of bytes transmitted on the network.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1850, 0, 'en', 'packages/optimize/optimize', 'trim_urls', 'Trim URLs', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1851, 0, 'en', 'packages/optimize/optimize', 'trim_urls_description', 'This filter trims URLs by resolving them by making them relative to the base URL for the page.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1852, 0, 'en', 'packages/optimize/optimize', 'remove_quotes', 'Remove quotes', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1853, 0, 'en', 'packages/optimize/optimize', 'remove_quotes_description', 'This filter eliminates unnecessary quotation marks from HTML attributes. While required by the various HTML specifications, browsers permit their omission when the value of an attribute is composed of a certain subset of characters (alphanumerics and some punctuation characters).', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1854, 0, 'en', 'packages/optimize/optimize', 'defer_javascript', 'Defer javascript', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1855, 0, 'en', 'packages/optimize/optimize', 'defer_javascript_description', 'Defers the execution of javascript in the HTML. If necessary cancel deferring in some script, use data-pagespeed-no-defer as script attribute to cancel deferring.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1856, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1857, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1858, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1859, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1860, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1861, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1862, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1863, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1864, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1865, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1866, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1867, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1868, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1869, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1870, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1871, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1872, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1873, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1874, 0, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1875, 0, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1876, 0, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1877, 0, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1878, 0, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1879, 0, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1880, 0, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1881, 0, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1882, 0, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1883, 0, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1884, 0, 'vi', 'packages/page/pages', 'menu', 'Trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1885, 0, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1886, 0, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1887, 0, 'vi', 'packages/page/pages', 'pages', 'Trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1888, 0, 'vi', 'packages/page/pages', 'front_page', 'Trang chủ', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1889, 0, 'vi', 'packages/page/pages', 'settings.select', '-- Lựa chọn --', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1890, 0, 'vi', 'packages/page/pages', 'settings.show_on_front', 'Lựa chọn trang chủ', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1891, 0, 'vi', 'packages/page/pages', 'total_pages', 'Tổng số trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1892, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1893, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1894, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1895, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1896, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1897, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1898, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1899, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1900, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1901, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1902, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1903, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1904, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1905, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1906, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1907, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1908, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1909, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1910, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1911, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1912, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1913, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1914, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1915, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1916, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1917, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1918, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1919, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1920, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1921, 0, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1922, 0, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1923, 0, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1924, 0, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1925, 0, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1926, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1927, 0, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1928, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1929, 0, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2022-09-28 19:28:59', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1930, 0, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1931, 0, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1932, 0, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1933, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1934, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1935, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1936, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1937, 0, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1938, 0, 'vi', 'packages/plugin-management/plugin', 'activate_success', 'Kích hoạt thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1939, 0, 'vi', 'packages/plugin-management/plugin', 'activated_already', 'Gói mở rộng này đã được kích hoạt rồi!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1940, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_already', 'Gói mở rộng này đã được hủy kích hoạt rồi!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1941, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_success', 'Hủy kích hoạt thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1942, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_json', 'Sai cấu hình plugin.json!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1943, 0, 'vi', 'packages/plugin-management/plugin', 'missing_json_file', 'Thiếu tập tin cấu hình plugin.json!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1944, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_invalid', 'Gói mở rộng không hợp lệ!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1945, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_not_exist', 'Gói mở rộng không tồn tại', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1946, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_removed', 'Gói mở rộng đã bị xóa!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1947, 0, 'vi', 'packages/plugin-management/plugin', 'published_assets_success', 'Xuất bản assets cho gói mở rộng thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1948, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1949, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1950, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1951, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1952, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1953, 0, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1954, 0, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1955, 0, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1956, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1957, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1958, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1959, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1960, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1961, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1962, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1963, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1964, 0, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1965, 0, 'vi', 'packages/slug/slug', 'permalink_settings', 'Liên kết cố định', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1966, 0, 'vi', 'packages/slug/slug', 'preview', 'Xem trước', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1967, 0, 'vi', 'packages/slug/slug', 'settings.description', 'Quản lý liên kết cố định cho các module.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1968, 0, 'vi', 'packages/slug/slug', 'settings.preview', 'Xem trước', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1969, 0, 'vi', 'packages/slug/slug', 'settings.title', 'Cài đặt liên kết cố định', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1970, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1971, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1972, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1973, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1974, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1975, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1976, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1977, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1978, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1979, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1980, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1981, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1982, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1983, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1984, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1985, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1986, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1987, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1988, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1989, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1990, 0, 'en', 'packages/theme/theme', 'custom_html', 'Custom HTML', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1991, 0, 'en', 'packages/theme/theme', 'custom_header_html', 'Header HTML', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1992, 0, 'en', 'packages/theme/theme', 'custom_header_html_placeholder', 'HTML in header of page, no special tags: script, style, iframe...', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1993, 0, 'en', 'packages/theme/theme', 'custom_body_html', 'Body HTML', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1994, 0, 'en', 'packages/theme/theme', 'custom_body_html_placeholder', 'HTML in body of page, no special tags: script, style, iframe...', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1995, 0, 'en', 'packages/theme/theme', 'custom_footer_html', 'Footer HTML', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1996, 0, 'en', 'packages/theme/theme', 'custom_footer_html_placeholder', 'HTML in footer of page, no special tags: script, style, iframe...', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1997, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1998, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(1999, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2000, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2001, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2002, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2003, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2004, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2005, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2006, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2007, 0, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2008, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2009, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2010, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2011, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2012, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2013, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2014, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2015, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2016, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2017, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2018, 0, 'en', 'packages/theme/theme', 'update_custom_html_success', 'Update custom HTML successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2019, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2020, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2021, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2022, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2023, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2024, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2025, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2026, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2027, 0, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2028, 0, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2029, 0, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2030, 0, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2031, 0, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2032, 0, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2033, 0, 'vi', 'packages/theme/theme', 'appearance', 'Hiển thị', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2034, 0, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2035, 0, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2036, 0, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2037, 0, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2038, 0, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2039, 0, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2040, 0, 'vi', 'packages/theme/theme', 'remove', 'Xóa', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2041, 0, 'vi', 'packages/theme/theme', 'remove_theme', 'Xóa giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2042, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_message', 'Bạn có chắc chắn muốn xóa giao diện này?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2043, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Vâng, xác nhận xóa!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2044, 0, 'vi', 'packages/theme/theme', 'remove_theme_success', 'Xóa giao diện thành công!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2045, 0, 'vi', 'packages/theme/theme', 'settings.description', 'Cài đặt giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2046, 0, 'vi', 'packages/theme/theme', 'settings.title', 'Giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2047, 0, 'vi', 'packages/theme/theme', 'show_admin_bar', 'Hiển thị admin bar (khi admin đã đăng nhập, vẫn hiển thị admin bar trên website)?', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2048, 0, 'vi', 'packages/theme/theme', 'total_themes', 'Tổng số giao diện', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2049, 0, 'vi', 'packages/theme/theme', 'add_new', 'Thêm mới', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2050, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2051, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2052, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2053, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2054, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2055, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2056, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2057, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2058, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2059, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2060, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2061, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2062, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2063, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2064, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2065, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2066, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2067, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2068, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2069, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2070, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2071, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2072, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2073, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2074, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2075, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2076, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2022-09-28 19:28:59', '2022-09-28 19:29:19'),
(2077, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2078, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2079, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2080, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2081, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2082, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2083, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2084, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2085, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2086, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2087, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2088, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2089, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2090, 0, 'vi', 'packages/widget/global', 'name', 'Widgets', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2091, 0, 'vi', 'packages/widget/global', 'create', 'New widget', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2092, 0, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2093, 0, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2094, 0, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2095, 0, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2096, 0, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2097, 0, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2098, 0, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2099, 0, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2100, 0, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2101, 0, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2102, 0, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2103, 0, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2104, 0, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2105, 0, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2106, 0, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2107, 0, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2108, 0, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2109, 0, 'vi', 'packages/widget/widget', 'name', 'Widgets', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2110, 0, 'vi', 'packages/widget/widget', 'create', 'New widget', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2111, 0, 'vi', 'packages/widget/widget', 'edit', 'Edit widget', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2112, 0, 'vi', 'packages/widget/widget', 'available', 'Tiện ích có sẵn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2113, 0, 'vi', 'packages/widget/widget', 'delete', 'Xóa', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2114, 0, 'vi', 'packages/widget/widget', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2115, 0, 'vi', 'packages/widget/widget', 'number_post_display', 'Số bài viết sẽ hiển thị', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2116, 0, 'vi', 'packages/widget/widget', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2117, 0, 'vi', 'packages/widget/widget', 'select_menu', 'Lựa chọn trình đơn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2118, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu', 'Menu tùy chỉnh', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2119, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2120, 0, 'vi', 'packages/widget/widget', 'widget_recent_post', 'Bài viết gần đây', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2121, 0, 'vi', 'packages/widget/widget', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2122, 0, 'vi', 'packages/widget/widget', 'widget_tag', 'Thẻ', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2123, 0, 'vi', 'packages/widget/widget', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2124, 0, 'vi', 'packages/widget/widget', 'widget_text', 'Văn bản', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2125, 0, 'vi', 'packages/widget/widget', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2126, 0, 'vi', 'packages/widget/widget', 'delete_success', 'Xoá tiện ích thành công', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2127, 0, 'vi', 'packages/widget/widget', 'save_success', 'Lưu tiện ích thành công!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2128, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2129, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2130, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2131, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2132, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2133, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2134, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2135, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2136, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2137, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2138, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2139, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2140, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2141, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2142, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2143, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2144, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2145, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2146, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2147, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2148, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2149, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2150, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2151, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2152, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2153, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2154, 0, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2155, 0, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2156, 0, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2157, 0, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2158, 0, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2159, 0, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2160, 0, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2161, 0, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2162, 0, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2163, 0, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2164, 0, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2165, 0, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2166, 0, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2167, 0, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2168, 0, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2169, 0, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2170, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2171, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2172, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2173, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2174, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2175, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2176, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2177, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2178, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2179, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2180, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2181, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2182, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2183, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2184, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2185, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2186, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2187, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2188, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2189, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2190, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2191, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2192, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2193, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2194, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2195, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2196, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2197, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2198, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2199, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2200, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2201, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2202, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2203, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2204, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2205, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2206, 0, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2207, 0, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2208, 0, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2209, 0, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2210, 0, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2211, 0, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2212, 0, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2213, 0, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2214, 0, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2215, 0, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2216, 0, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2217, 0, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2218, 0, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2219, 0, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2220, 0, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2221, 0, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2222, 0, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2223, 0, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2224, 0, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2225, 0, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2226, 0, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2227, 0, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2228, 0, 'vi', 'plugins/audit-log/history', 'system', 'Hệ thống', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2229, 0, 'vi', 'plugins/audit-log/history', 'action', 'Hành động', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2230, 0, 'vi', 'plugins/audit-log/history', 'delete_all', 'Xóa tất cả bản ghi', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2231, 0, 'vi', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2232, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2233, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2234, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2235, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2236, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2237, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2238, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2239, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2240, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2241, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2242, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2243, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2244, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2245, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2246, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2247, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2248, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2249, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2250, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2251, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2252, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2253, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2254, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2255, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2256, 0, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2257, 0, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2258, 0, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2259, 0, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2260, 0, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2261, 0, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2262, 0, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2263, 0, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2264, 0, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2265, 0, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2266, 0, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2267, 0, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2268, 0, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2269, 0, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2270, 0, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2271, 0, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2272, 0, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2273, 0, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2274, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2275, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2276, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2277, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2278, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2279, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2280, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2281, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2282, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2283, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2284, 0, 'en', 'plugins/blog/base', 'settings.title', 'Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2285, 0, 'en', 'plugins/blog/base', 'settings.description', 'Settings for Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2286, 0, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema', 'Enable Blog Post Schema?', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2287, 0, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema_description', 'Learn more: https://schema.org/Article', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2288, 0, 'en', 'plugins/blog/base', 'settings.schema_type', 'Schema type', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2289, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2290, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2291, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2292, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2022-09-28 19:29:00', '2022-09-28 19:29:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2293, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2294, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2295, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2296, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2297, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2298, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2299, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2300, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2301, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2302, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2303, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2304, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2305, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2306, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2307, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2308, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2309, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2310, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2311, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2312, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2313, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2314, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2315, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2316, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2317, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2318, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2319, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2320, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2321, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2322, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2323, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2324, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2325, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2326, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2327, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2328, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2329, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2330, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2331, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2332, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2333, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2334, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2335, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2336, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2337, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2338, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2339, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2340, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2022-09-28 19:29:00', '2022-09-28 19:29:20'),
(2341, 0, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2342, 0, 'vi', 'plugins/blog/base', 'blog_page', 'Trang Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2343, 0, 'vi', 'plugins/blog/base', 'select', '-- Lựa chọn --', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2344, 0, 'vi', 'plugins/blog/base', 'blog_page_id', 'Trang Blog', '2022-09-28 19:29:00', '2022-09-28 19:29:19'),
(2345, 0, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2346, 0, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2347, 0, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2348, 0, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2349, 0, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2350, 0, 'vi', 'plugins/blog/categories', 'none', 'Không', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2351, 0, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2352, 0, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2353, 0, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2354, 0, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2355, 0, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2356, 0, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2357, 0, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2358, 0, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2359, 0, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2360, 0, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2361, 0, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2362, 0, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2363, 0, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2364, 0, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2365, 0, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2366, 0, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2367, 0, 'vi', 'plugins/blog/posts', 'form.is_featured', 'Bài viết nổi bật?', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2368, 0, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2369, 0, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2370, 0, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2371, 0, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2372, 0, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2373, 0, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2374, 0, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2375, 0, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2376, 0, 'vi', 'plugins/blog/posts', 'post', 'Bài viết', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2377, 0, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2378, 0, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2379, 0, 'vi', 'plugins/blog/posts', 'categories', 'Danh mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2380, 0, 'vi', 'plugins/blog/posts', 'category', 'Danh mục', '2022-09-28 19:29:01', '2022-09-28 19:29:19'),
(2381, 0, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2382, 0, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2383, 0, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2384, 0, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2385, 0, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2386, 0, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2387, 0, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2388, 0, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2389, 0, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2390, 0, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2391, 0, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2392, 0, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2393, 0, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2394, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2395, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2396, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2397, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2398, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2399, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2400, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2401, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2402, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2403, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2404, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2405, 0, 'en', 'plugins/captcha/captcha', 'numbers.0', 'Zero', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2406, 0, 'en', 'plugins/captcha/captcha', 'numbers.1', 'One', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2407, 0, 'en', 'plugins/captcha/captcha', 'numbers.2', 'Two', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2408, 0, 'en', 'plugins/captcha/captcha', 'numbers.3', 'Three', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2409, 0, 'en', 'plugins/captcha/captcha', 'numbers.4', 'Four', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2410, 0, 'en', 'plugins/captcha/captcha', 'numbers.5', 'Five', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2411, 0, 'en', 'plugins/captcha/captcha', 'numbers.6', 'Six', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2412, 0, 'en', 'plugins/captcha/captcha', 'numbers.7', 'Seven', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2413, 0, 'en', 'plugins/captcha/captcha', 'numbers.8', 'Eight', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2414, 0, 'en', 'plugins/captcha/captcha', 'numbers.9', 'Nine', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2415, 0, 'en', 'plugins/captcha/captcha', 'numbers.10', 'Ten', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2416, 0, 'en', 'plugins/captcha/captcha', 'numbers.11', 'Eleven', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2417, 0, 'en', 'plugins/captcha/captcha', 'numbers.12', 'Twelve', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2418, 0, 'en', 'plugins/captcha/captcha', 'operands.+', 'plus', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2419, 0, 'en', 'plugins/captcha/captcha', 'operands.-', 'minus', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2420, 0, 'en', 'plugins/captcha/captcha', 'operands.*', 'times', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2421, 0, 'en', 'plugins/captcha/captcha', 'operands./', 'divided by', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2422, 0, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2423, 0, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2424, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2425, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2426, 0, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2427, 0, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2428, 0, 'en', 'plugins/career/career', 'name', 'Careers', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2429, 0, 'en', 'plugins/career/career', 'create', 'New career', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2430, 0, 'en', 'plugins/career/career', 'edit', 'Edit career', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2431, 0, 'en', 'plugins/career/career', 'location', 'Location', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2432, 0, 'en', 'plugins/career/career', 'salary', 'Salary', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2433, 0, 'vi', 'plugins/career/career', 'name', 'Tuyển dụng', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2434, 0, 'vi', 'plugins/career/career', 'create', 'Thêm tin tuyển dụng', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2435, 0, 'vi', 'plugins/career/career', 'edit', 'Sửa tin tuyển dụng', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2436, 0, 'vi', 'plugins/career/career', 'location', 'Địa điểm', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2437, 0, 'vi', 'plugins/career/career', 'salary', 'Mức lương', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2438, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2439, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2440, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2441, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2442, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2443, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2444, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2445, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2446, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2447, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2448, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2449, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2450, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2451, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2452, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2453, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2454, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2455, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2456, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2457, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2458, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2459, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2460, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2461, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2462, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2463, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2464, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2465, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2466, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2467, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2468, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2469, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2470, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2471, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2472, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2473, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2474, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2475, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2476, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2477, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2478, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2479, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2480, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2481, 0, 'en', 'plugins/contact/contact', 'settings.title', 'Contact', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2482, 0, 'en', 'plugins/contact/contact', 'settings.description', 'Settings for contact plugin', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2483, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords', 'Blacklist keywords', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2484, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_placeholder', 'keywords...', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2485, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_helper', 'Blacklist contact requests if it includes those keywords in the content field (separate by comma).', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2486, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains', 'Blacklist email domains', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2487, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_placeholder', 'domain...', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2488, 0, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_helper', 'Blacklist contact requests if the email domain is in blacklist domains (separate by comma).', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2489, 0, 'en', 'plugins/contact/contact', 'settings.enable_math_captcha', 'Enable math captcha?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2490, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2491, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2492, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2493, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2494, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2495, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2496, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2497, 0, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2498, 0, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2499, 0, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2500, 0, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2501, 0, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2502, 0, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2503, 0, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2504, 0, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2505, 0, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2506, 0, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2507, 0, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2508, 0, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2509, 0, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2510, 0, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2511, 0, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2512, 0, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2513, 0, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2514, 0, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2515, 0, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2516, 0, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2517, 0, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2518, 0, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2519, 0, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2520, 0, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2521, 0, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2522, 0, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2523, 0, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2524, 0, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2525, 0, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2526, 0, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2527, 0, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2528, 0, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2529, 0, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2530, 0, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2531, 0, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2532, 0, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2533, 0, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2534, 0, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2535, 0, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2536, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2537, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2538, 0, 'vi', 'plugins/contact/contact', 'replies', 'Trả lời', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2539, 0, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2540, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2541, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2542, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2543, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2544, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2545, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2546, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2547, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2548, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2549, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2550, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2551, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2552, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2553, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2554, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2555, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2556, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2557, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2558, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2559, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2560, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2561, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2562, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2563, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2564, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2565, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2566, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2567, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2568, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2569, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2570, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2571, 0, 'en', 'plugins/language/language', 'order', 'Order', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2572, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2573, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2574, 0, 'en', 'plugins/language/language', 'code', 'Code', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2575, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2576, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2577, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2578, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2579, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2580, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2581, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2582, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2583, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2584, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2585, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2586, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2587, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2588, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2589, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2590, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2591, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2592, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2593, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2594, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2595, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2596, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2597, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2598, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2599, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2600, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2601, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2602, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2603, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2604, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2605, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2606, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2607, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2022-09-28 19:29:01', '2022-09-28 19:29:20'),
(2608, 0, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2609, 0, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2610, 0, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2611, 0, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2612, 0, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2613, 0, 'vi', 'plugins/language/language', 'language_name', 'Tên đầy đủ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2614, 0, 'vi', 'plugins/language/language', 'language_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2615, 0, 'vi', 'plugins/language/language', 'locale', 'Locale', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2616, 0, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2617, 0, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2618, 0, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2619, 0, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2620, 0, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2621, 0, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2622, 0, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2623, 0, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2624, 0, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2625, 0, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2626, 0, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2627, 0, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2628, 0, 'vi', 'plugins/language/language', 'code', 'Mã', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2629, 0, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2630, 0, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2631, 0, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2632, 0, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2633, 0, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2634, 0, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2635, 0, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2636, 0, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2637, 0, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2638, 0, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2639, 0, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2640, 0, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2641, 0, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2642, 0, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2643, 0, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2644, 0, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2645, 0, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2646, 0, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2647, 0, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2648, 0, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2649, 0, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2650, 0, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2651, 0, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2652, 0, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2653, 0, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2654, 0, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2655, 0, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2656, 0, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2657, 0, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2658, 0, 'vi', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Hiển thị bản ghi ở ngôn ngữ mặc định nếu phiên bản cho ngôn ngữ hiện tại chưa có', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2659, 0, 'en', 'plugins/location/bulk-import', 'name', 'Bulk Import', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2660, 0, 'en', 'plugins/location/bulk-import', 'loading_text', 'Importing', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2661, 0, 'en', 'plugins/location/bulk-import', 'imported_successfully', 'Imported successfully.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2662, 0, 'en', 'plugins/location/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2663, 0, 'en', 'plugins/location/bulk-import', 'please_choose_the_file', 'Please choose the file', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2664, 0, 'en', 'plugins/location/bulk-import', 'start_import', 'Start Import', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2665, 0, 'en', 'plugins/location/bulk-import', 'note', 'Note!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2666, 0, 'en', 'plugins/location/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2667, 0, 'en', 'plugins/location/bulk-import', 'results', 'Result: :success successes, :failed failures', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2668, 0, 'en', 'plugins/location/bulk-import', 'failures', 'Failures', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2669, 0, 'en', 'plugins/location/bulk-import', 'tables.import', 'Import', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2670, 0, 'en', 'plugins/location/bulk-import', 'template', 'Template', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2671, 0, 'en', 'plugins/location/bulk-import', 'rules', 'Rules', '2022-09-28 19:29:02', '2022-09-28 19:29:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2672, 0, 'en', 'plugins/location/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2673, 0, 'en', 'plugins/location/bulk-import', 'choose_file', 'Choose file', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2674, 0, 'en', 'plugins/location/bulk-import', 'menu', 'Import locations', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2675, 0, 'en', 'plugins/location/bulk-import', 'download-csv-file', 'Download CSV template', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2676, 0, 'en', 'plugins/location/bulk-import', 'download-excel-file', 'Download Excel template', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2677, 0, 'en', 'plugins/location/bulk-import', 'downloading', 'Downloading...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2678, 0, 'en', 'plugins/location/bulk-import', 'export.template.input_error', 'Input error', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2679, 0, 'en', 'plugins/location/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2680, 0, 'en', 'plugins/location/bulk-import', 'export.template.allowed_input', 'Allowed input', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2681, 0, 'en', 'plugins/location/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2682, 0, 'en', 'plugins/location/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2683, 0, 'en', 'plugins/location/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2684, 0, 'en', 'plugins/location/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2685, 0, 'en', 'plugins/location/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2686, 0, 'en', 'plugins/location/bulk-import', 'export.template.max_text_length', 'Max text length', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2687, 0, 'en', 'plugins/location/bulk-import', 'export.template.prompt_max_text_length', 'Only accept text with length less than or equal to :max.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2688, 0, 'en', 'plugins/location/bulk-import', 'import_failed_description', 'Import failed, please check the errors below!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2689, 0, 'en', 'plugins/location/bulk-import', 'available_enable_multi_language', 'Only available when you enable \"Is Multi Language?\"', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2690, 0, 'en', 'plugins/location/bulk-import', 'import_type_required_if', 'The :attribute field is required when \"Import Type\" is :value.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2691, 0, 'en', 'plugins/location/bulk-import', 'import_available_data', 'Import available data', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2692, 0, 'en', 'plugins/location/bulk-import', 'import', 'Import', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2693, 0, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation', 'Import available data confirmation', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2694, 0, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation_content', 'Do you really want to import states/cities for this country?', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2695, 0, 'en', 'plugins/location/city', 'name', 'Cities', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2696, 0, 'en', 'plugins/location/city', 'create', 'New city', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2697, 0, 'en', 'plugins/location/city', 'edit', 'Edit city', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2698, 0, 'en', 'plugins/location/city', 'state', 'State', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2699, 0, 'en', 'plugins/location/city', 'select_state', 'Select state...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2700, 0, 'en', 'plugins/location/city', 'select_city', 'Select city...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2701, 0, 'en', 'plugins/location/city', 'country', 'Country', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2702, 0, 'en', 'plugins/location/city', 'select_country', 'Select country...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2703, 0, 'en', 'plugins/location/city', 'city', 'City', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2704, 0, 'en', 'plugins/location/country', 'name', 'Countries', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2705, 0, 'en', 'plugins/location/country', 'create', 'New country', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2706, 0, 'en', 'plugins/location/country', 'edit', 'Edit country', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2707, 0, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2708, 0, 'en', 'plugins/location/country', 'code', 'Country ISO code', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2709, 0, 'en', 'plugins/location/country', 'code_placeholder', 'ISO country code, uppercase. Ex: US.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2710, 0, 'en', 'plugins/location/country', 'code_helper', 'Find country ISO code from here: https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2711, 0, 'en', 'plugins/location/location', 'name', 'Locations', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2712, 0, 'en', 'plugins/location/location', 'create', 'New location', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2713, 0, 'en', 'plugins/location/location', 'edit', 'Edit location', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2714, 0, 'en', 'plugins/location/location', 'all_states', 'All states', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2715, 0, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2716, 0, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2717, 0, 'en', 'plugins/location/location', 'exporting', 'Exporting', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2718, 0, 'en', 'plugins/location/location', 'total_country', 'Total countries', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2719, 0, 'en', 'plugins/location/location', 'total_state', 'Total states', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2720, 0, 'en', 'plugins/location/location', 'total_city', 'Total cities', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2721, 0, 'en', 'plugins/location/location', 'export_location', 'Export location', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2722, 0, 'en', 'plugins/location/location', 'start_export', 'Start exporting', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2723, 0, 'en', 'plugins/location/state', 'name', 'States', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2724, 0, 'en', 'plugins/location/state', 'create', 'New state', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2725, 0, 'en', 'plugins/location/state', 'edit', 'Edit state', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2726, 0, 'en', 'plugins/location/state', 'country', 'Country', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2727, 0, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2728, 0, 'en', 'plugins/location/state', 'state', 'State', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2729, 0, 'vi', 'plugins/location/city', 'name', 'Quận/huyện', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2730, 0, 'vi', 'plugins/location/city', 'create', 'Thêm quận/huyện', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2731, 0, 'vi', 'plugins/location/city', 'edit', 'Sửa quận/huyện', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2732, 0, 'vi', 'plugins/location/city', 'state', 'Tỉnh', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2733, 0, 'vi', 'plugins/location/city', 'select_state', 'Lựa chọn tỉnh/thành phố...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2734, 0, 'vi', 'plugins/location/city', 'select_city', 'Lựa chọn quận/huyện...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2735, 0, 'vi', 'plugins/location/city', 'country', 'Quốc gia', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2736, 0, 'vi', 'plugins/location/city', 'select_country', 'Lựa chọn quốc gia...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2737, 0, 'vi', 'plugins/location/city', 'city', 'Quận/huyện', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2738, 0, 'vi', 'plugins/location/country', 'name', 'Quốc gia', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2739, 0, 'vi', 'plugins/location/country', 'create', 'Thêm quốc gia', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2740, 0, 'vi', 'plugins/location/country', 'edit', 'Sửa quốc gia', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2741, 0, 'vi', 'plugins/location/country', 'nationality', 'Quốc tịch', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2742, 0, 'vi', 'plugins/location/location', 'name', 'Địa điểm', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2743, 0, 'vi', 'plugins/location/location', 'create', 'Thêm địa điểm', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2744, 0, 'vi', 'plugins/location/location', 'edit', 'Sửa địa điểm', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2745, 0, 'vi', 'plugins/location/location', 'all_states', 'Tất cả tỉnh thành', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2746, 0, 'vi', 'plugins/location/state', 'name', 'Tỉnh/thành phố', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2747, 0, 'vi', 'plugins/location/state', 'create', 'Thêm tỉnh/thành phố', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2748, 0, 'vi', 'plugins/location/state', 'edit', 'Sửa tỉnh/thành phố', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2749, 0, 'vi', 'plugins/location/state', 'country', 'Quốc gia', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2750, 0, 'vi', 'plugins/location/state', 'select_country', 'Lựa chọn quốc gia...', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2751, 0, 'vi', 'plugins/location/state', 'state', 'Tỉnh/thành phố', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2752, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2753, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2754, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2755, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2756, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2757, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2758, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2759, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2760, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2761, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2762, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2763, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2764, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2765, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2766, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2767, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2768, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2769, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2770, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2771, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2772, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2773, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2774, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2775, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2776, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2777, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2778, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2779, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2780, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2781, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2782, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2783, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2784, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2785, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2786, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2787, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2788, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2789, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2790, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2791, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2792, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2793, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2794, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2795, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2796, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2797, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2798, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2799, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2800, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2801, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2802, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2803, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2804, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2805, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2806, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2807, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2808, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2809, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2810, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2811, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2812, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2813, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2814, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2815, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2816, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2817, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2818, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2819, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2820, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2821, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2822, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2823, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2824, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2825, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2826, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2827, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2828, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2829, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2830, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2831, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2832, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2833, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2834, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2835, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2836, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2837, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2838, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2839, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2840, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2841, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2842, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2843, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2022-09-28 19:29:02', '2022-09-28 19:29:20'),
(2844, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2845, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2846, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2847, 0, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2848, 0, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2849, 0, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2850, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2851, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2852, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2853, 0, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2854, 0, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2855, 0, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2856, 0, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2857, 0, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2858, 0, 'en', 'plugins/payment/payment', 'payment_description', 'Pay for your order #:order_id at :site_url', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2859, 0, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2860, 0, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2861, 0, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2862, 0, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2863, 0, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2864, 0, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2865, 0, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2866, 0, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2867, 0, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2868, 0, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2869, 0, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2870, 0, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2871, 0, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2872, 0, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2873, 0, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2874, 0, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2875, 0, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2876, 0, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2877, 0, 'vi', 'plugins/payment/payment', 'email', 'Email', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2878, 0, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2879, 0, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2880, 0, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2881, 0, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2882, 0, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2883, 0, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2884, 0, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2885, 0, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2886, 0, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2887, 0, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2888, 0, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2889, 0, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2890, 0, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2891, 0, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2892, 0, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2893, 0, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2894, 0, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2895, 0, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2896, 0, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2897, 0, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2898, 0, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2899, 0, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2900, 0, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2901, 0, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2902, 0, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2903, 0, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2904, 0, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2905, 0, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2906, 0, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2907, 0, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2908, 0, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2909, 0, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2910, 0, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2911, 0, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2912, 0, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2913, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2914, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2915, 0, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2916, 0, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2917, 0, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2918, 0, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2919, 0, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2920, 0, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2921, 0, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2922, 0, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2923, 0, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2924, 0, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2925, 0, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2926, 0, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2927, 0, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2928, 0, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2929, 0, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2930, 0, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2931, 0, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2932, 0, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2933, 0, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2934, 0, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2935, 0, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2936, 0, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2937, 0, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2938, 0, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2939, 0, 'en', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2940, 0, 'en', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2941, 0, 'en', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2942, 0, 'en', 'plugins/real-estate/account-property', 'properties', 'Properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2943, 0, 'en', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2944, 0, 'en', 'plugins/real-estate/account', 'create', 'New account', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2945, 0, 'en', 'plugins/real-estate/account', 'edit', 'Edit account \":name\"', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2946, 0, 'en', 'plugins/real-estate/account', 'name', 'Accounts', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2947, 0, 'en', 'plugins/real-estate/account', 'form.email', 'Email', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2948, 0, 'en', 'plugins/real-estate/account', 'form.password', 'Password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2949, 0, 'en', 'plugins/real-estate/account', 'form.password_confirmation', 'Password confirmation', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2950, 0, 'en', 'plugins/real-estate/account', 'form.change_password', 'Change password?', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2951, 0, 'en', 'plugins/real-estate/account', 'forgot_password', 'Forgot password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2952, 0, 'en', 'plugins/real-estate/account', 'login', 'Login', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2953, 0, 'en', 'plugins/real-estate/account', 'buy_credits', 'Buy credits', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2954, 0, 'en', 'plugins/real-estate/account', 'credits', 'credits', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2955, 0, 'en', 'plugins/real-estate/account', 'account_settings', 'Account settings', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2956, 0, 'en', 'plugins/real-estate/account', 'update_profile_success', 'Update profile successfully!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2957, 0, 'en', 'plugins/real-estate/account', 'security', 'Security', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2958, 0, 'en', 'plugins/real-estate/account', 'packages', 'Packages', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2959, 0, 'en', 'plugins/real-estate/account', 'transactions', 'Transactions', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2960, 0, 'en', 'plugins/real-estate/account', 'subscribe_package', 'Subscribe package \":name\"', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2961, 0, 'en', 'plugins/real-estate/account', 'first_name', 'First Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2962, 0, 'en', 'plugins/real-estate/account', 'last_name', 'Last Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2963, 0, 'en', 'plugins/real-estate/account', 'username', 'Username', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2964, 0, 'en', 'plugins/real-estate/account', 'username_placeholder', 'Ex: john_smith', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2965, 0, 'en', 'plugins/real-estate/account', 'company', 'Company Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2966, 0, 'en', 'plugins/real-estate/account', 'company_placeholder', 'Company Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2967, 0, 'en', 'plugins/real-estate/account', 'phone', 'Phone', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2968, 0, 'en', 'plugins/real-estate/account', 'phone_placeholder', 'Phone', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2969, 0, 'en', 'plugins/real-estate/account', 'email_placeholder', 'Ex: example@gmail.com', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2970, 0, 'en', 'plugins/real-estate/account', 'dob', 'Date of birth', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2971, 0, 'en', 'plugins/real-estate/account', 'number_of_properties', 'Number of properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2972, 0, 'en', 'plugins/real-estate/account', 'agents', 'Agents', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2973, 0, 'en', 'plugins/real-estate/category', 'name', 'Categories', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2974, 0, 'en', 'plugins/real-estate/category', 'create', 'New category', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2975, 0, 'en', 'plugins/real-estate/category', 'edit', 'Edit category', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2976, 0, 'en', 'plugins/real-estate/category', 'menu', 'Property categories', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2977, 0, 'en', 'plugins/real-estate/category', 'none', 'None', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2978, 0, 'en', 'plugins/real-estate/category', 'total_properties', 'Total properties', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2979, 0, 'en', 'plugins/real-estate/category', 'total_projects', 'Total projects', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2980, 0, 'en', 'plugins/real-estate/category', 'is_default', 'Is default', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2981, 0, 'en', 'plugins/real-estate/consult', 'name', 'Consults', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2982, 0, 'en', 'plugins/real-estate/consult', 'edit', 'View consult', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2983, 0, 'en', 'plugins/real-estate/consult', 'statuses.read', 'Read', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2984, 0, 'en', 'plugins/real-estate/consult', 'statuses.unread', 'Unread', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2985, 0, 'en', 'plugins/real-estate/consult', 'phone', 'Phone', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2986, 0, 'en', 'plugins/real-estate/consult', 'content', 'Details', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2987, 0, 'en', 'plugins/real-estate/consult', 'consult_information', 'Consult information', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2988, 0, 'en', 'plugins/real-estate/consult', 'email.header', 'Email', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2989, 0, 'en', 'plugins/real-estate/consult', 'email.title', 'New consult from your site', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2990, 0, 'en', 'plugins/real-estate/consult', 'email.success', 'Send consult successfully!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2991, 0, 'en', 'plugins/real-estate/consult', 'email.failed', 'Can\'t send request on this time, please try again later!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2992, 0, 'en', 'plugins/real-estate/consult', 'form.name.required', 'Name is required', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2993, 0, 'en', 'plugins/real-estate/consult', 'form.email.required', 'Email is required', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2994, 0, 'en', 'plugins/real-estate/consult', 'form.email.email', 'The email address is not valid', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2995, 0, 'en', 'plugins/real-estate/consult', 'form.content.required', 'Message is required', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2996, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2997, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2998, 0, 'en', 'plugins/real-estate/consult', 'consult_sent_from', 'This consult information sent from', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(2999, 0, 'en', 'plugins/real-estate/consult', 'time', 'Time', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3000, 0, 'en', 'plugins/real-estate/consult', 'consult_id', 'Consult ID', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3001, 0, 'en', 'plugins/real-estate/consult', 'form_name', 'Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3002, 0, 'en', 'plugins/real-estate/consult', 'form_email', 'Email', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3003, 0, 'en', 'plugins/real-estate/consult', 'form_phone', 'Phone', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3004, 0, 'en', 'plugins/real-estate/consult', 'mark_as_read', 'Mark as read', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3005, 0, 'en', 'plugins/real-estate/consult', 'mark_as_unread', 'Mark as unread', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3006, 0, 'en', 'plugins/real-estate/consult', 'new_consult_notice', 'You have <span class=\"bold\">:count</span> New Consults', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3007, 0, 'en', 'plugins/real-estate/consult', 'view_all', 'View all', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3008, 0, 'en', 'plugins/real-estate/consult', 'project', 'Project', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3009, 0, 'en', 'plugins/real-estate/consult', 'property', 'Property', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3010, 0, 'en', 'plugins/real-estate/currency', 'currencies', 'Currencies', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3011, 0, 'en', 'plugins/real-estate/currency', 'setting_description', 'List of currencies using on website', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3012, 0, 'en', 'plugins/real-estate/currency', 'name', 'Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3013, 0, 'en', 'plugins/real-estate/currency', 'symbol', 'Symbol', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3014, 0, 'en', 'plugins/real-estate/currency', 'number_of_decimals', 'Number of decimals', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3015, 0, 'en', 'plugins/real-estate/currency', 'exchange_rate', 'Exchange rate', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3016, 0, 'en', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Position of symbol', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3017, 0, 'en', 'plugins/real-estate/currency', 'is_default', 'Is default?', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3018, 0, 'en', 'plugins/real-estate/currency', 'remove', 'Remove', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3019, 0, 'en', 'plugins/real-estate/currency', 'new_currency', 'Add a new currency', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3020, 0, 'en', 'plugins/real-estate/currency', 'save_settings', 'Save settings', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3021, 0, 'en', 'plugins/real-estate/currency', 'before_number', 'Before number', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3022, 0, 'en', 'plugins/real-estate/currency', 'after_number', 'After number', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3023, 0, 'en', 'plugins/real-estate/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3024, 0, 'en', 'plugins/real-estate/dashboard', 'joined_on', 'Joined :date', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3025, 0, 'en', 'plugins/real-estate/dashboard', 'dob', 'Born :date', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3026, 0, 'en', 'plugins/real-estate/dashboard', 'email', 'Email', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3027, 0, 'en', 'plugins/real-estate/dashboard', 'username', 'Username', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3028, 0, 'en', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Username', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3029, 0, 'en', 'plugins/real-estate/dashboard', 'password', 'Password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3030, 0, 'en', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirm Password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3031, 0, 'en', 'plugins/real-estate/dashboard', 'remember-me', 'Remember Me', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3032, 0, 'en', 'plugins/real-estate/dashboard', 'login-title', 'Login', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3033, 0, 'en', 'plugins/real-estate/dashboard', 'login-cta', 'Login', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3034, 0, 'en', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3035, 0, 'en', 'plugins/real-estate/dashboard', 'register-cta', 'Register', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3036, 0, 'en', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3037, 0, 'en', 'plugins/real-estate/dashboard', 'name', 'Name', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3038, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-title', 'Reset Password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3039, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Reset Password', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3040, 0, 'en', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancel', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3041, 0, 'en', 'plugins/real-estate/dashboard', 'logout-cta', 'Logout', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3042, 0, 'en', 'plugins/real-estate/dashboard', 'header_profile_link', 'Profile', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3043, 0, 'en', 'plugins/real-estate/dashboard', 'header_settings_link', 'Settings', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3044, 0, 'en', 'plugins/real-estate/dashboard', 'header_logout_link', 'Logout', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3045, 0, 'en', 'plugins/real-estate/dashboard', 'unknown_state', 'Unknown', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3046, 0, 'en', 'plugins/real-estate/dashboard', 'close', 'Close', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3047, 0, 'en', 'plugins/real-estate/dashboard', 'save', 'Save', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3048, 0, 'en', 'plugins/real-estate/dashboard', 'loading', 'Loading...', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3049, 0, 'en', 'plugins/real-estate/dashboard', 'new_image', 'New image', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3050, 0, 'en', 'plugins/real-estate/dashboard', 'change_profile_image', 'Change avatar', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3051, 0, 'en', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3052, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3053, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Failed to load data', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3054, 0, 'en', 'plugins/real-estate/dashboard', 'read_image_failed', 'Read image failed', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3055, 0, 'en', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2022-09-28 19:29:03', '2022-09-28 19:29:20'),
(3056, 0, 'en', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2022-09-28 19:29:03', '2022-09-28 19:29:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3057, 0, 'en', 'plugins/real-estate/dashboard', 'notices.error', 'Error!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3058, 0, 'en', 'plugins/real-estate/dashboard', 'notices.success', 'Success!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3059, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_title', 'Personal settings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3060, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_information', 'Account Information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3061, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_security', 'Security', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3062, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Packages', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3063, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transactions', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3064, 0, 'en', 'plugins/real-estate/dashboard', 'account_field_title', 'Account Information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3065, 0, 'en', 'plugins/real-estate/dashboard', 'profile-picture', 'Profile picture', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3066, 0, 'en', 'plugins/real-estate/dashboard', 'uploading', 'Uploading...', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3067, 0, 'en', 'plugins/real-estate/dashboard', 'company', 'Company Name', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3068, 0, 'en', 'plugins/real-estate/dashboard', 'phone', 'Phone', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3069, 0, 'en', 'plugins/real-estate/dashboard', 'first_name', 'First name', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3070, 0, 'en', 'plugins/real-estate/dashboard', 'last_name', 'Last name', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3071, 0, 'en', 'plugins/real-estate/dashboard', 'description', 'Short description', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3072, 0, 'en', 'plugins/real-estate/dashboard', 'description_placeholder', 'Tell something about yourself...', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3073, 0, 'en', 'plugins/real-estate/dashboard', 'verified', 'Verified', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3074, 0, 'en', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3075, 0, 'en', 'plugins/real-estate/dashboard', 'birthday', 'Birthday', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3076, 0, 'en', 'plugins/real-estate/dashboard', 'year_lc', 'year', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3077, 0, 'en', 'plugins/real-estate/dashboard', 'month_lc', 'month', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3078, 0, 'en', 'plugins/real-estate/dashboard', 'day_lc', 'day', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3079, 0, 'en', 'plugins/real-estate/dashboard', 'gender', 'Gender', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3080, 0, 'en', 'plugins/real-estate/dashboard', 'gender_male', 'Male', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3081, 0, 'en', 'plugins/real-estate/dashboard', 'gender_female', 'Female', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3082, 0, 'en', 'plugins/real-estate/dashboard', 'gender_other', 'Other', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3083, 0, 'en', 'plugins/real-estate/dashboard', 'security_title', 'Security', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3084, 0, 'en', 'plugins/real-estate/dashboard', 'packages_title', 'Packages', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3085, 0, 'en', 'plugins/real-estate/dashboard', 'transactions_title', 'Transactions', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3086, 0, 'en', 'plugins/real-estate/dashboard', 'current_password', 'Current password', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3087, 0, 'en', 'plugins/real-estate/dashboard', 'password_new', 'New password', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3088, 0, 'en', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmation password', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3089, 0, 'en', 'plugins/real-estate/dashboard', 'password_update_btn', 'Update password', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3090, 0, 'en', 'plugins/real-estate/dashboard', 'activity_logs', 'Activity Logs', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3091, 0, 'en', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3092, 0, 'en', 'plugins/real-estate/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3093, 0, 'en', 'plugins/real-estate/dashboard', 'actions.create_property', 'You have created property \":name\"', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3094, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_property', 'You have updated property \":name\"', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3095, 0, 'en', 'plugins/real-estate/dashboard', 'actions.delete_property', 'You have deleted property \":name\"', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3096, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_setting', 'You have updated your settings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3097, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_security', 'You have updated your security settings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3098, 0, 'en', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Your property \":name\" is updated by administrator', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3099, 0, 'en', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3100, 0, 'en', 'plugins/real-estate/dashboard', 'load_more', 'Load more', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3101, 0, 'en', 'plugins/real-estate/dashboard', 'loading_more', 'Loading...', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3102, 0, 'en', 'plugins/real-estate/dashboard', 'back-to-login', 'Back to login page', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3103, 0, 'en', 'plugins/real-estate/dashboard', 'no_transactions', 'No transactions', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3104, 0, 'en', 'plugins/real-estate/dashboard', 'approved_properties', 'Approved properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3105, 0, 'en', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Pending approve properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3106, 0, 'en', 'plugins/real-estate/dashboard', 'rejected_properties', 'Rejected properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3107, 0, 'en', 'plugins/real-estate/dashboard', 'your_credits', 'Your Credits', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3108, 0, 'en', 'plugins/real-estate/dashboard', 'credits', 'credits', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3109, 0, 'en', 'plugins/real-estate/dashboard', 'per_post', 'per post', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3110, 0, 'en', 'plugins/real-estate/dashboard', 'free', 'Free', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3111, 0, 'en', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3112, 0, 'en', 'plugins/real-estate/dashboard', 'total', 'Total', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3113, 0, 'en', 'plugins/real-estate/dashboard', 'purchase', 'Purchase', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3114, 0, 'en', 'plugins/real-estate/dashboard', 'select_facility', 'Select facility', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3115, 0, 'en', 'plugins/real-estate/dashboard', 'distance', 'Distance (E.g: 200m, 1km...)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3116, 0, 'en', 'plugins/real-estate/dashboard', 'add_new', 'Add new', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3117, 0, 'en', 'plugins/real-estate/dashboard', 'resend', 'Resend', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3118, 0, 'en', 'plugins/real-estate/dashboard', 'error', 'Error!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3119, 0, 'en', 'plugins/real-estate/dashboard', 'success', 'Success!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3120, 0, 'en', 'plugins/real-estate/facility', 'name', 'Facilities', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3121, 0, 'en', 'plugins/real-estate/facility', 'create', 'New facility', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3122, 0, 'en', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3123, 0, 'en', 'plugins/real-estate/feature', 'name', 'Features', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3124, 0, 'en', 'plugins/real-estate/feature', 'create', 'New feature', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3125, 0, 'en', 'plugins/real-estate/feature', 'edit', 'Edit feature', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3126, 0, 'en', 'plugins/real-estate/feature', 'messages.request.name_required', 'Name is required', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3127, 0, 'en', 'plugins/real-estate/feature', 'form.help_block', 'Property feature information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3128, 0, 'en', 'plugins/real-estate/feature', 'form.name', 'Title', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3129, 0, 'en', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3130, 0, 'en', 'plugins/real-estate/investor', 'name', 'Investors', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3131, 0, 'en', 'plugins/real-estate/investor', 'create', 'New investor', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3132, 0, 'en', 'plugins/real-estate/investor', 'edit', 'Edit investor', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3133, 0, 'en', 'plugins/real-estate/package', 'name', 'Packages', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3134, 0, 'en', 'plugins/real-estate/package', 'create', 'New package', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3135, 0, 'en', 'plugins/real-estate/package', 'edit', 'Edit package', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3136, 0, 'en', 'plugins/real-estate/package', 'price', 'Price', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3137, 0, 'en', 'plugins/real-estate/package', 'currency', 'Currency', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3138, 0, 'en', 'plugins/real-estate/package', 'percent_save', 'Percent save', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3139, 0, 'en', 'plugins/real-estate/package', 'number_of_listings', 'Number of listings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3140, 0, 'en', 'plugins/real-estate/package', 'add_credit_success', 'Add credit successfully!', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3141, 0, 'en', 'plugins/real-estate/package', 'setup_payment_methods', 'Please setup payment methods (PayPal, Stripe, COD, Bank transfer)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3142, 0, 'en', 'plugins/real-estate/package', 'add_credit_warning', 'Please add your credit to create your own posts here:', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3143, 0, 'en', 'plugins/real-estate/package', 'add_credit', 'Add credit', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3144, 0, 'en', 'plugins/real-estate/package', 'account_limit', 'Limit purchase by account', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3145, 0, 'en', 'plugins/real-estate/package', 'account_limit_placeholder', 'An account can purchase x times', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3146, 0, 'en', 'plugins/real-estate/package', 'subscribe_package', 'Subscribe package', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3147, 0, 'en', 'plugins/real-estate/package', 'add_credit_alert', 'Please add your credit to create your own posts.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3148, 0, 'en', 'plugins/real-estate/project', 'name', 'Projects', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3149, 0, 'en', 'plugins/real-estate/project', 'create', 'New project', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3150, 0, 'en', 'plugins/real-estate/project', 'edit', 'Edit project', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3151, 0, 'en', 'plugins/real-estate/project', 'form.general_info', 'General information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3152, 0, 'en', 'plugins/real-estate/project', 'form.name', 'Name', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3153, 0, 'en', 'plugins/real-estate/project', 'form.description', 'Description', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3154, 0, 'en', 'plugins/real-estate/project', 'form.basic_info', 'Basic information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3155, 0, 'en', 'plugins/real-estate/project', 'form.location', 'Location', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3156, 0, 'en', 'plugins/real-estate/project', 'form.investor', 'Investor', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3157, 0, 'en', 'plugins/real-estate/project', 'form.number_block', 'Number blocks', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3158, 0, 'en', 'plugins/real-estate/project', 'form.number_floor', 'Number floors', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3159, 0, 'en', 'plugins/real-estate/project', 'form.number_flat', 'Number flats', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3160, 0, 'en', 'plugins/real-estate/project', 'form.date_finish', 'Finish date', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3161, 0, 'en', 'plugins/real-estate/project', 'form.date_sell', 'Open sell date', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3162, 0, 'en', 'plugins/real-estate/project', 'form.images', 'Images', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3163, 0, 'en', 'plugins/real-estate/project', 'form.price_from', 'Lowest price', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3164, 0, 'en', 'plugins/real-estate/project', 'form.price_to', 'Max price', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3165, 0, 'en', 'plugins/real-estate/project', 'form.currency', 'Currency', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3166, 0, 'en', 'plugins/real-estate/project', 'form.city', 'City', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3167, 0, 'en', 'plugins/real-estate/project', 'form.category', 'Category', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3168, 0, 'en', 'plugins/real-estate/project', 'form.latitude', 'Latitude', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3169, 0, 'en', 'plugins/real-estate/project', 'form.latitude_helper', 'Go here to get Latitude from address.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3170, 0, 'en', 'plugins/real-estate/project', 'form.longitude', 'Longitude', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3171, 0, 'en', 'plugins/real-estate/project', 'form.longitude_helper', 'Go here to get Longitude from address.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3172, 0, 'en', 'plugins/real-estate/project', 'form.categories', 'Categories', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3173, 0, 'en', 'plugins/real-estate/project', 'statuses.not_available', 'Not available', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3174, 0, 'en', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparing selling', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3175, 0, 'en', 'plugins/real-estate/project', 'statuses.selling', 'Selling', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3176, 0, 'en', 'plugins/real-estate/project', 'statuses.sold', 'Sold', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3177, 0, 'en', 'plugins/real-estate/project', 'statuses.building', 'Building', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3178, 0, 'en', 'plugins/real-estate/project', 'distance_key', 'Distance key between facilities', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3179, 0, 'en', 'plugins/real-estate/project', 'select_investor', 'Select an investor...', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3180, 0, 'en', 'plugins/real-estate/property', 'name', 'Properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3181, 0, 'en', 'plugins/real-estate/property', 'create', 'New property', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3182, 0, 'en', 'plugins/real-estate/property', 'edit', 'Edit property', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3183, 0, 'en', 'plugins/real-estate/property', 'form.main_info', 'General information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3184, 0, 'en', 'plugins/real-estate/property', 'form.basic_info', 'Basic information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3185, 0, 'en', 'plugins/real-estate/property', 'form.name', 'Title', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3186, 0, 'en', 'plugins/real-estate/property', 'form.type', 'Type', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3187, 0, 'en', 'plugins/real-estate/property', 'form.images', 'Images', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3188, 0, 'en', 'plugins/real-estate/property', 'form.location', 'Property location', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3189, 0, 'en', 'plugins/real-estate/property', 'form.number_bedroom', 'Number bedrooms', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3190, 0, 'en', 'plugins/real-estate/property', 'form.number_bathroom', 'Number bathrooms', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3191, 0, 'en', 'plugins/real-estate/property', 'form.number_floor', 'Number floors', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3192, 0, 'en', 'plugins/real-estate/property', 'form.square', 'Square :unit', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3193, 0, 'en', 'plugins/real-estate/property', 'form.price', 'Price', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3194, 0, 'en', 'plugins/real-estate/property', 'form.features', 'Features', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3195, 0, 'en', 'plugins/real-estate/property', 'form.project', 'Project', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3196, 0, 'en', 'plugins/real-estate/property', 'form.date', 'Date information', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3197, 0, 'en', 'plugins/real-estate/property', 'form.currency', 'Currency', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3198, 0, 'en', 'plugins/real-estate/property', 'form.city', 'City', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3199, 0, 'en', 'plugins/real-estate/property', 'form.period', 'Period', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3200, 0, 'en', 'plugins/real-estate/property', 'form.category', 'Category', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3201, 0, 'en', 'plugins/real-estate/property', 'form.latitude', 'Latitude', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3202, 0, 'en', 'plugins/real-estate/property', 'form.latitude_helper', 'Go here to get Latitude from address.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3203, 0, 'en', 'plugins/real-estate/property', 'form.longitude', 'Longitude', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3204, 0, 'en', 'plugins/real-estate/property', 'form.longitude_helper', 'Go here to get Longitude from address.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3205, 0, 'en', 'plugins/real-estate/property', 'form.categories', 'Categories', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3206, 0, 'en', 'plugins/real-estate/property', 'form.images_upload_placeholder', 'Drop files here or click to upload.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3207, 0, 'en', 'plugins/real-estate/property', 'statuses.not_available', 'Not available', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3208, 0, 'en', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparing selling', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3209, 0, 'en', 'plugins/real-estate/property', 'statuses.selling', 'Selling', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3210, 0, 'en', 'plugins/real-estate/property', 'statuses.sold', 'Sold', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3211, 0, 'en', 'plugins/real-estate/property', 'statuses.renting', 'Renting', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3212, 0, 'en', 'plugins/real-estate/property', 'statuses.rented', 'Rented', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3213, 0, 'en', 'plugins/real-estate/property', 'statuses.building', 'Building', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3214, 0, 'en', 'plugins/real-estate/property', 'types.sale', 'Sale', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3215, 0, 'en', 'plugins/real-estate/property', 'types.rent', 'Rent', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3216, 0, 'en', 'plugins/real-estate/property', 'periods.day', 'Day', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3217, 0, 'en', 'plugins/real-estate/property', 'periods.month', 'Month', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3218, 0, 'en', 'plugins/real-estate/property', 'periods.year', 'Year', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3219, 0, 'en', 'plugins/real-estate/property', 'moderation_status', 'Moderation status', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3220, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pending', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3221, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Approved', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3222, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejected', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3223, 0, 'en', 'plugins/real-estate/property', 'renew_notice', 'Renew automatically (you will be charged again in :days days)?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3224, 0, 'en', 'plugins/real-estate/property', 'distance_key', 'Distance key between facilities', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3225, 0, 'en', 'plugins/real-estate/property', 'never_expired', 'Never expired?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3226, 0, 'en', 'plugins/real-estate/property', 'select_project', 'Select a project...', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3227, 0, 'en', 'plugins/real-estate/property', 'account', 'Account', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3228, 0, 'en', 'plugins/real-estate/property', 'select_account', 'Select an account..', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3229, 0, 'en', 'plugins/real-estate/property', 'expire_date', 'Expire date', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3230, 0, 'en', 'plugins/real-estate/property', 'never_expired_label', 'Never expired', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3231, 0, 'en', 'plugins/real-estate/property', 'active_properties', 'Active properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3232, 0, 'en', 'plugins/real-estate/property', 'pending_properties', 'Pending properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3233, 0, 'en', 'plugins/real-estate/property', 'expired_properties', 'Expired properties', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3234, 0, 'en', 'plugins/real-estate/real-estate', 'name', 'Real Estate', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3235, 0, 'en', 'plugins/real-estate/real-estate', 'settings', 'Settings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3236, 0, 'en', 'plugins/real-estate/settings', 'title', 'Accounts', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3237, 0, 'en', 'plugins/real-estate/settings', 'description', 'Settings for members', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3238, 0, 'en', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3239, 0, 'en', 'plugins/real-estate/settings', 'square_unit', 'Unit of square', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3240, 0, 'en', 'plugins/real-estate/settings', 'square_unit_none', 'None', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3241, 0, 'en', 'plugins/real-estate/settings', 'square_unit_meter', 'Square Meter(m²)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3242, 0, 'en', 'plugins/real-estate/settings', 'square_unit_feet', 'Square Feet(ft2)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3243, 0, 'en', 'plugins/real-estate/settings', 'square_unit_yard', 'Square Yard (yd2)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3244, 0, 'en', 'plugins/real-estate/settings', 'general', 'General settings', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3245, 0, 'en', 'plugins/real-estate/settings', 'general_description', 'Basic settings for Real Estate', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3246, 0, 'en', 'plugins/real-estate/settings', 'real_estate_convert_money_to_text_enabled', 'Convert money to text if it is too big?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3247, 0, 'en', 'plugins/real-estate/settings', 'thousands_separator', 'Thousands separator', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3248, 0, 'en', 'plugins/real-estate/settings', 'decimal_separator', 'Decimal separator', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3249, 0, 'en', 'plugins/real-estate/settings', 'separator_period', 'Period (.)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3250, 0, 'en', 'plugins/real-estate/settings', 'separator_comma', 'Comma (,)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3251, 0, 'en', 'plugins/real-estate/settings', 'separator_space', 'Space ( )', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3252, 0, 'en', 'plugins/real-estate/settings', 'real_estate_enabled_register', 'Allow visitors to register account and post their properties?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3253, 0, 'en', 'plugins/real-estate/settings', 'email.title', 'Real Estate', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3254, 0, 'en', 'plugins/real-estate/settings', 'email.description', 'Real estate email configuration', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3255, 0, 'en', 'plugins/real-estate/settings', 'property_expired_after_days', 'Property Expired Time (days)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3256, 0, 'en', 'plugins/real-estate/settings', 'enable_post_approval', 'Enable post approval?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3257, 0, 'en', 'plugins/real-estate/settings', 'enable_credits_system', 'Enable credits system (agents need to buy credits to post their properties)', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3258, 0, 'en', 'plugins/real-estate/settings', 'enable_auto_detect_visitor_currency', 'Enable auto-detect visitor currency?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3259, 0, 'en', 'plugins/real-estate/settings', 'display_views_count_in_detail_page', 'Display views count in the detail page?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3260, 0, 'en', 'plugins/real-estate/settings', 'enable_recaptcha_in_register_page', 'Enable Recaptcha in the registration page?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3261, 0, 'en', 'plugins/real-estate/settings', 'enable_recaptcha_in_register_page_description', 'Need to setup Captcha in Admin -> Settings -> General first.', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3262, 0, 'en', 'plugins/real-estate/settings', 'hide_properties_in_statuses', 'Hide property if its status is:', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3263, 0, 'en', 'plugins/real-estate/settings', 'hide_projects_in_statuses', 'Hide project if its status is:', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3264, 0, 'en', 'plugins/real-estate/settings', 'add_space_between_price_and_currency', 'Add a space between price and currency?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3265, 0, 'en', 'plugins/real-estate/settings', 'enable_wishlist', 'Enable wishlist?', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3266, 0, 'en', 'plugins/real-estate/transaction', 'types.add', 'Add', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3267, 0, 'en', 'plugins/real-estate/transaction', 'types.remove', 'Remove', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3268, 0, 'vi', 'plugins/real-estate/account-property', 'draft_properties', 'Bài đăng nháp', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3269, 0, 'vi', 'plugins/real-estate/account-property', 'pending_properties', 'Tin đang xét duyệt', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3270, 0, 'vi', 'plugins/real-estate/account-property', 'published_properties', 'Tin đã được xuất bản', '2022-09-28 19:29:04', '2022-09-28 19:29:20'),
(3271, 0, 'vi', 'plugins/real-estate/account-property', 'properties', 'Tin bất động sản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3272, 0, 'vi', 'plugins/real-estate/account-property', 'write_property', 'Đăng bài', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3273, 0, 'vi', 'plugins/real-estate/account', 'create', 'Thêm tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3274, 0, 'vi', 'plugins/real-estate/account', 'edit', 'Sửa tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3275, 0, 'vi', 'plugins/real-estate/account', 'name', 'Tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3276, 0, 'vi', 'plugins/real-estate/account', 'form.email', 'Email', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3277, 0, 'vi', 'plugins/real-estate/account', 'form.password', 'Mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3278, 0, 'vi', 'plugins/real-estate/account', 'form.password_confirmation', 'Xác nhận mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3279, 0, 'vi', 'plugins/real-estate/account', 'form.change_password', 'Đổi mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3280, 0, 'vi', 'plugins/real-estate/account', 'forgot_password', 'Quên mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3281, 0, 'vi', 'plugins/real-estate/account', 'login', 'Đăng nhập', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3282, 0, 'vi', 'plugins/real-estate/account', 'buy_credits', 'Mua tín dụng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3283, 0, 'vi', 'plugins/real-estate/account', 'credits', 'tín dụng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3284, 0, 'vi', 'plugins/real-estate/account', 'account_settings', 'Cài đặt tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3285, 0, 'vi', 'plugins/real-estate/account', 'update_profile_success', 'Cập nhật thông tin tài khoản thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3286, 0, 'vi', 'plugins/real-estate/account', 'security', 'Bảo mật', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3287, 0, 'vi', 'plugins/real-estate/account', 'packages', 'Gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3288, 0, 'vi', 'plugins/real-estate/account', 'transactions', 'Giao dịch', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3289, 0, 'vi', 'plugins/real-estate/account', 'subscribe_package', 'Đăng ký gói \":name\"', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3290, 0, 'vi', 'plugins/real-estate/category', 'name', 'Categories', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3291, 0, 'vi', 'plugins/real-estate/category', 'create', 'New category', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3292, 0, 'vi', 'plugins/real-estate/category', 'edit', 'Edit category', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3293, 0, 'vi', 'plugins/real-estate/consult', 'name', 'Tư vấn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3294, 0, 'vi', 'plugins/real-estate/consult', 'edit', 'Xem tư vấn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3295, 0, 'vi', 'plugins/real-estate/consult', 'statuses.read', 'Đã đọc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3296, 0, 'vi', 'plugins/real-estate/consult', 'statuses.unread', 'Chưa đọc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3297, 0, 'vi', 'plugins/real-estate/consult', 'phone', 'Điện thoại', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3298, 0, 'vi', 'plugins/real-estate/consult', 'content', 'Chi tiết', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3299, 0, 'vi', 'plugins/real-estate/consult', 'consult_information', 'Nội dung yêu cầu tư vấn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3300, 0, 'vi', 'plugins/real-estate/consult', 'email.header', 'Email', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3301, 0, 'vi', 'plugins/real-estate/consult', 'email.title', 'Yêu cầu tư vấn mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3302, 0, 'vi', 'plugins/real-estate/consult', 'email.success', 'Gửi yêu cầu tư vấn thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3303, 0, 'vi', 'plugins/real-estate/consult', 'email.failed', 'Gửi yêu cầu tư vấn thất bại, vui lòng thử lại sau!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3304, 0, 'vi', 'plugins/real-estate/consult', 'form.name.required', 'Tên là bắt buộc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3305, 0, 'vi', 'plugins/real-estate/consult', 'form.email.required', 'Email là bắt buộc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3306, 0, 'vi', 'plugins/real-estate/consult', 'form.email.email', 'Địa chỉ email không hợp lệ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3307, 0, 'vi', 'plugins/real-estate/consult', 'form.content.required', 'Nội dung là bắt buộc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3308, 0, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3309, 0, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3310, 0, 'vi', 'plugins/real-estate/consult', 'consult_sent_from', 'Yêu cầu tư vấn này được gửi từ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3311, 0, 'vi', 'plugins/real-estate/consult', 'time', 'Thời gian', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3312, 0, 'vi', 'plugins/real-estate/consult', 'consult_id', 'Mã yêu cầu tư vấn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3313, 0, 'vi', 'plugins/real-estate/consult', 'form_name', 'Tên', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3314, 0, 'vi', 'plugins/real-estate/consult', 'form_email', 'Email', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3315, 0, 'vi', 'plugins/real-estate/consult', 'form_phone', 'Điện thoại', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3316, 0, 'vi', 'plugins/real-estate/consult', 'mark_as_read', 'Đánh dấu đã đọc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3317, 0, 'vi', 'plugins/real-estate/consult', 'mark_as_unread', 'Đánh dấu chưa đọc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3318, 0, 'vi', 'plugins/real-estate/consult', 'new_consult_notice', 'Bạn có <span class=\"bold\">:count</span> yêu cầu tư vấn mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3319, 0, 'vi', 'plugins/real-estate/consult', 'view_all', 'Xem tất cả', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3320, 0, 'vi', 'plugins/real-estate/consult', 'project', 'Dự án', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3321, 0, 'vi', 'plugins/real-estate/consult', 'property', 'Nhà ở - Căn hộ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3322, 0, 'vi', 'plugins/real-estate/currency', 'currencies', 'Tiền tệ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3323, 0, 'vi', 'plugins/real-estate/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3324, 0, 'vi', 'plugins/real-estate/currency', 'name', 'Tên', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3325, 0, 'vi', 'plugins/real-estate/currency', 'symbol', 'Ký hiệu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3326, 0, 'vi', 'plugins/real-estate/currency', 'number_of_decimals', 'Số thập phân', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3327, 0, 'vi', 'plugins/real-estate/currency', 'exchange_rate', 'Tỷ giá', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3328, 0, 'vi', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3329, 0, 'vi', 'plugins/real-estate/currency', 'is_default', 'Mặc định?', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3330, 0, 'vi', 'plugins/real-estate/currency', 'remove', 'Xoá', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3331, 0, 'vi', 'plugins/real-estate/currency', 'new_currency', 'Thêm tiền tệ mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3332, 0, 'vi', 'plugins/real-estate/currency', 'save_settings', 'Lưu cài đặt', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3333, 0, 'vi', 'plugins/real-estate/currency', 'before_number', 'Trước số', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3334, 0, 'vi', 'plugins/real-estate/currency', 'after_number', 'Sau số', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3335, 0, 'vi', 'plugins/real-estate/dashboard', 'joined_on', 'Tham gia từ :date', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3336, 0, 'vi', 'plugins/real-estate/dashboard', 'dob', 'Ngày sinh :date', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3337, 0, 'vi', 'plugins/real-estate/dashboard', 'email', 'Email', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3338, 0, 'vi', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Tên đăng nhập', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3339, 0, 'vi', 'plugins/real-estate/dashboard', 'password', 'Mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3340, 0, 'vi', 'plugins/real-estate/dashboard', 'password-confirmation', 'Xác nhận mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3341, 0, 'vi', 'plugins/real-estate/dashboard', 'remember-me', 'Ghi nhớ tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3342, 0, 'vi', 'plugins/real-estate/dashboard', 'login-title', 'Đăng nhập', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3343, 0, 'vi', 'plugins/real-estate/dashboard', 'login-cta', 'Đăng nhập', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3344, 0, 'vi', 'plugins/real-estate/dashboard', 'register-title', 'Đăng ký', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3345, 0, 'vi', 'plugins/real-estate/dashboard', 'register-cta', 'Đăng ký', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3346, 0, 'vi', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Quên mật khẩu?', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3347, 0, 'vi', 'plugins/real-estate/dashboard', 'name', 'Tên', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3348, 0, 'vi', 'plugins/real-estate/dashboard', 'reset-password-title', 'Khôi phục mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3349, 0, 'vi', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Khôi phục mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3350, 0, 'vi', 'plugins/real-estate/dashboard', 'cancel-link', 'Hủy bỏ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3351, 0, 'vi', 'plugins/real-estate/dashboard', 'logout-cta', 'Đăng xuất', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3352, 0, 'vi', 'plugins/real-estate/dashboard', 'header_profile_link', 'Tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3353, 0, 'vi', 'plugins/real-estate/dashboard', 'header_settings_link', 'Cài đặt', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3354, 0, 'vi', 'plugins/real-estate/dashboard', 'header_logout_link', 'Đăng xuất', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3355, 0, 'vi', 'plugins/real-estate/dashboard', 'unknown_state', 'Không xác nhận được', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3356, 0, 'vi', 'plugins/real-estate/dashboard', 'close', 'Đóng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3357, 0, 'vi', 'plugins/real-estate/dashboard', 'save', 'Lưu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3358, 0, 'vi', 'plugins/real-estate/dashboard', 'loading', 'Đang tải...', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3359, 0, 'vi', 'plugins/real-estate/dashboard', 'new_image', 'Ảnh mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3360, 0, 'vi', 'plugins/real-estate/dashboard', 'change_profile_image', 'Đổi ảnh đại diện', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3361, 0, 'vi', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Lưu hình ảnh không thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3362, 0, 'vi', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Có lỗi trong quá trình xử lý ảnh', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3363, 0, 'vi', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Lỗi tải dữ liệu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3364, 0, 'vi', 'plugins/real-estate/dashboard', 'read_image_failed', 'Đọc hình ảnh thất bại', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3365, 0, 'vi', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3366, 0, 'vi', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click lên ảnh để chỉnh sửa ảnh đại diện', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3367, 0, 'vi', 'plugins/real-estate/dashboard', 'notices.error', 'Lỗi!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3368, 0, 'vi', 'plugins/real-estate/dashboard', 'notices.success', 'Thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3369, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_title', 'Cài đặt cá nhân', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3370, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_information', 'Thông tin tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3371, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_security', 'Bảo mật', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3372, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3373, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Giao dịch', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3374, 0, 'vi', 'plugins/real-estate/dashboard', 'account_field_title', 'Thông tin tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3375, 0, 'vi', 'plugins/real-estate/dashboard', 'profile-picture', 'Ảnh đại diện', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3376, 0, 'vi', 'plugins/real-estate/dashboard', 'uploading', 'Đang tải lên...', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3377, 0, 'vi', 'plugins/real-estate/dashboard', 'phone', 'Điện thoại', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3378, 0, 'vi', 'plugins/real-estate/dashboard', 'first_name', 'Họ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3379, 0, 'vi', 'plugins/real-estate/dashboard', 'last_name', 'Tên', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3380, 0, 'vi', 'plugins/real-estate/dashboard', 'description', 'Mô tả ngắn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3381, 0, 'vi', 'plugins/real-estate/dashboard', 'description_placeholder', 'Mô tả đôi chút về bạn...', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3382, 0, 'vi', 'plugins/real-estate/dashboard', 'verified', 'Đã xác thực', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3383, 0, 'vi', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Vui lòng xác nhận email theo liên kết chúng tôi đã gửi cho bạn.', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3384, 0, 'vi', 'plugins/real-estate/dashboard', 'birthday', 'Ngày sinh', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3385, 0, 'vi', 'plugins/real-estate/dashboard', 'year_lc', 'năm', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3386, 0, 'vi', 'plugins/real-estate/dashboard', 'month_lc', 'tháng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3387, 0, 'vi', 'plugins/real-estate/dashboard', 'day_lc', 'ngày', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3388, 0, 'vi', 'plugins/real-estate/dashboard', 'gender', 'Giới tính', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3389, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_male', 'Nam', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3390, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_female', 'Nữ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3391, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_other', 'Khác', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3392, 0, 'vi', 'plugins/real-estate/dashboard', 'security_title', 'Bảo mật', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3393, 0, 'vi', 'plugins/real-estate/dashboard', 'packages_title', 'Gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3394, 0, 'vi', 'plugins/real-estate/dashboard', 'transactions_title', 'Giao dịch', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3395, 0, 'vi', 'plugins/real-estate/dashboard', 'current_password', 'Mật khẩu hiện tại', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3396, 0, 'vi', 'plugins/real-estate/dashboard', 'password_new', 'Mật khẩu mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3397, 0, 'vi', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Xác nhận mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3398, 0, 'vi', 'plugins/real-estate/dashboard', 'password_update_btn', 'Cập nhật mật khẩu', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3399, 0, 'vi', 'plugins/real-estate/dashboard', 'activity_logs', 'Lịch sử hoạt động', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3400, 0, 'vi', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3401, 0, 'vi', 'plugins/real-estate/dashboard', 'no_activity_logs', 'Chưa có hoạt động nào cả', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3402, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.create_property', 'Tạo thành công \":name\"', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3403, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_property', 'Cập nhật thành công \":name\"', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3404, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.delete_property', 'Xóa thành công \":name\"', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3405, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_setting', 'Cập nhật cài đặt thành công', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3406, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_security', 'Cập nhật cài đặt thành công', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3407, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Tin \":name\" đã được cập nhật bởi quản trị viên', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3408, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'Đổi ảnh đại diện thành công', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3409, 0, 'vi', 'plugins/real-estate/dashboard', 'load_more', 'Tải thêm', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3410, 0, 'vi', 'plugins/real-estate/dashboard', 'loading_more', 'Đang tải...', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3411, 0, 'vi', 'plugins/real-estate/dashboard', 'back-to-login', 'Trở lại trang đăng nhập', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3412, 0, 'vi', 'plugins/real-estate/dashboard', 'no_transactions', 'Chưa có giao dịch', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3413, 0, 'vi', 'plugins/real-estate/dashboard', 'approved_properties', 'Tin đã được duyệt', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3414, 0, 'vi', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Các tin đang chờ xét duyệt', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3415, 0, 'vi', 'plugins/real-estate/dashboard', 'rejected_properties', 'Các tin đã bị từ chối', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3416, 0, 'vi', 'plugins/real-estate/dashboard', 'your_credits', 'Tín dụng của bạn', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3417, 0, 'vi', 'plugins/real-estate/dashboard', 'add_new', 'Thêm mới', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3418, 0, 'vi', 'plugins/real-estate/dashboard', 'credits', 'tín dụng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3419, 0, 'vi', 'plugins/real-estate/dashboard', 'distance', 'Khoảng cách(km)', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3420, 0, 'vi', 'plugins/real-estate/dashboard', 'free', 'Miễn phí', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3421, 0, 'vi', 'plugins/real-estate/dashboard', 'per_post', 'trên mỗi tin', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3422, 0, 'vi', 'plugins/real-estate/dashboard', 'posts', 'tin', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3423, 0, 'vi', 'plugins/real-estate/dashboard', 'purchase', 'Mua', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3424, 0, 'vi', 'plugins/real-estate/dashboard', 'select_facility', 'Lựa chọn tiện ích', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3425, 0, 'vi', 'plugins/real-estate/dashboard', 'total', 'Tổng cộng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3426, 0, 'vi', 'plugins/real-estate/dashboard', 'error', 'Lỗi!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3427, 0, 'vi', 'plugins/real-estate/dashboard', 'success', 'Thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3428, 0, 'vi', 'plugins/real-estate/facility', 'name', 'Facilities', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3429, 0, 'vi', 'plugins/real-estate/facility', 'create', 'New facility', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3430, 0, 'vi', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3431, 0, 'vi', 'plugins/real-estate/feature', 'name', 'Tiện ích', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3432, 0, 'vi', 'plugins/real-estate/feature', 'create', 'Thêm tiện ích', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3433, 0, 'vi', 'plugins/real-estate/feature', 'edit', 'Sửa tiện ích', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3434, 0, 'vi', 'plugins/real-estate/feature', 'messages.request.name_required', 'Tên là thông tin bắt buộc', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3435, 0, 'vi', 'plugins/real-estate/feature', 'form.help_block', 'Thông tin về các tiện ích', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3436, 0, 'vi', 'plugins/real-estate/feature', 'form.name', 'Tiêu đề', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3437, 0, 'vi', 'plugins/real-estate/investor', 'name', 'Nhà đầu tư', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3438, 0, 'vi', 'plugins/real-estate/investor', 'create', 'Thêm nhà đầu tư', '2022-09-28 19:29:05', '2022-09-28 19:29:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3439, 0, 'vi', 'plugins/real-estate/investor', 'edit', 'Sửa nhà đầu tư', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3440, 0, 'vi', 'plugins/real-estate/package', 'name', 'Gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3441, 0, 'vi', 'plugins/real-estate/package', 'create', 'Thêm gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3442, 0, 'vi', 'plugins/real-estate/package', 'edit', 'Sửa gói', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3443, 0, 'vi', 'plugins/real-estate/package', 'price', 'Giá', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3444, 0, 'vi', 'plugins/real-estate/package', 'currency', 'Tiền tệ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3445, 0, 'vi', 'plugins/real-estate/package', 'percent_save', 'Phần trăm tiết kiệm', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3446, 0, 'vi', 'plugins/real-estate/package', 'number_of_listings', 'Số tin đăng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3447, 0, 'vi', 'plugins/real-estate/package', 'add_credit_success', 'Thêm tín dụng thành công!', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3448, 0, 'vi', 'plugins/real-estate/package', 'setup_payment_methods', 'Vui lòng thiết lập phương thức thanh toán (PayPal, Stripe, COD, Bank transfer)', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3449, 0, 'vi', 'plugins/real-estate/package', 'add_credit_warning', 'Vui lòng thêm tín dụng để đăng tin của bạn tại đây', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3450, 0, 'vi', 'plugins/real-estate/package', 'add_credit', 'Thêm tín dụng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3451, 0, 'vi', 'plugins/real-estate/package', 'account_limit', 'Giới hạn số gói có thể mua theo tài khoản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3452, 0, 'vi', 'plugins/real-estate/package', 'account_limit_placeholder', 'Mỗi tài khoản có thể mua x lần', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3453, 0, 'vi', 'plugins/real-estate/package', 'subscribe_package', 'Đăng ký tin', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3454, 0, 'vi', 'plugins/real-estate/project', 'name', 'Dự án', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3455, 0, 'vi', 'plugins/real-estate/project', 'create', 'Thêm dự án', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3456, 0, 'vi', 'plugins/real-estate/project', 'edit', 'Sửa', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3457, 0, 'vi', 'plugins/real-estate/project', 'form.general_info', 'Thông tin chung', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3458, 0, 'vi', 'plugins/real-estate/project', 'form.name', 'Tên dự án', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3459, 0, 'vi', 'plugins/real-estate/project', 'form.description', 'Mô tả', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3460, 0, 'vi', 'plugins/real-estate/project', 'form.basic_info', 'Thông tin cơ bản', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3461, 0, 'vi', 'plugins/real-estate/project', 'form.location', 'Địa chỉ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3462, 0, 'vi', 'plugins/real-estate/project', 'form.investor', 'Chủ đầu tư', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3463, 0, 'vi', 'plugins/real-estate/project', 'form.number_block', 'Số block', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3464, 0, 'vi', 'plugins/real-estate/project', 'form.number_floor', 'Số tầng', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3465, 0, 'vi', 'plugins/real-estate/project', 'form.number_flat', 'Số căn hộ', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3466, 0, 'vi', 'plugins/real-estate/project', 'form.date_finish', 'Ngày hoàn thành', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3467, 0, 'vi', 'plugins/real-estate/project', 'form.date_sell', 'Ngày mở bán', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3468, 0, 'vi', 'plugins/real-estate/project', 'form.images', 'Hình ảnh', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3469, 0, 'vi', 'plugins/real-estate/project', 'form.price_from', 'Giá thấp nhất', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3470, 0, 'vi', 'plugins/real-estate/project', 'form.price_to', 'Giá cao nhất', '2022-09-28 19:29:05', '2022-09-28 19:29:20'),
(3471, 0, 'vi', 'plugins/real-estate/project', 'form.currency', 'Loại tiền', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3472, 0, 'vi', 'plugins/real-estate/project', 'form.city', 'Thành phố', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3473, 0, 'vi', 'plugins/real-estate/project', 'form.category', 'Loại dự án', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3474, 0, 'vi', 'plugins/real-estate/project', 'statuses.not_available', 'Không khả dụng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3475, 0, 'vi', 'plugins/real-estate/project', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3476, 0, 'vi', 'plugins/real-estate/project', 'statuses.selling', 'Đang bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3477, 0, 'vi', 'plugins/real-estate/project', 'statuses.sold', 'Đã bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3478, 0, 'vi', 'plugins/real-estate/project', 'statuses.building', 'Đang xây dựng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3479, 0, 'vi', 'plugins/real-estate/property', 'name', 'Nhà - Căn hộ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3480, 0, 'vi', 'plugins/real-estate/property', 'create', 'Thêm mới', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3481, 0, 'vi', 'plugins/real-estate/property', 'edit', 'Sửa', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3482, 0, 'vi', 'plugins/real-estate/property', 'form.main_info', 'Thông tin', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3483, 0, 'vi', 'plugins/real-estate/property', 'form.basic_info', 'Thông tin cơ bản', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3484, 0, 'vi', 'plugins/real-estate/property', 'form.name', 'Tiêu đề', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3485, 0, 'vi', 'plugins/real-estate/property', 'form.type', 'Loại', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3486, 0, 'vi', 'plugins/real-estate/property', 'form.images', 'Hình ảnh', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3487, 0, 'vi', 'plugins/real-estate/property', 'form.location', 'Địa chỉ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3488, 0, 'vi', 'plugins/real-estate/property', 'form.number_bedroom', 'Số phòng ngủ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3489, 0, 'vi', 'plugins/real-estate/property', 'form.number_bathroom', 'Số phòng tắm', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3490, 0, 'vi', 'plugins/real-estate/property', 'form.number_floor', 'Số tầng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3491, 0, 'vi', 'plugins/real-estate/property', 'form.square', 'Diện tích (m2)', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3492, 0, 'vi', 'plugins/real-estate/property', 'form.price', 'Giá', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3493, 0, 'vi', 'plugins/real-estate/property', 'form.features', 'Tiện ích', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3494, 0, 'vi', 'plugins/real-estate/property', 'form.project', 'Dự án', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3495, 0, 'vi', 'plugins/real-estate/property', 'form.date', 'Thông tin thời gian', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3496, 0, 'vi', 'plugins/real-estate/property', 'form.currency', 'Loại tiền', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3497, 0, 'vi', 'plugins/real-estate/property', 'form.city', 'Thành phố', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3498, 0, 'vi', 'plugins/real-estate/property', 'form.period', 'Chu kỳ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3499, 0, 'vi', 'plugins/real-estate/property', 'form.category', 'Loại nhà', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3500, 0, 'vi', 'plugins/real-estate/property', 'form.images_upload_placeholder', 'Kéo thả tập tin vào đây hoặc click để thêm tập tin.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3501, 0, 'vi', 'plugins/real-estate/property', 'statuses.not_available', 'Không khả dụng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3502, 0, 'vi', 'plugins/real-estate/property', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3503, 0, 'vi', 'plugins/real-estate/property', 'statuses.selling', 'Đang bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3504, 0, 'vi', 'plugins/real-estate/property', 'statuses.sold', 'Đã bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3505, 0, 'vi', 'plugins/real-estate/property', 'statuses.renting', 'Đang mở thuê', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3506, 0, 'vi', 'plugins/real-estate/property', 'statuses.rented', 'Đã cho thuê', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3507, 0, 'vi', 'plugins/real-estate/property', 'statuses.building', 'Đang xây dựng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3508, 0, 'vi', 'plugins/real-estate/property', 'types.sale', 'Nhà bán', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3509, 0, 'vi', 'plugins/real-estate/property', 'types.rent', 'Nhà cho thuê', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3510, 0, 'vi', 'plugins/real-estate/property', 'periods.day', 'Ngày', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3511, 0, 'vi', 'plugins/real-estate/property', 'periods.month', 'Tháng', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3512, 0, 'vi', 'plugins/real-estate/property', 'periods.year', 'Năm', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3513, 0, 'vi', 'plugins/real-estate/property', 'moderation_status', 'Trạng thái kiểm duyệt', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3514, 0, 'vi', 'plugins/real-estate/property', 'expire_date', 'Ngày hết hạn', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3515, 0, 'vi', 'plugins/real-estate/real-estate', 'name', 'Bất động sản', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3516, 0, 'vi', 'plugins/real-estate/real-estate', 'settings', 'Cài đặt', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3517, 0, 'vi', 'plugins/real-estate/settings', 'title', 'Accounts', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3518, 0, 'vi', 'plugins/real-estate/settings', 'description', 'Settings for members', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3519, 0, 'vi', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3520, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3521, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3522, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3523, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3524, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3525, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3526, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3527, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3528, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3529, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3530, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3531, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3532, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3533, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3534, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3535, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3536, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3537, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3538, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3539, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3540, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3541, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3542, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3543, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3544, 0, 'vi', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3545, 0, 'vi', 'plugins/social-login/social-login', 'settings.description', 'Cấu hình tùy chọn đăng nhập thông qua mạng xã hội', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3546, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3547, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3548, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3549, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3550, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3551, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3552, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3553, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3554, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3555, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3556, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3557, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3558, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3559, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3560, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3561, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3562, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3563, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3564, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3565, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3566, 0, 'vi', 'plugins/social-login/social-login', 'settings.enable', 'Bật?', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3567, 0, 'vi', 'plugins/social-login/social-login', 'menu', 'Đăng nhập mạng xã hội', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3568, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3569, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3570, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the :lang_path file, using \'php artisan cms:translations:export\' command or publish button.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3571, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3572, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3573, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3574, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3575, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3576, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3577, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3578, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3579, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3580, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3581, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3582, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3583, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3584, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3585, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3586, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3587, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3588, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3589, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3590, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3591, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3592, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3593, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3594, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3595, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3596, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3597, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3598, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3599, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder :lang_path is not writable. Please chmod to make it writable!', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3600, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3601, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in :lang_path!', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3602, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3603, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3604, 0, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3605, 0, 'en', 'plugins/translation/translation', 'import_available_locale', 'Or import available locale from our GitHub repository', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3606, 0, 'en', 'plugins/translation/translation', 'add_new_locale', 'Add new locale', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3607, 0, 'en', 'plugins/translation/translation', 'download_locale', 'Download locale', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3608, 0, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation', 'Download locale from GitHub', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3609, 0, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation_content', 'Are you sure you want to download this locale? It will be downloaded into :lang_path, you can delete it later if you want.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3610, 0, 'en', 'plugins/translation/translation', 'is_default', 'Is default?', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3611, 0, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3612, 0, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3613, 0, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3614, 0, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3615, 0, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3616, 0, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3617, 0, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3618, 0, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục :lang_path, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3619, 0, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý :counter bản ghi!  ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3620, 0, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3621, 0, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3622, 0, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3623, 0, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3624, 0, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3625, 0, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3626, 0, 'vi', 'plugins/translation/translation', 'actions', 'Hành động', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3627, 0, 'vi', 'plugins/translation/translation', 'add_new_language', 'Thêm ngôn ngữ mới', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3628, 0, 'vi', 'plugins/translation/translation', 'admin-translations', 'Dịch các mục khác', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3629, 0, 'vi', 'plugins/translation/translation', 'choose_language', 'Chọn ngôn ngữ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3630, 0, 'vi', 'plugins/translation/translation', 'default_locale', 'Ngôn ngữ mặc định', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3631, 0, 'vi', 'plugins/translation/translation', 'delete', 'Xóa', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3632, 0, 'vi', 'plugins/translation/translation', 'edit', 'Sửa', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3633, 0, 'vi', 'plugins/translation/translation', 'flag', 'Cờ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3634, 0, 'vi', 'plugins/translation/translation', 'locale', 'Ngôn ngữ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3635, 0, 'vi', 'plugins/translation/translation', 'locales', 'Ngôn ngữ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3636, 0, 'vi', 'plugins/translation/translation', 'name', 'Tên', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3637, 0, 'vi', 'plugins/translation/translation', 'no_other_languages', 'Không còn ngôn ngữ nào khác để dịch!', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3638, 0, 'vi', 'plugins/translation/translation', 'select_language', 'Lựa chọn ngôn ngữ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3639, 0, 'vi', 'plugins/translation/translation', 'theme-translations', 'Dịch giao diện', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3640, 0, 'vi', 'plugins/translation/translation', 'to', 'sang', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3641, 0, 'vi', 'plugins/translation/translation', 'translate_from', 'Dịch từ', '2022-09-28 19:29:06', '2022-09-28 19:29:20'),
(3642, 0, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3643, 0, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3644, 0, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3645, 0, 'vi', 'pagination', 'previous', '&laquo; Trước', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3646, 0, 'vi', 'pagination', 'next', 'Sau &raquo;', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3647, 0, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3648, 0, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3649, 0, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3650, 0, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3651, 0, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3652, 0, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3653, 0, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3654, 0, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3655, 0, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3656, 0, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3657, 0, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3658, 0, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3659, 0, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3660, 0, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3661, 0, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3662, 0, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3663, 0, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3664, 0, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3665, 0, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3666, 0, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3667, 0, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3668, 0, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3669, 0, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3670, 0, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3671, 0, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3672, 0, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3673, 0, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3674, 0, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3675, 0, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3676, 0, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3677, 0, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3678, 0, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3679, 0, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3680, 0, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3681, 0, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3682, 0, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3683, 0, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3684, 0, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3685, 0, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3686, 0, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3687, 0, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3688, 0, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3689, 0, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3690, 0, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3691, 0, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3692, 0, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3693, 0, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3694, 0, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3695, 0, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3696, 0, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3697, 0, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3698, 0, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3699, 0, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3700, 0, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3701, 0, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3702, 0, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3703, 0, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3704, 0, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3705, 0, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3706, 0, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3707, 0, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3708, 0, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3709, 0, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3710, 0, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3711, 0, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3712, 0, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3713, 0, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3714, 0, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3715, 0, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3716, 0, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3717, 0, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3719, 0, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3720, 0, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3721, 0, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3722, 0, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3723, 0, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3724, 0, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3725, 0, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3726, 0, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3727, 0, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3728, 0, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3729, 0, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3730, 0, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3731, 0, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3732, 0, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3733, 0, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3734, 0, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3735, 0, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3736, 0, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3737, 0, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3738, 0, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3739, 0, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3740, 0, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3741, 0, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3742, 0, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2022-09-28 19:29:06', '2022-09-28 19:29:19'),
(3743, 0, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-09-28 19:29:06', '2022-09-28 19:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$pf37bMy4yvRo5Y8HO3vta.ghTnh0tohlIDvbCYBaZTPHtnYCDd0fW', 'IfP5o3dUoWCfCeTK6vAebzbDiTfn6Vgwv4ELcmaOakPGQpKVhZ4tT4LLMKMD', '2021-12-09 21:25:34', '2023-11-10 12:22:50', NULL, '2023-11-10 12:22:50', 'System', 'Admin', 'botble', 1493, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'en', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04'),
(2, 'admin-theme', 'light', 1, '2023-11-09 14:21:18', '2023-11-09 14:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(20, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(21, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(22, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(24, 'CategoriesWidget', 'primary_sidebar', 'flex-home', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', '2019-11-18 03:50:44', '2019-11-18 03:50:44'),
(25, 'RecentPostsWidget', 'primary_sidebar', 'flex-home', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2019-11-18 03:50:45', '2019-11-18 03:50:45'),
(30, 'CategoriesWidget', 'primary_sidebar', 'flex-home-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'flex-home-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers_translations`
--
ALTER TABLE `careers_translations`
  ADD PRIMARY KEY (`lang_code`,`careers_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`),
  ADD KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_categories_translations`
--
ALTER TABLE `re_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`re_categories_id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_translations`
--
ALTER TABLE `re_facilities_translations`
  ADD PRIMARY KEY (`lang_code`,`re_facilities_id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features_translations`
--
ALTER TABLE `re_features_translations`
  ADD PRIMARY KEY (`lang_code`,`re_features_id`);

--
-- Indexes for table `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects_translations`
--
ALTER TABLE `re_projects_translations`
  ADD PRIMARY KEY (`lang_code`,`re_projects_id`);

--
-- Indexes for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties_translations`
--
ALTER TABLE `re_properties_translations`
  ADD PRIMARY KEY (`lang_code`,`re_properties_id`);

--
-- Indexes for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1656;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7131;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3744;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
