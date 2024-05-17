-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 09:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel_images`
--

CREATE TABLE `carousel_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousel_images`
--

INSERT INTO `carousel_images` (`id`, `src`, `created_at`, `updated_at`) VALUES
(1, 'carousel-1.jpg', NULL, NULL),
(2, 'carousel-2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`, `is_primary`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, 'rooms/room-type-1.jpg', 1, 1, NULL, NULL),
(2, 'rooms/room-type-2.jpg', 1, 2, NULL, NULL),
(3, 'rooms/room-type-3.jpg', 1, 3, NULL, NULL),
(4, 'rooms/room-type-4.jpg', 1, 4, NULL, NULL),
(5, 'rooms/room-type-5.jpg', 1, 5, NULL, NULL),
(6, 'rooms/room-type-6.jpg', 1, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `route`, `created_at`, `updated_at`) VALUES
(1, 'home', 'home', NULL, NULL),
(2, 'about', 'about', NULL, NULL),
(3, 'rooms', 'rooms', NULL, NULL),
(4, 'contact', 'contact', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nemanja', 'nemanja.antanasijevic1996@gmail.com', 'pitanje', 'pitnjeee', '2024-05-17 10:35:58', '2024-05-17 10:35:58');

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
(1, '2014_04_14_203208_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_04_14_201816_create_menu_table', 1),
(5, '2024_04_14_202628_create_room_types_table', 1),
(6, '2024_04_14_202639_create_rooms_table', 1),
(7, '2024_04_14_202723_create_reservations_table', 1),
(8, '2024_04_14_202752_create_room_reservation_table', 1),
(9, '2024_04_14_202900_create_room_rates_table', 1),
(10, '2024_04_14_202906_create_room_prices_table', 1),
(11, '2024_04_14_202914_create_services_table', 1),
(12, '2024_04_16_152753_create_images_table', 1),
(13, '2024_04_18_100053_create_carousel_images', 1),
(14, '2024_05_17_181235_create_messages_table', 1);

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'user', NULL, NULL),
(2, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `number_of_beds` int(11) NOT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `number_of_beds`, `room_type_id`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 101, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(2, 102, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(3, 103, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(4, 104, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(5, 105, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(6, 106, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(7, 107, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(8, 108, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(9, 109, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(10, 110, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(11, 111, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(12, 112, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(13, 113, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(14, 114, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(15, 115, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(16, 116, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(17, 117, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(18, 118, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(19, 119, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(20, 120, 1, 1, 1, '2024-05-17 10:15:33', NULL),
(21, 201, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(22, 202, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(23, 203, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(24, 204, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(25, 205, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(26, 206, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(27, 207, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(28, 208, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(29, 209, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(30, 210, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(31, 211, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(32, 212, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(33, 213, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(34, 214, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(35, 215, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(36, 216, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(37, 217, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(38, 218, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(39, 219, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(40, 220, 2, 2, 1, '2024-05-17 10:15:33', NULL),
(41, 301, 3, 3, 1, '2024-05-17 10:15:33', NULL),
(42, 302, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(43, 303, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(44, 304, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(45, 305, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(46, 306, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(47, 307, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(48, 308, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(49, 309, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(50, 310, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(51, 311, 3, 3, 1, '2024-05-17 10:15:33', NULL),
(52, 312, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(53, 313, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(54, 314, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(55, 315, 3, 3, 1, '2024-05-17 10:15:33', NULL),
(56, 316, 2, 3, 1, '2024-05-17 10:15:33', NULL),
(57, 317, 3, 3, 1, '2024-05-17 10:15:33', NULL),
(58, 318, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(59, 319, 4, 3, 1, '2024-05-17 10:15:33', NULL),
(60, 320, 3, 3, 1, '2024-05-17 10:15:33', NULL),
(61, 401, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(62, 402, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(63, 403, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(64, 404, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(65, 405, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(66, 406, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(67, 407, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(68, 408, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(69, 409, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(70, 410, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(71, 411, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(72, 412, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(73, 413, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(74, 414, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(75, 415, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(76, 416, 4, 4, 1, '2024-05-17 10:15:33', NULL),
(77, 417, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(78, 418, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(79, 419, 3, 4, 1, '2024-05-17 10:15:33', NULL),
(80, 420, 2, 4, 1, '2024-05-17 10:15:33', NULL),
(81, 501, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(82, 502, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(83, 503, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(84, 504, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(85, 505, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(86, 506, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(87, 507, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(88, 508, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(89, 509, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(90, 510, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(91, 511, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(92, 512, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(93, 513, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(94, 514, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(95, 515, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(96, 516, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(97, 517, 4, 5, 1, '2024-05-17 10:15:33', NULL),
(98, 518, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(99, 519, 2, 5, 1, '2024-05-17 10:15:33', NULL),
(100, 520, 3, 5, 1, '2024-05-17 10:15:33', NULL),
(101, 601, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(102, 602, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(103, 603, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(104, 604, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(105, 605, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(106, 606, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(107, 607, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(108, 608, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(109, 609, 2, 6, 1, '2024-05-17 10:15:33', NULL),
(110, 610, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(111, 611, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(112, 612, 2, 6, 1, '2024-05-17 10:15:33', NULL),
(113, 613, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(114, 614, 2, 6, 1, '2024-05-17 10:15:33', NULL),
(115, 615, 4, 6, 1, '2024-05-17 10:15:33', NULL),
(116, 616, 2, 6, 1, '2024-05-17 10:15:33', NULL),
(117, 617, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(118, 618, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(119, 619, 3, 6, 1, '2024-05-17 10:15:33', NULL),
(120, 620, 4, 6, 1, '2024-05-17 10:15:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_prices`
--

CREATE TABLE `room_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_prices`
--

INSERT INTO `room_prices` (`id`, `room_type_id`, `price`, `is_active`, `valid_from`, `valid_to`, `created_at`, `updated_at`) VALUES
(1, 1, 100.00, 1, NULL, NULL, NULL, NULL),
(2, 2, 150.00, 1, NULL, NULL, NULL, NULL),
(3, 3, 200.00, 1, NULL, NULL, NULL, NULL),
(4, 4, 250.00, 1, NULL, NULL, NULL, NULL),
(5, 5, 300.00, 1, NULL, NULL, NULL, NULL),
(6, 6, 350.00, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_rates`
--

CREATE TABLE `room_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `rate_value` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_rates`
--

INSERT INTO `room_rates` (`id`, `room_type_id`, `rate_value`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Our stay was peaceful and refreshing.', NULL, NULL),
(2, 4, 1, 'Beautiful views from every room!', NULL, NULL),
(3, 1, 2, 'The staff made us feel right at home.', NULL, NULL),
(4, 1, 5, 'Clean rooms, excellent service.', NULL, NULL),
(5, 2, 2, 'Truly a gem in the city center.', NULL, NULL),
(6, 6, 2, 'Efficient, courteous, and friendly staff.', NULL, NULL),
(7, 1, 1, 'Great place for families and singles alike.', NULL, NULL),
(8, 4, 2, 'A quiet, cozy spot for weekend getaways.', NULL, NULL),
(9, 5, 1, 'Loved the modern decor in the lobby.', NULL, NULL),
(10, 3, 3, 'Impeccably clean and well-maintained.', NULL, NULL),
(11, 5, 4, 'The breakfast buffet was top-notch.', NULL, NULL),
(12, 6, 4, 'Elegant rooms with comfortable beds.', NULL, NULL),
(13, 6, 5, 'Prime location near all major attractions.', NULL, NULL),
(14, 6, 5, '24/7 concierge services were so helpful.', NULL, NULL),
(15, 2, 4, 'The pool area was serene and inviting.', NULL, NULL),
(16, 5, 1, 'Perfect for business and leisure.', NULL, NULL),
(17, 5, 2, 'Free Wi-Fi was surprisingly fast.', NULL, NULL),
(18, 4, 2, 'Every request was met with a smile.', NULL, NULL),
(19, 6, 4, 'The spa services were utterly relaxing.', NULL, NULL),
(20, 4, 1, 'Ideal for a romantic weekend.', NULL, NULL),
(21, 6, 2, 'Always a pleasure to stay here.', NULL, NULL),
(22, 3, 2, 'Accessibility options were excellent.', NULL, NULL),
(23, 5, 1, 'Pet-friendly and kids love it too!', NULL, NULL),
(24, 6, 1, 'Our room had a stunning ocean view.', NULL, NULL),
(25, 1, 4, 'A peaceful retreat from the busy city.', NULL, NULL),
(26, 1, 1, 'Their attention to detail is unmatched.', NULL, NULL),
(27, 6, 4, 'Valet parking was quick and easy.', NULL, NULL),
(28, 4, 3, 'Superb dining options onsite.', NULL, NULL),
(29, 5, 2, 'Very accommodating for large groups.', NULL, NULL),
(30, 5, 4, 'A reliable choice for frequent travelers.', NULL, NULL),
(31, 6, 1, 'Gardens around the hotel were beautiful.', NULL, NULL),
(32, 5, 1, 'Room service was prompt and courteous.', NULL, NULL),
(33, 1, 5, 'Fitness center had everything I needed.', NULL, NULL),
(34, 3, 4, 'The rooftop bar has breathtaking views.', NULL, NULL),
(35, 1, 1, 'Perfect mix of luxury and comfort.', NULL, NULL),
(36, 5, 3, 'Daily housekeeping kept things spotless.', NULL, NULL),
(37, 3, 2, 'Highly recommend their brunch menu.', NULL, NULL),
(38, 4, 4, 'Quiet AC units in each room.', NULL, NULL),
(39, 1, 3, 'Functional spaces for meetings and events.', NULL, NULL),
(40, 5, 1, 'Children’s play area was a nice touch.', NULL, NULL),
(41, 5, 4, 'Tea and coffee facilities were appreciated.', NULL, NULL),
(42, 1, 4, 'Check-in and check-out were a breeze.', NULL, NULL),
(43, 2, 3, 'Felt safe during our entire stay.', NULL, NULL),
(44, 2, 1, 'Bathrooms were spacious and modern.', NULL, NULL),
(45, 2, 4, 'Plenty of natural light in the lobby.', NULL, NULL),
(46, 2, 5, 'They really care about guest experience.', NULL, NULL),
(47, 1, 1, 'Lush towels and linens provided.', NULL, NULL),
(48, 5, 3, 'Affordable rates for such luxury.', NULL, NULL),
(49, 6, 3, 'Effortless reservation process online.', NULL, NULL),
(50, 4, 1, 'Guest-oriented service, every time.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_reservation`
--

CREATE TABLE `room_reservation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `description`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Single Room', 'Our Single Room offers a comfortable retreat for solo travelers. Equipped with a plush single bed, a work desk, and complimentary Wi-Fi, this room combines functionality with comfort. The decor is modern and minimalistic, creating a serene space to relax and rejuvenate after a busy day.', 1, NULL, NULL),
(2, 'Double Room', 'Ideal for couples or friends traveling together, our Double Room features two cozy beds in a beautifully appointed space. Enjoy amenities such as a flat-screen TV, room service, and a private bathroom stocked with luxurious toiletries. The room’s warm lighting and fine linens ensure a restful night’s sleep.', 1, NULL, NULL),
(3, 'Queen Room', 'The Queen Room offers a spacious setting with a luxurious queen-size bed. Elegant furnishings and a soothing palette create a relaxing ambiance. The room includes modern amenities like a minibar, coffee maker, and a seating area, perfect for both relaxation and work.', 1, NULL, NULL),
(4, 'King Room', 'Our King Room provides a regal experience with a large king-size bed and premium bedding. The room boasts a sophisticated design with a dedicated workspace, an en-suite bathroom, and a balcony overlooking the surroundings. High-speed Internet and a smart TV are also included for entertainment and convenience.', 1, NULL, NULL),
(5, 'Suite', 'Experience ultimate luxury in our Suite, featuring a separate living area, bedroom, and sometimes even a kitchenette. The suite is designed for comfort and elegance, providing ample space and upscale amenities tailored for an unforgettable stay. Perfect for those who appreciate finer accommodations.', 1, NULL, NULL),
(6, 'Family Room', 'Designed for family stays, our Family Room offers multiple bedding options and ample space for everyone. It includes kid-friendly amenities, entertainment options, and safety features to ensure a comfortable and worry-free stay for parents and children alike.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rooms & Apartment', 'Experience luxury living with spacious, well-appointed rooms and apartments offering spectacular city and landscape views.', 'fa-hotel', '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(2, 'Food & Restaurant', 'Savor exquisite dining options featuring local and international dishes in a sophisticated, inviting atmosphere.', 'fa-utensils', '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(3, 'Spa & Fitness', 'Relax and rejuvenate with top-notch spa treatments and state-of-the-art fitness facilities tailored to wellness enthusiasts.', 'fa-spa', '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(4, 'Sports & Gaming', 'Engage in thrilling sports and gaming activities, perfect for families, friends, and professional gamers alike.', 'fa-swimmer', '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(5, 'Event & Party', 'Host memorable events and parties with our exceptional planning services, modern venues, and dedicated support.', 'fa-glass-cheers', '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(6, 'Gym & Yoga', 'Keep fit and find your inner peace with our fully equipped gym and yoga classes led by expert instructors.', 'fa-dumbbell', '2024-05-17 10:15:33', '2024-05-17 10:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Matt', 'Stiedemann', 'yrenner@yahoo.com', NULL, '$2y$12$oG7qw9qdBcmZ4m32H7gKDOUm45LkwBxJuUf/0rKapyVznEqPAvS5O', 2, NULL, '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(2, 'Devante', 'Dare', 'daryl82@gmail.com', NULL, '$2y$12$cEaLZIrHJyDOly1jZ1Lw9OH3mwikMh.iWzuwjLGwcge/ocbBIFHKC', 1, NULL, '2024-05-17 10:15:33', '2024-05-17 10:15:33'),
(3, 'Lonie', 'Streich', 'buck48@gmail.com', NULL, '$2y$12$PJGC8ru6vY2uCOAWHOgGS.lKRY18ep/SS2LHuGzUwyblfkGJZIA6e', 2, NULL, '2024-05-17 10:15:34', '2024-05-17 10:15:34'),
(4, 'Syble', 'Upton', 'daisy.schimmel@spencer.info', NULL, '$2y$12$XTuJ9iClB271WgD03OQlje9ceBnPPBPUSiWoaaci6ZmE3LtMCI43.', 2, NULL, '2024-05-17 10:15:34', '2024-05-17 10:15:34'),
(5, 'Dorian', 'Johnson', 'adonis.hayes@farrell.com', NULL, '$2y$12$IbHtPM8du10jGnIEhMVqsuHtNkQ5ukMkn2hoSqpFQKgeK7/Z2.rD.', 2, NULL, '2024-05-17 10:15:34', '2024-05-17 10:15:34'),
(6, 'Nemanja', 'Antanasijevic', 'nemanjaantanasijevic1@gmail.com', NULL, '$2y$12$ZZOjFdwJOkCZudprFoWW6OqEqivN68bQlVBjY7VeoW5jjIZkjVXAa', 1, NULL, '2024-05-17 10:43:19', '2024-05-17 10:43:19'),
(7, 'Nemanja', 'Antanasijevic', 'nemanjaaa@ict.com', NULL, '$2y$12$A1Q/NcFp2eCV0twhb6WRU.MSHfeRNeCba6t7TwLz8yf54Bh8esxFG', 1, NULL, '2024-05-17 11:23:10', '2024-05-17 11:23:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel_images`
--
ALTER TABLE `carousel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_prices`
--
ALTER TABLE `room_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_prices_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_rates`
--
ALTER TABLE `room_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_rates_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_reservation_room_id_foreign` (`room_id`),
  ADD KEY `room_reservation_reservation_id_foreign` (`reservation_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel_images`
--
ALTER TABLE `carousel_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `room_prices`
--
ALTER TABLE `room_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_rates`
--
ALTER TABLE `room_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `room_reservation`
--
ALTER TABLE `room_reservation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `room_prices`
--
ALTER TABLE `room_prices`
  ADD CONSTRAINT `room_prices_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `room_rates`
--
ALTER TABLE `room_rates`
  ADD CONSTRAINT `room_rates_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD CONSTRAINT `room_reservation_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `room_reservation_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
