-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 04:09 PM
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
(3, 'Dr.', 'Radeva', 'Sp.PD', 'Dokter', '2024-11-13', 'Laki-Laki', 'CILEGON', 'CILEGON', '085945170201', '5', 2, 'Mandiri', '215556565221', '2025-01-24 00:57:00', '2024-11-13 04:57:15', 'img/ttd/dokter/1737566265_irene.png'),
(5, 'Dr.', 'Decsa Medika Hertanto', 'Sp.PD', 'Dokter', '2021-02-02', 'Laki-Laki', 'Perum Permai Melati', 'CILEGON', '085945170201', '5', 2, 'Mandiri', '215556565221', '2025-02-03 12:54:58', '2025-02-03 12:54:58', NULL);

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
(10, 'Nadia Cormier', '1992-12-03', 'L', 'PASSPORT', '9378889504236', '644719125187', '08123xxxxxx', '55508 Satterfield Place\nNew Hallestad, WA 65135', '2024-02-09 00:10:16', '2024-02-09 00:10:16', 4, NULL);

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
(2, 'administrasi', 'administrasi@mail.com', '$2y$10$ol.THN2tVwlxNBXirVRkWOnELNr2cVIJJqX9TgeTTJmrLkuzpj7Nu', 'Mees Hilgers', '099000', 2, NULL, NULL, '2024-02-09 00:10:18', '2025-02-01 16:39:15', NULL),
(3, 'Laborat', 'laborat@mail.com', '$2y$10$58D6VBm77yGkTFK6fy1zq.KO6XqDG8bmnEAfesyE1cJPLPyVZuzeK', 'Nur Laila Irawati', '000000', 1, NULL, NULL, '2024-02-09 00:10:19', '2025-02-01 16:38:31', NULL),
(4, 'Poli', 'poli@mail.com', '$2y$10$esyhZElTrCYAAGBfiBPuaeVxOVb7lnBRo8gSVdFR36AWfUavqPjVu', 'Kevin Verdonk', '0909000', 4, NULL, NULL, '2024-02-09 00:10:19', '2025-02-01 23:31:30', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kesimpulan_mcu`
--
ALTER TABLE `kesimpulan_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kesimpulan_pemeriksaan`
--
ALTER TABLE `kesimpulan_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangans`
--
ALTER TABLE `keterangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
