-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 12:33 AM
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
-- Database: `labklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_pemeriksaans`
--

CREATE TABLE `bidang_pemeriksaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_mcu` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `nilai_normal` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_pemeriksaans`
--

INSERT INTO `bidang_pemeriksaans` (`id`, `name`, `id_mcu`, `created_at`, `updated_at`, `harga`, `nilai_normal`, `satuan`) VALUES
(10, 'Riwayat Kesehatan', 1, '2025-01-13 20:47:51', '2025-01-13 20:47:51', NULL, NULL, NULL),
(11, 'Riwayat Kesehatan Dahulu', 1, '2025-01-13 20:48:04', '2025-01-13 20:48:04', NULL, NULL, NULL),
(12, 'Riwayat Kesehatan Keluarga', 1, '2025-01-13 20:48:59', '2025-01-13 20:48:59', NULL, NULL, NULL),
(13, 'Riwayat Hazard Lingkungan Kerja', 1, '2025-01-13 21:05:36', '2025-01-13 21:22:02', '35000', 'Tidak Ada / Ada', NULL),
(15, 'Riwayat Kecelakaan Kerja', 1, '2025-01-13 21:27:54', '2025-01-13 21:27:54', '27000', 'Tidak Ada / Ada', NULL),
(16, 'Kebiasaan', 1, '2025-01-13 21:29:39', '2025-01-13 21:29:39', '35000', NULL, NULL),
(17, 'Pemeriksaan Fisik', 1, '2025-01-13 21:32:17', '2025-01-13 21:32:17', '27000', NULL, NULL),
(18, 'Mata', 1, '2025-01-13 21:51:31', '2025-01-13 21:51:31', NULL, NULL, NULL),
(19, 'THT', 1, '2025-01-13 21:55:55', '2025-01-13 21:55:55', NULL, NULL, NULL),
(20, 'Mulut', 1, '2025-01-13 22:03:08', '2025-01-13 22:03:08', NULL, NULL, NULL),
(21, 'Leher', 1, '2025-01-13 22:10:54', '2025-01-13 22:10:54', NULL, NULL, NULL),
(22, 'Thorax', 1, '2025-01-13 22:11:22', '2025-01-13 22:11:22', NULL, NULL, NULL),
(23, 'Abdomen', 1, '2025-01-13 22:11:38', '2025-01-13 22:11:38', NULL, NULL, NULL),
(24, 'Extremitas', 1, '2025-01-13 22:23:58', '2025-01-13 22:23:58', NULL, NULL, NULL),
(25, 'Neurologis', 1, '2025-01-13 22:27:54', '2025-01-13 22:27:54', NULL, NULL, NULL),
(26, 'Pemeriksaan Kulit', 1, '2025-01-13 22:28:07', '2025-01-13 22:28:07', NULL, NULL, NULL),
(27, 'Lingkar Perut', 1, '2025-01-13 22:28:23', '2025-01-13 22:28:23', NULL, NULL, NULL),
(28, 'Darah Lengkap', 2, '2025-01-14 01:51:43', '2025-01-14 01:51:43', NULL, NULL, NULL),
(29, 'Hitung Jenis Lekosit', 2, '2025-01-14 01:52:17', '2025-01-14 01:52:17', NULL, NULL, NULL),
(30, 'LED', 2, '2025-01-14 01:52:28', '2025-01-14 02:06:14', NULL, 'P(0 - 15), W(0 - 20)', 'mm/Jam'),
(31, 'GOLONGAN DARAH', 2, '2025-01-14 01:53:01', '2025-01-21 19:05:01', NULL, NULL, 'HURUF'),
(32, 'Kimia Darah', 2, '2025-01-14 01:57:24', '2025-01-14 01:57:24', NULL, NULL, NULL),
(33, 'Serologi/Imunologi', 2, '2025-01-16 04:57:28', '2025-01-16 04:57:28', NULL, 'Reaktif / Non Reaktif', NULL),
(34, 'Urine Analysis', 2, '2025-01-16 04:58:21', '2025-01-16 04:58:21', NULL, NULL, NULL),
(35, 'Imunoserologi', 2, '2025-01-16 05:30:18', '2025-01-16 05:30:18', NULL, NULL, NULL),
(36, 'Irama', 3, '2025-01-20 17:50:51', '2025-01-20 17:51:03', '28000', NULL, NULL),
(37, 'Axis', 3, '2025-01-20 17:51:52', '2025-01-20 17:51:52', '29000', NULL, NULL),
(38, 'Rotation', 3, '2025-01-21 23:39:33', '2025-01-21 23:39:33', '28000', 'Normal / Tidak Normal', 'Normal'),
(39, 'Atrial Rate', 3, '2025-01-21 23:40:40', '2025-01-21 23:40:40', '35000', NULL, 'x/menit'),
(40, 'Ventricle Rate', 3, '2025-01-21 23:41:01', '2025-01-21 23:41:01', '28000', NULL, 'x/menit'),
(41, 'PR Interval', 3, '2025-01-21 23:41:16', '2025-01-21 23:41:16', '35000', NULL, 'x/menit'),
(42, 'QRS Interval', 3, '2025-01-21 23:45:32', '2025-01-21 23:45:32', '27000', NULL, 'Second'),
(43, 'QT Interval', 3, '2025-01-21 23:45:50', '2025-01-21 23:45:50', '28000', NULL, 'Second'),
(44, 'ST Segment', 3, '2025-01-21 23:46:19', '2025-01-21 23:46:19', '27000', NULL, 'Normal'),
(45, 'P Wave', 3, '2025-01-21 23:46:39', '2025-01-21 23:46:39', '35000', NULL, 'Normal'),
(46, 'Q Wave', 3, '2025-01-21 23:46:59', '2025-01-21 23:46:59', '28000', NULL, 'Normal'),
(47, 'R Wave', 3, '2025-01-21 23:47:13', '2025-01-21 23:47:13', '35000', NULL, 'Normal'),
(48, 'S Wave', 3, '2025-01-21 23:47:28', '2025-01-21 23:47:28', '29000', NULL, 'Normal'),
(49, 'T Wave', 3, '2025-01-21 23:47:45', '2025-01-21 23:47:45', '27000', NULL, 'Normal'),
(50, 'Arrythmia', 3, '2025-01-21 23:48:01', '2025-01-21 23:48:01', '27000', NULL, 'Normal'),
(51, 'AD', 4, '2025-01-21 23:49:03', '2025-01-21 23:49:03', '35000', NULL, 'Normal'),
(52, 'AS', 4, '2025-01-21 23:49:14', '2025-01-21 23:49:14', '27000', NULL, 'Normal'),
(53, 'VC', 5, '2025-01-21 23:55:18', '2025-01-21 23:55:18', '35000', '3.9', '%'),
(54, 'FVC', 5, '2025-01-21 23:55:40', '2025-01-21 23:56:53', '35000', '4.69', '%'),
(55, 'FEV1/FVC (%)', 5, '2025-01-21 23:56:44', '2025-01-21 23:56:44', '28000', '83.01', '%'),
(56, 'COR', 6, '2025-01-21 23:58:21', '2025-01-22 04:58:58', '29000', 'Corakan Vaskular tampak normal', 'Normal'),
(57, 'PULMO', 6, '2025-01-21 23:58:49', '2025-01-22 04:59:06', '27000', 'Tak tampak kelainan tulang', 'Normal'),
(58, 'TULANG', 6, '2025-01-22 04:59:29', '2025-01-22 04:59:29', '27000', 'Tak tampak kelainan tulang', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_bank`
--

CREATE TABLE `data_bank` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `norek` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_paket`
--

CREATE TABLE `detail_paket` (
  `id` int(11) NOT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `id_mcu` int(11) DEFAULT NULL,
  `bidang_id` bigint(20) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_paket`
--

