-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2024 at 07:02 AM
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
-- Database: `school_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `addgrand_finals`
--

CREATE TABLE `addgrand_finals` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addgrand_finals`
--

INSERT INTO `addgrand_finals` (`id`, `class_name`, `class_exam_name`, `percentage`, `serial`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'Half yearly exam', '0', '0', 'active', 'approved', '100', '2024-06-03 22:55:44', '2024-06-03 22:55:44'),
(2, 'NURSERY', 'Half yearly exam', '0', '0', 'active', 'approved', '100', '2024-06-03 22:55:44', '2024-06-03 22:55:44'),
(3, 'ONE', 'Half yearly exam', '0', '0', 'active', 'approved', '100', '2024-06-03 22:55:44', '2024-06-03 22:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `add_academic_session`
--

CREATE TABLE `add_academic_session` (
  `id` bigint UNSIGNED NOT NULL,
  `academic_session_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_academic_session`
--

INSERT INTO `add_academic_session` (`id`, `academic_session_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, '2021-2022', 'active', 'approved', '100', '2024-03-04 00:08:50', '2024-03-04 00:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `add_academic_year`
--

CREATE TABLE `add_academic_year` (
  `id` bigint UNSIGNED NOT NULL,
  `academic_year_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_academic_year`
--

INSERT INTO `add_academic_year` (`id`, `academic_year_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, '2024', 'active', 'approved', '100', '2024-03-04 00:08:17', '2024-03-04 00:08:17'),
(2, '2023', 'active', 'approved', '100', '2024-03-04 00:08:22', '2024-03-04 00:08:22'),
(3, '2022', 'active', 'approved', '100', '2024-03-04 00:08:28', '2024-03-04 00:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `add_admit_card`
--

CREATE TABLE `add_admit_card` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_admit_card`
--

INSERT INTO `add_admit_card` (`id`, `class_name`, `group_name`, `year`, `class_exam_name`, `subject_name`, `exam_date`, `exam_time`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'BANGLA', '6/5/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(2, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'ENGLISH', '6/6/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(3, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'MATHEMATICS', '6/7/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(4, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'RELIGION', '6/8/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(5, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'G.K', '6/9/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(6, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'HAND WRITING', '6/10/2024', '3:19:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(7, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'GENERAL KNOWLEDGE', '6/11/2024', '3:20:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(8, 'PLAY', 'N/A', '2024', 'Half yearly exam', 'H. MATH', '6/12/2024', '3:20:00 PM', 'active', 'approved', '100', '2024-06-05 03:22:34', '2024-06-05 03:22:34'),
(9, '', '', '2024', 'Half yearly exam', 'BANGLA', '6/23/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(10, '', '', '2024', 'Half yearly exam', 'ENGLISH', '6/24/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(11, '', '', '2024', 'Half yearly exam', 'MATHEMATICS', '6/25/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(12, '', '', '2024', 'Half yearly exam', 'RELIGION', '6/26/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(13, '', '', '2024', 'Half yearly exam', 'G.K', '6/27/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(14, '', '', '2024', 'Half yearly exam', 'HAND WRITING', '6/28/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03'),
(15, '', '', '2024', 'Half yearly exam', 'GENERAL KNOWLEDGE', '6/29/2024', '11:35:00 AM', 'active', 'approved', '100', '2024-06-22 23:35:03', '2024-06-22 23:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `add_admit_instruction`
--

CREATE TABLE `add_admit_instruction` (
  `id` bigint UNSIGNED NOT NULL,
  `instruction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_admit_instruction`
--

INSERT INTO `add_admit_instruction` (`id`, `instruction`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Please attend the class before starting the exam', 'active', 'approved', '100', '2024-06-09 00:24:32', '2024-06-09 00:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `add_board_exam`
--

CREATE TABLE `add_board_exam` (
  `id` bigint UNSIGNED NOT NULL,
  `board_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_board_exam`
--

INSERT INTO `add_board_exam` (`id`, `board_exam_name`, `position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'HSC', '2', 'active', 'approved', '100', '2024-03-04 00:06:12', '2024-03-04 00:06:12'),
(3, 'SSC', '1', 'active', 'approved', '100', '2024-03-04 00:06:27', '2024-03-04 00:06:27'),
(4, 'JSC', '3', 'active', 'approved', '100', '2024-03-04 00:06:35', '2024-03-04 00:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `add_category`
--

CREATE TABLE `add_category` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_category`
--

INSERT INTO `add_category` (`id`, `category_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'General', 'active', 'approved', '100', '2024-03-04 00:05:12', '2024-03-04 00:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`id`, `class_name`, `position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', '1', 'active', 'approved', '100', '2024-03-03 23:43:01', '2024-03-03 23:43:01'),
(2, 'NURSERY', '2', 'active', 'approved', '100', '2024-03-03 23:43:12', '2024-03-03 23:43:12'),
(3, 'ONE', '3', 'active', 'approved', '100', '2024-03-03 23:43:23', '2024-03-03 23:43:23'),
(4, 'TWO', '4', 'active', 'approved', '100', '2024-03-03 23:43:40', '2024-03-03 23:43:40'),
(5, 'THREE', '5', 'active', 'approved', '100', '2024-03-03 23:43:57', '2024-03-03 23:43:57'),
(6, 'FIVE', '7', 'active', 'approved', '100', '2024-03-03 23:44:13', '2024-03-03 23:44:13'),
(7, 'SIX', '8', 'active', 'approved', '100', '2024-03-03 23:44:37', '2024-03-03 23:44:37'),
(8, 'FOUR', '6', 'active', 'approved', '100', '2024-03-03 23:45:06', '2024-03-03 23:45:06'),
(9, 'SEVEN', '9', 'active', 'approved', '100', '2024-03-03 23:45:39', '2024-03-03 23:45:39'),
(10, 'EIGHT', '10', 'active', 'approved', '100', '2024-03-03 23:45:50', '2024-03-03 23:45:50'),
(11, 'NINE', '11', 'active', 'approved', '100', '2024-03-03 23:46:04', '2024-03-03 23:46:04'),
(12, 'TEN', '12', 'active', 'approved', '100', '2024-03-03 23:46:18', '2024-03-03 23:46:18'),
(13, 'OLD TEN', '13', 'active', 'approved', '100', '2024-03-03 23:46:39', '2024-03-03 23:46:39'),
(15, 'All Class Inactive', '14', 'active', 'approved', '100', '2024-05-21 05:10:27', '2024-05-21 05:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_exam`
--

CREATE TABLE `add_class_exam` (
  `id` bigint UNSIGNED NOT NULL,
  `class_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class_exam`
--

INSERT INTO `add_class_exam` (`id`, `class_exam_name`, `position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Half yearly exam', '1', 'active', 'approved', '100', '2024-03-04 22:34:29', '2024-03-04 22:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_wise_group`
--

CREATE TABLE `add_class_wise_group` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class_wise_group`
--

INSERT INTO `add_class_wise_group` (`id`, `class_name`, `group_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'ONE', 'N/A', 'active', 'approved', '100', '2024-03-22 02:53:07', '2024-03-22 02:53:07'),
(2, 'TWO', 'N/A', 'active', 'approved', '100', '2024-03-22 02:53:18', '2024-03-22 02:53:18'),
(3, 'THREE', 'N/A', 'active', 'approved', '100', '2024-03-22 02:53:36', '2024-03-22 02:53:36'),
(4, 'PLAY', 'N/A', 'active', 'approved', '100', '2024-04-19 22:54:18', '2024-04-19 22:54:18'),
(5, 'FOUR', 'N/A', 'active', 'approved', '100', '2024-06-08 03:55:13', '2024-06-08 03:55:13'),
(6, 'FIVE', 'N/A', 'active', 'approved', '100', '2024-06-08 03:55:24', '2024-06-08 03:55:24'),
(7, 'SIX', 'N/A', 'active', 'approved', '100', '2024-06-08 03:55:32', '2024-06-08 03:55:32'),
(8, 'SEVEN', 'N/A', 'active', 'approved', '100', '2024-06-08 03:55:45', '2024-06-08 03:55:45'),
(9, 'EIGHT', 'N/A', 'active', 'approved', '100', '2024-06-08 03:55:56', '2024-06-08 03:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_wise_section`
--

CREATE TABLE `add_class_wise_section` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class_wise_section`
--

INSERT INTO `add_class_wise_section` (`id`, `class_name`, `section_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'DAY-HM', 'active', 'approved', '100', '2024-03-22 02:53:57', '2024-03-22 02:53:57'),
(2, 'PLAY', 'DAY-BS', 'active', 'approved', '100', '2024-03-22 02:54:37', '2024-03-22 02:54:37'),
(3, 'PLAY', 'DAY-SC', 'active', 'approved', '100', '2024-03-22 02:55:48', '2024-03-22 02:55:48'),
(4, 'NURSERY', 'DAY-HM', 'active', 'approved', '100', '2024-03-22 02:55:57', '2024-03-22 02:55:57'),
(5, 'PLAY', 'MOR-HM', 'active', 'approved', '100', '2024-04-22 04:32:36', '2024-04-22 04:32:36'),
(6, 'PLAY', 'DAY-A', 'active', 'approved', '100', '2024-04-22 04:33:17', '2024-04-22 04:33:17'),
(7, 'PLAY', 'MOR-A', 'active', 'approved', '100', '2024-04-22 04:33:36', '2024-04-22 04:33:36'),
(8, 'ONE', 'MOR-A', 'active', 'approved', '100', '2024-04-25 00:39:01', '2024-04-25 00:39:01'),
(9, 'ONE', 'DAY-A', 'active', 'approved', '100', '2024-04-25 00:39:21', '2024-04-25 00:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_wise_shift`
--

CREATE TABLE `add_class_wise_shift` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class_wise_shift`
--

INSERT INTO `add_class_wise_shift` (`id`, `class_name`, `shift_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'DAY', 'active', 'approved', '100', '2024-04-19 22:54:58', '2024-04-19 22:54:58'),
(2, 'PLAY', 'MORNING', 'active', 'approved', '100', '2024-04-19 22:55:00', '2024-04-19 22:55:00'),
(3, 'ONE', 'DAY', 'active', 'approved', '100', '2024-04-22 05:28:44', '2024-04-22 05:28:44'),
(4, 'ONE', 'MORNING', 'active', 'approved', '100', '2024-04-22 05:29:58', '2024-04-22 05:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_wise_subject`
--

CREATE TABLE `add_class_wise_subject` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_marge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class_wise_subject`
--

INSERT INTO `add_class_wise_subject` (`id`, `class_name`, `subject_name`, `subject_type`, `group_name`, `subject_serial`, `status`, `action`, `school_code`, `created_at`, `updated_at`, `subject_marge`) VALUES
(1, 'ONE', 'BANGLA', 'choosable', 'N/A', '01', 'active', 'approved', '100', '2024-03-11 01:01:33', '2024-03-11 01:09:36', '0'),
(2, 'ONE', 'ENGLISH', 'choosable', 'N/A', '01', 'active', 'approved', '100', '2024-03-11 01:01:33', '2024-03-11 01:09:36', '0'),
(3, 'PLAY', 'BANGLA', 'select', 'N/A', '03', 'active', 'approved', '100', '2024-03-20 22:36:21', '2024-05-19 22:38:28', '1'),
(4, 'PLAY', 'ENGLISH', 'select', 'N/A', '03', 'active', 'approved', '100', '2024-03-20 22:36:22', '2024-05-19 22:38:28', '2'),
(5, 'PLAY', 'MATHEMATICS', 'select', 'N/A', '03', 'active', 'approved', '100', '2024-03-20 22:36:22', '2024-05-19 22:38:28', '3'),
(6, 'PLAY', 'RELIGION', 'select', 'N/A', '03', 'active', 'approved', '100', '2024-03-20 22:36:22', '2024-05-19 22:38:28', '4'),
(7, 'PLAY', 'G.K', 'select', 'N/A', '03', 'active', 'approved', '100', '2024-03-20 22:36:22', '2024-05-19 22:38:28', '5'),
(8, 'ONE', 'MATHEMATICS', 'select', 'N/A', '08', 'active', 'approved', '100', '2024-05-07 04:42:17', '2024-05-07 04:42:17', '0'),
(9, 'NURSERY', 'BANGLA', 'select', 'N/A', '09', 'active', 'approved', '100', '2024-05-19 00:38:53', '2024-05-19 00:38:53', '0'),
(10, 'NURSERY', 'ENGLISH', 'select', 'N/A', '09', 'active', 'approved', '100', '2024-05-19 00:38:53', '2024-05-19 00:38:53', '0'),
(11, 'NURSERY', 'MATHEMATICS', 'select', 'N/A', '09', 'active', 'approved', '100', '2024-05-19 00:38:53', '2024-05-19 00:38:53', '0'),
(12, 'PLAY', 'HAND WRITING', 'select', 'N/A', '12', 'active', 'approved', '100', '2024-05-19 22:43:34', '2024-05-19 22:43:34', '0'),
(13, 'PLAY', 'GENERAL KNOWLEDGE', 'select', 'N/A', '12', 'active', 'approved', '100', '2024-05-19 22:43:34', '2024-05-19 22:43:34', '0'),
(15, 'TEN', 'BANGLA', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(16, 'TEN', 'ENGLISH', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(17, 'TEN', 'MATHEMATICS', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(18, 'TEN', 'SCIENCE', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(19, 'TEN', 'ICT', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(20, 'TEN', 'H. MATH', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(21, 'TEN', 'CHEMISTRY', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(22, 'TEN', 'PHYSICS', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(23, 'TEN', 'BANGLA 1ST PAPER', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(24, 'TEN', 'BANGLA 2ND PAPER', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(25, 'TEN', 'ENGLISH 1ST PAPER', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(26, 'TEN', 'ENGLISH 2ND PAPER', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:36:34', '2024-06-01 22:36:34', '0'),
(27, 'TEN', 'GENERAL SCIENCE', 'select', 'SCIENCE', '0', 'active', 'approved', '100', '2024-06-01 22:38:28', '2024-06-01 22:38:28', '0'),
(28, 'TWO', 'COMPUTER', 'select', 'N/A', '0', 'active', 'approved', '100', '2024-06-09 23:05:01', '2024-06-09 23:05:01', '0');

-- --------------------------------------------------------

--
-- Table structure for table `add_fees`
--

CREATE TABLE `add_fees` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('checked','unchecked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unchecked',
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_fees`
--

INSERT INTO `add_fees` (`id`, `class_name`, `group_name`, `fee_type`, `fee_amount`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(96, 'PLAY', 'N/A', 'Mid-term Fee', '1000', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(97, 'PLAY', 'N/A', 'Quizze Fee', '500', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(98, 'PLAY', 'N/A', 'Final Fee', '1200', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(99, 'PLAY', 'N/A', 'Tuition Fees', '1700', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(100, 'PLAY', 'N/A', 'Study Tour', '300', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(101, 'PLAY', 'N/A', 'Admission', '5000', 'unchecked', 'approved', '100', '2024-05-26 04:23:46', '2024-05-26 04:23:46'),
(102, 'PLAY', 'N/A', 'New Admission', '0', 'unchecked', 'approved', '100', '2024-05-26 04:23:47', '2024-05-26 04:23:47'),
(103, 'PLAY', 'N/A', 'Old Admission', '0', 'unchecked', 'approved', '100', '2024-05-26 04:23:47', '2024-05-26 04:23:47'),
(104, 'PLAY', 'N/A', 'Milad Fund', '0', 'unchecked', 'approved', '100', '2024-05-26 04:23:47', '2024-05-26 04:23:47'),
(105, 'PLAY', 'N/A', 'Caching Fee', '0', 'unchecked', 'approved', '100', '2024-05-26 04:23:47', '2024-05-26 04:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `add_fee_types`
--

CREATE TABLE `add_fee_types` (
  `id` bigint UNSIGNED NOT NULL,
  `fee_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_fee_types`
--

INSERT INTO `add_fee_types` (`id`, `fee_type_name`, `position`, `action`, `school_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mid-term Fee', 1, 'approved', '100', 'active', '2024-04-22 23:14:31', '2024-04-22 23:14:31'),
(2, 'Quizze Fee', 2, 'approved', '100', 'active', '2024-04-22 23:14:41', '2024-04-22 23:14:41'),
(3, 'Final Fee', 3, 'approved', '100', 'active', '2024-04-22 23:14:49', '2024-04-22 23:14:49'),
(6, 'Tuition Fees', 4, 'approved', '100', 'active', '2024-04-28 04:34:10', '2024-04-28 04:34:10'),
(7, 'Study Tour', 5, 'approved', '100', 'active', '2024-04-28 04:34:35', '2024-04-28 04:34:35'),
(8, 'Admission', 6, 'approved', '100', 'active', '2024-04-28 04:36:06', '2024-04-28 04:36:06'),
(9, 'New Admission', 7, 'approved', '100', 'active', '2024-04-28 04:36:23', '2024-04-28 04:36:23'),
(10, 'Old Admission', 8, 'approved', '100', 'active', '2024-04-28 04:36:38', '2024-04-28 04:36:38'),
(11, 'Milad Fund', 9, 'approved', '100', 'active', '2024-04-28 04:36:49', '2024-04-28 04:36:49'),
(12, 'Caching Fee', 10, 'approved', '100', 'active', '2024-04-28 04:37:03', '2024-04-28 04:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `add_grade_point`
--

CREATE TABLE `add_grade_point` (
  `id` bigint UNSIGNED NOT NULL,
  `mark_point_1st` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_point_2nd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letter_grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_grade_point`
--

INSERT INTO `add_grade_point` (`id`, `mark_point_1st`, `mark_point_2nd`, `grade_point`, `letter_grade`, `note`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, '80', '100', '5', 'A+', 'Excellent performance', 'active', 'approved', '100', '2024-03-05 00:10:46', '2024-03-05 00:10:46'),
(2, '70', '79', '4', 'A', 'Best Performance', 'active', 'approved', '100', '2024-03-05 00:11:26', '2024-03-05 00:11:26'),
(3, '60', '69', '3.5', 'A-', 'xyz', 'active', 'approved', '100', '2024-03-05 00:22:55', '2024-03-05 00:22:55'),
(4, '50', '59', '3', 'B', 'rewr', 'active', 'approved', '100', '2024-03-05 00:23:22', '2024-03-05 00:23:22'),
(5, '40', '49', '2', 'C', 'dsf', 'active', 'approved', '100', '2024-03-05 00:23:45', '2024-03-05 00:23:45'),
(6, '33', '39', '1', 'D', 'dfgdfg', 'active', 'approved', '100', '2024-03-05 00:24:06', '2024-03-05 00:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `add_grade_setup`
--

CREATE TABLE `add_grade_setup` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `1st_range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `2nd_range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_group`
--

CREATE TABLE `add_group` (
  `id` bigint UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_group`
--

INSERT INTO `add_group` (`id`, `group_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'SCIENCE', 'active', 'approved', '100', '2024-03-03 23:50:19', '2024-03-03 23:50:19'),
(2, 'BUSINESS STUDIES', 'active', 'approved', '100', '2024-03-03 23:50:41', '2024-03-03 23:50:41'),
(3, 'HUMANITIES', 'active', 'approved', '100', '2024-03-03 23:50:55', '2024-03-03 23:50:55'),
(4, 'N/A', 'active', 'approved', '100', '2024-03-03 23:51:05', '2024-03-03 23:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `add_messages`
--

CREATE TABLE `add_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_messages`
--

INSERT INTO `add_messages` (`id`, `message`, `message_count`, `school_code`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Hello. This message is for checking purpose.', '1', '100', 'approved', '2024-06-04 00:10:03', '2024-06-04 00:10:03'),
(2, 'hgasdhjg vasdv vasnj vvjnsaukv vuasjhvv', '1', '100', 'approved', '2024-06-04 01:23:41', '2024-06-04 01:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `add_pay_slips`
--

CREATE TABLE `add_pay_slips` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_slip_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_pay_slips`
--

INSERT INTO `add_pay_slips` (`id`, `class_name`, `group_name`, `pay_slip_type`, `fee_type_name`, `fees_amount`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(91, 'play', 'N/A', 'Exam pay slip', 'Mid-term Fee', '1000', 'active', 'approved', '100', '2024-05-03 22:46:34', '2024-05-03 22:46:34'),
(92, 'play', 'N/A', 'Exam pay slip', 'Quizze Fee', '500', 'active', 'approved', '100', '2024-05-03 22:46:34', '2024-05-26 04:24:30'),
(93, 'play', 'N/A', 'Exam pay slip', 'Final Fee', '1200', 'active', 'approved', '100', '2024-05-03 22:46:34', '2024-05-26 04:24:31'),
(102, 'Three', 'N/A', 'Admission', 'Admission', '6000', 'active', 'approved', '100', '2024-05-05 22:01:18', '2024-05-05 22:01:18'),
(103, 'Three', 'N/A', 'Exam pay slip', 'Mid-term Fee', '2500', 'active', 'approved', '100', '2024-05-05 22:01:54', '2024-05-05 22:01:54'),
(104, 'Three', 'N/A', 'Exam pay slip', 'Quizze Fee', '2000', 'active', 'approved', '100', '2024-05-05 22:01:54', '2024-05-05 22:01:54'),
(105, 'Three', 'N/A', 'Exam pay slip', 'Final Fee', '3000', 'active', 'approved', '100', '2024-05-05 22:01:54', '2024-05-05 22:01:54'),
(106, 'Three', 'N/A', 'Tuition Fees', 'Tuition Fees', '2500', 'active', 'approved', '100', '2024-05-05 22:02:21', '2024-05-05 22:02:21'),
(107, 'PLAY', 'N/A', 'Admission', 'Admission', '4500', 'active', 'approved', '100', '2024-05-26 04:20:53', '2024-05-26 04:20:53'),
(108, 'PLAY', 'N/A', 'Tuition Fees', 'Tuition Fees', '1700', 'active', 'approved', '100', '2024-05-26 04:24:04', '2024-05-26 04:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `add_pay_slip_types`
--

CREATE TABLE `add_pay_slip_types` (
  `id` bigint UNSIGNED NOT NULL,
  `pay_slip_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_pay_slip_types`
--

INSERT INTO `add_pay_slip_types` (`id`, `pay_slip_type_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Admission', 'active', 'approved', '100', '2024-04-22 23:17:28', '2024-04-28 23:09:49'),
(2, 'Caching Fee', 'active', 'approved', '100', '2024-04-24 00:42:36', '2024-04-28 23:10:02'),
(5, 'Exam pay slip', 'active', 'approved', '100', '2024-04-28 23:10:15', '2024-04-28 23:10:15'),
(6, 'General pay slip', 'active', 'approved', '100', '2024-04-28 23:10:39', '2024-04-28 23:10:39'),
(7, 'Milad Fund', 'active', 'approved', '100', '2024-04-28 23:10:49', '2024-04-28 23:10:49'),
(8, 'New Admission', 'active', 'approved', '100', '2024-04-28 23:11:08', '2024-04-28 23:11:08'),
(9, 'Old Admission', 'active', 'approved', '100', '2024-04-28 23:11:23', '2024-04-28 23:11:23'),
(10, 'Study Tour', 'active', 'approved', '100', '2024-04-28 23:11:31', '2024-04-28 23:11:31'),
(11, 'Tuition Fees', 'active', 'approved', '100', '2024-04-28 23:11:40', '2024-04-28 23:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `add_period`
--

CREATE TABLE `add_period` (
  `id` bigint UNSIGNED NOT NULL,
  `class_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_period`
--

INSERT INTO `add_period` (`id`, `class_period`, `position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, '1st Period', '1', 'active', 'approved', '100', '2024-03-04 00:09:31', '2024-03-04 00:09:31'),
(2, '2nd Period', '2', 'active', 'approved', '100', '2024-03-04 00:09:40', '2024-03-04 00:09:40'),
(3, '3rd Period', '3', 'active', 'approved', '100', '2024-03-04 00:09:50', '2024-03-04 00:09:50'),
(4, '4th Period', '4', 'active', 'approved', '100', '2024-03-04 00:09:59', '2024-03-04 00:09:59'),
(5, '5th Period', '5', 'active', 'approved', '100', '2024-03-04 00:10:10', '2024-03-04 00:10:10'),
(6, '6th Period', '6', 'active', 'approved', '100', '2024-03-04 00:10:21', '2024-03-04 00:10:21'),
(7, '7th Period', '7', 'active', 'approved', '100', '2024-03-04 00:10:36', '2024-03-04 00:10:36'),
(8, '8th Period', '8', 'active', 'approved', '100', '2024-03-04 00:13:10', '2024-03-04 00:13:10'),
(9, '9th Period', '9', 'active', 'approved', '100', '2024-03-04 00:14:07', '2024-03-04 00:14:07'),
(10, '10th Period', '10', 'active', 'approved', '100', '2024-03-04 00:14:18', '2024-03-04 00:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `add_report_name`
--

CREATE TABLE `add_report_name` (
  `id` bigint UNSIGNED NOT NULL,
  `report_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_report_name`
--

INSERT INTO `add_report_name` (`id`, `report_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Report One', 'active', 'approved', '100', '2024-03-11 00:20:41', '2024-03-11 00:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `add_section`
--

CREATE TABLE `add_section` (
  `id` bigint UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_section`
--

INSERT INTO `add_section` (`id`, `section_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'DAY-HM', 'active', 'approved', '100', '2024-03-03 23:47:23', '2024-03-03 23:47:23'),
(2, 'DAY-BS', 'active', 'approved', '100', '2024-03-03 23:48:24', '2024-03-03 23:48:24'),
(3, 'DAY-SC', 'active', 'approved', '100', '2024-03-03 23:48:37', '2024-03-03 23:48:37'),
(4, 'MOR-HM', 'active', 'approved', '100', '2024-03-03 23:48:45', '2024-03-03 23:48:45'),
(5, 'MOR-BS', 'active', 'approved', '100', '2024-03-03 23:48:53', '2024-03-03 23:48:53'),
(6, 'MOR-SC', 'active', 'approved', '100', '2024-03-03 23:49:03', '2024-03-03 23:49:03'),
(7, 'DAY-A', 'active', 'approved', '100', '2024-03-03 23:49:15', '2024-03-03 23:49:15'),
(8, 'MOR-A', 'active', 'approved', '100', '2024-03-03 23:49:22', '2024-03-03 23:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `add_shift`
--

CREATE TABLE `add_shift` (
  `id` bigint UNSIGNED NOT NULL,
  `shift_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_shift`
--

INSERT INTO `add_shift` (`id`, `shift_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'DAY', 'active', 'approved', '100', '2024-03-03 23:49:46', '2024-03-03 23:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `add_short_code`
--

CREATE TABLE `add_short_code` (
  `id` bigint UNSIGNED NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_short_code`
--

INSERT INTO `add_short_code` (`id`, `short_code`, `position`, `mark_position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'a', '1', NULL, 'active', 'approved', '100', '2024-03-05 01:36:19', '2024-03-05 01:36:19'),
(2, 'b', '2', NULL, 'active', 'approved', '100', '2024-03-05 01:36:26', '2024-03-05 01:36:26'),
(3, 'T1', '1', NULL, 'active', 'approved', '100', '2024-05-07 04:42:55', '2024-05-07 04:42:55'),
(4, 'CQ', '2', NULL, 'active', 'approved', '100', '2024-05-07 04:43:02', '2024-05-07 04:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `add_signature`
--

CREATE TABLE `add_signature` (
  `id` bigint UNSIGNED NOT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_subject`
--

CREATE TABLE `add_subject` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_subject`
--

INSERT INTO `add_subject` (`id`, `subject_name`, `subject_code`, `position`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'BANGLA', NULL, '1', 'active', 'approved', '100', '2024-03-03 23:51:34', '2024-03-03 23:51:34'),
(2, 'ENGLISH', NULL, '2', 'active', 'approved', '100', '2024-03-03 23:51:45', '2024-03-03 23:51:45'),
(3, 'MATHEMATICS', NULL, '3', 'active', 'approved', '100', '2024-03-03 23:51:56', '2024-03-03 23:51:56'),
(4, 'SCIENCE', NULL, '4', 'active', 'approved', '100', '2024-03-03 23:52:06', '2024-03-03 23:52:06'),
(5, 'ICT', NULL, '5', 'active', 'approved', '100', '2024-03-03 23:52:15', '2024-03-03 23:52:15'),
(6, 'DRAWING', NULL, '6', 'active', 'approved', '100', '2024-03-03 23:52:26', '2024-03-03 23:52:26'),
(7, 'HAND WRITING', NULL, '7', 'active', 'approved', '100', '2024-03-03 23:52:41', '2024-03-03 23:52:41'),
(8, 'GENERAL KNOWLEDGE', NULL, '8', 'active', 'approved', '100', '2024-03-03 23:52:57', '2024-03-03 23:52:57'),
(9, 'BGS', NULL, '9', 'active', 'approved', '100', '2024-03-03 23:53:07', '2024-03-03 23:53:07'),
(10, 'RELIGION', NULL, '10', 'active', 'approved', '100', '2024-03-03 23:53:22', '2024-03-03 23:53:22'),
(11, 'G.K', NULL, '11', 'active', 'approved', '100', '2024-03-03 23:53:31', '2024-03-03 23:53:31'),
(12, 'GENERAL SCIENCE', NULL, '12', 'active', 'approved', '100', '2024-03-03 23:53:47', '2024-03-03 23:53:47'),
(13, 'H. MATH', NULL, '13', 'active', 'approved', '100', '2024-03-03 23:54:02', '2024-03-03 23:54:02'),
(14, 'AGRICULTURE', NULL, '14', 'active', 'approved', '100', '2024-03-03 23:54:13', '2024-03-03 23:54:13'),
(15, 'CHEMISTRY', NULL, '15', 'active', 'approved', '100', '2024-03-03 23:54:27', '2024-03-03 23:54:27'),
(16, 'BIOLOGY', NULL, '16', 'active', 'approved', '100', '2024-03-03 23:54:38', '2024-03-03 23:54:38'),
(17, 'PHYSICS', NULL, '17', 'active', 'approved', '100', '2024-03-03 23:54:54', '2024-03-03 23:54:54'),
(18, 'FINNANCE & BANKING', NULL, '18', 'active', 'approved', '100', '2024-03-03 23:55:24', '2024-03-03 23:55:24'),
(19, 'ACCOUNTING', NULL, '19', 'active', 'approved', '100', '2024-03-03 23:55:36', '2024-03-03 23:55:36'),
(20, 'B.ENT', NULL, '20', 'active', 'approved', '100', '2024-03-03 23:56:37', '2024-03-03 23:56:37'),
(21, 'HOME SCIENC', NULL, '21', 'active', 'approved', '100', '2024-03-03 23:56:49', '2024-03-03 23:56:49'),
(22, 'PHYSICAL EDUCATION', NULL, '22', 'active', 'approved', '100', '2024-03-03 23:57:05', '2024-03-03 23:57:05'),
(23, 'ARTS AND CRAFT', NULL, '23', 'active', 'approved', '100', '2024-03-03 23:57:18', '2024-03-03 23:57:18'),
(24, 'CARRIER EDUCATION', NULL, '24', 'active', 'approved', '100', '2024-03-03 23:57:38', '2024-03-03 23:57:38'),
(25, 'BANGLA 1ST PAPER', NULL, '25', 'active', 'approved', '100', '2024-03-03 23:57:56', '2024-03-03 23:57:56'),
(26, 'BANGLA 2ND PAPER', NULL, '26', 'active', 'approved', '100', '2024-03-03 23:58:09', '2024-03-03 23:58:09'),
(27, 'ENGLISH 1ST PAPER', NULL, '27', 'active', 'approved', '100', '2024-03-03 23:58:24', '2024-03-03 23:58:24'),
(28, 'ENGLISH 2ND PAPER', NULL, '28', 'active', 'approved', '100', '2024-03-03 23:58:40', '2024-03-03 23:58:40'),
(30, 'ENVIRONMENTAL', NULL, '29', 'active', 'approved', '100', '2024-03-03 23:59:10', '2024-03-03 23:59:10'),
(31, 'RELIGION AND MORAL EDUCATION', NULL, '30', 'active', 'approved', '100', '2024-03-03 23:59:29', '2024-03-03 23:59:29'),
(32, 'COMPUTER', NULL, '31', 'active', 'approved', '100', '2024-03-03 23:59:45', '2024-03-03 23:59:45'),
(33, 'BUSINESS ENT', NULL, '32', 'active', 'approved', '100', '2024-03-04 00:00:01', '2024-03-04 00:00:01'),
(38, 'GEOGRAPHY', NULL, '33', 'active', 'approved', '100', '2024-03-04 00:02:19', '2024-03-04 00:02:19'),
(39, 'ECONOMICS', NULL, '34', 'active', 'approved', '100', '2024-03-04 00:02:48', '2024-03-04 00:02:48'),
(40, 'HISTORY', NULL, '35', 'active', 'approved', '100', '2024-03-04 00:04:11', '2024-03-04 00:04:11'),
(41, 'CIVICS', NULL, '36', 'active', 'approved', '100', '2024-03-04 00:04:23', '2024-03-04 00:04:23'),
(42, 'WLE', NULL, '37', 'active', 'approved', '100', '2024-03-04 00:04:32', '2024-03-04 00:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `image`, `email`, `role`, `phone_number`, `password`, `created_at`, `updated_at`, `school_code`) VALUES
(1, 'Shamin', 'Hossain', 'images/admin/admin_one_65f129b44cabb.png', 'admin@gmail.com', 'admin_one', '01933242044', '$2y$12$zT0ATZ6x6OozI2TSrXtj8uiIox4bTzcBD0H9EXyAQ1Y0FQI8Nb.JW', '2024-03-12 22:21:08', '2024-03-12 22:21:08', 'nedubd'),
(2, 'Rafin', 'Hossain', 'images/admin/super_admin_66026f9f196cf.jpg', 'rafin@gmail.com', 'super_admin', '01984419614', '$2y$12$kme3wsSdLxp1MT1e3.zjYe4hArazKqEYrcFDlXRQYZUmM4c0x2Nba', '2024-03-26 00:47:59', '2024-03-26 00:47:59', '100');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `contact`, `school_code`, `action`, `created_at`, `updated_at`) VALUES
(95, 'sayem modon', '01521574741', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(97, 'Rashed', '01720051101', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(98, 'RAfin Hossain', '01701297556', '100', 'approved', '2024-06-04 04:35:09', '2024-06-04 04:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks_input`
--

CREATE TABLE `exam_marks_input` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_roll` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci DEFAULT 'approved',
  `status` enum('absent','present') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_marks_input`
--

INSERT INTO `exam_marks_input` (`id`, `name`, `student_id`, `student_roll`, `class_name`, `group`, `section`, `shift`, `exam_name`, `year`, `subject`, `full_marks`, `short_marks`, `total_marks`, `grade`, `gpa`, `school_code`, `action`, `status`, `created_at`, `updated_at`) VALUES
(417, 'Rafin Hossain', '1', '1', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":50}', '60', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(418, 'SHAHRIAR NUR', '2', '2', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(419, 'YAKUB AHMED', '3', '3', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(420, 'ABDULLAH AL RAYYAN', '4', '4', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(421, 'TUSAN AHMED AWSAF', '5', '5', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(422, 'ABDULLAH RAHMAN ZOBAIR', '6', '6', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(423, 'ABDULLAH BIN UJJAL', '7', '7', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(424, 'ABU TALHA', '8', '8', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(425, 'IBRAHIM ZILHOJ', '9', '9', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(426, 'SAFWAN IS. HOSSAIN', '10', '10', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(427, 'REDUAN IS. HASAN', '11', '11', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(428, 'MASHROOR IBN ANWAR', '12', '12', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15'),
(429, 'MD. HUZAIFA', '13', '13', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'Half yearly exam', '2024', 'BANGLA', '120', '{\"a\":15,\"b\":40}', '55', 'B', '3', '100', 'approved', 'present', '2024-05-10 22:56:15', '2024-05-10 22:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `exam_process`
--

CREATE TABLE `exam_process` (
  `id` bigint UNSIGNED NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merit_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_roll` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_marks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_gpa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_process`
--

INSERT INTO `exam_process` (`id`, `class`, `group`, `section`, `student_id`, `exam_name`, `merit_status`, `student_roll`, `total_marks`, `total_gpa`, `year`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'N/A', 'MOR-A', '1', 'Half yearly exam', 'class_wise', '1', '60', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-09 23:21:32'),
(2, 'PLAY', 'N/A', 'MOR-A', '2', 'Half yearly exam', 'class_wise', '1', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(3, 'PLAY', 'N/A', 'MOR-A', '3', 'Half yearly exam', 'class_wise', '2', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(4, 'PLAY', 'N/A', 'MOR-A', '4', 'Half yearly exam', 'class_wise', '3', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(5, 'PLAY', 'N/A', 'MOR-A', '5', 'Half yearly exam', 'class_wise', '4', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(6, 'PLAY', 'N/A', 'MOR-A', '6', 'Half yearly exam', 'class_wise', '5', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(7, 'PLAY', 'N/A', 'MOR-A', '7', 'Half yearly exam', 'class_wise', '6', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(8, 'PLAY', 'N/A', 'MOR-A', '8', 'Half yearly exam', 'class_wise', '7', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(9, 'PLAY', 'N/A', 'MOR-A', '9', 'Half yearly exam', 'class_wise', '8', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-09 23:19:23'),
(10, 'PLAY', 'N/A', 'MOR-A', '10', 'Half yearly exam', 'class_wise', '9', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(11, 'PLAY', 'N/A', 'MOR-A', '11', 'Half yearly exam', 'class_wise', '10', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(12, 'PLAY', 'N/A', 'MOR-A', '12', 'Half yearly exam', 'class_wise', '11', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(13, 'PLAY', 'N/A', 'MOR-A', '13', 'Half yearly exam', 'class_wise', '12', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:12', '2024-06-03 00:57:12'),
(14, 'PLAY', 'N/A', 'MOR-A', '1', 'Half yearly exam', 'section_wise', '1', '60', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-09 23:20:59'),
(15, 'PLAY', 'N/A', 'MOR-A', '2', 'Half yearly exam', 'section_wise', '1', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(16, 'PLAY', 'N/A', 'MOR-A', '3', 'Half yearly exam', 'section_wise', '2', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(17, 'PLAY', 'N/A', 'MOR-A', '4', 'Half yearly exam', 'section_wise', '3', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(18, 'PLAY', 'N/A', 'MOR-A', '5', 'Half yearly exam', 'section_wise', '4', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(19, 'PLAY', 'N/A', 'MOR-A', '6', 'Half yearly exam', 'section_wise', '5', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(20, 'PLAY', 'N/A', 'MOR-A', '7', 'Half yearly exam', 'section_wise', '6', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(21, 'PLAY', 'N/A', 'MOR-A', '8', 'Half yearly exam', 'section_wise', '7', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(22, 'PLAY', 'N/A', 'MOR-A', '9', 'Half yearly exam', 'section_wise', '8', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(23, 'PLAY', 'N/A', 'MOR-A', '10', 'Half yearly exam', 'section_wise', '9', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(24, 'PLAY', 'N/A', 'MOR-A', '11', 'Half yearly exam', 'section_wise', '10', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(25, 'PLAY', 'N/A', 'MOR-A', '12', 'Half yearly exam', 'section_wise', '11', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(26, 'PLAY', 'N/A', 'MOR-A', '13', 'Half yearly exam', 'section_wise', '12', '55', '3.00', '2024', 'active', 'approved', '100', '2024-06-03 00:57:23', '2024-06-03 00:57:23'),
(27, 'PLAY', 'N/A', 'MOR-A', '1212121212312121121212121212121', 'Half yearly exam', 'section_wise', '1', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(28, 'PLAY', 'N/A', 'MOR-A', '3301', 'Half yearly exam', 'section_wise', '1', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(29, 'PLAY', 'N/A', 'MOR-A', '3302', 'Half yearly exam', 'section_wise', '2', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(30, 'PLAY', 'N/A', 'MOR-A', '3303', 'Half yearly exam', 'section_wise', '3', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(31, 'PLAY', 'N/A', 'MOR-A', '3304', 'Half yearly exam', 'section_wise', '4', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(32, 'PLAY', 'N/A', 'MOR-A', '3305', 'Half yearly exam', 'section_wise', '5', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(33, 'PLAY', 'N/A', 'MOR-A', '3306', 'Half yearly exam', 'section_wise', '6', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(34, 'PLAY', 'N/A', 'MOR-A', '3307', 'Half yearly exam', 'section_wise', '7', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(35, 'PLAY', 'N/A', 'MOR-A', '3308', 'Half yearly exam', 'section_wise', '8', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(36, 'PLAY', 'N/A', 'MOR-A', '3309', 'Half yearly exam', 'section_wise', '9', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04'),
(37, 'PLAY', 'N/A', 'MOR-A', '3310', 'Half yearly exam', 'section_wise', '10', '0', '3.00', '2024', 'active', 'approved', '100', '2024-06-08 23:01:04', '2024-06-08 23:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `exam_publish`
--

CREATE TABLE `exam_publish` (
  `id` bigint UNSIGNED NOT NULL,
  `Class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_publish`
--

INSERT INTO `exam_publish` (`id`, `Class_name`, `exam_name`, `year`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(2, 'Choose a class', 'Choose Exam Name', 'Select Year', 'active', 'approved', '100', '2024-06-09 23:04:03', '2024-06-09 23:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_subjects`
--

CREATE TABLE `fourth_subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optional_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compulsory_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fourth_subjects`
--

INSERT INTO `fourth_subjects` (`id`, `class_name`, `year`, `section`, `group`, `shift`, `optional_subject`, `compulsory_subject`, `action`, `student_id`, `type`, `school_code`, `created_at`, `updated_at`) VALUES
(9, 'PLAY', '2024', 'DAY-HM', 'N/A', 'DAY', 'Home Science', 'Higher Math', 'approved', 'STU20240001', 'active', '100', '2024-03-04 05:23:36', '2024-03-04 05:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `generate_payslips`
--

CREATE TABLE `generate_payslips` (
  `id` bigint UNSIGNED NOT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_pay_date` date NOT NULL,
  `student_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_slip_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `waiver` int NOT NULL,
  `payable` int NOT NULL,
  `voucher_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collect_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_amount` int DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `waiver_approaved_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collected_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collected_by_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collected_by_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('approved','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generate_payslips`
--

INSERT INTO `generate_payslips` (`id`, `month`, `year`, `last_pay_date`, `student_id`, `class`, `class_position`, `group`, `section`, `category`, `pay_slip_type`, `amount`, `waiver`, `payable`, `voucher_number`, `collect_date`, `due_amount`, `paid_amount`, `waiver_approaved_by`, `note`, `collected_by_name`, `collected_by_email`, `collected_by_phone`, `payment_status`, `school_code`, `action`, `created_at`, `updated_at`) VALUES
(179, 'may', '2024', '2024-05-10', 'STU20240002', 'play', NULL, 'N/A', 'A', NULL, 'Tuition Fees', 1500, 0, 500, '#V664C1F0EA9976', '2024-05-21', 500, 1000, NULL, NULL, 'Tanvir Hossain Sadi', 'tanvir@gmail.com', '01881540890', 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:12:35'),
(180, 'june', '2024', '2024-06-10', 'STU20240002', 'play', NULL, 'N/A', 'A', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(181, 'july', '2024', '2024-07-10', 'STU20240002', 'play', NULL, 'N/A', 'A', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(182, 'may', '2024', '2024-05-10', 'STU20240003', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 750, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(183, 'june', '2024', '2024-06-10', 'STU20240003', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 750, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(184, 'july', '2024', '2024-07-10', 'STU20240003', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 750, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(185, 'may', '2024', '2024-05-10', 'STU20240004', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(186, 'june', '2024', '2024-06-10', 'STU20240004', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(187, 'july', '2024', '2024-07-10', 'STU20240004', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(188, 'may', '2024', '2024-05-10', 'STU20240005', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(189, 'june', '2024', '2024-06-10', 'STU20240005', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(190, 'july', '2024', '2024-07-10', 'STU20240005', 'play', NULL, 'N/A', 'B', NULL, 'Tuition Fees', 1500, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', 'approved', '2024-05-20 22:10:45', '2024-05-20 22:10:45'),
(191, 'may', '2024', '2024-05-10', 'STU20240001', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, '#V664C717A38B55', '2024-05-21', 0, 1500, NULL, NULL, 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:23'),
(192, 'may', '2024', '2024-05-10', 'STU20240002', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:23'),
(193, 'may', '2024', '2024-05-10', 'STU20240003', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:23'),
(194, 'may', '2024', '2024-05-10', 'STU20240004', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(195, 'may', '2024', '2024-05-10', 'STU20240005', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(196, 'may', '2024', '2024-05-10', 'STU20240006', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(197, 'may', '2024', '2024-05-10', 'STU20240007', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(198, 'may', '2024', '2024-05-10', 'STU20240008', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(199, 'may', '2024', '2024-05-10', 'STU20240009', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(200, 'may', '2024', '2024-05-10', 'STU20240010', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(201, 'may', '2024', '2024-05-10', 'STU20240011', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(202, 'may', '2024', '2024-05-10', 'STU20240012', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(203, 'may', '2024', '2024-05-10', 'STU20240013', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-21 04:03:25', '2024-05-26 04:38:24'),
(204, 'april', '2024', '2024-04-10', 'STU20240001', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:23', '2024-05-26 04:38:23'),
(205, 'april', '2024', '2024-04-10', 'STU20240002', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:23', '2024-05-26 04:38:23'),
(206, 'april', '2024', '2024-04-10', 'STU20240003', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:23', '2024-05-26 04:38:23'),
(207, 'april', '2024', '2024-04-10', 'STU20240004', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:23', '2024-05-26 04:38:23'),
(208, 'april', '2024', '2024-04-10', 'STU20240005', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(209, 'april', '2024', '2024-04-10', 'STU20240006', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(210, 'april', '2024', '2024-04-10', 'STU20240007', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(211, 'april', '2024', '2024-04-10', 'STU20240008', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(212, 'april', '2024', '2024-04-10', 'STU20240009', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(213, 'april', '2024', '2024-04-10', 'STU20240010', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(214, 'april', '2024', '2024-04-10', 'STU20240011', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(215, 'april', '2024', '2024-04-10', 'STU20240012', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(216, 'april', '2024', '2024-04-10', 'STU20240013', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:38:24', '2024-05-26 04:38:24'),
(217, 'may', '2024', '2024-05-10', 'STU20240001', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(218, 'may', '2024', '2024-05-10', 'STU20240002', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(219, 'may', '2024', '2024-05-10', 'STU20240003', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(220, 'may', '2024', '2024-05-10', 'STU20240004', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(221, 'may', '2024', '2024-05-10', 'STU20240005', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(222, 'may', '2024', '2024-05-10', 'STU20240006', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(223, 'may', '2024', '2024-05-10', 'STU20240007', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(224, 'may', '2024', '2024-05-10', 'STU20240008', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(225, 'may', '2024', '2024-05-10', 'STU20240009', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(226, 'may', '2024', '2024-05-10', 'STU20240010', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(227, 'may', '2024', '2024-05-10', 'STU20240011', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:06', '2024-05-26 04:39:06'),
(228, 'may', '2024', '2024-05-10', 'STU20240012', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:07', '2024-05-26 04:39:07'),
(229, 'may', '2024', '2024-05-10', 'STU20240013', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-26 04:39:07', '2024-05-26 04:39:07'),
(230, 'january', '2024', '2024-01-10', 'STU20240001', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(231, 'february', '2024', '2024-02-10', 'STU20240001', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(232, 'january', '2024', '2024-01-10', 'STU20240002', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(233, 'february', '2024', '2024-02-10', 'STU20240002', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(234, 'january', '2024', '2024-01-10', 'STU20240003', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(235, 'february', '2024', '2024-02-10', 'STU20240003', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(236, 'january', '2024', '2024-01-10', 'STU20240004', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(237, 'february', '2024', '2024-02-10', 'STU20240004', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(238, 'january', '2024', '2024-01-10', 'STU20240005', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(239, 'february', '2024', '2024-02-10', 'STU20240005', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(240, 'january', '2024', '2024-01-10', 'STU20240006', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(241, 'february', '2024', '2024-02-10', 'STU20240006', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(242, 'january', '2024', '2024-01-10', 'STU20240007', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(243, 'february', '2024', '2024-02-10', 'STU20240007', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:26', '2024-05-28 03:39:26'),
(244, 'january', '2024', '2024-01-10', 'STU20240008', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(245, 'february', '2024', '2024-02-10', 'STU20240008', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(246, 'january', '2024', '2024-01-10', 'STU20240009', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(247, 'february', '2024', '2024-02-10', 'STU20240009', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(248, 'january', '2024', '2024-01-10', 'STU20240010', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(249, 'february', '2024', '2024-02-10', 'STU20240010', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(250, 'january', '2024', '2024-01-10', 'STU20240011', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(251, 'february', '2024', '2024-02-10', 'STU20240011', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(252, 'january', '2024', '2024-01-10', 'STU20240012', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(253, 'february', '2024', '2024-02-10', 'STU20240012', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(254, 'january', '2024', '2024-01-10', 'STU20240013', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(255, 'february', '2024', '2024-02-10', 'STU20240013', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-05-28 03:39:27', '2024-05-28 03:39:27'),
(256, 'june', '2024', '2024-06-03', 'STU20240026', 'PLAY', NULL, 'N/A', 'N/A', NULL, 'Exam pay slip', 2700, 500, 0, '#V665D581B17788', '2024-06-03', 0, 2200, NULL, 'june 2024 Exam pay slip', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-02 23:43:55', '2024-06-02 23:43:55'),
(257, 'june', '2024', '2024-06-03', 'STU20240026', 'PLAY', NULL, 'N/A', 'N/A', NULL, 'Admission', 4500, 0, 0, '#V665D581B17788', '2024-06-03', 0, 4500, NULL, 'june 2024 Admission', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-02 23:43:55', '2024-06-02 23:43:55'),
(258, 'june', '2024', '2024-06-03', 'STU20240026', 'PLAY', NULL, 'N/A', 'N/A', NULL, 'Tuition Fees', 1700, 0, 0, '#V665D581B17788', '2024-06-03', 0, 1700, NULL, 'june 2024 Tuition Fees', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-02 23:43:55', '2024-06-02 23:43:55'),
(260, 'june', '2024', '2024-06-10', '2', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(261, 'june', '2024', '2024-06-10', '3', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(262, 'june', '2024', '2024-06-10', '4', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(263, 'june', '2024', '2024-06-10', '5', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(264, 'june', '2024', '2024-06-10', '6', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(265, 'june', '2024', '2024-06-10', '7', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(266, 'june', '2024', '2024-06-10', '8', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(267, 'june', '2024', '2024-06-10', '9', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(268, 'june', '2024', '2024-06-10', '10', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(269, 'june', '2024', '2024-06-10', '11', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(270, 'june', '2024', '2024-06-10', '12', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(271, 'june', '2024', '2024-06-10', '13', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:07', '2024-06-02 23:46:07'),
(273, 'september', '2024', '2024-09-10', '1', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(274, 'august', '2024', '2024-08-10', '2', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(275, 'september', '2024', '2024-09-10', '2', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(276, 'august', '2024', '2024-08-10', '3', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(277, 'september', '2024', '2024-09-10', '3', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(278, 'august', '2024', '2024-08-10', '4', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(279, 'september', '2024', '2024-09-10', '4', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(280, 'august', '2024', '2024-08-10', '5', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(281, 'september', '2024', '2024-09-10', '5', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(282, 'august', '2024', '2024-08-10', '6', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(283, 'september', '2024', '2024-09-10', '6', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(284, 'august', '2024', '2024-08-10', '7', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(285, 'september', '2024', '2024-09-10', '7', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(286, 'august', '2024', '2024-08-10', '8', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(287, 'september', '2024', '2024-09-10', '8', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(288, 'august', '2024', '2024-08-10', '9', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(289, 'september', '2024', '2024-09-10', '9', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(290, 'august', '2024', '2024-08-10', '10', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(291, 'september', '2024', '2024-09-10', '10', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(292, 'august', '2024', '2024-08-10', '11', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(293, 'september', '2024', '2024-09-10', '11', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(294, 'august', '2024', '2024-08-10', '12', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(295, 'september', '2024', '2024-09-10', '12', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(296, 'august', '2024', '2024-08-10', '13', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(297, 'september', '2024', '2024-09-10', '13', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(298, 'august', '2024', '2024-08-10', 'STU20240026', 'PLAY', NULL, 'N/A', NULL, NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(299, 'september', '2024', '2024-09-10', 'STU20240026', 'PLAY', NULL, 'N/A', NULL, NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-02 23:46:31', '2024-06-02 23:46:31'),
(300, 'june', '2024', '2024-06-08', '1212121212312121121212121212121', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Exam pay slip', 2700, 0, 0, '#V6663F87A357B7', '2024-06-08', 0, 2700, NULL, 'june 2024 Exam pay slip', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-08 00:21:46', '2024-06-08 00:21:46'),
(301, 'june', '2024', '2024-06-08', '1212121212312121121212121212121', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Admission', 4500, 0, 0, '#V6663F87A357B7', '2024-06-08', 0, 4500, NULL, 'june 2024 Admission', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-08 00:21:46', '2024-06-08 00:21:46'),
(302, 'june', '2024', '2024-06-08', '1212121212312121121212121212121', 'PLAY', NULL, 'N/A', 'MOR-A', NULL, 'Tuition Fees', 1700, 0, 0, '#V6663F87A357B7', '2024-06-08', 0, 1700, NULL, 'june 2024 Tuition Fees', 'Unknown', 'Unknown', 'Unknown', 'paid', '100', 'approved', '2024-06-08 00:21:46', '2024-06-08 00:21:46'),
(303, 'april', '2024', '2024-04-10', '1', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(304, 'may', '2024', '2024-05-10', '1', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(305, 'april', '2024', '2024-04-10', '2', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(306, 'may', '2024', '2024-05-10', '2', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(307, 'april', '2024', '2024-04-10', '3', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(308, 'may', '2024', '2024-05-10', '3', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(309, 'april', '2024', '2024-04-10', '4', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(310, 'may', '2024', '2024-05-10', '4', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(311, 'april', '2024', '2024-04-10', '5', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(312, 'may', '2024', '2024-05-10', '5', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(313, 'april', '2024', '2024-04-10', '6', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(314, 'may', '2024', '2024-05-10', '6', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(315, 'april', '2024', '2024-04-10', '7', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(316, 'may', '2024', '2024-05-10', '7', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(317, 'april', '2024', '2024-04-10', '8', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(318, 'may', '2024', '2024-05-10', '8', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(319, 'april', '2024', '2024-04-10', '9', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(320, 'may', '2024', '2024-05-10', '9', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(321, 'april', '2024', '2024-04-10', '10', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(322, 'may', '2024', '2024-05-10', '10', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(323, 'april', '2024', '2024-04-10', '11', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(324, 'may', '2024', '2024-05-10', '11', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(325, 'april', '2024', '2024-04-10', '12', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(326, 'may', '2024', '2024-05-10', '12', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(327, 'april', '2024', '2024-04-10', '13', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(328, 'may', '2024', '2024-05-10', '13', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(329, 'april', '2024', '2024-04-10', 'STU20240026', 'PLAY', '1', 'N/A', NULL, NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(330, 'may', '2024', '2024-05-10', 'STU20240026', 'PLAY', '1', 'N/A', NULL, NULL, 'Tuition Fees', 1700, 0, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:25:56', '2024-06-14 04:25:56'),
(331, 'july', '2024', '2024-07-10', '1', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(332, 'august', '2024', '2024-08-10', '1', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(333, 'july', '2024', '2024-07-10', '2', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(334, 'august', '2024', '2024-08-10', '2', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(335, 'july', '2024', '2024-07-10', '3', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(336, 'august', '2024', '2024-08-10', '3', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(337, 'july', '2024', '2024-07-10', '4', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(338, 'august', '2024', '2024-08-10', '4', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(339, 'july', '2024', '2024-07-10', '5', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(340, 'august', '2024', '2024-08-10', '5', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(341, 'july', '2024', '2024-07-10', '6', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(342, 'august', '2024', '2024-08-10', '6', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(343, 'july', '2024', '2024-07-10', '7', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(344, 'august', '2024', '2024-08-10', '7', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(345, 'july', '2024', '2024-07-10', '8', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(346, 'august', '2024', '2024-08-10', '8', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(347, 'july', '2024', '2024-07-10', '9', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(348, 'august', '2024', '2024-08-10', '9', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(349, 'july', '2024', '2024-07-10', '10', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(350, 'august', '2024', '2024-08-10', '10', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(351, 'july', '2024', '2024-07-10', '11', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(352, 'august', '2024', '2024-08-10', '11', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(353, 'july', '2024', '2024-07-10', '12', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(354, 'august', '2024', '2024-08-10', '12', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(355, 'july', '2024', '2024-07-10', '13', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(356, 'august', '2024', '2024-08-10', '13', 'PLAY', '1', 'N/A', 'MOR-A', 'General', 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15'),
(357, 'july', '2024', '2024-07-10', 'STU20240026', 'PLAY', '1', 'N/A', NULL, NULL, 'Admission', 4500, 0, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '100', 'approved', '2024-06-14 04:26:15', '2024-06-14 04:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `grade_setup`
--

CREATE TABLE `grade_setup` (
  `id` bigint UNSIGNED NOT NULL,
  `class_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latter_grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `grade_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mark_point_1st` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mark_point_2nd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_setup`
--

INSERT INTO `grade_setup` (`id`, `class_exam_name`, `academic_year_name`, `class_name`, `latter_grade`, `grade_point`, `mark_point_1st`, `mark_point_2nd`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(26, 'Half yearly exam', '2024', 'PLAY', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(27, 'Half yearly exam', '2024', 'PLAY', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(28, 'Half yearly exam', '2024', 'PLAY', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(29, 'Half yearly exam', '2024', 'PLAY', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(30, 'Half yearly exam', '2024', 'PLAY', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(31, 'Half yearly exam', '2024', 'PLAY', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-03-12 02:27:01', '2024-03-12 02:27:01'),
(32, 'Half yearly exam', '2023', 'NURSERY', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(33, 'Half yearly exam', '2023', 'NURSERY', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(34, 'Half yearly exam', '2023', 'NURSERY', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(35, 'Half yearly exam', '2023', 'NURSERY', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(36, 'Half yearly exam', '2023', 'NURSERY', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(37, 'Half yearly exam', '2023', 'NURSERY', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-03-12 02:42:37', '2024-03-12 02:42:37'),
(38, 'Half yearly exam', '2023', 'ONE', 'A+', '5', '90', '100', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(39, 'Half yearly exam', '2023', 'ONE', 'A', '4', '70', '89', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(40, 'Half yearly exam', '2023', 'ONE', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(41, 'Half yearly exam', '2023', 'ONE', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(42, 'Half yearly exam', '2023', 'ONE', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(43, 'Half yearly exam', '2023', 'ONE', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-03-12 03:03:11', '2024-03-12 03:03:11'),
(44, 'Half yearly exam', '2024', 'FIVE', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-03-22 01:41:55', '2024-03-22 01:41:55'),
(45, 'Half yearly exam', '2024', 'FIVE', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-03-22 01:41:55', '2024-03-22 01:41:55'),
(46, 'Half yearly exam', '2024', 'FIVE', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-03-22 01:41:55', '2024-03-22 01:41:55'),
(47, 'Half yearly exam', '2024', 'FIVE', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-03-22 01:41:56', '2024-03-22 01:41:56'),
(48, 'Half yearly exam', '2024', 'FIVE', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-03-22 01:41:56', '2024-03-22 01:41:56'),
(49, 'Half yearly exam', '2024', 'FIVE', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-03-22 01:41:56', '2024-03-22 01:41:56'),
(50, 'Half yearly exam', '2024', 'NURSERY', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(51, 'Half yearly exam', '2024', 'NURSERY', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(52, 'Half yearly exam', '2024', 'NURSERY', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(53, 'Half yearly exam', '2024', 'NURSERY', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(54, 'Half yearly exam', '2024', 'NURSERY', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(55, 'Half yearly exam', '2024', 'NURSERY', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-04-19 21:53:06', '2024-04-19 21:53:06'),
(56, 'Half yearly exam', '2024', 'PLAY', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(57, 'Half yearly exam', '2024', 'PLAY', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(58, 'Half yearly exam', '2024', 'PLAY', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(59, 'Half yearly exam', '2024', 'PLAY', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(60, 'Half yearly exam', '2024', 'PLAY', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(61, 'Half yearly exam', '2024', 'PLAY', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-04-19 21:53:47', '2024-04-19 21:53:47'),
(62, 'Half yearly exam', '2024', 'ONE', 'A+', '5', '80', '100', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42'),
(63, 'Half yearly exam', '2024', 'ONE', 'A', '4', '70', '79', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42'),
(64, 'Half yearly exam', '2024', 'ONE', 'A-', '3.5', '60', '69', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42'),
(65, 'Half yearly exam', '2024', 'ONE', 'B', '3', '50', '59', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42'),
(66, 'Half yearly exam', '2024', 'ONE', 'C', '2', '40', '49', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42'),
(67, 'Half yearly exam', '2024', 'ONE', 'D', '1', '33', '39', 'active', 'approved', '100', '2024-04-25 22:19:42', '2024-04-25 22:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `institute_info`
--

CREATE TABLE `institute_info` (
  `id` bigint UNSIGNED NOT NULL,
  `institute_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eiin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `contact`, `message_count`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Hello.+This+message+is+for+checking+purpose.', '1972051101', '1', '100', '2024-06-04 04:32:44', '2024-06-04 04:32:44'),
(2, 'hgasdhjg+vasdv+vasnj+vvjnsaukv+vuasjhvv', '1972051101', '2', '100', '2024-06-04 04:45:42', '2024-06-04 04:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2024_02_20_132926_create_add_class_table', 1),
(30, '2024_02_20_133223_create_students_table', 1),
(31, '2024_02_20_154711_create_add_section_table', 1),
(32, '2024_02_21_043412_create_add_shift_table', 1),
(33, '2024_02_21_045320_create_add_group_table', 1),
(34, '2024_02_21_051525_create_add_academic_session_table', 1),
(35, '2024_02_21_052622_create_add_academic_year_table', 1),
(36, '2024_02_21_054608_create_add_board_exam_table', 1),
(37, '2024_02_21_060642_create_add_category_table', 1),
(38, '2024_02_21_061621_create_add_class_exam_table', 1),
(39, '2024_02_21_070644_create_add_class_wise_group_table', 1),
(40, '2024_02_21_102159_create_add_class_wise_section_table', 1),
(41, '2024_02_21_105216_create_add_class_wise_shift_table', 1),
(42, '2024_02_21_110528_create_add_subject_table', 1),
(43, '2024_02_21_112344_create_add_period_table', 1),
(44, '2024_02_21_113235_create_admins_table', 1),
(45, '2024_02_21_132725_create_institute_info_table', 1),
(46, '2024_02_21_143349_create_school_info_table', 1),
(47, '2024_02_21_152217_create_subject_setup_table', 1),
(48, '2024_02_24_130209_create_teachers_table', 1),
(49, '2024_02_24_132548_create_add_grade_point_table', 1),
(50, '2024_02_24_151505_create_grade_setup_table', 1),
(51, '2024_02_26_102340_create_add_short_code_table', 1),
(52, '2024_02_26_114401_create_set_short_code_table', 1),
(53, '2024_02_27_142855_create_add_class_wise_subject_table', 1),
(54, '2024_02_29_051755_create_school_admins_table', 1),
(55, '2024_02_29_134131_create_set_exam_marks_table', 1),
(56, '2024_03_04_045452_create_fourth_subjects_table', 1),
(57, '2024_03_03_133439_create_add_admit_card_table', 2),
(59, '2024_03_05_115547_create_grade_setup_table', 3),
(60, '2024_02_24_151505_create_add_grade_setup_table', 4),
(61, '2024_03_05_041037_create_add_report_name_table', 4),
(62, '2024_03_05_060845_create_add_signature_table', 4),
(63, '2024_03_05_100612_create_exam_publish_table', 4),
(64, '2024_03_12_073103_create_grade_setup_table', 5),
(65, '2024_03_11_113522_create_addgrand_finals_table', 6),
(66, '2024_03_12_050319_create_sequential_wise_exam_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_admins`
--

CREATE TABLE `school_admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_admins`
--

INSERT INTO `school_admins` (`id`, `name`, `email`, `password`, `school_name`, `school_code`, `mobile_number`, `image`, `role`, `created_at`, `updated_at`) VALUES
(3, 'Rafin Hossain', 'rafin@gmail.com', '$2y$12$fXGzHSIhH2fg3wTII1K2OuKPkxRu/3QphKp61W3MLq2lURSAGY8Ry', 'Rafin International School', '10101', '01984419614', 'images/admin/10101_65f7bb4015aef.jpg', 'head_of_admin', '2024-03-17 21:55:44', '2024-03-17 21:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `id` bigint UNSIGNED NOT NULL,
  `school_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eiin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_print_page` int DEFAULT NULL,
  `messages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`id`, `school_email`, `school_name`, `school_phone`, `mobile_number`, `address`, `eiin`, `website`, `school_code`, `created_at`, `updated_at`, `logo`, `number_of_print_page`, `messages`) VALUES
(4, 'rafin@gmail.com', 'Rafin International School', '01984419614', '01984419614', 'Dhaka , Bangladesh', '1221', 'www.rafinschool.com', '100', '2024-03-18 22:11:24', '2024-05-21 04:03:50', 'images/logo/100_65f9106c8bb50.png', 3, '4'),
(5, 'asma@gmail.com', 'Asma International School', '01984419614', '01984419614', 'Dhaka , Bangladesh', '1', 'www.asmaSchool.com', '10102', '2024-03-26 02:49:44', '2024-03-26 02:49:44', 'images/logo/10102_66028c286aa6a.jpg', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sequential_wise_exam`
--

CREATE TABLE `sequential_wise_exam` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequential_exam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequential_wise_exam`
--

INSERT INTO `sequential_wise_exam` (`id`, `class_name`, `exam_name`, `year`, `sequential_exam`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'PLAY', 'Half yearly exam', '2024', 'Grade-TotalMark-Roll', 'approved', '100', '2024-05-30 03:15:20', '2024-05-30 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `set_class_exam_marks`
--

CREATE TABLE `set_class_exam_marks` (
  `id` bigint UNSIGNED NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countable_mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_class_exam_marks`
--

INSERT INTO `set_class_exam_marks` (`id`, `short_code`, `subject_name`, `total_mark`, `countable_mark`, `pass_mark`, `acceptance`, `marge`, `status`, `school_code`, `action`, `created_at`, `updated_at`, `class_name`, `exam_name`, `academic_year_name`) VALUES
(103, 'a', 'BANGLA', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(104, 'b', 'BANGLA', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(105, 'a', 'ENGLISH', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(106, 'b', 'ENGLISH', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(107, 'a', 'MATHEMATICS', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(108, 'b', 'MATHEMATICS', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(109, 'a', 'RELIGION', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(110, 'b', 'RELIGION', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(111, 'a', 'G.K', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(112, 'b', 'G.K', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(113, 'a', 'HAND WRITING', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(114, 'b', 'HAND WRITING', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(115, 'a', 'GENERAL KNOWLEDGE', '100', '20', '33', '0.20', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024'),
(116, 'b', 'GENERAL KNOWLEDGE', '20', '20', '7', '1.00', '0', 'active', '100', 'approved', '2024-06-22 22:40:51', '2024-06-22 22:40:51', 'PLAY', 'Half yearly exam', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `set_exam_marks`
--

CREATE TABLE `set_exam_marks` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `set_short_code`
--

CREATE TABLE `set_short_code` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_exam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_short_code`
--

INSERT INTO `set_short_code` (`id`, `class_name`, `class_exam_name`, `academic_year_name`, `short_code`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(27, 'PLAY', 'Half yearly exam', '2024', 'a', 'active', 'approved', '100', '2024-03-20 23:29:45', '2024-03-20 23:29:45'),
(28, 'PLAY', 'Half yearly exam', '2024', 'b', 'active', 'approved', '100', '2024-03-20 23:29:45', '2024-03-20 23:29:45'),
(35, 'ONE', 'Half yearly exam', '2024', 'T1', 'active', 'approved', '100', '2024-05-07 04:46:05', '2024-05-07 04:46:05'),
(36, 'ONE', 'Half yearly exam', '2024', 'CQ', 'active', 'approved', '100', '2024-05-07 04:46:05', '2024-05-07 04:46:05'),
(39, 'NURSERY', 'Half yearly exam', '2024', 'T1', 'active', 'approved', '100', '2024-06-01 23:04:50', '2024-06-01 23:04:50'),
(40, 'NURSERY', 'Half yearly exam', '2024', 'CQ', 'active', 'approved', '100', '2024-06-01 23:04:50', '2024-06-01 23:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nedubd_student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_roll` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religious` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_post_office` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_police_station` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_post_office` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_police_station` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `birth_date`, `nedubd_student_id`, `student_id`, `student_roll`, `Class_name`, `group`, `section`, `shift`, `category`, `year`, `gender`, `religious`, `nationality`, `blood_group`, `session`, `image`, `admission_date`, `mobile_no`, `father_name`, `father_mobile`, `father_occupation`, `father_nid`, `father_birth_date`, `mother_name`, `mother_number`, `mother_occupation`, `mother_nid`, `mother_birth_date`, `mother_income`, `present_village`, `present_post_office`, `present_country`, `present_zip_code`, `present_district`, `present_police_station`, `parmanent_village`, `parmanent_post_office`, `parmanent_country`, `parmanent_zip_code`, `parmanent_district`, `parmanent_police_station`, `guardian_name`, `guardian_address`, `last_school_name`, `last_class_name`, `last_result`, `last_passing_year`, `email`, `password`, `school_code`, `action`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rafin pakna', '08/01/1995', 'STU20240001', '1', '1', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', 'Bangladesh', 'O+', '2021-2022', 'images/student\\1_66765f50b1517.jpg', '02/01/2024', '01984419614', 'Bangladesh', 'rafin.hossain.8990@gmail.com', NULL, '3433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6.6svaVj6OYxWZmCq4cn8OkZbtKOvjFO5QHbQvmgF8YZ51jYfE2za', '100', 'approved', 'student', 'active', '2024-03-25 22:34:15', '2024-06-21 23:21:20'),
(2, 'SHAHRIAR NUR', '43559', 'STU20240002', '2', '1', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, 'O+', NULL, 'images/student\\2_660a3e2eca4a0.png', NULL, '880 01632986144', 'Mofizur Rahman  SABUJ', NULL, NULL, '32', NULL, 'Asma Akhter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$UXCnsvdgRBwzRPz1pBPc0OjVFT39wtiA5kIgCY1rLf208KcA15D7q', '100', 'approved', 'student', 'active', '2024-03-25 22:47:01', '2024-06-10 22:55:03'),
(3, 'YAKUB AHMED', '13/09/2018', 'STU20240003', '3', '2', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\3_6609204932800.png', NULL, '880 01983036346', 'Jewel Rana', NULL, NULL, NULL, NULL, 'Umme Kulsom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6v9eFnjcatBiNnTxadnHsOl4tY7fKTBw5I2Nk/bDcPMPKRXRsA9My', '100', 'approved', 'student', 'active', '2024-03-25 22:47:01', '2024-06-10 22:55:03'),
(4, 'ABDULLAH AL RAYYAN', '43770', 'STU20240004', '4', '3', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\4_6609265d9df29.png', NULL, '880 1736619973', 'Abdul Majed', NULL, NULL, NULL, NULL, 'Razia Sultana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$aurZhqDldjVLaHLksfSdYe.vkqzL.xEXGsGPCrDJyudSMStYpXe9S', '100', 'approved', 'student', 'active', '2024-03-25 22:47:01', '2024-06-10 22:55:03'),
(5, 'TUSAN AHMED AWSAF', NULL, 'STU20240005', '5', '4', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\5_66092858bc317.png', NULL, '880 1918276027', 'Nazir Ahmed', NULL, NULL, NULL, NULL, 'Amena Akhter Tasnim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$EikUiryf3cW0xv5Eu2GwKu9WskXZcAPIKLiIWKR1sMQQJor3iDEh6', '100', 'approved', 'student', 'active', '2024-03-25 22:47:01', '2024-06-10 22:55:03'),
(6, 'ABDULLAH RAHMAN ZOBAIR', '43446', 'STU20240006', '6', '5', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\6_660929de0a9e7.png', NULL, '880 1731428924', 'Tamimur Rahman', NULL, NULL, NULL, NULL, 'Sonia Akter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6F2g8dV5Zt2GNmJ3n2Ktf.ABrwFLBk5Av3uSSsZweyUQlugehc5wG', '100', 'approved', 'student', 'active', '2024-03-25 22:47:02', '2024-06-10 22:55:03'),
(7, 'ABDULLAH BIN UJJAL', NULL, 'STU20240007', '7', '6', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\7_66092c292b6bc.png', NULL, '880 1715424175', 'Ujjal Hossain', NULL, NULL, NULL, NULL, 'Shirina Akter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$KF/o4tgvVz7srsAQLESyLuLomYYrJmUhOHrGfKZ4BRcb0d2Z/lqzC', '100', 'approved', 'student', 'active', '2024-03-25 22:47:02', '2024-06-10 22:55:03'),
(8, 'ABU TALHA', '26/08/2017', 'STU20240008', '8', '7', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\8_66092d8382db5.png', NULL, '880 1913386007', 'Moniruzzaman', NULL, NULL, NULL, NULL, 'Jerin Jitu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$we7C6LaFPU9BvGTlURAAre91ISFJEXUBG9nc6YlTUPuTB4IroQZky', '100', 'approved', 'student', 'active', '2024-03-25 22:47:02', '2024-06-10 22:55:03'),
(9, 'IBRAHIM ZILHOJ', NULL, 'STU20240009', '9', '8', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\9_660a3b4c2dea5.png', NULL, '880 1760470404', 'Salim Mandal', NULL, NULL, NULL, NULL, 'Golapi Begum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$YLldAY7wgkkqFfdZW/gPEOcQ8eK5DtAwibS88quNpOjZPvrxnL5dG', '100', 'approved', 'student', 'active', '2024-03-25 22:47:03', '2024-06-10 22:55:03'),
(10, 'SAFWAN IS. HOSSAIN', NULL, 'STU20240010', '10', '9', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\10_660a2f2e3531a.png', NULL, '880 1978406129', 'Shamim Hossain', NULL, NULL, NULL, NULL, 'Rohima Akhter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$SISiNPR2tejN5uGxlMEve.8FathmcRaWlYyRkrVqhY5XcTiXbMnJ6', '100', 'approved', 'student', 'active', '2024-03-25 22:47:03', '2024-06-10 22:55:03'),
(11, 'REDUAN IS. HASAN', NULL, 'STU20240011', '11', '10', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\11_660a3336ca01d.png', NULL, '880 1978406129', 'Shamim Hossain', NULL, NULL, NULL, NULL, 'Rohima Akhter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Yibd2ts32mUyb/oO/J/fV.gpzeVB4IjzrpfVWwmGuHc6bQ0e/EXg.', '100', 'approved', 'student', 'active', '2024-03-25 22:47:03', '2024-06-10 22:55:03'),
(12, 'MASHROOR IBN ANWAR', NULL, 'STU20240012', '12', '11', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', NULL, NULL, NULL, 'images/student\\12_660a335310a77.png', NULL, '880 1976622105', 'Anwar Hossain', NULL, NULL, NULL, NULL, 'Mahfuza Khandaker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Dxel64hF3IkXYgswrwDkMuQ9fQkYXZBxess4WG1Mz3KtPFvomT1Da', '100', 'approved', 'student', 'active', '2024-03-25 22:47:03', '2024-06-10 22:55:03'),
(13, 'MD. HUZAIFA', '05/01/2024', 'STU20240013', '13', '12', 'PLAY', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'Male', 'Islam', 'Bangladesh', NULL, NULL, 'images/student\\13_660a352f5f0ab.png', NULL, '880 1727583210', 'Sabuj Howladar', NULL, NULL, NULL, NULL, 'Marufa Begum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$0VduATkCI/fZ3OUJGbEgMes120os1dT1ggs53J5XkB09G4Prn3DKm', '100', 'approved', 'student', 'active', '2024-03-25 22:47:04', '2024-06-10 22:55:03'),
(97, 'Rafin Hoosain', '35830', 'STU20240014', 'STU20240014', '1', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297551', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$vc/NbISaq2XzPjxQ3apxueIbwFB2ypxPgy0U51EvGYkQTAd2wN1U2', '100', 'approved', 'student', 'active', '2024-04-25 22:21:42', '2024-04-25 22:21:42'),
(98, 'Asma Akter', '35831', 'STU20240015', 'STU20240015', '2', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'female', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297552', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Z8MwpG5dlUOdxSs3QCgZpeTTzV1desPTef9rjzbzF1oFmabfK2rvK', '100', 'approved', 'student', 'active', '2024-04-25 22:21:42', '2024-04-25 22:21:42'),
(99, 'Sayem Saadat', '35832', 'STU20240016', 'STU20240016', '3', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297553', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$fGk1BZfiDnwK.jc5QbrcfOlBrDw0xJkr5Hri1QaJlhRn9uJrKeha.', '100', 'approved', 'student', 'active', '2024-04-25 22:21:42', '2024-04-25 22:21:42'),
(100, 'Tanvir Hossain', '35833', 'STU20240017', 'STU20240017', '4', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297554', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$LF.CaQ2PF1xr8Ojw.MIpoeOVrRDoBea3IXHZYKvb71iUZIaBYQjAO', '100', 'approved', 'student', 'active', '2024-04-25 22:21:43', '2024-04-25 22:21:43'),
(101, 'Sabbir Mohammad Sami', '35834', 'STU20240018', 'STU20240018', '5', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297555', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$KFQeABHK.uIHaLa.qfY9p.O2lBmkmHLbyn2PrRnPlNJ9FMA0VtsX.', '100', 'approved', 'student', 'active', '2024-04-25 22:21:43', '2024-04-25 22:21:43'),
(102, 'MH Rashed', '35835', 'STU20240019', 'STU20240019', '6', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297556', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$cyVxAJyRhP6l4522J7PgAOeG5zJQhcG5KIBN/JGxCQIK.XyaXgJ1m', '100', 'approved', 'student', 'active', '2024-04-25 22:21:43', '2024-04-25 22:21:43'),
(103, 'Mehzabin Elu', '35836', 'STU20240020', 'STU20240020', '7', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'female', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297557', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$x4Qmg97RGeK7.Z5RA1bfHeGSUhtFMAjawhjY0fFarkL61ESNpDD6i', '100', 'approved', 'student', 'active', '2024-04-25 22:21:43', '2024-04-25 22:21:43'),
(104, 'Ajmira Khan', '35837', 'STU20240021', 'STU20240021', '8', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'female', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297558', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$7JrUIMcBMUMipO8zyeuwYOVGBp2M8rzKmtlpLIOFXAqJ1D54jh2YC', '100', 'approved', 'student', 'active', '2024-04-25 22:21:44', '2024-04-25 22:21:44'),
(105, 'Sohel Hossain', '35838', 'STU20240022', 'STU20240022', '9', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'male', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297559', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$2YZHI8CCJpuTfyKKp3xd/eSQpg3KXMdeztYvmJAuf1t0RySg2br82', '100', 'approved', 'student', 'active', '2024-04-25 22:21:44', '2024-04-25 22:21:44'),
(106, 'Joya Akter', '35839', 'STU20240023', 'STU20240023', '10', 'ONE', 'N/A', 'MOR-A', 'DAY', 'General', '2024', 'female', 'Islam', NULL, NULL, NULL, NULL, NULL, '1701297560', 'ABC', NULL, NULL, NULL, NULL, 'DEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$A9gGAk7X4Ye3mUTeykenBOx/glLYs3wRpdtYTAQYMJbbBZQIDj5yy', '100', 'approved', 'student', 'active', '2024-04-25 22:21:44', '2024-04-25 22:21:44'),
(107, 'Mehzabin Elu', '05/01/2024', 'STU20240024', '100', '1', 'ONE', 'N/A', 'DAY-A', 'DAY', 'General', '2024', 'Female', 'Islam', 'Bangladesh', 'O+', '2021-2022', NULL, NULL, '01981411079', 'Bangladesh', 'm@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rafin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$2nI6Squ08dBLv/8VtCcsre7Qk5RwNRsNk1oY.rAOsACL3Evv81FYu', '100', 'approved', 'student', 'active', '2024-05-14 22:10:36', '2024-05-14 22:10:36'),
(108, 'Tanvir', '05/01/2024', 'STU20240025', 'STU20240025', '2', NULL, 'N/A', 'MOR-A', 'MORNING', 'General', '2024', 'Male', 'Islam', 'Bangladesh', 'O+', '2021-2022', NULL, NULL, '01720051101', 'Bangladesh', 'rashed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rafin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$tugv8lvTZMUWJyeR0I/2XORPmDpR/bJ6bcDs/LGEXdtJBxGICujYa', '100', 'approved', 'student', 'active', '2024-05-28 04:09:57', '2024-05-28 04:09:57'),
(111, 'Tanvir Hossain Sadi', NULL, 'STU20240026', 'STU20240026', '100', 'PLAY', 'N/A', NULL, NULL, NULL, '2024', NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rafin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$2BYiJDPGYOlClgiVjjb3/ebwBqz1htJM/L9mOjBZ3gXWiCfdBP9kC', '100', 'approved', 'student', 'active', '2024-06-02 23:43:39', '2024-06-10 22:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `subject_setup`
--

CREATE TABLE `subject_setup` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_marge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','in active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emg_mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_mobile` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religious` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_post_office` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_zip_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_district` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_police_station` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_post_office` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_zip_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_district` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parmanent_police_station` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_roll` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_reg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_gpa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_roll` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_reg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_gpa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_passing_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `honors` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_roll` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_reg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_gpa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_passing_year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qua_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qua_industry_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qua_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qua_2_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qua_2_industry_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qua_2_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industrial_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `total_contacts`
--

CREATE TABLE `total_contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `total_contacts`
--

INSERT INTO `total_contacts` (`id`, `name`, `contact`, `school_code`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Rafin Hossain', '01984419614', '100', 'approved', '2024-04-18 00:16:18', '2024-04-18 00:16:18'),
(2, 'Asma Akter', '01733515006', '100', 'approved', '2024-04-18 00:16:18', '2024-04-18 00:16:18'),
(3, 'sayem modon', '01521574741', '100', 'approved', '2024-04-18 00:16:18', '2024-04-18 00:16:18'),
(4, 'mostafiz', '01950165017', '100', 'approved', '2024-04-18 00:16:18', '2024-04-18 00:16:18'),
(5, 'Rashed', '01720051101', '100', 'approved', '2024-04-18 00:16:18', '2024-04-18 00:16:18'),
(6, 'Rafin Hossain', '01701297556', '100', 'approved', '2024-04-18 01:03:31', '2024-04-18 01:03:31'),
(7, 'Rafin Hossain', '01984419614', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(8, 'Asma Akter', '01733515006', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(9, 'sayem modon', '01521574741', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(10, 'mostafiz', '01950165017', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(11, 'Rashed', '01720051101', '100', 'approved', '2024-04-18 05:39:07', '2024-04-18 05:39:07'),
(12, 'RAfin Hossain', '01701297556', '100', 'approved', '2024-06-04 04:35:09', '2024-06-04 04:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `waivers`
--

CREATE TABLE `waivers` (
  `id` bigint UNSIGNED NOT NULL,
  `fee_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `fee_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `waiver_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `waiver_amount` int NOT NULL,
  `waiver_expire_date` date NOT NULL,
  `schoolCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('approved','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `waiver_type`
--

CREATE TABLE `waiver_type` (
  `id` bigint UNSIGNED NOT NULL,
  `waiver_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` enum('pending','approved','delete','edit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `school_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waiver_type`
--

INSERT INTO `waiver_type` (`id`, `waiver_type_name`, `status`, `action`, `school_code`, `created_at`, `updated_at`) VALUES
(1, 'Medical Waiver', 'active', 'approved', '100', '2024-04-22 23:19:09', '2024-04-29 21:41:03'),
(7, 'Headmaster Recommend', 'active', 'approved', '100', '2024-04-29 03:41:15', '2024-04-29 03:41:15'),
(8, 'Marit', 'active', 'approved', '100', '2024-04-29 03:43:09', '2024-04-29 03:43:09'),
(9, 'Poor', 'active', 'approved', '100', '2024-04-29 03:43:35', '2024-04-29 03:43:35'),
(10, 'Transportation Waiver', 'active', 'approved', '100', '2024-04-29 03:43:43', '2024-04-29 03:43:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addgrand_finals`
--
ALTER TABLE `addgrand_finals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_academic_session`
--
ALTER TABLE `add_academic_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_academic_year`
--
ALTER TABLE `add_academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_admit_card`
--
ALTER TABLE `add_admit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_admit_instruction`
--
ALTER TABLE `add_admit_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_board_exam`
--
ALTER TABLE `add_board_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_category`
--
ALTER TABLE `add_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_exam`
--
ALTER TABLE `add_class_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_wise_group`
--
ALTER TABLE `add_class_wise_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_wise_section`
--
ALTER TABLE `add_class_wise_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_wise_shift`
--
ALTER TABLE `add_class_wise_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_wise_subject`
--
ALTER TABLE `add_class_wise_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_fees`
--
ALTER TABLE `add_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_fee_types`
--
ALTER TABLE `add_fee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_grade_point`
--
ALTER TABLE `add_grade_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_grade_setup`
--
ALTER TABLE `add_grade_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_group`
--
ALTER TABLE `add_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_messages`
--
ALTER TABLE `add_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_pay_slips`
--
ALTER TABLE `add_pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_pay_slip_types`
--
ALTER TABLE `add_pay_slip_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `add_pay_slip_types_pay_slip_type_name_unique` (`pay_slip_type_name`);

--
-- Indexes for table `add_period`
--
ALTER TABLE `add_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_report_name`
--
ALTER TABLE `add_report_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_section`
--
ALTER TABLE `add_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_shift`
--
ALTER TABLE `add_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_short_code`
--
ALTER TABLE `add_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_signature`
--
ALTER TABLE `add_signature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_subject`
--
ALTER TABLE `add_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_marks_input`
--
ALTER TABLE `exam_marks_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_process`
--
ALTER TABLE `exam_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_publish`
--
ALTER TABLE `exam_publish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fourth_subjects`
--
ALTER TABLE `fourth_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_payslips`
--
ALTER TABLE `generate_payslips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_setup`
--
ALTER TABLE `grade_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_info`
--
ALTER TABLE `institute_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `institute_info_institute_code_unique` (`institute_code`),
  ADD UNIQUE KEY `institute_info_phone_unique` (`phone`),
  ADD UNIQUE KEY `institute_info_email_unique` (`email`);

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
-- Indexes for table `school_admins`
--
ALTER TABLE `school_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_admins_email_unique` (`email`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequential_wise_exam`
--
ALTER TABLE `sequential_wise_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_class_exam_marks`
--
ALTER TABLE `set_class_exam_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_exam_marks`
--
ALTER TABLE `set_exam_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_short_code`
--
ALTER TABLE `set_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nedubd_student_id_unique` (`nedubd_student_id`);

--
-- Indexes for table `subject_setup`
--
ALTER TABLE `subject_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_teacher_id_unique` (`teacher_id`);

--
-- Indexes for table `total_contacts`
--
ALTER TABLE `total_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waivers`
--
ALTER TABLE `waivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waivers_fee_id_foreign` (`fee_id`),
  ADD KEY `waivers_student_id_foreign` (`student_id`);

--
-- Indexes for table `waiver_type`
--
ALTER TABLE `waiver_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `waiver_type_waiver_type_name_unique` (`waiver_type_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addgrand_finals`
--
ALTER TABLE `addgrand_finals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_academic_session`
--
ALTER TABLE `add_academic_session`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_academic_year`
--
ALTER TABLE `add_academic_year`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_admit_card`
--
ALTER TABLE `add_admit_card`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `add_admit_instruction`
--
ALTER TABLE `add_admit_instruction`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_board_exam`
--
ALTER TABLE `add_board_exam`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_category`
--
ALTER TABLE `add_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `add_class_exam`
--
ALTER TABLE `add_class_exam`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_class_wise_group`
--
ALTER TABLE `add_class_wise_group`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_class_wise_section`
--
ALTER TABLE `add_class_wise_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_class_wise_shift`
--
ALTER TABLE `add_class_wise_shift`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_class_wise_subject`
--
ALTER TABLE `add_class_wise_subject`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `add_fees`
--
ALTER TABLE `add_fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `add_fee_types`
--
ALTER TABLE `add_fee_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `add_grade_point`
--
ALTER TABLE `add_grade_point`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `add_grade_setup`
--
ALTER TABLE `add_grade_setup`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_group`
--
ALTER TABLE `add_group`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_messages`
--
ALTER TABLE `add_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_pay_slips`
--
ALTER TABLE `add_pay_slips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `add_pay_slip_types`
--
ALTER TABLE `add_pay_slip_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `add_period`
--
ALTER TABLE `add_period`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_report_name`
--
ALTER TABLE `add_report_name`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_section`
--
ALTER TABLE `add_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_shift`
--
ALTER TABLE `add_shift`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_short_code`
--
ALTER TABLE `add_short_code`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_signature`
--
ALTER TABLE `add_signature`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_subject`
--
ALTER TABLE `add_subject`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `exam_marks_input`
--
ALTER TABLE `exam_marks_input`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `exam_process`
--
ALTER TABLE `exam_process`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `exam_publish`
--
ALTER TABLE `exam_publish`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fourth_subjects`
--
ALTER TABLE `fourth_subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `generate_payslips`
--
ALTER TABLE `generate_payslips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `grade_setup`
--
ALTER TABLE `grade_setup`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `institute_info`
--
ALTER TABLE `institute_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_admins`
--
ALTER TABLE `school_admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sequential_wise_exam`
--
ALTER TABLE `sequential_wise_exam`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `set_class_exam_marks`
--
ALTER TABLE `set_class_exam_marks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `set_exam_marks`
--
ALTER TABLE `set_exam_marks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_short_code`
--
ALTER TABLE `set_short_code`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `subject_setup`
--
ALTER TABLE `subject_setup`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_contacts`
--
ALTER TABLE `total_contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `waivers`
--
ALTER TABLE `waivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `waiver_type`
--
ALTER TABLE `waiver_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `waivers`
--
ALTER TABLE `waivers`
  ADD CONSTRAINT `waivers_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `add_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `waivers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
