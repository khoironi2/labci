-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 04:26 AM
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
  `metode_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_paket`
--

INSERT INTO `detail_paket` (`id`, `paket_id`, `metode_id`, `parameter_id`, `created_at`, `updated_at`) VALUES
(3, 1, 21, NULL, '2024-11-20 12:31:42', '2024-11-20 12:31:42'),
(4, 1, 22, NULL, '2024-11-20 12:50:32', '2024-11-20 12:50:32'),
(6, 1, 22, NULL, '2024-12-03 05:36:55', '2024-12-03 05:36:55'),
(8, 1, 21, NULL, '2024-12-03 05:59:12', '2024-12-03 05:59:12'),
(9, 2, 22, NULL, '2024-12-03 06:00:49', '2024-12-03 06:00:49'),
(10, 2, NULL, 25, '2024-12-03 06:01:05', '2024-12-03 06:01:05'),
(12, 3, NULL, 12, '2024-12-03 06:16:43', '2024-12-03 06:16:43'),
(13, 3, 1, NULL, '2024-12-05 04:04:47', '2024-12-05 04:04:47'),
(14, 3, NULL, 16, '2024-12-05 04:05:04', '2024-12-05 04:05:04'),
(15, 2, NULL, 18, '2024-12-05 04:17:26', '2024-12-05 04:17:26'),
(16, 1, 23, NULL, '2025-01-20 16:12:36', '2025-01-20 16:12:36'),
(17, 1, 99, NULL, '2025-01-20 16:12:58', '2025-01-20 16:12:58'),
(18, 4, 100, NULL, '2025-01-20 16:14:48', '2025-01-20 16:14:48'),
(19, 4, NULL, 44, '2025-01-20 16:15:43', '2025-01-20 16:15:43');

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
(8, 43, 'Fit', '<p><strong>Keren</strong></p>', '<p>oke</p>', 'mantab', '3', NULL, '2', '2025-01-23 09:24:21', '2025-01-23 09:24:21'),
(9, 53, 'Fit', '<p><strong>Pemeriksaan Fisik :</strong><br />\r\nGangguan refraksi, terkoreksi dengan kacamata karang gigi.<br />\r\nPemeriksaan Laboratorium : Hematologi : Dalam Batas Normal<br />\r\nDislipideia (Total 240 ; LDL 165)<br />\r\nUrinalisa : Dalam Batas Normal<br />\r\n<br />\r\n<strong>Pemeriksaan Non Laboratorium :</strong><br />\r\nRontgen thorax AP/PA : Dalam Batas Normal<br />\r\nEKG : Normal. Audiometri: Dalam Batas Normal<br />\r\nSpirometri : Restriktive Ringan.</p>', '<p>Konsultasi dokter Gigi untuk melakukan perawatan gigi.<br />\r\natasi makanan berlemak, termasuk makanan yang digoreng (depp fried). Olah raga rutin 3-4x/minggu, selama 30-45 menit.<br />\r\nOlah raga rutin 3-4x/minggu, selama 30-45 menit</p>', 'Lakukan pemeriksaaan kesehatan berkala setidaknya setiap 1 tahun sekali.', '3', NULL, '3', '2025-01-23 19:06:30', '2025-01-23 19:06:30');

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
(12, 43, 1, 'mantab', NULL, NULL, NULL, '3', 'Pilih Dokter Penanggung Jawab', '3', NULL, '2025-01-23 09:21:37', '2025-01-23 09:21:37'),
(13, 43, 2, NULL, 'mantab', NULL, NULL, '3', 'Pilih Dokter Penanggung Jawab', '3', NULL, '2025-01-23 09:22:41', '2025-01-23 09:22:41'),
(14, 50, 2, NULL, NULL, NULL, NULL, '3', '3', '2', NULL, '2025-01-23 09:41:07', '2025-01-23 09:41:07'),
(15, 52, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '2', '3', NULL, '2025-01-23 18:13:37', '2025-01-23 18:13:37'),
(16, 53, 3, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', 'img/file_pendukung/1737683864_EKG.PNG', '2025-01-23 18:57:44', '2025-01-23 18:57:44'),
(17, 53, 1, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', NULL, '2025-01-23 18:58:11', '2025-01-23 18:58:11'),
(18, 53, 2, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '3', NULL, '2025-01-23 18:59:11', '2025-01-23 18:59:11'),
(19, 53, 4, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', '3', '3', '2', 'img/file_pendukung/1737684018_Audiometri.PNG', '2025-01-23 19:00:18', '2025-01-23 19:00:18'),
(20, 53, 5, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Pilih Validator', '3', '3', 'img/file_pendukung/1737684066_Spirometri.PNG', '2025-01-23 19:01:06', '2025-01-23 19:01:06'),
(21, 53, 6, 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Dalam Batas Normal', 'Pilih Validator', '2', '3', 'img/file_pendukung/1737684098_rontgen.PNG', '2025-01-23 19:01:38', '2025-01-23 19:01:38');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keterangans`
--

INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`) VALUES
(166, 39, 3, 36, NULL, NULL, NULL, 'bagus', 'ok', '2025-01-21 02:04:42', '2025-01-21 02:26:19'),
(167, 39, 3, 37, NULL, NULL, NULL, 'bagus', 'ok', '2025-01-21 02:04:42', '2025-01-21 02:26:19'),
(168, 40, 2, 35, NULL, 107, 'bagus', NULL, NULL, '2025-01-21 02:21:24', '2025-01-21 06:16:19'),
(169, 40, 2, 32, 44, 100, '787', NULL, NULL, '2025-01-21 02:21:24', '2025-01-21 06:16:19'),
(170, 41, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32'),
(171, 41, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32'),
(172, 41, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32'),
(173, 41, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-21 02:22:32', '2025-01-21 02:22:32'),
(174, 42, 1, 10, NULL, 23, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(175, 42, 1, 10, NULL, 24, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(176, 42, 1, 10, NULL, 45, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(177, 42, 1, 10, NULL, 59, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(178, 42, 1, 10, NULL, 92, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(179, 42, 1, 11, NULL, 25, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(180, 42, 1, 11, NULL, 26, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(181, 42, 1, 11, NULL, 27, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(182, 42, 1, 12, NULL, 28, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(183, 42, 1, 12, NULL, 29, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(184, 42, 1, 12, NULL, 30, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(185, 42, 1, 12, NULL, 31, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(186, 42, 1, 12, NULL, 32, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(187, 42, 1, 12, NULL, 33, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(188, 42, 1, 12, NULL, 34, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(189, 42, 1, 12, NULL, 35, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(190, 42, 1, 12, NULL, 36, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(191, 42, 1, 12, NULL, 37, NULL, NULL, NULL, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(192, 42, 1, 12, NULL, 38, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(193, 42, 1, 13, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(194, 42, 1, 15, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(195, 42, 1, 16, NULL, 39, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(196, 42, 1, 16, NULL, 40, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(197, 42, 1, 16, NULL, 41, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(198, 42, 1, 17, NULL, 42, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(199, 42, 1, 17, NULL, 43, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(200, 42, 1, 17, NULL, 44, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(201, 42, 1, 17, NULL, 46, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(202, 42, 1, 18, NULL, 47, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(203, 42, 1, 18, NULL, 48, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(204, 42, 1, 18, 29, 49, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(205, 42, 1, 18, 30, 49, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(206, 42, 1, 18, NULL, 50, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(207, 42, 1, 19, 31, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(208, 42, 1, 19, 32, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(209, 42, 1, 19, 33, 51, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(210, 42, 1, 19, NULL, 52, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(211, 42, 1, 19, 34, 53, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(212, 42, 1, 19, 35, 53, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(213, 42, 1, 20, NULL, 54, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(214, 42, 1, 20, NULL, 55, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(215, 42, 1, 20, NULL, 56, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(216, 42, 1, 20, NULL, 57, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(217, 42, 1, 21, NULL, 58, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(218, 42, 1, 22, NULL, 60, NULL, NULL, NULL, '2025-01-21 05:58:19', '2025-01-21 05:58:19'),
(219, 42, 1, 22, NULL, 61, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(220, 42, 1, 22, NULL, 62, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(221, 42, 1, 22, NULL, 63, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(222, 42, 1, 23, NULL, 64, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(223, 42, 1, 23, NULL, 65, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(224, 42, 1, 23, NULL, 66, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(225, 42, 1, 23, NULL, 67, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(226, 42, 1, 23, NULL, 68, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(227, 42, 1, 23, 36, 69, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(228, 42, 1, 23, 37, 69, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(229, 42, 1, 23, NULL, 70, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(230, 42, 1, 24, NULL, 71, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(231, 42, 1, 24, NULL, 72, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(232, 42, 1, 24, NULL, 73, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(233, 42, 1, 24, NULL, 74, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(234, 42, 1, 24, NULL, 75, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(235, 42, 1, 24, NULL, 76, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(236, 42, 1, 25, NULL, 77, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(237, 42, 1, 25, NULL, 78, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(238, 42, 1, 25, NULL, 79, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(239, 42, 1, 25, NULL, 80, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(240, 42, 1, 25, NULL, 81, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(241, 42, 1, 25, NULL, 82, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(242, 42, 1, 26, NULL, 83, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(243, 42, 1, 26, NULL, 84, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(244, 42, 1, 27, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(245, 42, 2, 28, NULL, 85, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(246, 42, 2, 28, NULL, 86, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(247, 42, 2, 28, NULL, 87, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(248, 42, 2, 28, NULL, 88, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(249, 42, 2, 28, NULL, 89, NULL, NULL, NULL, '2025-01-21 05:58:20', '2025-01-21 05:58:20'),
(250, 42, 2, 28, NULL, 90, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(251, 42, 2, 28, NULL, 91, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(252, 42, 2, 29, NULL, 93, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(253, 42, 2, 29, NULL, 94, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(254, 42, 2, 29, NULL, 95, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(255, 42, 2, 29, NULL, 96, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(256, 42, 2, 29, NULL, 97, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(257, 42, 2, 29, NULL, 98, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(258, 42, 2, 30, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(259, 42, 2, 31, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(260, 42, 2, 32, 38, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(261, 42, 2, 32, 39, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(262, 42, 2, 32, 40, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(263, 42, 2, 32, 41, 99, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(264, 42, 2, 32, 42, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(265, 42, 2, 32, 43, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(266, 42, 2, 32, 44, 100, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(267, 42, 2, 32, 45, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(268, 42, 2, 32, 46, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(269, 42, 2, 32, 47, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(270, 42, 2, 32, 48, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(271, 42, 2, 32, 49, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(272, 42, 2, 32, 50, 101, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(273, 42, 2, 32, 51, 102, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(274, 42, 2, 32, 52, 102, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(275, 42, 2, 33, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(276, 42, 2, 34, 53, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(277, 42, 2, 34, 54, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(278, 42, 2, 34, 55, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(279, 42, 2, 34, 56, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(280, 42, 2, 34, 57, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(281, 42, 2, 34, 58, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(282, 42, 2, 34, 59, 104, NULL, NULL, NULL, '2025-01-21 05:58:21', '2025-01-21 05:58:21'),
(283, 42, 2, 34, 60, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(284, 42, 2, 34, 61, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(285, 42, 2, 34, 62, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(286, 42, 2, 34, 63, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(287, 42, 2, 34, 64, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(288, 42, 2, 34, 65, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(289, 42, 2, 34, 66, 104, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(290, 42, 2, 34, 67, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(291, 42, 2, 34, 68, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(292, 42, 2, 34, 69, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(293, 42, 2, 34, 70, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(294, 42, 2, 34, 71, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(295, 42, 2, 34, 72, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(296, 42, 2, 34, 73, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(297, 42, 2, 34, 74, 105, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(298, 42, 2, 34, 75, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(299, 42, 2, 34, 76, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(300, 42, 2, 34, 77, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(301, 42, 2, 34, 78, 106, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(302, 42, 2, 35, NULL, 107, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(303, 42, 3, 36, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(304, 42, 3, 37, NULL, NULL, NULL, NULL, NULL, '2025-01-21 05:58:22', '2025-01-21 05:58:22'),
(305, 43, 1, 27, NULL, NULL, '80', 'ok', 'ok', '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(306, 43, 1, 18, NULL, 47, 'Tidak', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(307, 43, 1, 18, 29, 49, 'OD : 6/60 , OS : 6/60', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(308, 43, 1, 18, 30, 49, 'OD : 6/60 , OS : 6/60', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(309, 43, 2, 34, 75, 106, 'Negatif', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(310, 43, 2, 34, 76, 106, 'Negatif', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(311, 43, 2, 34, 77, 106, 'Negatif', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(312, 43, 2, 34, 78, 106, 'Negatif', NULL, NULL, '2025-01-21 06:19:06', '2025-01-21 06:20:31'),
(313, 44, 3, 36, NULL, NULL, 'a2', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:24:27'),
(314, 44, 3, 37, NULL, NULL, 'aaaaaaaaaaaaaaaaa', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:20:20'),
(315, 44, 4, NULL, NULL, NULL, 's', NULL, NULL, '2025-01-21 08:57:27', '2025-01-22 00:18:07'),
(316, 45, 2, 28, NULL, 85, '121', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(317, 45, 2, 28, NULL, 86, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(318, 45, 2, 28, NULL, 87, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(319, 45, 2, 28, NULL, 88, '12', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(320, 45, 2, 28, NULL, 89, 'qw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(321, 45, 2, 28, NULL, 90, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(322, 45, 2, 28, NULL, 91, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(323, 45, 2, 29, NULL, 93, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(324, 45, 2, 29, NULL, 94, 'wq', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(325, 45, 2, 29, NULL, 95, 'q', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(326, 45, 2, 29, NULL, 96, 'dqwd', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(327, 45, 2, 29, NULL, 97, 'qdqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(328, 45, 2, 29, NULL, 98, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(329, 45, 2, 30, NULL, NULL, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(330, 45, 2, 31, NULL, NULL, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(331, 45, 2, 32, 38, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(332, 45, 2, 32, 39, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(333, 45, 2, 32, 40, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(334, 45, 2, 32, 41, 99, 'dqw', NULL, NULL, '2025-01-21 08:58:50', '2025-01-21 09:00:18'),
(335, 45, 2, 32, 42, 100, 'qdw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(336, 45, 2, 32, 43, 100, 'dwq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(337, 45, 2, 32, 44, 100, 'dqw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(338, 45, 2, 32, 45, 101, 'dqw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(339, 45, 2, 32, 46, 101, 'qwd', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(340, 45, 2, 32, 47, 101, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(341, 45, 2, 32, 48, 101, 'wq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(342, 45, 2, 32, 49, 101, 'dwq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(343, 45, 2, 32, 50, 101, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(344, 45, 2, 32, 51, 102, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(345, 45, 2, 32, 52, 102, 'wq', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(346, 45, 2, 33, NULL, NULL, 'qw', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(347, 45, 2, 34, 53, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(348, 45, 2, 34, 54, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(349, 45, 2, 34, 55, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(350, 45, 2, 34, 56, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(351, 45, 2, 34, 57, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(352, 45, 2, 34, 58, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(353, 45, 2, 34, 59, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(354, 45, 2, 34, 60, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(355, 45, 2, 34, 61, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(356, 45, 2, 34, 62, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(357, 45, 2, 34, 63, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(358, 45, 2, 34, 64, 104, 'q', NULL, NULL, '2025-01-21 08:58:51', '2025-01-21 09:00:18'),
(359, 45, 2, 34, 65, 104, 'q', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(360, 45, 2, 34, 66, 104, 'dw', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(361, 45, 2, 34, 67, 105, 'wd', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(362, 45, 2, 34, 68, 105, 'ww', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(363, 45, 2, 34, 69, 105, 'qwq', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(364, 45, 2, 34, 70, 105, '1ss', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(365, 45, 2, 34, 71, 105, 'as', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(366, 45, 2, 34, 72, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(367, 45, 2, 34, 73, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(368, 45, 2, 34, 74, 105, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(369, 45, 2, 34, 75, 106, 'sa', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(370, 45, 2, 34, 76, 106, 'as', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(371, 45, 2, 34, 77, 106, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(372, 45, 2, 34, 78, 106, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(373, 45, 2, 35, NULL, 107, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(374, 45, 3, 36, NULL, NULL, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(375, 45, 3, 37, NULL, NULL, 'a', NULL, NULL, '2025-01-21 08:58:52', '2025-01-21 09:00:19'),
(376, 46, 1, 10, NULL, 23, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:28:39'),
(377, 46, 1, 10, NULL, 24, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:28:39'),
(378, 46, 1, 10, NULL, 45, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32'),
(379, 46, 1, 10, NULL, 59, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32'),
(380, 46, 1, 10, NULL, 92, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:20', '2025-01-22 00:29:32'),
(381, 46, 1, 11, NULL, 25, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(382, 46, 1, 11, NULL, 26, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(383, 46, 1, 11, NULL, 27, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(384, 46, 1, 12, NULL, 28, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(385, 46, 1, 12, NULL, 29, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(386, 46, 1, 12, NULL, 30, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(387, 46, 1, 12, NULL, 31, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(388, 46, 1, 12, NULL, 32, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(389, 46, 1, 12, NULL, 33, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(390, 46, 1, 12, NULL, 34, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(391, 46, 1, 12, NULL, 35, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(392, 46, 1, 12, NULL, 36, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(393, 46, 1, 12, NULL, 37, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(394, 46, 1, 12, NULL, 38, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:29:32'),
(395, 46, 1, 13, NULL, NULL, 'Ada, Radiasi komputer 8 jam/hari selama 15 tahun, Sinar UV 8 jam/hari selama 4 tahun, Kebisingan 6 jam/hari selama 4 tahun, Bahan kimia 3 jam/hari selama 4  tahun, Debu/asap 6 jam/hari selama 4 tahun', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:30:21'),
(396, 46, 1, 15, NULL, NULL, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29'),
(397, 46, 1, 16, NULL, 39, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29'),
(398, 46, 1, 16, NULL, 40, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29'),
(399, 46, 1, 16, NULL, 41, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:29'),
(400, 46, 1, 17, NULL, 42, '172 Cm', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30'),
(401, 46, 1, 17, NULL, 43, '61 Kg', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30'),
(402, 46, 1, 17, NULL, 44, '116/71 mmHg.', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30'),
(403, 46, 1, 17, NULL, 46, '77 x/menit', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:31:30'),
(404, 46, 1, 18, NULL, 47, 'Tidak', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:55'),
(405, 46, 1, 18, NULL, 48, 'Ada, OD:-3 OS:-4', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56'),
(406, 46, 1, 18, 29, 49, 'OD : 6/60 , OS : 6/60', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56'),
(407, 46, 1, 18, 30, 49, 'OD : 6/6 , OS : 6/6', NULL, NULL, '2025-01-22 00:01:21', '2025-01-22 00:36:56'),
(408, 46, 1, 18, NULL, 50, 'Tidak Ada', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(409, 46, 1, 19, 31, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(410, 46, 1, 19, 32, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(411, 46, 1, 19, 33, 51, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(412, 46, 1, 19, NULL, 52, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(413, 46, 1, 19, 34, 53, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(414, 46, 1, 19, 35, 53, 'T1 - T1', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(415, 46, 1, 20, NULL, 54, 'Cukup', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(416, 46, 1, 20, NULL, 55, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(417, 46, 1, 20, NULL, 56, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(418, 46, 1, 20, NULL, 57, 'Karang gigi', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(419, 46, 1, 21, NULL, 58, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(420, 46, 1, 22, NULL, 60, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(421, 46, 1, 22, NULL, 61, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(422, 46, 1, 22, NULL, 62, 'Normal', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:36:56'),
(423, 46, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(424, 46, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(425, 46, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(426, 46, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(427, 46, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(428, 46, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(429, 46, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(430, 46, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(431, 46, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(432, 46, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(433, 46, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(434, 46, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(435, 46, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(436, 46, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(437, 46, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(438, 46, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(439, 46, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(440, 46, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 00:01:22', '2025-01-22 00:28:41'),
(441, 46, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41'),
(442, 46, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41'),
(443, 46, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:41'),
(444, 46, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(445, 46, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(446, 46, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(447, 46, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(448, 46, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(449, 46, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(450, 46, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(451, 46, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(452, 46, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(453, 46, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(454, 46, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(455, 46, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(456, 46, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(457, 46, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(458, 46, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(459, 46, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(460, 46, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(461, 46, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(462, 46, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(463, 46, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(464, 46, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(465, 46, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(466, 46, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(467, 46, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(468, 46, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(469, 46, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:42'),
(470, 46, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:23', '2025-01-22 00:28:43'),
(471, 46, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(472, 46, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(473, 46, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(474, 46, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(475, 46, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(476, 46, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(477, 46, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(478, 46, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(479, 46, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(480, 46, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(481, 46, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(482, 46, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(483, 46, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(484, 46, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(485, 46, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(486, 46, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(487, 46, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(488, 46, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(489, 46, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(490, 46, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(491, 46, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(492, 46, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(493, 46, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(494, 46, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(495, 46, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(496, 46, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(497, 46, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(498, 46, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(499, 46, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(500, 46, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:43'),
(501, 46, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:24', '2025-01-22 00:28:44'),
(502, 46, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(503, 46, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(504, 46, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(505, 46, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(506, 46, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(507, 46, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(508, 46, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(509, 46, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(510, 46, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(511, 46, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(512, 46, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(513, 46, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(514, 46, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(515, 46, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(516, 46, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(517, 46, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(518, 46, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(519, 46, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(520, 46, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:25', '2025-01-22 00:28:44'),
(521, 46, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(522, 46, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(523, 46, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(524, 46, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(525, 46, 6, 56, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(526, 46, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 00:01:26', '2025-01-22 00:28:44'),
(527, 46, 1, 17, NULL, 108, 'N/A', NULL, NULL, NULL, '2025-01-22 01:57:06'),
(528, 47, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(529, 47, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(530, 47, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(531, 47, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(532, 47, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(533, 47, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(534, 47, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(535, 47, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12'),
(536, 47, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12'),
(537, 47, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-22 02:02:31', '2025-01-22 02:05:12'),
(538, 47, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(539, 47, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(540, 47, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(541, 47, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(542, 47, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(543, 47, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(544, 47, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(545, 47, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(546, 47, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(547, 47, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(548, 47, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(549, 47, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(550, 47, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(551, 47, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(552, 47, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(553, 47, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(554, 47, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(555, 47, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(556, 47, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(557, 47, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(558, 47, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(559, 47, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(560, 47, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(561, 47, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:12'),
(562, 47, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13'),
(563, 47, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13'),
(564, 47, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-22 02:02:32', '2025-01-22 02:05:13'),
(565, 47, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(566, 47, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(567, 47, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(568, 47, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(569, 47, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(570, 47, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(571, 47, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(572, 47, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(573, 47, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(574, 47, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(575, 47, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(576, 47, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(577, 47, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(578, 47, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(579, 47, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(580, 47, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(581, 47, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(582, 47, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(583, 47, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(584, 47, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(585, 47, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(586, 47, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:13'),
(587, 47, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(588, 47, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(589, 47, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(590, 47, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(591, 47, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(592, 47, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(593, 47, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 02:02:33', '2025-01-22 02:05:14'),
(594, 47, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(595, 47, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(596, 47, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(597, 47, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(598, 47, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(599, 47, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(600, 47, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(601, 47, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(602, 47, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(603, 47, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(604, 47, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(605, 47, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(606, 47, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(607, 47, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(608, 47, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(609, 47, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(610, 47, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(611, 47, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(612, 47, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(613, 47, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:14'),
(614, 47, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(615, 47, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(616, 47, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(617, 47, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(618, 47, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(619, 47, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(620, 47, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(621, 47, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(622, 47, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(623, 47, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(624, 47, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:34', '2025-01-22 02:05:15'),
(625, 47, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(626, 47, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(627, 47, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(628, 47, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(629, 47, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(630, 47, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(631, 47, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(632, 47, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(633, 47, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(634, 47, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(635, 47, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(636, 47, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(637, 47, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(638, 47, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(639, 47, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(640, 47, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(641, 47, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(642, 47, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(643, 47, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:35', '2025-01-22 02:05:15'),
(644, 47, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:15'),
(645, 47, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(646, 47, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(647, 47, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(648, 47, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(649, 47, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(650, 47, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(651, 47, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(652, 47, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(653, 47, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(654, 47, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(655, 47, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(656, 47, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(657, 47, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 02:05:16'),
(658, 47, 3, 36, NULL, NULL, 'Sinus', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(659, 47, 3, 37, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(660, 47, 3, 38, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(661, 47, 3, 39, NULL, NULL, '89 x/menit', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(662, 47, 3, 40, NULL, NULL, '89 x/menit', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(663, 47, 3, 41, NULL, NULL, '0,14 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(664, 47, 3, 42, NULL, NULL, '0,09 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(665, 47, 3, 43, NULL, NULL, '0,35 Second', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(666, 47, 3, 44, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(667, 47, 3, 45, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(668, 47, 3, 46, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(669, 47, 3, 47, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(670, 47, 3, 48, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(671, 47, 3, 49, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(672, 47, 3, 50, NULL, NULL, 'Normal', NULL, NULL, '2025-01-22 02:02:36', '2025-01-22 04:57:45'),
(673, 47, 4, 51, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(674, 47, 4, 52, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(675, 47, 5, 53, NULL, NULL, '3.52', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(676, 47, 5, 54, NULL, NULL, '3.61', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(677, 47, 5, 55, NULL, NULL, '97.51', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(678, 47, 6, 56, NULL, NULL, 'Corakan Vaskular tampak normal  Tak tampak infiltrat pada kedua lapang paru', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:45'),
(679, 47, 6, 57, NULL, NULL, 'Tak tampak kelainan tulang', NULL, NULL, '2025-01-22 02:02:37', '2025-01-22 04:57:46'),
(680, 48, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:26:09', '2025-01-22 02:26:21'),
(681, 48, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:26:09', '2025-01-22 02:26:21'),
(682, 48, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21'),
(683, 48, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21'),
(684, 48, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21'),
(685, 48, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21'),
(686, 48, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:26:10', '2025-01-22 02:26:21'),
(687, 49, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:44'),
(688, 49, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:44'),
(689, 49, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(690, 49, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(691, 49, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(692, 49, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(693, 49, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(694, 49, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(695, 49, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(696, 49, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(697, 49, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(698, 49, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(699, 49, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:27:32', '2025-01-22 02:27:45'),
(700, 50, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(701, 50, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(702, 50, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(703, 50, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(704, 50, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(705, 50, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(706, 50, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(707, 50, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43');
INSERT INTO `keterangans` (`id`, `pemeriksaan_id`, `id_mcu`, `bidang_id`, `parameter_id`, `metode_id`, `hasil`, `kesan`, `catatan`, `created_at`, `updated_at`) VALUES
(708, 50, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(709, 50, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(710, 50, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(711, 50, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(712, 50, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(713, 50, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(714, 50, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44'),
(715, 50, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44'),
(716, 50, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44'),
(717, 50, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:33', '2025-01-22 02:28:44'),
(718, 50, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(719, 50, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(720, 50, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(721, 50, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(722, 50, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(723, 50, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(724, 50, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(725, 50, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(726, 50, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(727, 50, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(728, 50, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(729, 50, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(730, 50, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(731, 50, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(732, 50, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(733, 50, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(734, 50, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(735, 50, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(736, 50, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(737, 50, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(738, 50, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(739, 50, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(740, 50, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:44'),
(741, 50, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:45'),
(742, 50, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:34', '2025-01-22 02:28:45'),
(743, 50, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(744, 50, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(745, 50, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(746, 50, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(747, 50, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(748, 50, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(749, 50, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(750, 50, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(751, 50, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(752, 50, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(753, 50, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(754, 50, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(755, 50, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(756, 50, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(757, 50, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 02:28:35', '2025-01-22 02:28:45'),
(758, 51, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(759, 51, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(760, 51, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(761, 51, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(762, 51, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(763, 51, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(764, 51, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(765, 51, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(766, 51, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(767, 51, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(768, 51, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(769, 51, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(770, 51, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(771, 51, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(772, 51, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-22 05:01:14', '2025-01-22 05:02:35'),
(773, 51, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(774, 51, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(775, 51, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(776, 51, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(777, 51, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(778, 51, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(779, 51, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(780, 51, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:35'),
(781, 51, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(782, 51, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(783, 51, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(784, 51, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(785, 51, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(786, 51, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(787, 51, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(788, 51, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(789, 51, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(790, 51, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(791, 51, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(792, 51, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(793, 51, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(794, 51, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(795, 51, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(796, 51, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-22 05:01:15', '2025-01-22 05:02:36'),
(797, 51, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(798, 51, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(799, 51, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(800, 51, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(801, 51, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(802, 51, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(803, 51, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(804, 51, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(805, 51, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(806, 51, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(807, 51, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(808, 51, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(809, 51, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(810, 51, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(811, 51, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:36'),
(812, 51, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(813, 51, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(814, 51, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(815, 51, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(816, 51, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(817, 51, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(818, 51, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(819, 51, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(820, 51, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(821, 51, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(822, 51, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(823, 51, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(824, 51, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(825, 51, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-22 05:01:16', '2025-01-22 05:02:37'),
(826, 51, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(827, 51, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(828, 51, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(829, 51, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(830, 51, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(831, 51, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(832, 51, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(833, 51, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(834, 51, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(835, 51, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(836, 51, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(837, 51, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(838, 51, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(839, 51, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(840, 51, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:37'),
(841, 51, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(842, 51, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(843, 51, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(844, 51, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(845, 51, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(846, 51, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(847, 51, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(848, 51, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-22 05:01:17', '2025-01-22 05:02:38'),
(849, 51, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(850, 51, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(851, 51, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(852, 51, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(853, 51, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(854, 51, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(855, 51, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(856, 51, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(857, 51, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(858, 51, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(859, 51, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(860, 51, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(861, 51, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(862, 51, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(863, 51, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(864, 51, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(865, 51, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(866, 51, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(867, 51, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(868, 51, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(869, 51, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(870, 51, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(871, 51, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(872, 51, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:38'),
(873, 51, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(874, 51, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(875, 51, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(876, 51, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(877, 51, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(878, 51, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:18', '2025-01-22 05:02:39'),
(879, 51, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(880, 51, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(881, 51, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(882, 51, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(883, 51, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(884, 51, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(885, 51, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(886, 51, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(887, 51, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(888, 51, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(889, 51, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(890, 51, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(891, 51, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(892, 51, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(893, 51, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(894, 51, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(895, 51, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(896, 51, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(897, 51, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(898, 51, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(899, 51, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(900, 51, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(901, 51, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(902, 51, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:39'),
(903, 51, 4, 51, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(904, 51, 4, 52, NULL, NULL, 'Ambang dengar dalam batas normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(905, 51, 5, 53, NULL, NULL, '3.52', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(906, 51, 5, 54, NULL, NULL, '3.61', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(907, 51, 5, 55, NULL, NULL, '97.51', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(908, 51, 6, 56, NULL, NULL, 'Bentuk dan letak jantung normal', NULL, NULL, '2025-01-22 05:01:19', '2025-01-22 05:02:40'),
(909, 51, 6, 57, NULL, NULL, 'Corakan Vaskular tampak normal  Tak tampak infiltrat pada kedua lapang paru', NULL, NULL, '2025-01-22 05:01:20', '2025-01-22 05:02:40'),
(910, 51, 6, 58, NULL, NULL, 'Tak tampak kelainan tulang', NULL, NULL, '2025-01-22 05:01:20', '2025-01-22 05:02:40'),
(911, 52, 3, 36, NULL, NULL, 'Tidak', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(912, 52, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(913, 52, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(914, 52, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(915, 52, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(916, 52, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(917, 52, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(918, 52, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(919, 52, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(920, 52, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:13'),
(921, 52, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14'),
(922, 52, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14'),
(923, 52, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14'),
(924, 52, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14'),
(925, 52, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:11:40', '2025-01-23 18:12:14'),
(926, 53, 3, 36, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:26', '2025-01-23 18:55:16'),
(927, 53, 3, 37, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:26', '2025-01-23 18:55:16'),
(928, 53, 3, 38, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16'),
(929, 53, 3, 39, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16'),
(930, 53, 3, 40, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16'),
(931, 53, 3, 41, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:16'),
(932, 53, 3, 42, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(933, 53, 3, 43, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(934, 53, 3, 44, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(935, 53, 3, 45, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(936, 53, 3, 46, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(937, 53, 3, 47, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(938, 53, 3, 48, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(939, 53, 3, 49, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(940, 53, 3, 50, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(941, 53, 1, 10, NULL, 23, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(942, 53, 1, 10, NULL, 24, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(943, 53, 1, 10, NULL, 45, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(944, 53, 1, 10, NULL, 59, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(945, 53, 1, 10, NULL, 92, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(946, 53, 1, 11, NULL, 25, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(947, 53, 1, 11, NULL, 26, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(948, 53, 1, 11, NULL, 27, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(949, 53, 1, 12, NULL, 28, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(950, 53, 1, 12, NULL, 29, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(951, 53, 1, 12, NULL, 30, 'N/A', NULL, NULL, '2025-01-23 18:54:27', '2025-01-23 18:55:17'),
(952, 53, 1, 12, NULL, 31, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17'),
(953, 53, 1, 12, NULL, 32, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17'),
(954, 53, 1, 12, NULL, 33, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17'),
(955, 53, 1, 12, NULL, 34, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:17'),
(956, 53, 1, 12, NULL, 35, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(957, 53, 1, 12, NULL, 36, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(958, 53, 1, 12, NULL, 37, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(959, 53, 1, 12, NULL, 38, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(960, 53, 1, 13, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(961, 53, 1, 15, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(962, 53, 1, 16, NULL, 39, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(963, 53, 1, 16, NULL, 40, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(964, 53, 1, 16, NULL, 41, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(965, 53, 1, 17, NULL, 42, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(966, 53, 1, 17, NULL, 43, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(967, 53, 1, 17, NULL, 44, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(968, 53, 1, 17, NULL, 46, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(969, 53, 1, 17, NULL, 108, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(970, 53, 1, 18, NULL, 47, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(971, 53, 1, 18, NULL, 48, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(972, 53, 1, 18, 29, 49, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(973, 53, 1, 18, 30, 49, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(974, 53, 1, 18, NULL, 50, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(975, 53, 1, 19, 31, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(976, 53, 1, 19, 32, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(977, 53, 1, 19, 33, 51, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(978, 53, 1, 19, NULL, 52, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(979, 53, 1, 19, 34, 53, 'N/A', NULL, NULL, '2025-01-23 18:54:28', '2025-01-23 18:55:18'),
(980, 53, 1, 19, 35, 53, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:18'),
(981, 53, 1, 20, NULL, 54, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(982, 53, 1, 20, NULL, 55, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(983, 53, 1, 20, NULL, 56, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(984, 53, 1, 20, NULL, 57, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(985, 53, 1, 21, NULL, 58, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(986, 53, 1, 22, NULL, 60, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(987, 53, 1, 22, NULL, 61, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(988, 53, 1, 22, NULL, 62, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(989, 53, 1, 22, NULL, 63, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(990, 53, 1, 23, NULL, 64, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(991, 53, 1, 23, NULL, 65, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(992, 53, 1, 23, NULL, 66, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(993, 53, 1, 23, NULL, 67, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(994, 53, 1, 23, NULL, 68, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(995, 53, 1, 23, 36, 69, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(996, 53, 1, 23, 37, 69, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(997, 53, 1, 23, NULL, 70, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(998, 53, 1, 24, NULL, 71, 'N/A', NULL, NULL, '2025-01-23 18:54:29', '2025-01-23 18:55:19'),
(999, 53, 1, 24, NULL, 72, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1000, 53, 1, 24, NULL, 73, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1001, 53, 1, 24, NULL, 74, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1002, 53, 1, 24, NULL, 75, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1003, 53, 1, 24, NULL, 76, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1004, 53, 1, 25, NULL, 77, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1005, 53, 1, 25, NULL, 78, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:19'),
(1006, 53, 1, 25, NULL, 79, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1007, 53, 1, 25, NULL, 80, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1008, 53, 1, 25, NULL, 81, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1009, 53, 1, 25, NULL, 82, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1010, 53, 1, 26, NULL, 83, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1011, 53, 1, 26, NULL, 84, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1012, 53, 1, 27, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1013, 53, 2, 28, NULL, 85, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1014, 53, 2, 28, NULL, 86, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1015, 53, 2, 28, NULL, 87, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1016, 53, 2, 28, NULL, 88, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1017, 53, 2, 28, NULL, 89, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1018, 53, 2, 28, NULL, 90, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1019, 53, 2, 28, NULL, 91, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1020, 53, 2, 29, NULL, 93, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1021, 53, 2, 29, NULL, 94, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1022, 53, 2, 29, NULL, 95, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1023, 53, 2, 29, NULL, 96, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1024, 53, 2, 29, NULL, 97, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1025, 53, 2, 29, NULL, 98, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1026, 53, 2, 30, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:30', '2025-01-23 18:55:20'),
(1027, 53, 2, 31, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1028, 53, 2, 32, 38, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1029, 53, 2, 32, 39, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1030, 53, 2, 32, 40, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1031, 53, 2, 32, 41, 99, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1032, 53, 2, 32, 42, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1033, 53, 2, 32, 43, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:20'),
(1034, 53, 2, 32, 44, 100, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1035, 53, 2, 32, 45, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1036, 53, 2, 32, 46, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1037, 53, 2, 32, 47, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1038, 53, 2, 32, 48, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1039, 53, 2, 32, 49, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1040, 53, 2, 32, 50, 101, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1041, 53, 2, 32, 51, 102, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1042, 53, 2, 32, 52, 102, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1043, 53, 2, 33, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1044, 53, 2, 34, 53, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1045, 53, 2, 34, 54, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1046, 53, 2, 34, 55, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1047, 53, 2, 34, 56, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1048, 53, 2, 34, 57, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1049, 53, 2, 34, 58, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1050, 53, 2, 34, 59, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1051, 53, 2, 34, 60, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1052, 53, 2, 34, 61, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1053, 53, 2, 34, 62, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1054, 53, 2, 34, 63, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1055, 53, 2, 34, 64, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:31', '2025-01-23 18:55:21'),
(1056, 53, 2, 34, 65, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:21'),
(1057, 53, 2, 34, 66, 104, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1058, 53, 2, 34, 67, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1059, 53, 2, 34, 68, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1060, 53, 2, 34, 69, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1061, 53, 2, 34, 70, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1062, 53, 2, 34, 71, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1063, 53, 2, 34, 72, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1064, 53, 2, 34, 73, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1065, 53, 2, 34, 74, 105, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1066, 53, 2, 34, 75, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1067, 53, 2, 34, 76, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1068, 53, 2, 34, 77, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1069, 53, 2, 34, 78, 106, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1070, 53, 2, 35, NULL, 107, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1071, 53, 4, 51, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1072, 53, 4, 52, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1073, 53, 5, 53, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1074, 53, 5, 54, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1075, 53, 5, 55, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1076, 53, 6, 56, NULL, NULL, 'Dalam Batas Normal', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1077, 53, 6, 57, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22'),
(1078, 53, 6, 58, NULL, NULL, 'N/A', NULL, NULL, '2025-01-23 18:54:32', '2025-01-23 18:55:22');

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
(1, 'Hematologi Lengkap Aston 111', 4, 3, NULL, NULL, NULL, '2024-11-20 07:21:43', '2024-12-05 04:05:14'),
(2, 'Kolesterol Aston', 4, 1, NULL, NULL, NULL, '2024-12-03 05:59:03', '2024-12-03 05:59:03'),
(3, 'Hematologi Lengkap Front One', 3, 2, NULL, NULL, NULL, '2024-12-03 06:13:04', '2024-12-05 12:59:20'),
(4, 'Hematologi Lengkap Aston 22', 4, 1, NULL, NULL, NULL, '2025-01-20 16:13:48', '2025-01-20 16:13:48');

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
(75, 106, 'Amphetamine (AMP)', 'Negatif', NULL, NULL, '2025-01-16 05:23:33', '2025-01-16 05:23:33'),
(76, 106, 'Mariyuana (THC)', 'Negatif', NULL, NULL, '2025-01-16 05:25:57', '2025-01-16 05:25:57'),
(77, 106, 'Morphine (Opiat)', 'Negatif', NULL, NULL, '2025-01-16 05:26:14', '2025-01-16 05:26:14'),
(78, 106, 'Methamphetamine (MET)', 'Negatif', NULL, NULL, '2025-01-16 05:26:38', '2025-01-16 05:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `jenis_identitas` enum('KTP','SIM','PASSPORT') NOT NULL,
  `no_identitas` varchar(24) NOT NULL,
  `bpjs` varchar(24) DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `jenis_identitas`, `no_identitas`, `bpjs`, `no_telp`, `alamat`, `created_at`, `updated_at`, `perusahaan_id`) VALUES
(1, 'Rahsaan Romaguera', '2006-10-30', 'P', 'KTP', '4820649028543', '239049114341', '08123xxxxxx', '53204 Mathias Centers Apt. 937\nStreichhaven, GA 04457-3062', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL),
(2, 'Vivianne Hayes', '2010-01-28', 'L', 'KTP', '6448646554531', '090950115746', '08123xxxxxx', '94028 Rath Inlet\nSouth Eloy, TN 26129', '2024-02-09 00:10:11', '2024-02-09 00:10:11', 4),
(3, 'Miss Petra Lebsack PhD', '2019-06-14', 'L', 'SIM', '1020341413372', '485214704553', '08123xxxxxx', '391 Kelli Extension Apt. 070\nEast Otilia, MI 27361-3951', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL),
(4, 'Gino Dibbert', '1975-01-18', 'L', 'PASSPORT', '2256777324258', '754637091159', '08123xxxxxx', '816 Cummings Knolls\nAracelyburgh, CT 38735-3280', '2024-02-09 00:10:12', '2024-02-09 00:10:12', 3),
(5, 'Prof. Gardner Hilpert I', '1982-10-13', 'P', 'SIM', '4620412593788', '633135512093', '08123xxxxxx', '178 Weber Rest\nRueckerburgh, CA 32204', '2024-02-09 00:10:12', '2024-02-09 00:10:12', 3),
(6, 'Delaney Kuhn', '1991-03-28', 'L', 'PASSPORT', '5629866384411', '854688169735', '08123xxxxxx', '9347 Nyasia Stravenue\nBraedenborough, UT 00752', '2024-02-09 00:10:13', '2024-02-09 00:10:13', NULL),
(7, 'Ms. Jacklyn Kiehn', '2001-04-30', 'L', 'SIM', '1242879583414', '724895637915', '08123xxxxxx', '4830 Bernadette Plains\nPort Karley, AZ 70545', '2024-02-09 00:10:14', '2024-02-09 00:10:14', NULL),
(8, 'Mr. Einar Klocko Sr.', '1997-08-03', 'L', 'PASSPORT', '4946299259865', '345586548250', '08123xxxxxx', '32911 America Greens\nBatzbury, CO 67203-2792', '2024-02-09 00:10:15', '2024-02-09 00:10:15', 4),
(9, 'Candace Sporer', '1979-06-13', 'P', 'PASSPORT', '3854742931650', '943784249022', '08123xxxxxx', '66050 Ankunding Estates Apt. 109\nPort Joshire, AK 38394-8850', '2024-02-09 00:10:15', '2024-02-09 00:10:15', NULL),
(10, 'Nadia Cormier', '1992-12-03', 'L', 'PASSPORT', '9378889504236', '644719125187', '08123xxxxxx', '55508 Satterfield Place\nNew Hallestad, WA 65135', '2024-02-09 00:10:16', '2024-02-09 00:10:16', 4);

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
  `status_permohonan` enum('APS','JP','BPJS','RUJUKAN') DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemeriksaans`
--

INSERT INTO `pemeriksaans` (`id`, `pasien_id`, `status_permohonan`, `dokter_id`, `status_id`, `created_at`, `updated_at`) VALUES
(39, 2, 'APS', 3, 2, '2025-01-21 02:04:42', '2025-01-21 02:26:19'),
(40, 1, 'APS', 2, 2, '2025-01-21 02:21:24', '2025-01-21 06:16:19'),
(41, 5, 'JP', 3, 2, '2025-01-21 02:22:32', '2025-01-21 06:04:08'),
(42, 10, 'APS', 3, 2, '2025-01-21 05:58:18', '2025-01-21 05:58:18'),
(43, 3, 'APS', 3, 3, '2025-01-21 06:19:06', '2025-01-21 06:20:30'),
(44, 2, 'BPJS', 3, 1, '2025-01-21 08:57:27', '2025-01-22 00:18:07'),
(45, 2, 'APS', 3, 3, '2025-01-21 08:58:50', '2025-01-21 09:00:17'),
(46, 10, 'APS', 3, 3, '2025-01-22 00:01:20', '2025-01-22 01:57:06'),
(47, 2, 'RUJUKAN', 3, 1, '2025-01-22 02:02:31', '2025-01-22 02:05:11'),
(48, 5, 'APS', 3, 3, '2025-01-22 02:26:09', '2025-01-22 02:26:21'),
(49, 2, 'APS', 3, 3, '2025-01-22 02:27:32', '2025-01-22 02:27:44'),
(50, 2, 'APS', 3, 3, '2025-01-22 02:28:33', '2025-01-22 02:28:43'),
(51, 4, 'APS', 3, 3, '2025-01-22 05:01:14', '2025-01-22 05:02:49'),
(52, 7, 'JP', 3, 3, '2025-01-23 18:11:39', '2025-01-23 18:12:13'),
(53, 10, 'APS', 3, 3, '2025-01-23 18:54:26', '2025-01-23 18:55:29');

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
  `marketing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `contact_person`, `jabatan`, `alamat`, `kota`, `no_hp`, `email`, `nama_perusahaan`, `updated_at`, `created_at`, `marketing`) VALUES
(3, 'GAMASA', 'PIC', 'Jl malioboro tugu', 'Yogyakarta', '085945170201', 'aston@gmail.com', 'Front One Hotel', '2024-11-20 07:17:57', '2024-11-12 14:38:08', 1),
(4, 'DESSY', 'Dosen', 'CILEGON', 'CILEGON', '085945170201', 'driver1@gmail.com', 'ASTON CILEGON BOUTIQUE HOTEL', '2024-11-12 15:11:09', '2024-11-12 15:01:06', 3);

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
(4, 'Poli', '2024-02-09 00:10:20', '2024-02-09 00:10:20');

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
(3, 'Selesai', NULL, NULL),
(4, 'Dibatalkan', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `nama_lengkap`, `no_telp`, `roles_id`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$ySmOJm9vquIqRUFRTvMxou1hwelaPcPCe.u1PUhsgl1oeLO/MuyaK', 'Super Admin', '08123xxxxxx', 1, NULL, NULL, '2024-02-09 00:10:18', '2024-02-09 00:55:21'),
(2, 'administrasi', 'administrasi@mail.com', '$2y$10$RykqoeYdWWQaQH7/ka2s/OqGZSpHh/NQDV8QyubAmJDnXJvxreG1O', 'Administrasi', '08123xxxxxx', 2, NULL, NULL, '2024-02-09 00:10:18', '2024-02-09 01:00:36'),
(3, 'Laborat', 'laborat@mail.com', '$2y$10$Ud6ck7OQy3OZvpua3DQu4u8tZNrJbeyqlUu8MOUN436iJ6fjEQqnC', 'Nur Laila Irawati', '08123xxxxxx', 3, NULL, NULL, '2024-02-09 00:10:19', '2024-02-09 01:01:37'),
(4, 'Poli', 'poli@mail.com', '$2y$10$WJ/qlDhGRugCZVPIP3gAr.PWRDpTK67g051VnTNUZwBm/fT3Wj.XG', 'Poli', '08123xxxxxx', 4, NULL, NULL, '2024-02-09 00:10:19', '2024-02-09 01:02:26');

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
  ADD UNIQUE KEY `pasiens_no_identitas_unique` (`no_identitas`),
  ADD UNIQUE KEY `pasiens_bpjs_unique` (`bpjs`);

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
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kesimpulan_mcu`
--
ALTER TABLE `kesimpulan_mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kesimpulan_pemeriksaan`
--
ALTER TABLE `kesimpulan_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `keterangans`
--
ALTER TABLE `keterangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parameter_pemeriksaans`
--
ALTER TABLE `parameter_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pemeriksaans`
--
ALTER TABLE `pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