INSERT INTO `detail_paket` (`id`, `paket_id`, `id_mcu`, `bidang_id`, `metode_id`, `parameter_id`, `created_at`, `updated_at`) VALUES
(20, 5, NULL, NULL, NULL, NULL, '2025-01-24 15:48:07', '2025-01-24 15:48:07'),
(21, 5, NULL, NULL, NULL, NULL, '2025-01-24 15:48:07', '2025-01-24 15:48:07'),
(22, 6, NULL, NULL, NULL, NULL, '2025-01-24 15:51:50', '2025-01-24 15:51:50'),
(23, 6, NULL, NULL, NULL, NULL, '2025-01-24 15:51:50', '2025-01-24 15:51:50'),
(24, 6, NULL, NULL, NULL, NULL, '2025-01-24 15:51:50', '2025-01-24 15:51:50'),
(25, 7, 6, 56, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(26, 7, 6, 57, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(27, 7, 6, 58, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(28, 7, 6, 56, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(29, 7, 6, 57, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(30, 7, 6, 58, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(31, 8, 2, 32, 99, 40, '2025-01-24 16:08:24', '2025-01-24 16:08:24'),
(32, 9, 4, 51, NULL, NULL, '2025-01-24 16:10:26', '2025-01-24 16:10:26'),
(33, 9, 4, 52, NULL, NULL, '2025-01-24 16:10:26', '2025-01-24 16:10:26'),
(34, 9, 1, 18, 49, 29, '2025-01-24 16:10:26', '2025-01-24 16:10:26'),
(35, 10, 1, 23, 68, NULL, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(36, 10, 2, 34, 106, 75, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(37, 10, 2, 34, 106, 76, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(38, 10, 2, 34, 106, 77, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(39, 10, 2, 34, 106, 78, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(40, 11, 3, 40, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(41, 11, 3, 41, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(42, 11, 3, 42, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(43, 11, 3, 43, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(44, 11, 3, 44, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(45, 11, 3, 45, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(46, 11, 3, 46, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(47, 11, 3, 47, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(48, 11, 3, 48, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(49, 11, 3, 49, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(50, 11, 3, 50, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(51, 12, 3, 37, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(52, 12, 3, 39, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(53, 12, 3, 41, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(54, 12, 3, 42, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(55, 12, 3, 43, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(56, 12, 3, 44, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(57, 12, 3, 45, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(58, 12, 3, 46, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(59, 12, 3, 47, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(60, 12, 3, 48, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(61, 12, 3, 49, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(62, 12, 3, 50, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(63, 13, 6, 56, NULL, NULL, '2025-01-29 12:28:32', '2025-01-29 12:28:32'),
(64, 13, 6, 57, NULL, NULL, '2025-01-29 12:28:32', '2025-01-29 12:28:32'),
(65, 13, 6, 58, NULL, NULL, '2025-01-29 12:28:32', '2025-01-29 12:28:32'),
(66, 14, 3, 36, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(67, 14, 3, 37, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(68, 14, 3, 38, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(69, 14, 3, 39, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(70, 14, 3, 40, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(71, 14, 3, 41, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(72, 14, 3, 42, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(73, 14, 3, 43, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(74, 14, 3, 44, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(75, 14, 3, 45, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(76, 14, 3, 46, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(77, 14, 3, 47, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(78, 14, 3, 48, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(79, 14, 3, 49, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(80, 14, 3, 50, NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(81, 15, 6, 56, NULL, NULL, '2025-01-29 12:58:37', '2025-01-29 12:58:37'),
(82, 15, 6, 57, NULL, NULL, '2025-01-29 12:58:37', '2025-01-29 12:58:37'),
(83, 15, 6, 58, NULL, NULL, '2025-01-29 12:58:37', '2025-01-29 12:58:37'),
(84, 16, 5, 53, NULL, NULL, '2025-01-29 13:01:27', '2025-01-29 13:01:27'),
(85, 16, 5, 54, NULL, NULL, '2025-01-29 13:01:27', '2025-01-29 13:01:27'),
(86, 16, 5, 55, NULL, NULL, '2025-01-29 13:01:27', '2025-01-29 13:01:27'),
(87, 17, 6, 56, NULL, NULL, '2025-01-29 13:02:42', '2025-01-29 13:02:42'),
(88, 17, 6, 57, NULL, NULL, '2025-01-29 13:02:42', '2025-01-29 13:02:42'),
(89, 17, 6, 58, NULL, NULL, '2025-01-29 13:02:42', '2025-01-29 13:02:42'),
(90, 18, 3, 36, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(91, 18, 3, 37, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(92, 18, 3, 38, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(93, 18, 3, 39, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(94, 18, 3, 40, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(95, 18, 3, 41, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(96, 18, 3, 42, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(97, 18, 3, 43, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(98, 18, 3, 44, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(99, 18, 3, 45, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(100, 18, 3, 46, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(101, 18, 3, 47, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(102, 18, 3, 48, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(103, 18, 3, 49, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(104, 18, 3, 50, NULL, NULL, '2025-01-29 13:04:38', '2025-01-29 13:04:38'),
(105, 19, 5, 53, NULL, NULL, '2025-01-29 13:08:45', '2025-01-29 13:08:45'),
(106, 19, 5, 54, NULL, NULL, '2025-01-29 13:08:45', '2025-01-29 13:08:45'),
(107, 19, 5, 55, NULL, NULL, '2025-01-29 13:08:45', '2025-01-29 13:08:45'),
(108, 20, 5, 53, NULL, NULL, '2025-01-29 13:09:23', '2025-01-29 13:09:23'),
(109, 20, 5, 54, NULL, NULL, '2025-01-29 13:09:23', '2025-01-29 13:09:23'),
(110, 20, 5, 55, NULL, NULL, '2025-01-29 13:09:23', '2025-01-29 13:09:23'),
(111, 21, 6, 56, NULL, NULL, '2025-01-29 13:10:00', '2025-01-29 13:10:00'),
(112, 21, 6, 57, NULL, NULL, '2025-01-29 13:10:00', '2025-01-29 13:10:00'),
(113, 21, 6, 58, NULL, NULL, '2025-01-29 13:10:00', '2025-01-29 13:10:00'),
(114, 22, 1, 16, 39, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(115, 22, 1, 16, 40, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(116, 22, 1, 16, 41, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(117, 22, 1, 17, 42, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(118, 22, 1, 17, 43, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(119, 22, 1, 17, 44, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(120, 22, 1, 17, 46, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(121, 22, 1, 17, 108, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(122, 22, 1, 18, 47, NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(123, 23, 6, 56, NULL, NULL, '2025-01-30 22:37:50', '2025-01-30 22:37:50'),
(124, 23, 6, 57, NULL, NULL, '2025-01-30 22:37:50', '2025-01-30 22:37:50'),
(125, 23, 6, 58, NULL, NULL, '2025-01-30 22:37:50', '2025-01-30 22:37:50'),
(126, 24, 6, 56, NULL, NULL, '2025-01-30 23:02:23', '2025-01-30 23:02:23'),
(127, 24, 6, 57, NULL, NULL, '2025-01-30 23:02:23', '2025-01-30 23:02:23'),
(128, 24, 6, 58, NULL, NULL, '2025-01-30 23:02:23', '2025-01-30 23:02:23'),
(129, 25, 5, 53, NULL, NULL, '2025-01-30 23:05:44', '2025-01-30 23:05:44'),
(130, 25, 5, 54, NULL, NULL, '2025-01-30 23:05:44', '2025-01-30 23:05:44'),
(131, 25, 5, 55, NULL, NULL, '2025-01-30 23:05:44', '2025-01-30 23:05:44'),
(132, 26, 2, 34, 106, 75, '2025-02-01 12:10:49', '2025-02-01 12:10:49'),
(133, 26, 2, 34, 106, 76, '2025-02-01 12:10:49', '2025-02-01 12:10:49'),
(134, 26, 2, 34, 106, 77, '2025-02-01 12:10:49', '2025-02-01 12:10:49'),
(135, 26, 2, 34, 106, 78, '2025-02-01 12:10:49', '2025-02-01 12:10:49'),
(136, 27, 6, 56, NULL, NULL, '2025-02-01 12:11:36', '2025-02-01 12:11:36'),
(137, 27, 6, 57, NULL, NULL, '2025-02-01 12:11:36', '2025-02-01 12:11:36'),
(138, 27, 6, 58, NULL, NULL, '2025-02-01 12:11:36', '2025-02-01 12:11:36'),
(139, 28, 4, 51, NULL, NULL, '2025-02-01 12:12:52', '2025-02-01 12:12:52'),
(140, 28, 4, 52, NULL, NULL, '2025-02-01 12:12:52', '2025-02-01 12:12:52'),
(141, 29, 6, 56, NULL, NULL, '2025-02-02 00:24:10', '2025-02-02 00:24:10'),
(142, 29, 6, 57, NULL, NULL, '2025-02-02 00:24:10', '2025-02-02 00:24:10'),
(143, 29, 6, 58, NULL, NULL, '2025-02-02 00:24:10', '2025-02-02 00:24:10'),
(144, 30, 3, 36, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(145, 30, 3, 37, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(146, 30, 3, 38, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(147, 30, 3, 39, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(148, 30, 3, 40, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(149, 30, 3, 41, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(150, 30, 3, 42, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(151, 30, 3, 43, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(152, 30, 3, 44, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(153, 30, 3, 45, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(154, 30, 3, 46, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(155, 30, 3, 47, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(156, 30, 3, 48, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(157, 30, 3, 49, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30'),
(158, 30, 3, 50, NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `gelardepan` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `gelarbelakang` varchar(255) DEFAULT NULL,
  `kategori` enum('Dokter','Rekanan') DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  `marketing` int(11) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `ttd_dokter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `gelardepan`, `nama_lengkap`, `gelarbelakang`, `kategori`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `kota`, `no_hp`, `reward`, `marketing`, `bank`, `no_rek`, `updated_at`, `created_at`, `ttd_dokter`) VALUES
(2, 'Dr.', 'Irene Saveria', 'Sp.PD', 'Rekanan', '2024-11-29', 'Perempuan', 'Puncak Batu Luwuk', 'CILEGON', '085945170201', '5', 4, 'BRI', '1546545616111', '2025-01-22 17:17:55', '2024-11-13 04:51:27', 'img/ttd/dokter/1737566275_ttd dokter radeva.png'),
(3, 'Dr.', 'Radeva', 'Sp.PD', 'Dokter', '2024-11-13', 'Laki-Laki', 'CILEGON', 'CILEGON', '085945170201', '5', 2, 'Mandiri', '215556565221', '2025-01-24 00:57:00', '2024-11-13 04:57:15', 'img/ttd/dokter/1737566265_irene.png');

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
-- Table structure for table `kesimpulan_mcu`
--

CREATE TABLE `kesimpulan_mcu` (
  `id` int(11) NOT NULL,
  `id_pemeriksaan` bigint(20) DEFAULT NULL,
  `penilaian` varchar(255) DEFAULT NULL,
  `kesimpulan` text DEFAULT NULL,
  `saran` text DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `validasi_oleh` varchar(255) DEFAULT NULL,
  `dokter_penanggung_jawab` varchar(255) DEFAULT NULL,
  `dokter_pemeriksa` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kesimpulan_mcu`
--

INSERT INTO `kesimpulan_mcu` (`id`, `id_pemeriksaan`, `penilaian`, `kesimpulan`, `saran`, `catatan`, `validasi_oleh`, `dokter_penanggung_jawab`, `dokter_pemeriksa`, `created_at`, `updated_at`) VALUES
(6, 51, 'Fit', '<p><strong>Pemeriksaan Fisik :</strong><br />\r\nGangguan refraksi, terkoreksi dengan kacamata karang gigi.<br />\r\n<br />\r\n<strong>Pemeriksaan Laboratorium :</strong><br />\r\nHematologi : Dalam Batas Normal<br />\r\nDislipideia (Total 240 ; LDL 165)<br />\r\nUrinalisa : Dalam Batas Normal<br />\r\n<br />\r\n<strong>Pemeriksaan Non Laboratorium :</strong><br />\r\nRontgen thorax AP/PA : Dalam Batas Normal<br />\r\nEKG : Normal.<br />\r\nAudiometri: Dalam Batas Normal<br />\r\nSpirometri : Restriktive Ringan.</p>', '<p>Konsultasi dokter Gigi untuk melakukan perawatan gigi.<br />\r\nBatasi makanan berlemak, termasuk makanan yang digoreng (depp fried).<br />\r\nOlah raga rutin 3-4x/minggu, selama 30-45 menit.</p>', 'Lakukan pemeriksaaan kesehatan berkala setidaknya setiap 1 tahun sekali.', '3', NULL, '2', '2025-01-23 03:13:27', '2025-01-23 03:52:57'),
(7, 50, 'Fit', '<p><strong>oke</strong></p>', '<p>ok</p>', 'mantab', '1', NULL, '2', '2025-01-23 03:39:26', '2025-01-23 03:39:26'),
(9, 53, 'Fit', '<p><strong>Pemeriksaan Fisik :</strong><br />\r\nGangguan refraksi, terkoreksi dengan kacamata karang gigi.<br />\r\nPemeriksaan Laboratorium : Hematologi : Dalam Batas Normal<br />\r\nDislipideia (Total 240 ; LDL 165)<br />\r\nUrinalisa : Dalam Batas Normal<br />\r\n<br />\r\n<strong>Pemeriksaan Non Laboratorium :</strong><br />\r\nRontgen thorax AP/PA : Dalam Batas Normal<br />\r\nEKG : Normal. Audiometri: Dalam Batas Normal<br />\r\nSpirometri : Restriktive Ringan.</p>', '<p>Konsultasi dokter Gigi untuk melakukan perawatan gigi.<br />\r\natasi makanan berlemak, termasuk makanan yang digoreng (depp fried). Olah raga rutin 3-4x/minggu, selama 30-45 menit.<br />\r\nOlah raga rutin 3-4x/minggu, selama 30-45 menit</p>', 'Lakukan pemeriksaaan kesehatan berkala setidaknya setiap 1 tahun sekali.', '3', NULL, '3', '2025-01-23 19:06:30', '2025-01-23 19:06:30'),
(10, 81, 'Fit', '<p>bagus</p>', '<p>kere</p>', 'sangar', '1', NULL, '3', '2025-01-28 15:51:26', '2025-01-28 15:51:26'),
(11, 130, 'Fit', '<p>Bagus</p>', '<p>Bgaus</p>', 'Harus sering mendengar', '1', NULL, '2', '2025-02-01 05:21:14', '2025-02-01 05:21:14'),
(12, 142, 'Fit', '<p>ok</p>', '<p>ok</p>', 'Harus sering mendengar', '1', NULL, '3', '2025-02-01 07:41:01', '2025-02-01 07:41:01'),
(13, 141, 'Fit', '<p>asas</p>', '<p>as</p>', 'sangar', '1', NULL, '2', '2025-02-01 07:44:14', '2025-02-01 07:44:14'),
(14, 144, 'Fit', '<p>asa</p>', '<p>as</p>', 'Harus sering mendengar', '1', NULL, '2', '2025-02-01 07:47:53', '2025-02-01 07:47:53'),
(15, 143, 'Fit', '<p>joss</p>', '<p>sa</p>', 'Harus sering mendengar', '1', NULL, '2', '2025-02-01 08:04:12', '2025-02-01 08:04:12'),
(16, 145, 'Fit', '<p>assa</p>', '<p>sasa</p>', 'Harus sering mendengar', '1', NULL, '2', '2025-02-01 08:11:27', '2025-02-01 08:11:27'),
(17, 147, 'Fit', '<p>ds</p>', '<p>ds</p>', 'Harus sering mendengar', '1', NULL, '3', '2025-02-01 16:33:15', '2025-02-01 16:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `kesimpulan_pemeriksaan`
--

CREATE TABLE `kesimpulan_pemeriksaan` (
  `id` int(11) NOT NULL,
  `id_pemeriksaan` bigint(20) DEFAULT NULL,
  `id_mcu` int(11) DEFAULT NULL,
  `catatan_hasil` varchar(255) DEFAULT NULL,
  `kesimpulan` varchar(255) DEFAULT NULL,
  `saran` varchar(255) DEFAULT NULL,
  `kesan` varchar(255) DEFAULT NULL,
  `validasi_oleh` varchar(255) DEFAULT NULL,
  `dokter_penanggung_jawab` varchar(255) DEFAULT NULL,
  `dokter_pemeriksa` varchar(255) DEFAULT NULL,
  `gambar_hasil` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kesimpulan_pemeriksaan`
--

INSERT INTO `kesimpulan_pemeriksaan` (`id`, `id_pemeriksaan`, `id_mcu`, `catatan_hasil`, `kesimpulan`, `saran`, `kesan`, `validasi_oleh`, `dokter_penanggung_jawab`, `dokter_pemeriksa`, `gambar_hasil`, `created_at`, `updated_at`) VALUES
(3, 51, 1, 'aman', 'aman', 'aman', 'aman', '3', '3', '3', NULL, '2025-01-22 08:23:36', '2025-01-22 08:23:36'),
(4, 51, 2, 'Dokumen ini telah di validasi dan dicetak otomatis oleh sistem, tidak digunakan tanda tangan', 'aman', 'aman', 'aman', '3', '2', NULL, NULL, '2025-01-22 08:24:55', '2025-01-22 08:24:55'),
(6, 51, 4, 'Ambang dengar kedua telinga dalam batas norma', 'Ambang dengar kedua telinga dalam batas norma', 'AD-AS: Ambang dengar kedua telinga dalam batas norma', 'AD-AS: Ambang dengar kedua telinga dalam batas norma', '3', '', '2', 'img/file_pendukung/1737561021_Audiometri.PNG', '2025-01-22 08:50:21', '2025-01-22 08:50:21'),
(8, 51, 6, 'Cor dan Pulmo dalam batas normal', 'Cor dan Pulmo dalam batas normal', 'Cor dan Pulmo dalam batas normal', 'Cor dan Pulmo dalam batas normal', '1', '2', '3', 'img/file_pendukung/1737561141_rontgen.PNG', '2025-01-22 08:52:21', '2025-01-22 08:52:21'),
(9, 51, 5, 'Restriksi Ringan', 'Restriksi Ringan', 'Tidak ada saran', 'Tidak ada saran', '3', '3', '3', 'img/file_pendukung/1737561252_Spirometri.PNG', '2025-01-22 08:54:12', '2025-01-22 08:54:12'),
(10, 51, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', 'img/file_pendukung/1737564614_EKG.PNG', '2025-01-22 09:50:14', '2025-01-22 09:50:14'),
(11, 45, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Pilih Validator', 'Pilih Dokter Penanggung Jawab', '2', 'img/file_pendukung/1737637168_EKG.PNG', '2025-01-23 05:59:28', '2025-01-23 05:59:28'),
(14, 50, 2, NULL, NULL, NULL, NULL, '3', '3', '2', NULL, '2025-01-23 09:41:07', '2025-01-23 09:41:07'),
(15, 52, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '2', '3', NULL, '2025-01-23 18:13:37', '2025-01-23 18:13:37'),
(16, 53, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', 'img/file_pendukung/1737683864_EKG.PNG', '2025-01-23 18:57:44', '2025-01-23 18:57:44'),
(17, 53, 1, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', NULL, '2025-01-23 18:58:11', '2025-01-23 18:58:11'),
(18, 53, 2, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', NULL, '2025-01-23 18:59:11', '2025-01-23 18:59:11'),
(19, 53, 4, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '2', 'img/file_pendukung/1737684018_Audiometri.PNG', '2025-01-23 19:00:18', '2025-01-23 19:00:18'),
(20, 53, 5, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Pilih Validator', '3', '3', 'img/file_pendukung/1737684066_Spirometri.PNG', '2025-01-23 19:01:06', '2025-01-23 19:01:06'),
(21, 53, 6, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Pilih Validator', '2', '3', 'img/file_pendukung/1737684098_rontgen.PNG', '2025-01-23 19:01:38', '2025-01-23 19:01:38'),
(22, 56, 2, 'Bagus', 'Bagus', 'Bagus', 'Bagus', '3', '3', '2', NULL, '2025-01-25 06:10:44', '2025-01-25 06:10:44'),
(23, 56, 1, 'Aman', 'Aman', 'Aman', 'Aman', '3', '3', '2', NULL, '2025-01-25 06:11:34', '2025-01-25 06:11:34'),
(24, 69, 2, 'bagus', 'bagus', 'bagus', 'bagus', '3', '3', '3', 'img/file_pendukung/1737965580_1737561141_rontgen.PNG', '2025-01-27 01:13:00', '2025-01-27 01:13:00'),
(25, 57, 2, 'bagus', 'bagus', 'bagus', 'bagus', '3', '3', '3', 'img/file_pendukung/1737965983_dod.png', '2025-01-27 01:19:43', '2025-01-27 01:19:43'),
(26, 70, 2, 'Bgaus', 'Bgaus', 'Bgaus', 'Bgaus', '1', NULL, '3', 'img/file_pendukung/1737967348_aaaaaaaaaaaaaaaaaa.png', '2025-01-27 01:42:28', '2025-01-27 01:42:28'),
(27, 80, 1, NULL, NULL, NULL, NULL, '1', NULL, '2', NULL, '2025-01-27 15:11:47', '2025-01-27 15:11:47'),
(29, 80, 3, 'keren', 'bagus', NULL, NULL, '1', NULL, '3', 'img/file_pendukung/1738015980_aaaaaaaaaaaaaaaaaa.png', '2025-01-27 15:13:00', '2025-01-27 15:13:00'),
(30, 80, 6, NULL, NULL, NULL, 'dalam batas normal', '1', NULL, '3', 'img/file_pendukung/1738016551_1737684098_rontgen.PNG', '2025-01-27 15:22:31', '2025-01-27 15:22:31'),
(31, 81, 6, NULL, NULL, NULL, 'oke', '1', NULL, '3', 'img/file_pendukung/1738016677_1737965983_dod.png', '2025-01-27 15:24:37', '2025-01-27 15:24:37'),
(32, 80, 2, 'okeee', 'oke', 'oke', 'oke', '1', NULL, '2', 'img/file_pendukung/1738017498_1737684066_Spirometri.PNG', '2025-01-27 15:38:18', '2025-01-27 15:38:18'),
(33, 75, 1, NULL, NULL, NULL, NULL, '1', NULL, '3', NULL, '2025-01-28 20:57:26', '2025-01-28 20:57:26'),
(36, 82, 1, NULL, NULL, NULL, NULL, '1', NULL, '3', NULL, '2025-01-28 22:28:11', '2025-01-28 22:28:11'),
(37, 82, 2, 'joss', 'Tidak ada kesimpulan', 'Tidak ada saran', 'Tidak ada kesan', '1', NULL, '2', NULL, '2025-01-28 22:29:25', '2025-01-28 23:25:53'),
(38, 82, 3, 'keren', 'sanbbgat', NULL, NULL, '1', NULL, '2', 'img/file_pendukung/1738128631_1737561141_rontgen.PNG', '2025-01-28 22:30:31', '2025-01-28 22:30:31'),
(39, 82, 6, 'Tidak ada catatan', 'Tidak ada kesimpulan', 'Tidak ada saran', 'bgausssssssaaaaaaaaaaaaaaaaaaaaa', '1', NULL, '3', 'img/file_pendukung/1738128752_1737561141_rontgen.PNG', '2025-01-28 22:32:32', '2025-01-29 03:53:49'),
(40, 82, 4, NULL, 'sangat mantab', NULL, NULL, '1', NULL, '3', 'img/file_pendukung/1738128793_1737684018_Audiometri.PNG', '2025-01-28 22:33:13', '2025-01-28 22:33:13'),
(42, 82, 5, NULL, 'oke', 'asek', NULL, '1', NULL, '3', 'img/file_pendukung/1738132967_1737684098_rontgen.PNG', '2025-01-28 23:42:47', '2025-01-28 23:42:47'),
(44, 83, 4, 'Tidak ada catatan', 'cakepss', 'Tidak ada saran', 'Tidak ada kesan', '1', NULL, '2', 'img/file_pendukung/1738138590_1737561021_Audiometri.PNG', '2025-01-29 01:16:30', '2025-01-29 01:20:58'),
(47, 85, 6, 'Tidak ada catatan', 'Tidak ada kesimpulan', 'Tidak ada saran', 'okejosaaa', '1', NULL, '3', NULL, '2025-01-29 04:27:22', '2025-01-29 04:30:37'),
(48, 83, 2, 'mantab', 'Tidak ada kesimpulan', 'Tidak ada saran', 'Tidak ada kesan', '1', NULL, '3', NULL, '2025-01-29 04:31:02', '2025-01-29 04:37:39'),
(49, 83, 6, 'Tidak ada catatan', 'Tidak ada kesimpulan', 'Tidak ada saran', 'joss gandosssss', '1', NULL, '2', 'img/file_pendukung/1738150372_1737561141_rontgen.PNG', '2025-01-29 04:32:52', '2025-01-29 04:33:41'),
(50, 130, 4, NULL, 'AD-AS Dalam Batas Normal', NULL, NULL, '1', NULL, '3', 'img/file_pendukung/1738412361_1737684018_Audiometri.PNG', '2025-02-01 05:19:21', '2025-02-01 05:19:21'),
(51, 143, 6, NULL, NULL, NULL, 'josss', '1', NULL, '3', NULL, '2025-02-01 08:03:36', '2025-02-01 08:03:36'),
(52, 145, 2, 'ssd', NULL, NULL, NULL, '1', NULL, '3', NULL, '2025-02-01 08:11:05', '2025-02-01 08:11:05'),
(53, 147, 4, 'Tidak ada catatan', 'ok', 'Tidak ada saran', 'Tidak ada kesan', '1', NULL, '3', 'img/file_pendukung/1738453011_1737561021_Audiometri.PNG', '2025-02-01 16:30:41', '2025-02-01 16:36:51'),
(54, 146, 2, 'oke', NULL, NULL, NULL, '4', NULL, '3', NULL, '2025-02-02 15:13:22', '2025-02-02 15:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `keterangans`
--

CREATE TABLE `keterangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemeriksaan_id` bigint(20) UNSIGNED NOT NULL,
  `id_mcu` int(11) DEFAULT NULL,
  `bidang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parameter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `metode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hasil` text DEFAULT NULL,
  `kesan` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keterangans`
--

INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`, `paket_id`) VALUES
(166, 39, 3, 36, NULL, NULL, NULL, 'bagus', 'ok', '2025-01-21 02:04:42', '2025-01-21 02:26:19', NULL),
(167, 39, 3, 37, NULL, NULL, NULL, 'bagus', 'ok', '2025-01-21 02:04:42', '2025-01-21 02:26:19', NULL),
(168, 40, 2, 35, NULL, 107, 'bagus', NULL, NULL, '2025-01-21 02:21:24', '2025-01-21 06:16:19', NULL),
(169, 40, 2, 32, 44, 100, '787', NULL, NULL, '2025-01-21 02:21:24', '2025-01-21 06:16:19', NULL),
(170, 41, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32', NULL),
(171, 41, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32', NULL),
(172, 41, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32', NULL),
(173, 41, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32', NULL),
(174, 42, 1, 10, NULL, 23, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(175, 42, 1, 10, NULL, 24, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(176, 42, 1, 10, NULL, 45, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(177, 42, 1, 10, NULL, 59, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(178, 42, 1, 10, NULL, 92, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(179, 42, 1, 11, NULL, 25, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(180, 42, 1, 11, NULL, 26, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(181, 42, 1, 11, NULL, 27, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(182, 42, 1, 12, NULL, 28, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(183, 42, 1, 12, NULL, 29, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(184, 42, 1, 12, NULL, 30, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(185, 42, 1, 12, NULL, 31, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(186, 42, 1, 12, NULL, 32, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(187, 42, 1, 12, NULL, 33, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(188, 42, 1, 12, NULL, 34, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(189, 42, 1, 12, NULL, 35, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(190, 42, 1, 12, NULL, 36, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(191, 42, 1, 12, NULL, 37, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL),
(192, 42, 1, 12, NULL, 38, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(193, 42, 1, 13, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(194, 42, 1, 15, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(195, 42, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(196, 42, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(197, 42, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(198, 42, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(199, 42, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(200, 42, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(201, 42, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(202, 42, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(203, 42, 1, 18, NULL, 48, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(204, 42, 1, 18, 29, 49, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(205, 42, 1, 18, 30, 49, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(206, 42, 1, 18, NULL, 50, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(207, 42, 1, 19, 31, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(208, 42, 1, 19, 32, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(209, 42, 1, 19, 33, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(210, 42, 1, 19, NULL, 52, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(211, 42, 1, 19, 34, 53, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(212, 42, 1, 19, 35, 53, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(213, 42, 1, 20, NULL, 54, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(214, 42, 1, 20, NULL, 55, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(215, 42, 1, 20, NULL, 56, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(216, 42, 1, 20, NULL, 57, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(217, 42, 1, 21, NULL, 58, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(218, 42, 1, 22, NULL, 60, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19', NULL),
(219, 42, 1, 22, NULL, 61, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(220, 42, 1, 22, NULL, 62, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(221, 42, 1, 22, NULL, 63, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(222, 42, 1, 23, NULL, 64, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(223, 42, 1, 23, NULL, 65, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(224, 42, 1, 23, NULL, 66, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(225, 42, 1, 23, NULL, 67, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(226, 42, 1, 23, NULL, 68, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(227, 42, 1, 23, 36, 69, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(228, 42, 1, 23, 37, 69, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(229, 42, 1, 23, NULL, 70, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(230, 42, 1, 24, NULL, 71, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(231, 42, 1, 24, NULL, 72, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(232, 42, 1, 24, NULL, 73, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(233, 42, 1, 24, NULL, 74, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(234, 42, 1, 24, NULL, 75, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(235, 42, 1, 24, NULL, 76, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(236, 42, 1, 25, NULL, 77, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(237, 42, 1, 25, NULL, 78, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(238, 42, 1, 25, NULL, 79, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(239, 42, 1, 25, NULL, 80, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(240, 42, 1, 25, NULL, 81, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(241, 42, 1, 25, NULL, 82, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(242, 42, 1, 26, NULL, 83, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(243, 42, 1, 26, NULL, 84, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(244, 42, 1, 27, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(245, 42, 2, 28, NULL, 85, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(246, 42, 2, 28, NULL, 86, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(247, 42, 2, 28, NULL, 87, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(248, 42, 2, 28, NULL, 88, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(249, 42, 2, 28, NULL, 89, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20', NULL),
(250, 42, 2, 28, NULL, 90, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(251, 42, 2, 28, NULL, 91, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(252, 42, 2, 29, NULL, 93, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(253, 42, 2, 29, NULL, 94, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(254, 42, 2, 29, NULL, 95, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(255, 42, 2, 29, NULL, 96, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(256, 42, 2, 29, NULL, 97, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(257, 42, 2, 29, NULL, 98, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(258, 42, 2, 30, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(259, 42, 2, 31, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(260, 42, 2, 32, 38, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(261, 42, 2, 32, 39, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(262, 42, 2, 32, 40, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(263, 42, 2, 32, 41, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(264, 42, 2, 32, 42, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(265, 42, 2, 32, 43, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(266, 42, 2, 32, 44, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(267, 42, 2, 32, 45, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(268, 42, 2, 32, 46, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(269, 42, 2, 32, 47, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(270, 42, 2, 32, 48, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(271, 42, 2, 32, 49, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(272, 42, 2, 32, 50, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(273, 42, 2, 32, 51, 102, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(274, 42, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(275, 42, 2, 33, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(276, 42, 2, 34, 53, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(277, 42, 2, 34, 54, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(278, 42, 2, 34, 55, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(279, 42, 2, 34, 56, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(280, 42, 2, 34, 57, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(281, 42, 2, 34, 58, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(282, 42, 2, 34, 59, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21', NULL),
(283, 42, 2, 34, 60, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(284, 42, 2, 34, 61, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(285, 42, 2, 34, 62, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(286, 42, 2, 34, 63, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(287, 42, 2, 34, 64, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(288, 42, 2, 34, 65, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(289, 42, 2, 34, 66, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(290, 42, 2, 34, 67, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(291, 42, 2, 34, 68, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(292, 42, 2, 34, 69, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(293, 42, 2, 34, 70, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(294, 42, 2, 34, 71, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(295, 42, 2, 34, 72, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(296, 42, 2, 34, 73, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(297, 42, 2, 34, 74, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(298, 42, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(299, 42, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(300, 42, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(301, 42, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(302, 42, 2, 35, NULL, 107, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(303, 42, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(304, 42, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22', NULL),
(313, 44, 3, 36, NULL, NULL, 'a2', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:24:27', NULL),
(314, 44, 3, 37, NULL, NULL, 'aaaaaaaaaaaaaaaaa', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:20:20', NULL),
(315, 44, 4, NULL, NULL, NULL, 's', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:18:07', NULL),
(316, 45, 2, 28, NULL, 85, '121', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(317, 45, 2, 28, NULL, 86, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(318, 45, 2, 28, NULL, 87, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(319, 45, 2, 28, NULL, 88, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(320, 45, 2, 28, NULL, 89, 'qw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(321, 45, 2, 28, NULL, 90, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(322, 45, 2, 28, NULL, 91, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(323, 45, 2, 29, NULL, 93, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(324, 45, 2, 29, NULL, 94, 'wq', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(325, 45, 2, 29, NULL, 95, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(326, 45, 2, 29, NULL, 96, 'dqwd', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(327, 45, 2, 29, NULL, 97, 'qdqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(328, 45, 2, 29, NULL, 98, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(329, 45, 2, 30, NULL, NULL, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(330, 45, 2, 31, NULL, NULL, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(331, 45, 2, 32, 38, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(332, 45, 2, 32, 39, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(333, 45, 2, 32, 40, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL),
(334, 45, 2, 32, 41, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:18', NULL),
(335, 45, 2, 32, 42, 100, 'qdw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(336, 45, 2, 32, 43, 100, 'dwq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(337, 45, 2, 32, 44, 100, 'dqw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(338, 45, 2, 32, 45, 101, 'dqw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(339, 45, 2, 32, 46, 101, 'qwd', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(340, 45, 2, 32, 47, 101, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(341, 45, 2, 32, 48, 101, 'wq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(342, 45, 2, 32, 49, 101, 'dwq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(343, 45, 2, 32, 50, 101, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(344, 45, 2, 32, 51, 102, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(345, 45, 2, 32, 52, 102, 'wq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(346, 45, 2, 33, NULL, NULL, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(347, 45, 2, 34, 53, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(348, 45, 2, 34, 54, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(349, 45, 2, 34, 55, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(350, 45, 2, 34, 56, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(351, 45, 2, 34, 57, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(352, 45, 2, 34, 58, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(353, 45, 2, 34, 59, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(354, 45, 2, 34, 60, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(355, 45, 2, 34, 61, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(356, 45, 2, 34, 62, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(357, 45, 2, 34, 63, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(358, 45, 2, 34, 64, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18', NULL),
(359, 45, 2, 34, 65, 104, 'q', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(360, 45, 2, 34, 66, 104, 'dw', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(361, 45, 2, 34, 67, 105, 'wd', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(362, 45, 2, 34, 68, 105, 'ww', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(363, 45, 2, 34, 69, 105, 'qwq', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(364, 45, 2, 34, 70, 105, '1ss', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(365, 45, 2, 34, 71, 105, 'as', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(366, 45, 2, 34, 72, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(367, 45, 2, 34, 73, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(368, 45, 2, 34, 74, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(369, 45, 2, 34, 75, 106, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(370, 45, 2, 34, 76, 106, 'as', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(371, 45, 2, 34, 77, 106, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(372, 45, 2, 34, 78, 106, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(373, 45, 2, 35, NULL, 107, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(374, 45, 3, 36, NULL, NULL, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(375, 45, 3, 37, NULL, NULL, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19', NULL),
(376, 46, 1, 10, NULL, 23, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:28:39', NULL),
(377, 46, 1, 10, NULL, 24, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:28:39', NULL),
(378, 46, 1, 10, NULL, 45, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32', NULL),
(379, 46, 1, 10, NULL, 59, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32', NULL),
(380, 46, 1, 10, NULL, 92, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32', NULL),
(381, 46, 1, 11, NULL, 25, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(382, 46, 1, 11, NULL, 26, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(383, 46, 1, 11, NULL, 27, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(384, 46, 1, 12, NULL, 28, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(385, 46, 1, 12, NULL, 29, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(386, 46, 1, 12, NULL, 30, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(387, 46, 1, 12, NULL, 31, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(388, 46, 1, 12, NULL, 32, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(389, 46, 1, 12, NULL, 33, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(390, 46, 1, 12, NULL, 34, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(391, 46, 1, 12, NULL, 35, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(392, 46, 1, 12, NULL, 36, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(393, 46, 1, 12, NULL, 37, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(394, 46, 1, 12, NULL, 38, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32', NULL),
(395, 46, 1, 13, NULL, NULL, 'Ada, Radiasi komputer 8 jam/hari selama 15 tahun, Sinar UV 8 jam/hari selama 4 tahun, Kebisingan 6 jam/hari selama 4 tahun, Bahan kimia 3 jam/hari selama 4  tahun, Debu/asap 6 jam/hari selama 4 tahun', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:30:21', NULL),
(396, 46, 1, 15, NULL, NULL, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29', NULL),
(397, 46, 1, 16, NULL, 39, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29', NULL),
(398, 46, 1, 16, NULL, 40, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29', NULL),
(399, 46, 1, 16, NULL, 41, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29', NULL),
(400, 46, 1, 17, NULL, 42, '172 Cm', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30', NULL),
(401, 46, 1, 17, NULL, 43, '61 Kg', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30', NULL),
(402, 46, 1, 17, NULL, 44, '116/71 mmHg.', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30', NULL),
(403, 46, 1, 17, NULL, 46, '77 x/menit', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30', NULL),
(404, 46, 1, 18, NULL, 47, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:55', NULL),
(405, 46, 1, 18, NULL, 48, 'Ada, OD:-3 OS:-4', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56', NULL),
(406, 46, 1, 18, 29, 49, 'OD : 6/60 , OS : 6/60', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56', NULL),
(407, 46, 1, 18, 30, 49, 'OD : 6/6 , OS : 6/6', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56', NULL),
(408, 46, 1, 18, NULL, 50, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(409, 46, 1, 19, 31, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(410, 46, 1, 19, 32, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(411, 46, 1, 19, 33, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(412, 46, 1, 19, NULL, 52, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(413, 46, 1, 19, 34, 53, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(414, 46, 1, 19, 35, 53, 'T1 - T1', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(415, 46, 1, 20, NULL, 54, 'Cukup', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(416, 46, 1, 20, NULL, 55, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(417, 46, 1, 20, NULL, 56, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(418, 46, 1, 20, NULL, 57, 'Karang gigi', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(419, 46, 1, 21, NULL, 58, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(420, 46, 1, 22, NULL, 60, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(421, 46, 1, 22, NULL, 61, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(422, 46, 1, 22, NULL, 62, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56', NULL),
(423, 46, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(424, 46, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(425, 46, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(426, 46, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(427, 46, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(428, 46, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(429, 46, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(430, 46, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(431, 46, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(432, 46, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(433, 46, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(434, 46, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(435, 46, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(436, 46, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(437, 46, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(438, 46, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(439, 46, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(440, 46, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41', NULL),
(441, 46, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41', NULL),
(442, 46, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41', NULL),
(443, 46, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41', NULL),
(444, 46, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(445, 46, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(446, 46, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(447, 46, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(448, 46, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(449, 46, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(450, 46, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(451, 46, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(452, 46, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(453, 46, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(454, 46, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(455, 46, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(456, 46, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(457, 46, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(458, 46, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(459, 46, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(460, 46, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(461, 46, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(462, 46, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(463, 46, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(464, 46, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(465, 46, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(466, 46, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(467, 46, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(468, 46, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(469, 46, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42', NULL),
(470, 46, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:43', NULL),
(471, 46, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(472, 46, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(473, 46, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(474, 46, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(475, 46, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(476, 46, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(477, 46, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(478, 46, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(479, 46, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(480, 46, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(481, 46, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(482, 46, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(483, 46, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(484, 46, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(485, 46, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(486, 46, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(487, 46, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(488, 46, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(489, 46, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(490, 46, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(491, 46, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(492, 46, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(493, 46, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(494, 46, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(495, 46, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(496, 46, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(497, 46, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(498, 46, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(499, 46, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(500, 46, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43', NULL),
(501, 46, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:44', NULL),
(502, 46, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(503, 46, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(504, 46, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(505, 46, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(506, 46, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(507, 46, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(508, 46, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(509, 46, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(510, 46, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(511, 46, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(512, 46, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(513, 46, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(514, 46, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(515, 46, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(516, 46, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(517, 46, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(518, 46, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(519, 46, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(520, 46, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44', NULL),
(521, 46, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(522, 46, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(523, 46, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(524, 46, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(525, 46, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(526, 46, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44', NULL),
(527, 46, 1, 17, NULL, 108, 'N/A', NULL, NULL, NULL, '2025-01-22 01:57:06', NULL),
(528, 47, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(529, 47, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(530, 47, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(531, 47, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(532, 47, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(533, 47, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(534, 47, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL),
(535, 47, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12', NULL),
(536, 47, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12', NULL),
(537, 47, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12', NULL),
(538, 47, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(539, 47, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(540, 47, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(541, 47, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(542, 47, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(543, 47, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(544, 47, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(545, 47, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(546, 47, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(547, 47, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(548, 47, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(549, 47, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(550, 47, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(551, 47, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(552, 47, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(553, 47, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(554, 47, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(555, 47, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(556, 47, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(557, 47, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(558, 47, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(559, 47, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(560, 47, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(561, 47, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12', NULL),
(562, 47, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13', NULL),
(563, 47, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13', NULL),
(564, 47, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13', NULL),
(565, 47, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(566, 47, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(567, 47, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(568, 47, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(569, 47, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(570, 47, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(571, 47, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(572, 47, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(573, 47, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(574, 47, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(575, 47, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(576, 47, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(577, 47, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(578, 47, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(579, 47, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(580, 47, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(581, 47, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(582, 47, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(583, 47, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(584, 47, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(585, 47, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(586, 47, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13', NULL),
(587, 47, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(588, 47, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(589, 47, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(590, 47, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(591, 47, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(592, 47, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(593, 47, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14', NULL),
(594, 47, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(595, 47, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(596, 47, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(597, 47, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(598, 47, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(599, 47, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(600, 47, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(601, 47, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(602, 47, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(603, 47, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(604, 47, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(605, 47, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(606, 47, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(607, 47, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(608, 47, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(609, 47, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(610, 47, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(611, 47, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(612, 47, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(613, 47, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14', NULL),
(614, 47, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(615, 47, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(616, 47, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(617, 47, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(618, 47, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(619, 47, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(620, 47, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(621, 47, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(622, 47, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(623, 47, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(624, 47, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15', NULL),
(625, 47, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(626, 47, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(627, 47, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(628, 47, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(629, 47, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(630, 47, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(631, 47, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(632, 47, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(633, 47, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(634, 47, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(635, 47, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(636, 47, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(637, 47, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(638, 47, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(639, 47, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(640, 47, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(641, 47, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(642, 47, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(643, 47, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15', NULL),
(644, 47, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:15', NULL),
(645, 47, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(646, 47, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(647, 47, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(648, 47, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(649, 47, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(650, 47, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(651, 47, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(652, 47, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(653, 47, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(654, 47, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(655, 47, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(656, 47, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(657, 47, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16', NULL),
(658, 47, 3, 36, NULL, NULL, 'Sinus', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(659, 47, 3, 37, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(660, 47, 3, 38, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(661, 47, 3, 39, NULL, NULL, '89 x/menit', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(662, 47, 3, 40, NULL, NULL, '89 x/menit', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(663, 47, 3, 41, NULL, NULL, '0,14 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(664, 47, 3, 42, NULL, NULL, '0,09 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(665, 47, 3, 43, NULL, NULL, '0,35 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(666, 47, 3, 44, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(667, 47, 3, 45, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(668, 47, 3, 46, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(669, 47, 3, 47, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(670, 47, 3, 48, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(671, 47, 3, 49, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(672, 47, 3, 50, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45', NULL),
(673, 47, 4, 51, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(674, 47, 4, 52, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(675, 47, 5, 53, NULL, NULL, '3.52', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(676, 47, 5, 54, NULL, NULL, '3.61', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(677, 47, 5, 55, NULL, NULL, '97.51', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(678, 47, 6, 56, NULL, NULL, 'Corakan Vaskular tampak normal  Tak tampak infiltrat pada kedua lapang paru', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45', NULL),
(679, 47, 6, 57, NULL, NULL, 'Tak tampak kelainan tulang', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:46', NULL),
(680, 48, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:26:09', '2025-01-22 02:26:21', NULL),
(681, 48, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:26:09', '2025-01-22 02:26:21', NULL),
(682, 48, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21', NULL);
INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`, `paket_id`) VALUES
(683, 48, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21', NULL),
(684, 48, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21', NULL),
(685, 48, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21', NULL),
(686, 48, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21', NULL),
(687, 49, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:44', NULL),
(688, 49, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:44', NULL),
(689, 49, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(690, 49, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(691, 49, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(692, 49, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(693, 49, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(694, 49, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(695, 49, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(696, 49, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(697, 49, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(698, 49, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(699, 49, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45', NULL),
(700, 50, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(701, 50, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(702, 50, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(703, 50, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(704, 50, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(705, 50, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(706, 50, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(707, 50, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(708, 50, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(709, 50, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(710, 50, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(711, 50, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(712, 50, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(713, 50, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL),
(714, 50, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44', NULL),
(715, 50, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44', NULL),
(716, 50, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44', NULL),
(717, 50, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44', NULL),
(718, 50, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(719, 50, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(720, 50, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(721, 50, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(722, 50, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(723, 50, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(724, 50, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(725, 50, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(726, 50, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(727, 50, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(728, 50, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(729, 50, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(730, 50, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(731, 50, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(732, 50, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(733, 50, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(734, 50, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(735, 50, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(736, 50, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(737, 50, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(738, 50, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(739, 50, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(740, 50, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44', NULL),
(741, 50, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:45', NULL),
(742, 50, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:45', NULL),
(743, 50, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(744, 50, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(745, 50, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(746, 50, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(747, 50, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(748, 50, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(749, 50, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(750, 50, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(751, 50, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(752, 50, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(753, 50, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(754, 50, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(755, 50, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(756, 50, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(757, 50, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45', NULL),
(758, 51, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(759, 51, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(760, 51, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(761, 51, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(762, 51, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(763, 51, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(764, 51, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(765, 51, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(766, 51, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(767, 51, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(768, 51, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(769, 51, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(770, 51, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(771, 51, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(772, 51, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35', NULL),
(773, 51, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(774, 51, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(775, 51, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(776, 51, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(777, 51, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(778, 51, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(779, 51, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(780, 51, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35', NULL),
(781, 51, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(782, 51, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(783, 51, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(784, 51, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(785, 51, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(786, 51, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(787, 51, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(788, 51, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(789, 51, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(790, 51, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(791, 51, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(792, 51, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(793, 51, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(794, 51, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(795, 51, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(796, 51, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36', NULL),
(797, 51, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(798, 51, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(799, 51, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(800, 51, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(801, 51, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(802, 51, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(803, 51, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(804, 51, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(805, 51, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(806, 51, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(807, 51, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(808, 51, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(809, 51, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(810, 51, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(811, 51, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36', NULL),
(812, 51, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(813, 51, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(814, 51, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(815, 51, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(816, 51, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(817, 51, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(818, 51, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(819, 51, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(820, 51, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(821, 51, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(822, 51, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(823, 51, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(824, 51, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(825, 51, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37', NULL),
(826, 51, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(827, 51, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(828, 51, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(829, 51, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(830, 51, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(831, 51, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(832, 51, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(833, 51, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(834, 51, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(835, 51, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(836, 51, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(837, 51, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(838, 51, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(839, 51, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(840, 51, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37', NULL),
(841, 51, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(842, 51, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(843, 51, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(844, 51, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(845, 51, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(846, 51, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(847, 51, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(848, 51, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38', NULL),
(849, 51, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(850, 51, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(851, 51, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(852, 51, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(853, 51, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(854, 51, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(855, 51, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(856, 51, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(857, 51, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(858, 51, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(859, 51, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(860, 51, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(861, 51, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(862, 51, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(863, 51, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(864, 51, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(865, 51, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(866, 51, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(867, 51, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(868, 51, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(869, 51, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(870, 51, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(871, 51, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(872, 51, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38', NULL),
(873, 51, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(874, 51, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(875, 51, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(876, 51, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(877, 51, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(878, 51, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39', NULL),
(879, 51, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(880, 51, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(881, 51, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(882, 51, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(883, 51, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(884, 51, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(885, 51, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(886, 51, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(887, 51, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(888, 51, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(889, 51, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(890, 51, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(891, 51, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(892, 51, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(893, 51, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(894, 51, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(895, 51, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(896, 51, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(897, 51, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(898, 51, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(899, 51, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(900, 51, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(901, 51, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(902, 51, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39', NULL),
(903, 51, 4, 51, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(904, 51, 4, 52, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(905, 51, 5, 53, NULL, NULL, '3.52', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(906, 51, 5, 54, NULL, NULL, '3.61', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(907, 51, 5, 55, NULL, NULL, '97.51', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(908, 51, 6, 56, NULL, NULL, 'Bentuk dan letak jantung normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40', NULL),
(909, 51, 6, 57, NULL, NULL, 'Corakan Vaskular tampak normal  Tak tampak infiltrat pada kedua lapang paru', NULL, NULL, '2025-01-22 05:01:20', '2025-01-22 05:02:40', NULL),
(910, 51, 6, 58, NULL, NULL, 'Tak tampak kelainan tulang', NULL, NULL, '2025-01-22 05:01:20', '2025-01-22 05:02:40', NULL),
(911, 52, 3, 36, NULL, NULL, 'Tidak', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(912, 52, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(913, 52, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(914, 52, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(915, 52, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(916, 52, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(917, 52, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(918, 52, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(919, 52, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL),
(920, 52, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:13', NULL),
(921, 52, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14', NULL),
(922, 52, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14', NULL),
(923, 52, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14', NULL),
(924, 52, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14', NULL),
(925, 52, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14', NULL),
(926, 53, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:26', '2025-01-23 18:55:16', NULL),
(927, 53, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:26', '2025-01-23 18:55:16', NULL),
(928, 53, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16', NULL),
(929, 53, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16', NULL),
(930, 53, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16', NULL),
(931, 53, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16', NULL),
(932, 53, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(933, 53, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(934, 53, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(935, 53, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(936, 53, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(937, 53, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(938, 53, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(939, 53, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(940, 53, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(941, 53, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(942, 53, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(943, 53, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(944, 53, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(945, 53, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(946, 53, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(947, 53, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(948, 53, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(949, 53, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(950, 53, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(951, 53, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17', NULL),
(952, 53, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17', NULL),
(953, 53, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17', NULL),
(954, 53, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17', NULL),
(955, 53, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17', NULL),
(956, 53, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(957, 53, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(958, 53, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(959, 53, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(960, 53, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(961, 53, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(962, 53, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(963, 53, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(964, 53, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(965, 53, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(966, 53, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(967, 53, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(968, 53, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(969, 53, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(970, 53, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(971, 53, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(972, 53, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(973, 53, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(974, 53, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(975, 53, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(976, 53, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(977, 53, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(978, 53, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(979, 53, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18', NULL),
(980, 53, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:18', NULL),
(981, 53, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(982, 53, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(983, 53, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(984, 53, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(985, 53, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(986, 53, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(987, 53, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(988, 53, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(989, 53, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(990, 53, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(991, 53, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(992, 53, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(993, 53, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(994, 53, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(995, 53, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(996, 53, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(997, 53, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(998, 53, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19', NULL),
(999, 53, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1000, 53, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1001, 53, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1002, 53, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1003, 53, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1004, 53, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1005, 53, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19', NULL),
(1006, 53, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1007, 53, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1008, 53, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1009, 53, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1010, 53, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1011, 53, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1012, 53, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1013, 53, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1014, 53, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1015, 53, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1016, 53, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1017, 53, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1018, 53, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1019, 53, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1020, 53, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1021, 53, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1022, 53, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1023, 53, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1024, 53, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1025, 53, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1026, 53, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20', NULL),
(1027, 53, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1028, 53, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1029, 53, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1030, 53, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1031, 53, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1032, 53, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1033, 53, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20', NULL),
(1034, 53, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1035, 53, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1036, 53, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1037, 53, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1038, 53, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1039, 53, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1040, 53, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1041, 53, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1042, 53, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1043, 53, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1044, 53, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1045, 53, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1046, 53, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1047, 53, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1048, 53, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1049, 53, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1050, 53, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1051, 53, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1052, 53, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1053, 53, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1054, 53, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1055, 53, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21', NULL),
(1056, 53, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:21', NULL),
(1057, 53, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1058, 53, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1059, 53, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1060, 53, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1061, 53, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1062, 53, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1063, 53, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1064, 53, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1065, 53, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1066, 53, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1067, 53, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1068, 53, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1069, 53, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1070, 53, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1071, 53, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1072, 53, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1073, 53, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1074, 53, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1075, 53, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1076, 53, 6, 56, NULL, NULL, 'Dalam Batas Normal', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1077, 53, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1078, 53, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22', NULL),
(1079, 56, 1, 23, NULL, 68, 'Teraba', NULL, NULL, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL),
(1080, 56, 2, 34, 75, 106, 'Negatif', NULL, NULL, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL),
(1081, 56, 2, 34, 76, 106, 'Negatif', NULL, NULL, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL),
(1082, 56, 2, 34, 77, 106, 'Negatif', NULL, NULL, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL),
(1083, 56, 2, 34, 78, 106, 'Negatif', NULL, NULL, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL),
(1084, 57, 2, 32, 40, 99, '90 mg/dl', NULL, NULL, '2025-01-25 06:41:48', '2025-01-25 14:01:21', NULL),
(1085, 58, 2, 32, 40, 99, '90 mg/dl', NULL, NULL, '2025-01-25 06:41:48', '2025-01-25 14:02:13', NULL),
(1086, 59, 2, 32, 40, 99, NULL, NULL, NULL, '2025-01-25 06:41:48', '2025-01-25 06:41:48', NULL),
(1087, 60, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:38:00', '2025-01-25 15:38:00', NULL),
(1088, 60, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:38:00', '2025-01-25 15:38:00', NULL),
(1089, 60, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:38:00', '2025-01-25 15:38:00', NULL),
(1090, 61, 2, 28, NULL, 85, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1091, 61, 2, 28, NULL, 86, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1092, 61, 2, 28, NULL, 87, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1093, 61, 2, 28, NULL, 88, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1094, 61, 2, 28, NULL, 89, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1095, 61, 2, 28, NULL, 90, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1096, 61, 2, 28, NULL, 91, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1097, 61, 2, 29, NULL, 93, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1098, 61, 2, 29, NULL, 94, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1099, 61, 2, 29, NULL, 95, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1100, 61, 2, 29, NULL, 96, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1101, 61, 2, 29, NULL, 97, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1102, 61, 2, 29, NULL, 98, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1103, 61, 2, 30, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1104, 61, 2, 31, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1105, 61, 2, 32, 38, 99, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1106, 61, 2, 32, 39, 99, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1107, 61, 2, 32, 40, 99, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1108, 61, 2, 32, 41, 99, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1109, 61, 2, 32, 42, 100, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1110, 61, 2, 32, 43, 100, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1111, 61, 2, 32, 44, 100, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1112, 61, 2, 32, 45, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1113, 61, 2, 32, 46, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1114, 61, 2, 32, 47, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1115, 61, 2, 32, 48, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1116, 61, 2, 32, 49, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1117, 61, 2, 32, 50, 101, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1118, 61, 2, 32, 51, 102, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1119, 61, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1120, 61, 2, 33, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1121, 61, 2, 34, 53, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1122, 61, 2, 34, 54, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1123, 61, 2, 34, 55, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1124, 61, 2, 34, 56, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1125, 61, 2, 34, 57, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1126, 61, 2, 34, 58, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1127, 61, 2, 34, 59, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1128, 61, 2, 34, 60, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1129, 61, 2, 34, 61, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1130, 61, 2, 34, 62, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1131, 61, 2, 34, 63, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1132, 61, 2, 34, 64, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1133, 61, 2, 34, 65, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1134, 61, 2, 34, 66, 104, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1135, 61, 2, 34, 67, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1136, 61, 2, 34, 68, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1137, 61, 2, 34, 69, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1138, 61, 2, 34, 70, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1139, 61, 2, 34, 71, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1140, 61, 2, 34, 72, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1141, 61, 2, 34, 73, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1142, 61, 2, 34, 74, 105, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1143, 61, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1144, 61, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1145, 61, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1146, 61, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1147, 61, 2, 35, NULL, 107, NULL, NULL, NULL, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL),
(1148, 62, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1149, 62, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1150, 62, 3, 38, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1151, 62, 3, 39, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1152, 62, 3, 40, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1153, 62, 3, 41, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1154, 62, 3, 42, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1155, 62, 3, 43, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1156, 62, 3, 44, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1157, 62, 3, 45, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1158, 62, 3, 46, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1159, 62, 3, 47, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1160, 62, 3, 48, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1161, 62, 3, 49, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1162, 62, 3, 50, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL),
(1163, 63, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:43', '2025-01-25 15:54:43', NULL),
(1164, 63, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:43', '2025-01-25 15:54:43', NULL),
(1165, 63, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:54:43', '2025-01-25 15:54:43', NULL),
(1166, 64, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:55:48', '2025-01-25 15:55:48', NULL),
(1167, 64, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:55:48', '2025-01-25 15:55:48', NULL),
(1168, 64, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-25 15:55:48', '2025-01-25 15:55:48', NULL),
(1169, 65, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:00:52', '2025-01-25 16:00:52', NULL),
(1170, 65, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:00:52', '2025-01-25 16:00:52', NULL),
(1171, 65, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:00:52', '2025-01-25 16:00:52', NULL),
(1172, 66, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:10:46', '2025-01-25 16:10:46', NULL),
(1173, 66, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:10:46', '2025-01-25 16:10:46', NULL),
(1174, 67, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:15:59', '2025-01-25 16:15:59', NULL),
(1175, 67, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:15:59', '2025-01-25 16:15:59', NULL),
(1176, 68, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:17:20', '2025-01-25 16:17:20', NULL),
(1177, 68, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-25 16:17:20', '2025-01-25 16:17:20', NULL),
(1178, 69, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1179, 69, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1180, 69, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1181, 69, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1182, 69, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1183, 69, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1184, 69, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1185, 69, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1186, 69, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1187, 69, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1188, 69, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1189, 69, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1190, 69, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1191, 69, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1192, 69, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL);
INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`, `paket_id`) VALUES
(1193, 69, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1194, 69, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1195, 69, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1196, 69, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1197, 69, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1198, 69, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1199, 69, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1200, 69, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1201, 69, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1202, 69, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1203, 69, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1204, 69, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1205, 69, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1206, 69, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL),
(1207, 69, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1208, 69, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1209, 69, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1210, 69, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1211, 69, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1212, 69, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1213, 69, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1214, 69, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1215, 69, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1216, 69, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1217, 69, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1218, 69, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1219, 69, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1220, 69, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1221, 69, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1222, 69, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1223, 69, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1224, 69, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1225, 69, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1226, 69, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1227, 69, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1228, 69, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1229, 69, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1230, 69, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1231, 69, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-26 15:27:20', '2025-01-26 15:27:52', NULL),
(1232, 70, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1233, 70, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1234, 70, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1235, 70, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1236, 70, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1237, 70, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1238, 70, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1239, 70, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1240, 70, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1241, 70, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1242, 70, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1243, 70, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1244, 70, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1245, 70, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1246, 70, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1247, 70, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1248, 70, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1249, 70, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1250, 70, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1251, 70, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1252, 70, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1253, 70, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1254, 70, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1255, 70, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1256, 70, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1257, 70, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL),
(1258, 71, 1, 23, NULL, 68, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1259, 71, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1260, 71, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1261, 71, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1262, 71, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1263, 72, 1, 23, NULL, 68, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1264, 72, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1265, 72, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1266, 72, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1267, 72, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL),
(1268, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1269, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1270, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1271, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1272, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1273, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:09:25', '2025-01-27 07:09:25', NULL),
(1274, 75, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:37', NULL),
(1275, 75, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:37', NULL),
(1276, 75, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:37', NULL),
(1277, 76, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:21', NULL),
(1278, 76, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:21', NULL),
(1279, 76, 1, 18, 29, 49, NULL, NULL, NULL, '2025-01-27 07:17:21', '2025-01-27 07:17:21', NULL),
(1280, 77, 1, 10, NULL, 23, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1281, 77, 1, 10, NULL, 24, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1282, 77, 1, 10, NULL, 45, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1283, 77, 1, 10, NULL, 59, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1284, 77, 1, 10, NULL, 92, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1285, 77, 1, 11, NULL, 25, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1286, 77, 1, 11, NULL, 26, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1287, 77, 1, 11, NULL, 27, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1288, 77, 1, 12, NULL, 28, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1289, 77, 1, 12, NULL, 29, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1290, 77, 1, 12, NULL, 30, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1291, 77, 1, 12, NULL, 31, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1292, 77, 1, 12, NULL, 32, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1293, 77, 1, 12, NULL, 33, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1294, 77, 1, 12, NULL, 34, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1295, 77, 1, 12, NULL, 35, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1296, 77, 1, 12, NULL, 36, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1297, 77, 1, 12, NULL, 37, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1298, 77, 1, 12, NULL, 38, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1299, 77, 1, 13, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1300, 77, 1, 15, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1301, 77, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1302, 77, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1303, 77, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1304, 77, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1305, 77, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1306, 77, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1307, 77, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1308, 77, 1, 17, NULL, 108, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1309, 77, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1310, 77, 1, 18, NULL, 48, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1311, 77, 1, 18, 29, 49, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1312, 77, 1, 18, 30, 49, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1313, 77, 1, 18, NULL, 50, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1314, 77, 1, 19, 31, 51, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1315, 77, 1, 19, 32, 51, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1316, 77, 1, 19, 33, 51, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1317, 77, 1, 19, NULL, 52, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1318, 77, 1, 19, 34, 53, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1319, 77, 1, 19, 35, 53, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1320, 77, 1, 20, NULL, 54, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1321, 77, 1, 20, NULL, 55, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1322, 77, 1, 20, NULL, 56, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1323, 77, 1, 20, NULL, 57, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1324, 77, 1, 21, NULL, 58, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1325, 77, 1, 22, NULL, 60, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1326, 77, 1, 22, NULL, 61, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1327, 77, 1, 22, NULL, 62, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1328, 77, 1, 22, NULL, 63, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1329, 77, 1, 23, NULL, 64, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1330, 77, 1, 23, NULL, 65, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1331, 77, 1, 23, NULL, 66, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1332, 77, 1, 23, NULL, 67, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1333, 77, 1, 23, NULL, 68, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1334, 77, 1, 23, 36, 69, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1335, 77, 1, 23, 37, 69, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1336, 77, 1, 23, NULL, 70, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1337, 77, 1, 24, NULL, 71, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1338, 77, 1, 24, NULL, 72, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1339, 77, 1, 24, NULL, 73, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1340, 77, 1, 24, NULL, 74, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1341, 77, 1, 24, NULL, 75, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1342, 77, 1, 24, NULL, 76, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1343, 77, 1, 25, NULL, 77, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1344, 77, 1, 25, NULL, 78, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1345, 77, 1, 25, NULL, 79, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1346, 77, 1, 25, NULL, 80, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1347, 77, 1, 25, NULL, 81, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1348, 77, 1, 25, NULL, 82, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1349, 77, 1, 26, NULL, 83, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1350, 77, 1, 26, NULL, 84, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1351, 77, 1, 27, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1352, 77, 2, 28, NULL, 85, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1353, 77, 2, 28, NULL, 86, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1354, 77, 2, 28, NULL, 87, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1355, 77, 2, 28, NULL, 88, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1356, 77, 2, 28, NULL, 89, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1357, 77, 2, 28, NULL, 90, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1358, 77, 2, 28, NULL, 91, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1359, 77, 2, 29, NULL, 93, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1360, 77, 2, 29, NULL, 94, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1361, 77, 2, 29, NULL, 95, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1362, 77, 2, 29, NULL, 96, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1363, 77, 2, 29, NULL, 97, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1364, 77, 2, 29, NULL, 98, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1365, 77, 2, 30, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1366, 77, 2, 31, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1367, 77, 2, 32, 38, 99, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1368, 77, 2, 32, 39, 99, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1369, 77, 2, 32, 40, 99, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1370, 77, 2, 32, 41, 99, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1371, 77, 2, 32, 42, 100, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1372, 77, 2, 32, 43, 100, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1373, 77, 2, 32, 44, 100, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1374, 77, 2, 32, 45, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1375, 77, 2, 32, 46, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1376, 77, 2, 32, 47, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1377, 77, 2, 32, 48, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1378, 77, 2, 32, 49, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1379, 77, 2, 32, 50, 101, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1380, 77, 2, 32, 51, 102, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1381, 77, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1382, 77, 2, 33, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1383, 77, 2, 34, 53, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1384, 77, 2, 34, 54, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1385, 77, 2, 34, 55, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1386, 77, 2, 34, 56, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1387, 77, 2, 34, 57, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1388, 77, 2, 34, 58, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1389, 77, 2, 34, 59, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1390, 77, 2, 34, 60, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1391, 77, 2, 34, 61, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1392, 77, 2, 34, 62, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1393, 77, 2, 34, 63, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1394, 77, 2, 34, 64, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1395, 77, 2, 34, 65, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1396, 77, 2, 34, 66, 104, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1397, 77, 2, 34, 67, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1398, 77, 2, 34, 68, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1399, 77, 2, 34, 69, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1400, 77, 2, 34, 70, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1401, 77, 2, 34, 71, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1402, 77, 2, 34, 72, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1403, 77, 2, 34, 73, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1404, 77, 2, 34, 74, 105, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1405, 77, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1406, 77, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1407, 77, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1408, 77, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1409, 77, 2, 35, NULL, 107, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1410, 77, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1411, 77, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1412, 77, 3, 38, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1413, 77, 3, 39, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1414, 77, 3, 40, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1415, 77, 3, 41, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1416, 77, 3, 42, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1417, 77, 3, 43, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1418, 77, 3, 44, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1419, 77, 3, 45, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1420, 77, 3, 46, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1421, 77, 3, 47, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1422, 77, 3, 48, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1423, 77, 3, 49, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1424, 77, 3, 50, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1425, 77, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1426, 77, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1427, 77, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1428, 77, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1429, 77, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1430, 77, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1431, 77, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1432, 77, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1433, 77, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1434, 77, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1435, 77, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:28:21', '2025-01-27 07:28:21', NULL),
(1436, 78, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:47:43', '2025-01-27 07:47:43', NULL),
(1437, 78, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-27 07:47:43', '2025-01-27 07:47:43', NULL),
(1438, 79, 3, 40, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1439, 79, 3, 41, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1440, 79, 3, 42, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1441, 79, 3, 43, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1442, 79, 3, 44, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1443, 79, 3, 45, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1444, 79, 3, 46, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1445, 79, 3, 47, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1446, 79, 3, 48, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1447, 79, 3, 49, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1448, 79, 3, 50, NULL, NULL, NULL, NULL, NULL, '2025-01-27 08:02:50', '2025-01-27 08:02:50', NULL),
(1449, 80, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1450, 80, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1451, 80, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1452, 80, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1453, 80, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1454, 80, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1455, 80, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1456, 80, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1457, 80, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1458, 80, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1459, 80, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1460, 80, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1461, 80, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1462, 80, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1463, 80, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1464, 80, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1465, 80, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1466, 80, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1467, 80, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1468, 80, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1469, 80, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1470, 80, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-27 08:04:25', '2025-01-27 08:04:37', NULL),
(1471, 80, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1472, 80, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1473, 80, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1474, 80, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1475, 80, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1476, 80, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1477, 80, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1478, 80, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1479, 80, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1480, 80, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1481, 80, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1482, 80, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1483, 80, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1484, 80, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1485, 80, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1486, 80, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1487, 80, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1488, 80, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1489, 80, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1490, 80, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1491, 80, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1492, 80, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1493, 80, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1494, 80, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1495, 80, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1496, 80, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1497, 80, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1498, 80, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1499, 80, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1500, 80, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1501, 80, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1502, 80, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1503, 80, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1504, 80, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1505, 80, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1506, 80, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1507, 80, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1508, 80, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1509, 80, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1510, 80, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1511, 80, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1512, 80, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1513, 80, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1514, 80, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1515, 80, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1516, 80, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1517, 80, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1518, 80, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1519, 80, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1520, 80, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1521, 80, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1522, 80, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1523, 80, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1524, 80, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1525, 80, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1526, 80, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1527, 80, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1528, 80, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1529, 80, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1530, 80, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1531, 80, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1532, 80, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1533, 80, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1534, 80, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1535, 80, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1536, 80, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1537, 80, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1538, 80, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1539, 80, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1540, 80, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1541, 80, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1542, 80, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1543, 80, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1544, 80, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1545, 80, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1546, 80, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1547, 80, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1548, 80, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1549, 80, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1550, 80, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1551, 80, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1552, 80, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1553, 80, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1554, 80, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1555, 80, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1556, 80, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1557, 80, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1558, 80, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1559, 80, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1560, 80, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1561, 80, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1562, 80, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1563, 80, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1564, 80, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1565, 80, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1566, 80, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1567, 80, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1568, 80, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1569, 80, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1570, 80, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1571, 80, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1572, 80, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1573, 80, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1574, 80, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1575, 80, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1576, 80, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1577, 80, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1578, 80, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1579, 80, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1580, 80, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1581, 80, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1582, 80, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1583, 80, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1584, 80, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1585, 80, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1586, 80, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1587, 80, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1588, 80, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1589, 80, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1590, 80, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1591, 80, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1592, 80, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1593, 80, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1594, 80, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1595, 80, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1596, 80, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1597, 80, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1598, 80, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1599, 80, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1600, 80, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1601, 80, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 08:04:26', '2025-01-27 08:04:37', NULL),
(1602, 81, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 15:23:46', '2025-01-27 15:23:56', NULL),
(1603, 81, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 15:23:46', '2025-01-27 15:23:56', NULL),
(1604, 81, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-27 15:23:46', '2025-01-27 15:23:56', NULL),
(1605, 82, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1606, 82, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1607, 82, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1608, 82, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1609, 82, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1610, 82, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1611, 82, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1612, 82, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1613, 82, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1614, 82, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1615, 82, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1616, 82, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-28 22:27:37', '2025-01-28 22:27:48', NULL),
(1617, 83, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1618, 83, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1619, 83, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1620, 83, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1621, 83, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1622, 83, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1623, 83, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1624, 83, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1625, 83, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1626, 83, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1627, 83, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:05:29', '2025-01-29 00:05:40', NULL),
(1628, 84, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:39:29', '2025-01-29 00:39:59', NULL),
(1629, 84, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:39:29', '2025-01-29 00:39:59', NULL),
(1630, 84, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 00:39:29', '2025-01-29 00:39:59', NULL),
(1634, 86, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1635, 86, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1636, 86, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1637, 86, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1638, 86, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1639, 86, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1640, 86, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1641, 86, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1642, 86, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1643, 86, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1644, 86, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1645, 86, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1646, 86, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1647, 86, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 06:47:08', '2025-01-29 06:47:59', NULL),
(1648, 87, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 23:40:59', '2025-01-29 23:41:24', NULL),
(1649, 87, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 23:40:59', '2025-01-29 23:41:24', NULL),
(1650, 87, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-29 23:40:59', '2025-01-29 23:41:24', NULL),
(1651, 88, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-29 23:49:46', '2025-01-29 23:49:46', NULL),
(1652, 88, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-29 23:49:46', '2025-01-29 23:49:46', NULL),
(1653, 88, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-29 23:49:46', '2025-01-29 23:49:46', NULL),
(1654, 89, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1655, 89, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1656, 89, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1657, 89, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1658, 89, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1659, 89, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1660, 89, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1661, 89, 1, 17, NULL, 108, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1662, 89, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1663, 90, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1664, 90, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1665, 90, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1666, 90, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1667, 90, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1668, 90, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1669, 90, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1670, 90, 1, 17, NULL, 108, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1671, 90, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-30 00:34:12', '2025-01-30 00:34:12', NULL),
(1672, 91, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-30 22:54:25', '2025-01-30 22:54:25', NULL),
(1673, 91, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-30 22:54:25', '2025-01-30 22:54:25', NULL),
(1674, 91, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-30 22:54:25', '2025-01-30 22:54:25', NULL),
(1675, 92, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:53', '2025-01-31 15:14:53', NULL),
(1676, 92, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:53', '2025-01-31 15:14:53', NULL),
(1677, 92, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:54', '2025-01-31 15:14:54', NULL),
(1678, 93, 5, 53, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:54', '2025-01-31 15:14:54', NULL),
(1679, 93, 5, 54, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:54', '2025-01-31 15:14:54', NULL),
(1680, 93, 5, 55, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:14:54', '2025-01-31 15:14:54', NULL),
(1693, 95, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1694, 95, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1695, 95, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1696, 95, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1697, 95, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1698, 95, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1699, 95, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1700, 95, 1, 17, NULL, 108, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1701, 95, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1702, 95, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1703, 95, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1704, 95, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1705, 96, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1706, 96, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1707, 96, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1708, 96, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1709, 96, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1710, 96, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1711, 96, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1712, 96, 1, 17, NULL, 108, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1713, 96, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1714, 96, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1715, 96, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL);
INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`, `paket_id`) VALUES
(1716, 96, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 15:36:48', '2025-01-31 15:36:48', NULL),
(1717, 97, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1718, 97, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1719, 97, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1720, 97, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1721, 97, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1722, 97, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1723, 97, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1724, 97, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1725, 97, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1726, 97, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1727, 97, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1728, 97, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1729, 98, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1730, 98, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1731, 98, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1732, 98, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1733, 98, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1734, 98, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1735, 98, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1736, 98, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1737, 98, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1738, 98, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1739, 98, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1740, 98, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1741, 99, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1742, 99, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1743, 99, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1744, 99, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1745, 99, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1746, 99, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1747, 99, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1748, 99, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1749, 99, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1750, 99, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1751, 99, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1752, 99, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1753, 100, 1, 23, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL),
(1754, 100, 2, 34, 75, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1755, 100, 2, 34, 76, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1756, 100, 2, 34, 77, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1757, 100, 2, 34, 78, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1758, 100, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1759, 100, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1760, 100, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1761, 101, 1, 23, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL),
(1762, 101, 2, 34, 75, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1763, 101, 2, 34, 76, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1764, 101, 2, 34, 77, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1765, 101, 2, 34, 78, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(1766, 101, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1767, 101, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1768, 101, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1769, 102, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1770, 102, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1771, 102, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1772, 102, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1773, 102, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1774, 102, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1775, 102, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1776, 102, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1777, 102, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1778, 103, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1779, 103, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1780, 103, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1781, 103, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1782, 103, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1783, 103, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1784, 103, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1785, 103, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1786, 103, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1787, 104, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1788, 104, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1789, 104, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1790, 104, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1791, 104, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1792, 104, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1793, 104, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1794, 104, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1795, 104, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1796, 105, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1797, 105, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1798, 105, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1799, 105, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1800, 105, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1801, 105, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1802, 105, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1803, 105, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1804, 105, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1805, 106, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1806, 106, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1807, 106, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1808, 106, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1809, 106, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1810, 106, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1811, 106, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1812, 106, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1813, 106, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1814, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1815, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1816, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1817, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1818, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1819, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1820, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1821, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1822, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1823, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1824, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1825, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1826, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1827, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1828, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1829, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1830, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1831, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1832, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1833, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1834, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1835, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1836, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1837, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1838, 107, 6, 56, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1839, 107, 6, 57, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1840, 107, 6, 58, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:23:55', '2025-01-31 18:23:55', NULL),
(1841, 107, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1842, 107, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1843, 107, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1844, 107, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1845, 107, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1846, 107, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1847, 107, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1848, 107, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1849, 107, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1850, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1851, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1852, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1853, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1854, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1855, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1856, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1857, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1858, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1859, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1860, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1861, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1862, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1863, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1864, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1865, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1866, 108, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1867, 108, 4, 52, NULL, NULL, NULL, NULL, NULL, '2025-01-31 18:25:40', '2025-01-31 18:25:40', NULL),
(1868, 108, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1869, 108, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1870, 108, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1871, 108, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1872, 108, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1873, 108, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1874, 108, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1875, 108, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1876, 108, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1888, 110, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1889, 110, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1890, 110, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1891, 110, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1892, 110, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1893, 110, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1894, 110, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1895, 110, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1896, 110, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1897, 110, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1898, 110, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1899, 110, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1900, 110, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1901, 110, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1902, 111, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1903, 111, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1904, 111, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1905, 111, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1906, 111, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1907, 111, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1908, 111, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1909, 111, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1910, 111, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1911, 111, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1912, 111, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1913, 111, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1914, 111, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1915, 111, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1916, 112, 4, 51, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1917, 112, 4, 52, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1918, 112, 1, 16, NULL, 39, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1919, 112, 1, 16, NULL, 40, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1920, 112, 1, 16, NULL, 41, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1921, 112, 1, 17, NULL, 42, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1922, 112, 1, 17, NULL, 43, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1923, 112, 1, 17, NULL, 44, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1924, 112, 1, 17, NULL, 46, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1925, 112, 1, 17, NULL, 108, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1926, 112, 1, 18, NULL, 47, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1927, 112, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1928, 112, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1929, 112, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:45:21', NULL),
(1930, 113, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1931, 113, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1932, 113, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1933, 113, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1934, 113, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1935, 113, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1936, 113, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1937, 113, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1938, 113, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1939, 113, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1940, 113, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1941, 113, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1942, 113, 5, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1943, 113, 5, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1944, 113, 5, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1945, 114, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1946, 114, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1947, 114, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1948, 114, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1949, 114, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1950, 114, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1951, 114, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1952, 114, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1953, 114, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1954, 114, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1955, 114, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1956, 114, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1957, 114, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1958, 114, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1960, 116, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 19:30:10', '2025-01-31 19:30:10', NULL),
(1974, 118, 4, 51, NULL, NULL, NULL, NULL, NULL, '2025-01-31 19:37:58', '2025-01-31 19:37:58', NULL),
(1975, 120, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1976, 120, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(1977, 120, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(1978, 120, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(1979, 120, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(1980, 120, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(1981, 120, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(1982, 120, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(1983, 120, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(1984, 120, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(1995, 125, 4, 51, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', NULL),
(1996, 125, 1, 16, NULL, 39, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(1997, 125, 1, 16, NULL, 40, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(1998, 125, 1, 16, NULL, 41, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(1999, 125, 1, 17, NULL, 42, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2000, 125, 1, 17, NULL, 43, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2001, 125, 1, 17, NULL, 44, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2002, 125, 1, 17, NULL, 46, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2003, 125, 1, 17, NULL, 108, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2004, 125, 1, 18, NULL, 47, 'N/A', NULL, NULL, NULL, '2025-01-31 20:28:31', 22),
(2042, 129, 1, 16, NULL, 39, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2043, 129, 1, 16, NULL, 40, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2044, 129, 1, 16, NULL, 41, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2045, 129, 1, 17, NULL, 42, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2046, 129, 1, 17, NULL, 43, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2047, 129, 1, 17, NULL, 44, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2048, 129, 1, 17, NULL, 46, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2049, 129, 1, 17, NULL, 108, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2050, 129, 1, 18, NULL, 47, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 22),
(2051, 129, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 23),
(2052, 129, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 23),
(2053, 129, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-01-31 22:45:32', 23),
(2054, 130, 4, 51, NULL, NULL, 'Ambang Dengar Dalam batas normal', NULL, NULL, NULL, '2025-02-01 05:16:19', 28),
(2055, 130, 4, 52, NULL, NULL, 'Ambang Dengar Dalam batas normal', NULL, NULL, NULL, '2025-02-01 05:16:19', 28),
(2056, 131, 1, 23, NULL, 68, NULL, NULL, NULL, NULL, NULL, 10),
(2057, 131, 2, 34, 75, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2058, 131, 2, 34, 76, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2059, 131, 2, 34, 77, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2060, 131, 2, 34, 78, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2061, 131, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2062, 131, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2063, 131, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2064, 132, 1, 23, NULL, 68, NULL, NULL, NULL, NULL, NULL, 10),
(2065, 132, 2, 34, 75, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2066, 132, 2, 34, 76, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2067, 132, 2, 34, 77, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2068, 132, 2, 34, 78, 106, NULL, NULL, NULL, NULL, NULL, 10),
(2069, 132, 6, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2070, 132, 6, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2071, 132, 6, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(2072, 133, 1, 16, NULL, 39, NULL, NULL, NULL, NULL, NULL, 22),
(2073, 133, 1, 16, NULL, 40, NULL, NULL, NULL, NULL, NULL, 22),
(2074, 133, 1, 16, NULL, 41, NULL, NULL, NULL, NULL, NULL, 22),
(2075, 133, 1, 17, NULL, 42, NULL, NULL, NULL, NULL, NULL, 22),
(2076, 133, 1, 17, NULL, 43, NULL, NULL, NULL, NULL, NULL, 22),
(2077, 133, 1, 17, NULL, 44, NULL, NULL, NULL, NULL, NULL, 22),
(2078, 133, 1, 17, NULL, 46, NULL, NULL, NULL, NULL, NULL, 22),
(2079, 133, 1, 17, NULL, 108, NULL, NULL, NULL, NULL, NULL, 22),
(2080, 133, 1, 18, NULL, 47, NULL, NULL, NULL, NULL, NULL, 22),
(2081, 133, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28),
(2082, 133, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28),
(2083, 134, 2, 34, 78, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 05:29:16', NULL),
(2084, 134, 4, 51, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 05:29:16', 28),
(2085, 134, 4, 52, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 05:29:16', 28),
(2086, 135, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:20:14', 13),
(2087, 135, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:20:14', 13),
(2088, 135, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:20:14', 13),
(2107, 139, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:19:22', 27),
(2108, 139, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:19:22', 27),
(2109, 139, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:19:22', 27),
(2113, 141, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:30:30', 27),
(2114, 141, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:30:30', 27),
(2115, 141, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:30:30', 27),
(2116, 142, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:29:40', 7),
(2117, 142, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:29:40', 7),
(2118, 142, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:29:40', 7),
(2119, 143, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 08:01:11', 7),
(2120, 143, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 08:01:11', 7),
(2121, 143, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 08:01:11', 7),
(2122, 144, 6, 56, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:47:24', 7),
(2123, 144, 6, 57, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:47:24', 7),
(2124, 144, 6, 58, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 07:47:24', 7),
(2125, 145, 2, 34, 75, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:10:43', 26),
(2126, 145, 2, 34, 76, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:10:43', 26),
(2127, 145, 2, 34, 77, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:10:43', 26),
(2128, 145, 2, 34, 78, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:10:43', 26),
(2129, 146, 2, 34, 75, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:15:03', 26),
(2130, 146, 2, 34, 76, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:15:03', 26),
(2131, 146, 2, 34, 77, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:15:03', 26),
(2132, 146, 2, 34, 78, 106, 'N/A', NULL, NULL, NULL, '2025-02-01 08:15:03', 26),
(2133, 147, 4, 51, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 16:30:17', 28),
(2134, 147, 4, 52, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-01 16:30:17', 28),
(2135, 148, 4, 51, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-02 15:11:44', 28),
(2136, 148, 4, 52, NULL, NULL, 'N/A', NULL, NULL, NULL, '2025-02-02 15:11:44', 28),
(2137, 149, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28),
(2138, 149, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Table structure for table `mcu`
--

CREATE TABLE `mcu` (
  `id` int(11) NOT NULL,
  `nama_mcu` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mcu`
--

INSERT INTO `mcu` (`id`, `nama_mcu`, `updated_at`, `created_at`) VALUES
(1, 'FISIK', '2024-11-13 10:06:57', '2024-11-13 10:04:27'),
(2, 'LABORATORIUM / PATOLOGI', '2024-11-14 09:33:11', '2024-11-13 10:05:48'),
(3, 'EKG', '2024-11-13 10:06:51', '2024-11-13 10:06:51'),
(4, 'AUDIOMETRI', '2024-11-13 10:07:14', '2024-11-13 10:07:14'),
(5, 'SPIROMETRI', '2024-11-13 10:07:23', '2024-11-13 10:07:23'),
(6, 'RONTGEN THORAX', '2024-11-13 10:07:37', '2024-11-13 10:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pemeriksaans`
--

CREATE TABLE `metode_pemeriksaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `nilai_normal` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metode_pemeriksaans`
--

INSERT INTO `metode_pemeriksaans` (`id`, `name`, `created_at`, `updated_at`, `id_bidang`, `harga`, `nilai_normal`, `satuan`) VALUES
(23, 'Keluhan Sekarang', '2025-01-13 20:50:31', '2025-01-13 20:50:31', 10, '35000', 'Tidak Ada / Ada', NULL),
(24, 'HPHT', '2025-01-13 20:52:45', '2025-01-13 20:52:45', 10, '35000', 'Tidak Ada / Ada', NULL),
(25, 'Riwayat Inap/Operasi', '2025-01-13 20:53:32', '2025-01-13 20:53:32', 11, '27000', 'Tidak Ada / Ada', NULL),
(26, 'Patah Tulang', '2025-01-13 20:53:45', '2025-01-13 20:54:50', 11, '35000', 'Tidak Ada / Ada', NULL),
(27, 'Riwayat Pengobatan', '2025-01-13 20:54:39', '2025-01-13 20:54:39', 11, '35000', 'Tidak Ada / Ada', NULL),
(28, 'Asthma', '2025-01-13 20:55:15', '2025-01-13 20:55:15', 12, '27000', 'Tidak Ada / Ada', NULL),
(29, 'Penyakit Paru (TBC,dll)', '2025-01-13 20:56:00', '2025-01-13 20:56:00', 12, '35000', 'Tidak Ada / Ada', NULL),
(30, 'Penyakit Jantung', '2025-01-13 20:56:19', '2025-01-13 20:56:19', 12, '35000', 'Tidak Ada / Ada', NULL),
(31, 'Penyakit Darah Tinggi/Rendah', '2025-01-13 20:56:48', '2025-01-13 20:56:48', 12, '35000', 'Tidak Ada / Ada', NULL),
(32, 'Penyakit Stroke', '2025-01-13 21:00:19', '2025-01-13 21:00:19', 12, '35000', 'Tidak Ada / Ada', NULL),
(33, 'Penyakit Kencing Manis', '2025-01-13 21:02:30', '2025-01-13 21:02:30', 12, '35000', 'Tidak Ada / Ada', NULL),
(34, 'Penyakit Ginjal', '2025-01-13 21:02:46', '2025-01-13 21:02:46', 12, '27000', 'Tidak Ada / Ada', NULL),
(35, 'Penyakit Haemorrhoid', '2025-01-13 21:03:16', '2025-01-13 21:03:16', 12, '27000', 'Tidak Ada / Ada', NULL),
(36, 'Penyakit Kanker', '2025-01-13 21:03:32', '2025-01-13 21:03:32', 12, '35000', 'Tidak Ada / Ada', NULL),
(37, 'Penyakit Alergi', '2025-01-13 21:03:46', '2025-01-13 21:03:46', 12, '27000', 'Tidak Ada / Ada', NULL),
(38, 'Penyakit Lain-lain', '2025-01-13 21:04:04', '2025-01-13 21:04:04', 12, '35000', 'Tidak Ada / Ada', NULL),
(39, 'Olahraga', '2025-01-13 21:30:57', '2025-01-13 21:30:57', 16, NULL, 'Tidak Ada / Ada', NULL),
(40, 'Merokok', '2025-01-13 21:31:13', '2025-01-13 21:31:13', 16, NULL, 'Tidak Ada / Ada', NULL),
(41, 'Minum Alkohol', '2025-01-13 21:31:26', '2025-01-13 21:31:26', 16, NULL, 'Tidak Ada / Ada', NULL),
(42, 'Tinggi Badan', '2025-01-13 21:39:01', '2025-01-13 21:39:01', 17, NULL, NULL, 'Cm'),
(43, 'Berat Badan', '2025-01-13 21:39:24', '2025-01-13 21:39:24', 17, NULL, NULL, 'Kg'),
(44, 'Tekanan Darah', '2025-01-13 21:48:39', '2025-01-13 21:48:39', 17, NULL, NULL, 'mmHg.'),
(45, 'Nadi', '2025-01-13 21:48:54', '2025-01-13 21:48:54', 10, NULL, NULL, 'x/menit'),
(46, 'Pernafasan', '2025-01-13 21:49:21', '2025-01-13 21:49:21', 17, NULL, NULL, 'x/menit'),
(47, 'Buta Warna', '2025-01-13 21:51:55', '2025-01-13 21:51:55', 18, NULL, 'Tidak Ada / Ada', NULL),
(48, 'Kacamata', '2025-01-13 21:52:13', '2025-01-13 21:52:13', 18, NULL, 'Tidak Ada / Ada', NULL),
(49, 'Ketajaman Penglihatan', '2025-01-13 21:52:34', '2025-01-13 21:52:34', 18, NULL, NULL, NULL),
(50, 'Kelainan Mata Lain', '2025-01-13 21:52:50', '2025-01-13 21:52:50', 18, NULL, NULL, NULL),
(51, 'Telinga', '2025-01-13 21:56:12', '2025-01-13 21:56:12', 19, NULL, NULL, NULL),
(52, 'Hidung', '2025-01-13 21:56:22', '2025-01-13 21:56:22', 19, NULL, NULL, NULL),
(53, 'Tenggorokan', '2025-01-13 21:56:33', '2025-01-13 21:56:33', 19, NULL, NULL, NULL),
(54, 'Oral Hygiene', '2025-01-13 22:12:17', '2025-01-13 22:13:06', 20, '28000', 'Cukup / Tidak Cukup', NULL),
(55, 'Lidah', '2025-01-13 22:12:44', '2025-01-13 22:12:44', 20, NULL, 'Normal / Tidak Normal', NULL),
(56, 'Gusi', '2025-01-13 22:13:24', '2025-01-13 22:13:37', 20, '35000', 'Normal / Tidak Normal', NULL),
(57, 'Gigi', '2025-01-13 22:14:19', '2025-01-13 22:14:19', 20, NULL, 'Karang / Tidak', NULL),
(58, 'Bentuk', '2025-01-13 22:14:44', '2025-01-13 22:14:44', 21, NULL, 'Normal / Tidak Normal', NULL),
(59, 'Tyroid', '2025-01-13 22:14:59', '2025-01-13 22:14:59', 10, NULL, 'Normal / Tidak Normal', NULL),
(60, 'Bentuk', '2025-01-13 22:15:23', '2025-01-13 22:15:23', 22, NULL, 'Normal / Tidak Normal', NULL),
(61, 'Paru-paru', '2025-01-13 22:16:51', '2025-01-13 22:19:14', 22, NULL, 'Normal / Tidak Normal', NULL),
(62, 'Jantung', '2025-01-13 22:17:22', '2025-01-13 22:19:19', 22, NULL, 'Normal / Tidak Normal', NULL),
(63, 'Payudara', '2025-01-13 22:17:34', '2025-01-13 22:19:24', 22, NULL, 'Normal / Tidak Normal', NULL),
(64, 'Bentuk', '2025-01-13 22:18:43', '2025-01-13 22:18:43', 23, NULL, 'Normal / Tidak Normal', NULL),
(65, 'Palpasi', '2025-01-13 22:19:40', '2025-01-13 22:19:40', 23, NULL, 'Normal / Tidak Normal', NULL),
(66, 'Auskultasi', '2025-01-13 22:20:10', '2025-01-13 22:20:10', 23, NULL, 'Normal / Tidak Normal', NULL),
(67, 'Hati', '2025-01-13 22:20:36', '2025-01-13 22:20:43', 23, NULL, 'Tidak Teraba / Teraba', NULL),
(68, 'Limpa', '2025-01-13 22:21:02', '2025-01-13 22:21:02', 23, NULL, 'Tidak Teraba / Teraba', NULL),
(69, 'Ginjal', '2025-01-13 22:21:22', '2025-01-13 22:21:22', 23, NULL, NULL, NULL),
(70, 'Lain-lain', '2025-01-13 22:21:42', '2025-01-13 22:21:42', 23, NULL, 'Normal / Tidak Normal', NULL),
(71, 'Tulang/Sendi', '2025-01-13 22:24:40', '2025-01-13 22:24:40', 24, NULL, 'Normal / Tidak Normal', NULL),
(72, 'Tulang Belakang', '2025-01-13 22:24:53', '2025-01-13 22:24:53', 24, NULL, 'Normal / Tidak Normal', NULL),
(73, 'Otot-otot/Tonus', '2025-01-13 22:25:23', '2025-01-13 22:25:30', 24, NULL, 'Normal / Tidak Normal', NULL),
(74, 'Jari-jari/Kuku', '2025-01-13 22:26:00', '2025-01-13 22:26:00', 24, NULL, 'Normal / Tidak Normal', NULL),
(75, 'Tangan', '2025-01-13 22:26:12', '2025-01-13 22:26:12', 24, NULL, 'Normal / Tidak Normal', NULL),
(76, 'Kaki', '2025-01-13 22:26:29', '2025-01-13 22:26:29', 24, NULL, 'Normal / Tidak Normal', NULL),
(77, 'Reflex Fisiologis', '2025-01-13 22:29:13', '2025-01-13 22:29:13', 25, NULL, 'Normal / Tidak Normal', NULL),
(78, 'Reflex Patologis', '2025-01-13 22:29:31', '2025-01-13 22:29:31', 25, NULL, 'Tidak Ada / Ada', NULL),
(79, 'Aktifitas Reflex', '2025-01-13 22:29:48', '2025-01-13 22:29:48', 25, NULL, 'Normal / Tidak Normal', NULL),
(80, 'Kekuatan Motorik', '2025-01-13 22:30:20', '2025-01-13 22:30:20', 25, NULL, 'Normal / Tidak Normal', NULL),
(81, 'Kelainan Syaraf Pusat', '2025-01-13 22:30:35', '2025-01-13 22:30:35', 25, NULL, 'Tidak Ada / Ada', NULL),
(82, 'Kelainan Syaraf Tepi', '2025-01-13 22:30:58', '2025-01-13 22:30:58', 25, NULL, 'Tidak Ada / Ada', NULL),
(83, 'Warna Kulit', '2025-01-13 22:32:28', '2025-01-13 22:32:28', 26, NULL, 'Normal / Tidak Normal', NULL),
(84, 'Kelainan Kulit', '2025-01-13 22:32:43', '2025-01-13 22:32:43', 26, NULL, 'Normal / Tidak Normal', NULL),
(85, 'Hemoglobin', '2025-01-14 01:58:04', '2025-01-14 01:58:04', 28, NULL, 'P(13 - 18), W(12 - 16)', 'g/dL'),
(86, 'Leukosit', '2025-01-14 01:58:44', '2025-01-14 01:58:44', 28, NULL, '4 - 11', '10^3/uL'),
(87, 'Hematokrit', '2025-01-14 01:59:18', '2025-01-14 01:59:18', 28, NULL, 'P(40 - 54), W(37 - 46)', '%'),
(88, 'Trombosit', '2025-01-14 01:59:58', '2025-01-14 01:59:58', 28, NULL, '150 - 450', '10^3/uL'),
(89, 'Eritrosit', '2025-01-14 02:00:33', '2025-01-14 02:00:33', 28, NULL, 'P(4.50 - 5.90), W(3.90 - 5.40)', '10^6/uL'),
(90, 'MCV', '2025-01-14 02:01:06', '2025-01-14 02:01:06', 28, NULL, '82 - 92', 'fL'),
(91, 'MCH', '2025-01-14 02:01:57', '2025-01-14 02:01:57', 28, NULL, '27 – 31', 'Pg'),
(92, 'MCHC', '2025-01-14 02:02:23', '2025-01-14 02:02:23', 10, NULL, '31 – 37', 'g/dL'),
(93, 'Basofil', '2025-01-14 02:03:23', '2025-01-14 02:03:23', 29, NULL, '0 - 1', '%'),
(94, 'Eosinofil', '2025-01-14 02:03:50', '2025-01-14 02:03:50', 29, NULL, '1 - 3', '%'),
(95, 'Neutrofil Batang', '2025-01-14 02:04:16', '2025-01-14 02:04:16', 29, NULL, '2 - 6', '%'),
(96, 'Neutrofil Segmen', '2025-01-14 02:04:57', '2025-01-14 02:04:57', 29, NULL, '50 - 70', '%'),
(97, 'Limfosit', '2025-01-14 02:05:20', '2025-01-14 02:05:20', 29, NULL, '20 - 40', '%'),
(98, 'Monosit', '2025-01-14 02:05:44', '2025-01-14 02:05:44', 29, NULL, '2 - 8', '%'),
(99, 'Lemak Darah', '2025-01-14 02:08:23', '2025-01-14 02:08:23', 32, NULL, NULL, NULL),
(100, 'Fungsi Ginjal', '2025-01-14 20:01:05', '2025-01-14 20:01:05', 32, NULL, NULL, NULL),
(101, 'Fungsi Hati', '2025-01-14 20:01:38', '2025-01-14 20:01:38', 32, NULL, NULL, NULL),
(102, 'Glukosa Darah', '2025-01-14 20:01:54', '2025-01-14 20:01:54', 32, NULL, NULL, NULL),
(104, 'Makroskopis', '2025-01-16 04:58:51', '2025-01-16 04:58:51', 34, NULL, NULL, NULL),
(105, 'Mikroskopis', '2025-01-16 04:59:07', '2025-01-16 04:59:07', 34, NULL, NULL, NULL),
(106, 'Narkoba Test', '2025-01-16 04:59:20', '2025-01-16 04:59:20', 34, NULL, NULL, NULL),
(107, 'Alcohol Test', '2025-01-16 05:31:34', '2025-01-16 05:31:34', 35, NULL, 'Negatif', NULL),
(108, 'Nadi', '2025-01-22 01:48:18', '2025-01-22 01:48:18', 17, '35000', NULL, 'x/menit');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_09_132125_create_roles_table', 1),
(6, '2023_06_09_232541_create_pasiens_table', 1),
(7, '2023_06_10_023100_create_bidang_pemeriksaans_table', 1),
(8, '2023_06_10_030255_create_metode_pemeriksaans_table', 1),
(9, '2023_06_10_031313_create_parameter_pemeriksaans_table', 1),
(10, '2023_06_10_035621_create_statuses_table', 1),
(11, '2023_06_10_041228_pemeriksaan', 1),
(12, '2023_06_10_041313_keterangan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `nama_paket` varchar(255) DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL,
  `marketing` int(11) DEFAULT NULL,
  `total_harga` varchar(255) DEFAULT NULL,
  `diskon_persen` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `nama_paket`, `perusahaan_id`, `marketing`, `total_harga`, `diskon_persen`, `diskon_rupiah`, `created_at`, `updated_at`) VALUES
(6, 'Paket Front One asa', 4, NULL, NULL, NULL, NULL, '2025-01-24 15:51:50', '2025-01-24 15:51:50'),
(7, 'sasa', 4, NULL, NULL, NULL, NULL, '2025-01-24 16:04:14', '2025-01-24 16:04:14'),
(8, 'sdds', 4, NULL, NULL, NULL, NULL, '2025-01-24 16:08:24', '2025-01-24 16:08:24'),
(9, 'Paket Front One New Year', 3, NULL, NULL, NULL, NULL, '2025-01-24 16:10:26', '2025-01-24 16:10:26'),
(10, 'Paket Fave Hotel Rungkut Surabaya', 5, NULL, NULL, NULL, NULL, '2025-01-25 03:34:50', '2025-01-25 03:34:50'),
(11, 'Paket coba', 3, NULL, NULL, NULL, NULL, '2025-01-27 15:01:19', '2025-01-27 15:01:19'),
(12, 'Pakte Vafe hemat', 5, NULL, NULL, NULL, NULL, '2025-01-29 12:26:04', '2025-01-29 12:26:04'),
(13, 'paket hemat coy', 5, NULL, '83000', NULL, NULL, '2025-01-29 12:28:32', '2025-01-29 12:28:32'),
(14, 'paket front jos', 3, 1, '446000', NULL, NULL, '2025-01-29 12:44:00', '2025-01-29 12:44:00'),
(19, 'paket fornt diskon perse', 3, NULL, '94080', '4', NULL, '2025-01-29 13:08:45', '2025-01-29 13:08:45'),
(20, '10', 4, NULL, '88200', '10', NULL, '2025-01-29 13:09:23', '2025-01-29 13:09:23'),
(21, '121', 3, NULL, '36000', NULL, '47000', '2025-01-29 13:10:00', '2025-01-29 13:10:00'),
(22, 'Paket Fisik', NULL, NULL, '34300', '2', NULL, '2025-01-29 16:16:42', '2025-01-29 16:16:42'),
(23, 'Paket Thorax', NULL, NULL, '73000', NULL, '10000', '2025-01-30 22:37:50', '2025-01-30 22:37:50'),
(24, 'Paket thorax murah', NULL, NULL, '30000', NULL, NULL, '2025-01-30 23:02:23', '2025-01-30 23:02:23'),
(25, 'paket spirometiri murah', NULL, NULL, '70700', NULL, '', '2025-01-30 23:05:44', '2025-01-30 23:05:44'),
(26, 'Paket Napza 4 Parameter', NULL, NULL, '93120', '4', NULL, '2025-02-01 12:10:49', '2025-02-01 12:10:49'),
(27, 'Paket Thorax full murah', NULL, NULL, '30000', NULL, NULL, '2025-02-01 12:11:36', '2025-02-01 12:11:36'),
(28, 'Paket Audiometri PT Minyak Anda', 6, NULL, '55000', NULL, '7000', '2025-02-01 12:12:52', '2025-02-01 12:12:52'),
(29, 'Paket Fisiksasassa', NULL, NULL, '82170', '1', NULL, '2025-02-02 00:24:10', '2025-02-02 00:24:10'),
(30, 'Paket Front One New Yearsss', 5, NULL, '103000', NULL, NULL, '2025-02-02 00:29:30', '2025-02-02 00:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `parameter_pemeriksaans`
--

CREATE TABLE `parameter_pemeriksaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metode_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `nilai_rujukan` varchar(255) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameter_pemeriksaans`
--

INSERT INTO `parameter_pemeriksaans` (`id`, `metode_id`, `parameter`, `nilai_rujukan`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(29, 49, 'Tanpa Kacamata', 'OD : 6/60 , OS : 6/60', 'OD', 29000, '2025-01-13 21:54:28', '2025-01-13 21:54:28'),
(30, 49, 'Dengan Kacamata', 'OD : 6/6, OS : 6/6', 'OD / OS', 35000, '2025-01-13 21:55:34', '2025-01-13 21:55:34'),
(31, 51, 'Bentuk', 'Normal / Tidak Normal', '-', 28000, '2025-01-13 21:58:17', '2025-01-13 21:58:17'),
(32, 51, 'Lubang Telinga', 'Normal / Tidak Normal', '-', 35000, '2025-01-13 21:59:03', '2025-01-13 21:59:03'),
(33, 51, 'Membran Tympani', 'Normal / Tidak Normal', '-', 27000, '2025-01-13 21:59:57', '2025-01-13 21:59:57'),
(34, 53, 'Faring', 'Normal / Tidak Normal', '-', 35000, '2025-01-13 22:00:27', '2025-01-13 22:00:27'),
(35, 53, 'Tonsil', 'T1 - T1', '-', 29000, '2025-01-13 22:01:06', '2025-01-13 22:01:06'),
(36, 69, 'Test Ketok', 'Negatif', '-', 35000, '2025-01-13 22:22:28', '2025-01-13 22:22:28'),
(37, 69, 'Ballotement', 'Tidak ada', '-', 27000, '2025-01-13 22:23:08', '2025-01-13 22:23:08'),
(38, 99, 'Cholesterol Total', '< 200', 'mg/dl', 35000, '2025-01-14 20:12:08', '2025-01-14 20:12:08'),
(39, 99, 'Trigliserida', '< 150', 'mg/dl', 35000, '2025-01-14 20:12:50', '2025-01-14 20:12:50'),
(40, 99, 'HDL', '>40', 'mg/dl', 35000, '2025-01-14 20:13:33', '2025-01-14 20:13:33'),
(41, 99, 'LDL', '< 100', 'mg/dl', 35000, '2025-01-14 20:14:10', '2025-01-14 20:14:10'),
(42, 100, 'Ureum', '10 - 50', 'mg/dl', 35000, '2025-01-14 22:57:06', '2025-01-14 22:57:06'),
(43, 100, 'Kreatinin', '0.7 - 1.5', 'mg/dl', 35000, '2025-01-14 23:01:28', '2025-01-14 23:01:28'),
(44, 100, 'Asam Urat', 'P(3.4 - 7.2), W(2.4 - 6.0)', 'mg/dl', 35000, '2025-01-15 05:19:54', '2025-01-15 05:19:54'),
(45, 101, 'Bilirubuin Total', '0 – 1.00', 'mg/dl', 35000, '2025-01-15 18:48:46', '2025-01-15 18:48:46'),
(46, 101, 'Total Protein', '6.6 – 8.7', 'g/dL', 35000, '2025-01-15 18:49:23', '2025-01-15 18:49:23'),
(47, 101, 'Albumin', '3.4 – 4.8', 'g/dL', 35000, '2025-01-16 04:53:22', '2025-01-16 04:53:22'),
(48, 101, 'Alkali Phosphatase', 'Dewasa < 258', 'U/L', 27000, '2025-01-16 04:53:59', '2025-01-16 04:53:59'),
(49, 101, 'SGOT', '<=33', 'U/L', 35000, '2025-01-16 04:54:29', '2025-01-16 04:54:29'),
(50, 101, 'SGPT', '<=50', 'U/L', 35000, '2025-01-16 04:55:00', '2025-01-16 04:55:00'),
(51, 102, 'Gula Darah Puasa', '< 100', 'mg/dL', 35000, '2025-01-16 04:55:37', '2025-01-16 04:55:37'),
(52, 102, 'Gula Darah 2 Jam PP', '< 140', 'mg/dl', 29000, '2025-01-16 04:56:06', '2025-01-16 04:56:06'),
(53, 104, 'Warna', 'Kuning', NULL, NULL, '2025-01-16 05:00:00', '2025-01-16 05:06:03'),
(54, 104, 'Kejernihan', 'Jernih', 'Jernih', 35000, '2025-01-16 05:06:52', '2025-01-21 18:53:19'),
(55, 104, 'Berat Jenis', '1.005 - 1.030', NULL, NULL, '2025-01-16 05:07:18', '2025-01-16 05:07:18'),
(56, 104, 'Eritrosit', 'Negatif', NULL, NULL, '2025-01-16 05:10:34', '2025-01-16 05:10:34'),
(57, 104, 'Lekosit Esterase', 'Negatif', NULL, NULL, '2025-01-16 05:11:14', '2025-01-16 05:11:14'),
(58, 104, 'Ph', '5.0 - 8.0', NULL, NULL, '2025-01-16 05:12:24', '2025-01-16 05:12:24'),
(59, 104, 'Protein', 'Negatif', NULL, NULL, '2025-01-16 05:13:27', '2025-01-16 05:13:27'),
(60, 104, 'Glukosa', 'Negatif', NULL, NULL, '2025-01-16 05:14:03', '2025-01-16 05:14:03'),
(61, 104, 'Keton Urine', 'Negatif', 'mg/dl', NULL, '2025-01-16 05:15:07', '2025-01-21 18:52:03'),
(62, 104, 'Urobilinogen', 'Negatif', NULL, NULL, '2025-01-16 05:15:55', '2025-01-16 05:15:55'),
(63, 104, 'Bilirubin', 'Negatif', NULL, NULL, '2025-01-16 05:16:23', '2025-01-16 05:16:23'),
(64, 104, 'Urobilin', 'Negatif', NULL, NULL, '2025-01-16 05:17:07', '2025-01-16 05:17:07'),
(65, 104, 'Nitrit', 'Negatif', NULL, NULL, '2025-01-16 05:17:25', '2025-01-16 05:17:25'),
(66, 104, 'Darah Samar', 'Negatif', NULL, NULL, '2025-01-16 05:17:45', '2025-01-16 05:17:45'),
(67, 105, 'Lekosit', '0 - 5', '/LPB', NULL, '2025-01-16 05:18:31', '2025-01-16 05:18:49'),
(68, 105, 'Eritrosit', '0 - 3', '/LPB', NULL, '2025-01-16 05:19:44', '2025-01-16 05:19:44'),
(69, 105, 'Epitel', 'Positif', NULL, NULL, '2025-01-16 05:20:22', '2025-01-16 05:20:22'),
(70, 105, 'Silinder', 'Negatif', NULL, NULL, '2025-01-16 05:20:48', '2025-01-16 05:20:48'),
(71, 105, 'Kristal', 'Negatif', NULL, NULL, '2025-01-16 05:21:36', '2025-01-16 05:21:36'),
(72, 105, 'Bakteri', 'Negatif', NULL, NULL, '2025-01-16 05:22:21', '2025-01-16 05:22:21'),
(73, 105, 'Lendir', 'Negatif', NULL, NULL, '2025-01-16 05:22:50', '2025-01-16 05:22:50'),
(74, 105, 'Jamur', 'Negatif', NULL, NULL, '2025-01-16 05:23:06', '2025-01-16 05:23:06'),
(75, 106, 'Amphetamine (AMP)', 'Negatif', NULL, 32000, '2025-01-16 05:23:33', '2025-02-01 05:08:59'),
(76, 106, 'Mariyuana (THC)', 'Negatif', NULL, 12000, '2025-01-16 05:25:57', '2025-02-01 05:09:09'),
(77, 106, 'Morphine (Opiat)', 'Negatif', NULL, 42000, '2025-01-16 05:26:14', '2025-02-01 05:09:23'),
(78, 106, 'Methamphetamine (MET)', 'Negatif', NULL, 11000, '2025-01-16 05:26:38', '2025-02-01 05:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `jenis_identitas` enum('KTP','SIM','PASSPORT','NO_IDENTITY') NOT NULL,
  `no_identitas` varchar(24) DEFAULT NULL,
  `bpjs` varchar(24) DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL,
  `gambar_pasiens` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `jenis_identitas`, `no_identitas`, `bpjs`, `no_telp`, `alamat`, `created_at`, `updated_at`, `perusahaan_id`, `gambar_pasiens`) VALUES
(1, 'Rahsaan Romaguera', '2006-10-30', 'P', 'KTP', '4820649028543', '239049114341', '08123xxxxxx', '53204 Mathias Centers Apt. 937\nStreichhaven, GA 04457-3062', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL, NULL),
(2, 'Vivianne Hayes', '2010-01-28', 'L', 'KTP', '6448646554531', '090950115746', '08999868990', '94028 Rath Inlet\r\nSouth Eloy, TN 26129', '2024-02-09 00:10:11', '2025-01-28 15:40:34', 10, 'img/foto_pasiens/pasien-2-1738104034.png'),
(3, 'Miss Petra Lebsack PhD', '2019-06-14', 'L', 'SIM', '1020341413372', '485214704553', '08123xxxxxx', '391 Kelli Extension Apt. 070\nEast Otilia, MI 27361-3951', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL, NULL),
(4, 'Gino Dibbert', '1975-01-18', 'L', 'PASSPORT', '2256777324258', '754637091159', '08123xxxxxx', '816 Cummings Knolls\nAracelyburgh, CT 38735-3280', '2024-02-09 00:10:12', '2024-02-09 00:10:12', 3, NULL),
(5, 'Prof. Gardner Hilpert I', '1982-10-13', 'P', 'SIM', '4620412593788', '633135512093', '08123xxxxxx', '178 Weber Rest\nRueckerburgh, CA 32204', '2024-02-09 00:10:12', '2024-02-09 00:10:12', 3, NULL),
(6, 'Delaney Kuhn', '1991-03-28', 'L', 'PASSPORT', '5629866384411', '854688169735', '989987889', '9347 Nyasia Stravenue\r\nBraedenborough, UT 00752', '2024-02-09 00:10:13', '2025-01-29 04:39:09', NULL, 'img/foto_pasiens/pasien-6-1738150749.png'),
(7, 'Ms. Jacklyn Kiehn', '2001-04-30', 'L', 'SIM', '1242879583414', '724895637915', '08123xxxxxx', '4830 Bernadette Plains\nPort Karley, AZ 70545', '2024-02-09 00:10:14', '2024-02-09 00:10:14', NULL, NULL),
(8, 'Mr. Einar Klocko Sr.', '1997-08-03', 'L', 'PASSPORT', '4946299259865', '345586548250', '08123xxxxxx', '32911 America Greens\nBatzbury, CO 67203-2792', '2024-02-09 00:10:15', '2024-02-09 00:10:15', 4, NULL),
(9, 'Candace Sporer', '1979-06-13', 'P', 'PASSPORT', '3854742931650', '943784249022', '08123xxxxxx', '66050 Ankunding Estates Apt. 109\nPort Joshire, AK 38394-8850', '2024-02-09 00:10:15', '2024-02-09 00:10:15', NULL, NULL),
(10, 'Nadia Cormier', '1992-12-03', 'L', 'PASSPORT', '9378889504236', '644719125187', '08123xxxxxx', '55508 Satterfield Place\nNew Hallestad, WA 65135', '2024-02-09 00:10:16', '2024-02-09 00:10:16', 4, NULL),
(11, 'aa', '2025-01-24', 'P', 'SIM', '4647', '-', '576768', '56677', '2025-01-24 07:31:38', '2025-01-24 21:10:49', 4, NULL),
(14, 'AA', '2025-01-24', 'L', 'NO_IDENTITY', '112121221', '-', '1232', 'dsds', '2025-01-24 21:04:30', '2025-01-24 21:04:30', 5, NULL),
(15, 'Mas bro', '2025-01-27', 'L', 'KTP', '21321', '-', '4232342', 'sfdds', '2025-01-26 18:32:52', '2025-01-26 18:58:24', 4, 'img/foto_pasiens/pasien-15-1737943104.png'),
(16, 'Mas brodsss', '2025-01-27', 'P', 'KTP', '11212', '-', '2312', 'sdfsds', '2025-01-26 19:08:50', '2025-01-26 19:53:34', 4, 'img/foto_pasiens/pasien-16-1737946414.png'),
(17, 'hello', '1997-03-13', 'L', 'NO_IDENTITY', NULL, '-', '08766537833', 'helo dek', '2025-01-27 06:44:20', '2025-01-27 06:44:20', 5, 'img/foto_pasiens/foto_pasien_1737985460.png'),
(18, 'Mas brodsss', '2025-01-27', 'P', 'NO_IDENTITY', NULL, '-', '3423423', 'deawd', '2025-01-27 06:51:03', '2025-01-27 06:51:03', NULL, 'img/foto_pasiens/foto_pasien_1737985863.png'),
(19, 'Jack Ma', '2025-02-01', 'L', 'NO_IDENTITY', NULL, '-', '0887329932', 'Jl. Merak', '2025-02-01 05:14:01', '2025-02-01 05:14:01', 6, 'img/foto_pasiens/foto_pasien_1738412041.png');

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
-- Table structure for table `pemeriksaans`
--

CREATE TABLE `pemeriksaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_permohonan` enum('APS','JP','BPJS','RUJUKAN','ASURANSI') DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_layanan` varchar(255) DEFAULT NULL,
  `pengantaran_hasil` varchar(255) DEFAULT NULL,
  `rekomendasi` varchar(255) DEFAULT NULL,
  `total_harga` varchar(255) DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `diskon_persen` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemeriksaans`
--

INSERT INTO `pemeriksaans` (`id`, `pasien_id`, `status_permohonan`, `dokter_id`, `status_id`, `created_at`, `updated_at`, `jenis_layanan`, `pengantaran_hasil`, `rekomendasi`, `total_harga`, `paket_id`, `diskon_persen`, `diskon_rupiah`) VALUES
(39, 2, 'APS', 3, 2, '2025-01-21 02:04:42', '2025-01-21 02:26:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1, 'APS', 2, 2, '2025-01-21 02:21:24', '2025-01-21 06:16:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 5, 'JP', 3, 2, '2025-01-21 02:22:32', '2025-01-21 06:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 10, 'APS', 3, 2, '2025-01-21 05:58:18', '2025-01-21 05:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 2, 'BPJS', 3, 1, '2025-01-21 08:57:27', '2025-01-22 00:18:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 2, 'APS', 3, 3, '2025-01-21 08:58:50', '2025-01-21 09:00:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 10, 'APS', 3, 3, '2025-01-22 00:01:20', '2025-01-22 01:57:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 2, 'RUJUKAN', 3, 1, '2025-01-22 02:02:31', '2025-01-22 02:05:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 5, 'APS', 3, 3, '2025-01-22 02:26:09', '2025-01-22 02:26:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 2, 'APS', 3, 3, '2025-01-22 02:27:32', '2025-01-22 02:27:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 2, 'APS', 3, 3, '2025-01-22 02:28:33', '2025-01-22 02:28:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 4, 'APS', 3, 3, '2025-01-22 05:01:14', '2025-01-22 05:02:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 7, 'JP', 3, 3, '2025-01-23 18:11:39', '2025-01-23 18:12:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 10, 'APS', 3, 3, '2025-01-23 18:54:26', '2025-01-23 18:55:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 14, 'JP', 1, 3, '2025-01-25 05:50:08', '2025-01-25 05:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 2, 'JP', NULL, 3, '2025-01-25 06:41:48', '2025-01-25 14:01:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 8, 'JP', NULL, 3, '2025-01-25 06:41:48', '2025-01-25 14:02:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 11, 'JP', NULL, 1, '2025-01-25 06:41:48', '2025-01-25 06:41:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 2, 'APS', 3, 1, '2025-01-25 15:38:00', '2025-01-25 15:38:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 2, 'APS', 3, 1, '2025-01-25 15:53:13', '2025-01-25 15:53:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 3, 'APS', 3, 1, '2025-01-25 15:54:01', '2025-01-25 15:54:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 8, 'APS', 3, 1, '2025-01-25 15:54:43', '2025-01-25 15:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 3, 'APS', 3, 1, '2025-01-25 15:55:48', '2025-01-25 15:55:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 2, 'APS', 3, 1, '2025-01-25 16:00:52', '2025-01-25 16:00:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 6, 'APS', 3, 1, '2025-01-25 16:10:46', '2025-01-25 16:10:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 2, 'APS', 3, 1, '2025-01-25 16:15:59', '2025-01-25 16:15:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 2, 'APS', 3, 1, '2025-01-25 16:17:20', '2025-01-25 16:17:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 9, 'BPJS', 3, 3, '2025-01-26 15:27:20', '2025-01-26 15:27:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 2, 'APS', 3, 3, '2025-01-27 01:41:46', '2025-01-27 01:41:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 14, NULL, NULL, 1, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 17, NULL, NULL, 1, '2025-01-27 07:05:59', '2025-01-27 07:05:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 8, 'JP', NULL, 1, '2025-01-27 07:09:25', '2025-01-27 07:09:25', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', NULL, NULL, NULL, NULL),
(74, 10, 'JP', NULL, 1, '2025-01-27 07:09:25', '2025-01-27 07:09:25', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', NULL, NULL, NULL, NULL),
(75, 4, 'JP', NULL, 3, '2025-01-27 07:17:21', '2025-01-27 07:17:37', '>WALK-IN OFFICE', 'kerumah', '>WALK-IN OFFICE', NULL, NULL, NULL, NULL),
(76, 5, 'JP', NULL, 1, '2025-01-27 07:17:21', '2025-01-27 07:17:21', '>WALK-IN OFFICE', 'kerumah', '>WALK-IN OFFICE', NULL, NULL, NULL, NULL),
(77, 3, 'APS', 2, 1, '2025-01-27 07:28:21', '2025-01-27 07:28:21', 'REFRENCE SAMPLE', 'ambil_sendiri', '>WALK-IN OFFICE', NULL, NULL, NULL, NULL),
(78, 4, 'APS', 3, 1, '2025-01-27 07:47:43', '2025-01-27 07:47:43', 'Pilih Jenis Layanan', 'Pilih Pengantaran', 'Pilih Rekomendasi', NULL, NULL, NULL, NULL),
(79, 5, 'JP', NULL, 1, '2025-01-27 08:02:50', '2025-01-27 08:02:50', '>WALK-IN OFFICE', 'ambil_sendiri', '>WALK-IN OFFICE', NULL, NULL, NULL, NULL),
(80, 2, 'RUJUKAN', 3, 3, '2025-01-27 08:04:25', '2025-01-27 08:04:37', 'REFRENCE SAMPLE', 'ambil_sendiri', 'HOME CARE', NULL, NULL, NULL, NULL),
(81, 2, 'BPJS', 3, 3, '2025-01-27 15:23:46', '2025-01-27 15:23:56', 'REFRENCE SAMPLE', 'kerumah', 'HOME CARE', NULL, NULL, NULL, NULL),
(82, 4, 'RUJUKAN', 3, 3, '2025-01-28 22:27:37', '2025-01-28 22:27:48', 'REFRENCE SAMPLE', 'kerumah', 'REFRENCE SAMPLE', NULL, NULL, NULL, NULL),
(83, 1, 'BPJS', 3, 3, '2025-01-29 00:05:29', '2025-01-29 00:05:40', 'HOME CARE', 'kedokter', 'HOME CARE', NULL, NULL, NULL, NULL),
(84, 2, 'BPJS', 3, 3, '2025-01-29 00:39:29', '2025-01-29 00:39:59', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', NULL, NULL, NULL, NULL),
(86, 4, 'APS', 3, 3, '2025-01-29 06:47:08', '2025-01-29 06:47:59', 'MCU ONSITE', 'kerumah', 'MCU ONSITE', '382230', NULL, NULL, NULL),
(87, 5, 'JP', NULL, 3, '2025-01-29 23:40:58', '2025-01-29 23:41:24', '>WALK-IN OFFICE', 'ambil_sendiri', '>WALK-IN OFFICE', '94080', NULL, NULL, NULL),
(88, 17, 'JP', NULL, 1, '2025-01-29 23:49:46', '2025-01-29 23:49:46', '>WALK-IN OFFICE', 'ambil_sendiri', '>WALK-IN OFFICE', '83000', NULL, NULL, NULL),
(89, 1, 'APS', NULL, 1, '2025-01-30 00:34:12', '2025-01-30 00:34:12', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', '34300', NULL, NULL, NULL),
(90, 4, 'APS', NULL, 1, '2025-01-30 00:34:12', '2025-01-30 00:34:12', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', '34300', NULL, NULL, NULL),
(91, 17, 'JP', NULL, 1, '2025-01-30 22:54:25', '2025-01-30 22:54:25', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', '83000', 13, NULL, NULL),
(92, 2, 'APS', NULL, 1, '2025-01-31 15:14:53', '2025-01-31 15:14:53', 'MCU ONSITE', 'ambil_sendiri', 'REFRENCE SAMPLE', '70700', 25, NULL, NULL),
(93, 3, 'APS', NULL, 1, '2025-01-31 15:14:54', '2025-01-31 15:14:54', 'MCU ONSITE', 'ambil_sendiri', 'REFRENCE SAMPLE', '70700', 25, NULL, NULL),
(95, 2, 'APS', NULL, 1, '2025-01-31 15:36:48', '2025-01-31 15:36:48', 'HOME CARE', 'kerumah', 'MCU ONSITE', '64300', NULL, NULL, NULL),
(96, 3, 'APS', NULL, 1, '2025-01-31 15:36:48', '2025-01-31 15:36:48', 'HOME CARE', 'kerumah', 'MCU ONSITE', '64300', NULL, NULL, NULL),
(97, 1, 'BPJS', NULL, 1, '2025-01-31 15:45:37', '2025-01-31 15:45:37', '>WALK-IN OFFICE', 'ambil_sendiri', '>WALK-IN OFFICE', '64300', NULL, NULL, NULL),
(98, 5, 'APS', NULL, 1, '2025-01-31 15:48:37', '2025-01-31 15:48:37', 'REFRENCE SAMPLE', 'ambil_sendiri', '>WALK-IN OFFICE', '64300', NULL, NULL, NULL),
(99, 18, 'APS', NULL, 1, '2025-01-31 15:48:37', '2025-01-31 15:48:37', 'REFRENCE SAMPLE', 'ambil_sendiri', '>WALK-IN OFFICE', '64300', NULL, NULL, NULL),
(100, 14, NULL, NULL, 1, '2025-01-31 16:05:14', '2025-01-31 16:05:14', 'MCU ONSITE', 'kedokter', '>WALK-IN OFFICE', '83000', NULL, NULL, NULL),
(101, 17, NULL, NULL, 1, '2025-01-31 16:05:14', '2025-01-31 16:05:14', 'MCU ONSITE', 'kedokter', '>WALK-IN OFFICE', '83000', NULL, NULL, NULL),
(102, 4, 'JP', NULL, 1, '2025-01-31 17:56:02', '2025-01-31 17:56:02', 'MCU ONSITE', 'kedokter', 'MCU ONSITE', '34300', NULL, NULL, NULL),
(103, 3, 'JP', NULL, 1, '2025-01-31 18:02:14', '2025-01-31 18:02:14', 'REFRENCE SAMPLE', 'kedokter', 'MCU ONSITE', '34300', NULL, NULL, NULL),
(104, 2, 'RUJUKAN', NULL, 1, '2025-01-31 18:06:36', '2025-01-31 18:06:36', 'REFRENCE SAMPLE', 'kerumah', 'REFRENCE SAMPLE', '34300', NULL, NULL, NULL),
(105, 3, 'RUJUKAN', NULL, 1, '2025-01-31 18:10:44', '2025-01-31 18:10:44', 'HOME CARE', 'kedokter', 'HOME CARE', '34300', NULL, NULL, NULL),
(106, 3, 'RUJUKAN', NULL, 1, '2025-01-31 18:17:13', '2025-01-31 18:17:13', 'REFRENCE SAMPLE', 'kerumah', 'MCU ONSITE', '34300', NULL, NULL, NULL),
(107, 2, 'RUJUKAN', NULL, 1, '2025-01-31 18:23:55', '2025-01-31 18:23:55', 'MCU ONSITE', 'kedokter', 'REFRENCE SAMPLE', '34300', NULL, NULL, NULL),
(108, 5, 'JP', NULL, 1, '2025-01-31 18:25:40', '2025-01-31 18:25:40', 'HOME CARE', 'kedokter', 'HOME CARE', '34300', NULL, NULL, NULL),
(110, 3, 'JP', NULL, 1, '2025-01-31 18:30:31', '2025-01-31 18:30:31', 'HOME CARE', 'kedokter', 'MCU ONSITE', '107300', NULL, NULL, NULL),
(111, 3, 'ASURANSI', NULL, 1, '2025-01-31 18:34:42', '2025-01-31 18:34:42', 'MCU ONSITE', 'kerumah', 'HOME CARE', '107300', NULL, NULL, NULL),
(112, 17, 'BPJS', NULL, 3, '2025-01-31 18:57:01', '2025-01-31 20:45:21', 'REFRENCE SAMPLE', 'kerumah', 'HOME CARE', '107300', NULL, NULL, NULL),
(113, 2, 'ASURANSI', NULL, 1, '2025-01-31 18:58:02', '2025-01-31 18:58:02', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '178000', NULL, NULL, NULL),
(114, 3, 'ASURANSI', NULL, 1, '2025-01-31 19:18:24', '2025-01-31 19:18:24', 'HOME CARE', 'kerumah', 'HOME CARE', '62000', NULL, NULL, NULL),
(116, 1, 'JP', NULL, 1, '2025-01-31 19:30:10', '2025-01-31 19:30:10', 'MCU ONSITE', 'kedokter', 'HOME CARE', '35000', NULL, NULL, NULL),
(118, 2, 'JP', NULL, 1, '2025-01-31 19:37:58', '2025-01-31 19:37:58', 'MCU ONSITE', 'kedokter', '>WALK-IN OFFICE', '35000', NULL, NULL, NULL),
(120, 3, 'ASURANSI', NULL, 1, '2025-01-31 19:56:32', '2025-01-31 19:56:32', 'HOME CARE', 'kedokter', 'MCU ONSITE', '35000', NULL, NULL, NULL),
(125, 2, 'RUJUKAN', NULL, 3, '2025-01-31 20:10:42', '2025-01-31 20:28:31', 'MCU ONSITE', 'kedokter', 'HOME CARE', '35000', NULL, NULL, NULL),
(129, 17, 'RUJUKAN', NULL, 3, '2025-01-31 22:45:26', '2025-01-31 22:45:32', 'HOME CARE', 'kerumah', 'HOME CARE', '107300', NULL, NULL, NULL),
(130, 19, NULL, NULL, 3, '2025-02-01 05:15:23', '2025-02-01 05:16:35', 'MCU ONSITE', 'ambil_sendiri', 'MCU ONSITE', '55000', NULL, NULL, NULL),
(131, 14, NULL, NULL, 1, '2025-02-01 05:25:22', '2025-02-01 05:25:22', 'MCU ONSITE', 'kedokter', 'HOME CARE', '83000', NULL, NULL, NULL),
(132, 17, NULL, NULL, 1, '2025-02-01 05:25:22', '2025-02-01 05:25:22', 'MCU ONSITE', 'kedokter', 'HOME CARE', '83000', NULL, NULL, NULL),
(133, 19, 'APS', NULL, 1, '2025-02-01 05:26:58', '2025-02-01 05:26:58', 'HOME CARE', 'ambil_sendiri', 'MCU ONSITE', '89300', NULL, NULL, NULL),
(134, 3, 'JP', NULL, 3, '2025-02-01 05:28:56', '2025-02-01 05:29:16', 'MCU ONSITE', 'kedokter', 'MCU ONSITE', '11000', NULL, NULL, NULL),
(135, 17, NULL, NULL, 3, '2025-02-01 06:40:32', '2025-02-01 07:20:14', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '83000', NULL, NULL, NULL),
(139, 3, 'ASURANSI', NULL, 3, '2025-02-01 07:16:22', '2025-02-01 07:19:22', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '30000', NULL, NULL, NULL),
(141, 17, 'ASURANSI', NULL, 2, '2025-02-01 07:16:22', '2025-02-01 07:30:30', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '30000', NULL, NULL, NULL),
(142, 10, NULL, NULL, 3, '2025-02-01 07:24:50', '2025-02-01 07:43:23', '>WALK-IN OFFICE', 'kerumah', 'REFRENCE SAMPLE', '0', NULL, NULL, NULL),
(143, 15, NULL, NULL, 6, '2025-02-01 07:24:50', '2025-02-01 08:04:12', '>WALK-IN OFFICE', 'kerumah', 'REFRENCE SAMPLE', '0', NULL, NULL, NULL),
(144, 10, NULL, NULL, 3, '2025-02-01 07:47:01', '2025-02-01 07:47:53', 'REFRENCE SAMPLE', 'kedokter', '>WALK-IN OFFICE', '0', NULL, NULL, NULL),
(145, 3, 'RUJUKAN', NULL, 6, '2025-02-01 08:09:00', '2025-02-01 08:11:27', 'REFRENCE SAMPLE', 'kerumah', '>WALK-IN OFFICE', '93120', NULL, NULL, NULL),
(146, 4, 'RUJUKAN', NULL, 3, '2025-02-01 08:09:00', '2025-02-02 15:13:22', 'REFRENCE SAMPLE', 'kerumah', '>WALK-IN OFFICE', '93120', NULL, NULL, NULL),
(147, 3, 'RUJUKAN', NULL, 6, '2025-02-01 16:29:14', '2025-02-01 16:33:15', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '55000', NULL, NULL, NULL),
(148, 4, 'RUJUKAN', NULL, 2, '2025-02-01 16:29:14', '2025-02-02 15:11:47', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '55000', NULL, NULL, NULL),
(149, 5, 'RUJUKAN', NULL, 5, '2025-02-01 16:29:14', '2025-02-01 16:29:14', 'HOME CARE', 'kedokter', 'REFRENCE SAMPLE', '55000', NULL, NULL, NULL);

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
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `marketing` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `contact_person`, `jabatan`, `alamat`, `kota`, `no_hp`, `email`, `nama_perusahaan`, `updated_at`, `created_at`, `marketing`, `password`) VALUES
(3, 'GAMASA', 'PICr', 'Jl malioboro tugu', 'Yogyakarta', '085945170201', 'aston@gmail.com', 'Front One Hotel', '2025-01-25 03:07:12', '2024-11-12 14:38:08', 1, NULL),
(4, 'DESSY', 'Dosen', 'CILEGON', 'CILEGON', '085945170201', 'driver1@gmail.com', 'ASTON CILEGON BOUTIQUE HOTEL', '2024-11-12 15:11:09', '2024-11-12 15:01:06', 3, NULL),
(5, 'Khoironi', 'HRD', 'DSN. LABUHAN TENGAH LABUHAN SRESEH SAMPANG JAWA TIMUR', 'KAB. SAMPANG', '085163676227', 'masronydsd37@gmail.com', 'Fave Hotel', '2025-01-25 03:27:10', '2025-01-25 03:27:10', 3, NULL),
(6, 'Khoironi', 'HRD', 'DSN. LABUHAN TENGAH LABUHAN SRESEH SAMPANG JAWA TIMUR', 'KAB. SAMPANG', '085163676227', 'masrony37@gmail.com', 'PT Minyak Anda', '2025-02-01 12:02:17', '2025-02-01 12:02:17', 1, '$2y$10$qlbcmZvUA3DTnsNf3pV5ue3iRiZ8xdlnZwv85n3CbLRaHqpeo1al2'),
(10, 'Khoironi', 'HRD', 'DSN. LABUHAN TENGAH LABUHAN SRESEH SAMPANG JAWA TIMUR', 'KAB. SAMPANG', '085163676227', 'radeva3232@gmail.com', 'kkuku', '2025-02-02 22:29:35', '2025-02-02 22:29:35', 2, '$2y$10$sHWKiENT2ML1woHGirahSO/7GQ8oGL635oC7u12uUu46eanFssZdm');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2024-02-09 00:10:20', '2024-02-09 00:10:20'),
(2, 'Administrasi', '2024-02-09 00:10:20', '2024-02-09 00:10:20'),
(3, 'Laborat', '2024-02-09 00:10:20', '2024-02-09 00:10:20'),
(4, 'Poli', '2024-02-09 00:10:20', '2024-02-09 00:10:20'),
(5, 'Perusahaan', '2025-02-02 22:24:00', '2025-02-02 22:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `setings`
--

CREATE TABLE `setings` (
  `id` int(11) NOT NULL,
  `warna_satu` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `pph` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setings`
--

INSERT INTO `setings` (`id`, `warna_satu`, `ppn`, `pph`, `created_at`, `updated_at`) VALUES
(1, '#bfcfcd', '11', '22779', '2025-02-01 06:16:06', '2025-02-01 17:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Belum diproses', NULL, NULL),
(2, 'Menunggu direview', NULL, NULL),
(3, 'Proses review', NULL, NULL),
(4, 'Dibatalkan', NULL, NULL),
(5, 'Menunggu Pembayaran', NULL, NULL),
(6, 'Selesai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `pemeriksaan_id` bigint(20) DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `pasien_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `pemeriksaan_id`, `paket_id`, `pasien_id`, `created_at`, `updated_at`) VALUES
(1, 95, 22, 2, '2025-01-31 15:36:48', '2025-01-31 15:36:48'),
(2, 95, 24, 2, '2025-01-31 15:36:48', '2025-01-31 15:36:48'),
(3, 96, 22, 3, '2025-01-31 15:36:48', '2025-01-31 15:36:48'),
(4, 96, 24, 3, '2025-01-31 15:36:48', '2025-01-31 15:36:48'),
(5, 97, 22, 1, '2025-01-31 15:45:37', '2025-01-31 15:45:37'),
(6, 97, 24, 1, '2025-01-31 15:45:37', '2025-01-31 15:45:37'),
(7, 98, 22, 5, '2025-01-31 15:48:37', '2025-01-31 15:48:37'),
(8, 98, 24, 5, '2025-01-31 15:48:37', '2025-01-31 15:48:37'),
(9, 99, 22, 18, '2025-01-31 15:48:37', '2025-01-31 15:48:37'),
(10, 99, 24, 18, '2025-01-31 15:48:37', '2025-01-31 15:48:37'),
(11, 100, 10, 14, '2025-01-31 16:05:14', '2025-01-31 16:05:14'),
(12, 100, 13, 14, '2025-01-31 16:05:14', '2025-01-31 16:05:14'),
(13, 101, 10, 17, '2025-01-31 16:05:14', '2025-01-31 16:05:14'),
(14, 101, 13, 17, '2025-01-31 16:05:14', '2025-01-31 16:05:14'),
(15, 102, 22, 4, '2025-01-31 17:56:02', '2025-01-31 17:56:02'),
(16, 103, 22, 3, '2025-01-31 18:02:14', '2025-01-31 18:02:14'),
(17, 104, 22, 2, '2025-01-31 18:06:36', '2025-01-31 18:06:36'),
(18, 105, 22, 3, '2025-01-31 18:10:44', '2025-01-31 18:10:44'),
(19, 106, 22, 3, '2025-01-31 18:17:13', '2025-01-31 18:17:13'),
(20, 107, 22, 2, '2025-01-31 18:23:55', '2025-01-31 18:23:55'),
(21, 108, 22, 5, '2025-01-31 18:25:40', '2025-01-31 18:25:40'),
(23, 110, 22, 3, '2025-01-31 18:30:31', '2025-01-31 18:30:31'),
(24, 110, 23, 3, '2025-01-31 18:30:31', '2025-01-31 18:30:31'),
(25, 111, 22, 3, '2025-01-31 18:34:42', '2025-01-31 18:34:42'),
(26, 111, 23, 3, '2025-01-31 18:34:42', '2025-01-31 18:34:42'),
(27, 112, 22, 17, '2025-01-31 18:57:01', '2025-01-31 18:57:01'),
(28, 112, 23, 17, '2025-01-31 18:57:01', '2025-01-31 18:57:01'),
(29, 113, 22, 2, '2025-01-31 18:58:02', '2025-01-31 18:58:02'),
(30, 113, 23, 2, '2025-01-31 18:58:02', '2025-01-31 18:58:02'),
(31, 113, 25, 2, '2025-01-31 18:58:02', '2025-01-31 18:58:02'),
(32, 114, 22, 3, '2025-01-31 19:18:24', '2025-01-31 19:18:24'),
(33, 114, 23, 3, '2025-01-31 19:18:24', '2025-01-31 19:18:24'),
(34, 116, NULL, 1, '2025-01-31 19:30:10', '2025-01-31 19:30:10'),
(35, 117, 22, 4, '2025-01-31 19:30:47', '2025-01-31 19:30:47'),
(36, 117, 23, 4, '2025-01-31 19:30:47', '2025-01-31 19:30:47'),
(37, 118, NULL, 2, '2025-01-31 19:37:58', '2025-01-31 19:37:58'),
(38, 120, 22, 3, '2025-01-31 19:56:32', '2025-01-31 19:56:32'),
(40, 125, 22, 2, '2025-01-31 20:10:42', '2025-01-31 20:10:42'),
(46, 129, 22, 17, '2025-01-31 22:45:26', '2025-01-31 22:45:26'),
(47, 129, 23, 17, '2025-01-31 22:45:26', '2025-01-31 22:45:26'),
(48, 130, 28, 19, '2025-02-01 05:15:23', '2025-02-01 05:15:23'),
(49, 131, 10, 14, '2025-02-01 05:25:22', '2025-02-01 05:25:22'),
(50, 131, 13, 14, '2025-02-01 05:25:22', '2025-02-01 05:25:22'),
(51, 132, 10, 17, '2025-02-01 05:25:22', '2025-02-01 05:25:22'),
(52, 132, 13, 17, '2025-02-01 05:25:22', '2025-02-01 05:25:22'),
(53, 133, 22, 19, '2025-02-01 05:26:58', '2025-02-01 05:26:58'),
(54, 133, 28, 19, '2025-02-01 05:26:58', '2025-02-01 05:26:58'),
(55, 134, 28, 3, '2025-02-01 05:28:56', '2025-02-01 05:28:56'),
(56, 135, 13, 17, '2025-02-01 06:40:32', '2025-02-01 06:40:32'),
(60, 139, 27, 3, '2025-02-01 07:16:22', '2025-02-01 07:16:22'),
(62, 141, 27, 17, '2025-02-01 07:16:22', '2025-02-01 07:16:22'),
(63, 142, 7, 10, '2025-02-01 07:24:50', '2025-02-01 07:24:50'),
(64, 143, 7, 15, '2025-02-01 07:24:50', '2025-02-01 07:24:50'),
(65, 144, 7, 10, '2025-02-01 07:47:01', '2025-02-01 07:47:01'),
(66, 145, 26, 3, '2025-02-01 08:09:00', '2025-02-01 08:09:00'),
(67, 146, 26, 4, '2025-02-01 08:09:00', '2025-02-01 08:09:00'),
(68, 147, 28, 3, '2025-02-01 16:29:14', '2025-02-01 16:29:14'),
(69, 148, 28, 4, '2025-02-01 16:29:14', '2025-02-01 16:29:14'),
(70, 149, 28, 5, '2025-02-01 16:29:14', '2025-02-01 16:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `roles_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `nama_lengkap`, `no_telp`, `roles_id`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `perusahaan_id`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$Jx4GWdAYn3SgKJPv4i7kw.MkbUA7sEozWQ7Gk4OTCkIlSr9Lgb8Gu', 'Super Admin', '0939949443', 1, NULL, NULL, '2024-02-09 00:10:18', '2025-02-01 16:39:48', NULL),
(2, 'administrasi', 'administrasi@mail.com', '$2y$10$ol.THN2tVwlxNBXirVRkWOnELNr2cVIJJqX9TgeTTJmrLkuzpj7Nu', 'Administrasi', '099000', 2, NULL, NULL, '2024-02-09 00:10:18', '2025-02-01 16:39:15', NULL),
(3, 'Laborat', 'laborat@mail.com', '$2y$10$58D6VBm77yGkTFK6fy1zq.KO6XqDG8bmnEAfesyE1cJPLPyVZuzeK', 'Nur Laila Irawati', '000000', 1, NULL, NULL, '2024-02-09 00:10:19', '2025-02-01 16:38:31', NULL),
(4, 'Poli', 'poli@mail.com', '$2y$10$esyhZElTrCYAAGBfiBPuaeVxOVb7lnBRo8gSVdFR36AWfUavqPjVu', 'Poli', '0909000', 4, NULL, NULL, '2024-02-09 00:10:19', '2025-02-01 23:31:30', NULL),
(5, 'kkuku', 'radeva3232@gmail.com', '$2y$10$AKpHTygqUEBN00vaomVfdum3ytW6c1di1atlUGCqUxEU/hZt80Gba', 'kkuku', '085163676227', 5, NULL, NULL, '2025-02-02 15:29:35', '2025-02-02 15:29:35', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_pemeriksaans`
--
ALTER TABLE `bidang_pemeriksaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_bank`
--
ALTER TABLE `data_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_paket`
--
ALTER TABLE `detail_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kesimpulan_mcu`
--
ALTER TABLE `kesimpulan_mcu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kesimpulan_pemeriksaan`
--
ALTER TABLE `kesimpulan_pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keterangans`
--
ALTER TABLE `keterangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keterangans_pemeriksaan_id_foreign` (`pemeriksaan_id`),
  ADD KEY `keterangans_bidang_id_foreign` (`bidang_id`),
  ADD KEY `keterangans_parameter_id_foreign` (`parameter_id`),
  ADD KEY `keterangans_metode_id_foreign` (`metode_id`);

--
-- Indexes for table `mcu`
--
ALTER TABLE `mcu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode_pemeriksaans`
--
ALTER TABLE `metode_pemeriksaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter_pemeriksaans`
--
ALTER TABLE `parameter_pemeriksaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parameter_pemeriksaans_metode_id_foreign` (`metode_id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pasiens_no_identitas_unique` (`no_identitas`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pemeriksaans`
--
ALTER TABLE `pemeriksaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemeriksaans_pasien_id_foreign` (`pasien_id`),
  ADD KEY `pemeriksaans_status_id_foreign` (`status_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setings`
--
ALTER TABLE `setings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_pemeriksaans`
--
ALTER TABLE `bidang_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `data_bank`
--
ALTER TABLE `data_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_paket`
--
ALTER TABLE `detail_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kesimpulan_mcu`
--
ALTER TABLE `kesimpulan_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kesimpulan_pemeriksaan`
--
ALTER TABLE `kesimpulan_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `keterangans`
--
ALTER TABLE `keterangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2139;

--
-- AUTO_INCREMENT for table `mcu`
--
ALTER TABLE `mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metode_pemeriksaans`
--
ALTER TABLE `metode_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `parameter_pemeriksaans`
--
ALTER TABLE `parameter_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pemeriksaans`
--
ALTER TABLE `pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `setings`
--
ALTER TABLE `setings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keterangans`
--
ALTER TABLE `keterangans`
  ADD CONSTRAINT `keterangans_metode_id_foreign` FOREIGN KEY (`metode_id`) REFERENCES `metode_pemeriksaans` (`id`),
  ADD CONSTRAINT `keterangans_parameter_id_foreign` FOREIGN KEY (`parameter_id`) REFERENCES `parameter_pemeriksaans` (`id`),
  ADD CONSTRAINT `keterangans_pemeriksaan_id_foreign` FOREIGN KEY (`pemeriksaan_id`) REFERENCES `pemeriksaans` (`id`);

--
-- Constraints for table `parameter_pemeriksaans`
--
ALTER TABLE `parameter_pemeriksaans`
  ADD CONSTRAINT `parameter_pemeriksaans_metode_id_foreign` FOREIGN KEY (`metode_id`) REFERENCES `metode_pemeriksaans` (`id`);

--
-- Constraints for table `pemeriksaans`
--
ALTER TABLE `pemeriksaans`
  ADD CONSTRAINT `pemeriksaans_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`),
  ADD CONSTRAINT `pemeriksaans_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
