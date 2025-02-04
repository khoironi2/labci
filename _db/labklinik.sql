-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 02:57 AM
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_pemeriksaans`
--

INSERT INTO `bidang_pemeriksaans` (`id`, `name`, `id_mcu`, `created_at`, `updated_at`) VALUES
(1, 'Hematologi', 2, NULL, '2024-11-14 02:28:50'),
(2, 'Bakteriologi dan Parasitologo', NULL, NULL, NULL),
(3, 'Kimia Klinik', 2, NULL, '2024-11-14 02:29:46'),
(4, 'Faeces', NULL, NULL, NULL),
(5, 'Urinalisa', 2, NULL, '2024-11-13 03:28:53'),
(6, 'Imunoserologi', NULL, NULL, NULL),
(9, 'Riwayat Kesehatan', 1, '2024-11-13 03:29:34', '2024-11-13 03:29:34');

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
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `gelardepan`, `nama_lengkap`, `gelarbelakang`, `kategori`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `kota`, `no_hp`, `reward`, `marketing`, `bank`, `no_rek`, `updated_at`, `created_at`) VALUES
(2, 'Dr.', 'Irene Saveria', 'Sp.PD', 'Rekanan', '2024-11-29', 'Perempuan', 'Puncak Batu Luwuk', 'CILEGON', '085945170201', '5', 4, 'BRI', '1546545616111', '2024-11-13 04:56:38', '2024-11-13 04:51:27'),
(3, 'Dr.', 'Decsa Medika Hertanto', 'Sp.PD', 'Rekanan', '2024-11-13', 'Perempuan', 'CILEGON', 'CILEGON', '085945170201', '5', 2, 'Mandiri', '215556565221', '2024-11-13 04:57:15', '2024-11-13 04:57:15');

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
-- Table structure for table `keterangans`
--

CREATE TABLE `keterangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemeriksaan_id` bigint(20) UNSIGNED NOT NULL,
  `bidang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parameter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `metode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hasil` text DEFAULT NULL,
  `kesan` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Kimia Darah', NULL, '2024-11-13 08:55:20', 1, '35000', NULL, NULL),
(18, 'Darah Rutin', '2024-11-13 08:08:04', '2024-11-13 08:09:24', 1, NULL, NULL, NULL),
(21, 'Darah lengkap', '2024-11-13 08:57:59', '2024-11-13 08:57:59', 1, '34800', NULL, NULL),
(22, 'Hitung Jenis Lekosit', '2024-11-14 02:28:24', '2024-11-14 02:28:24', 1, '27000', NULL, NULL);

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
  `satuan` varchar(255) NOT NULL,
  `harga` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameter_pemeriksaans`
--

INSERT INTO `parameter_pemeriksaans` (`id`, `metode_id`, `parameter`, `nilai_rujukan`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(12, 21, 'Hemoglobin', 'P(13 - 18), W(12 - 16)', 'g/dL', 27000, '2024-11-13 23:53:06', '2024-11-14 04:47:00'),
(14, 21, 'Leukosit', '4 - 11', '10^3/uL', NULL, '2024-11-14 00:16:24', '2024-11-14 00:16:24'),
(15, 21, 'Hematokrit', 'P(40 - 54), W(37 - 46)', '%', NULL, '2024-11-14 00:27:01', '2024-11-14 00:27:01'),
(16, 21, 'Trombosit', '150 - 450', '10^3/uL', NULL, '2024-11-14 00:30:48', '2024-11-14 00:30:48'),
(17, 21, 'Eritrosit', 'P(4.50 - 5.90), W(3.90 -  5.40)', '10^6/uL', NULL, '2024-11-14 00:31:22', '2024-11-14 00:31:22'),
(18, 21, 'MCV', '82 - 92', 'fL', NULL, '2024-11-14 00:31:54', '2024-11-14 00:31:54'),
(19, 21, 'MCH', '27 – 31', 'Pg', NULL, '2024-11-14 00:32:20', '2024-11-14 00:32:20'),
(20, 21, 'MCHC', '31 – 37', 'g/dL', NULL, '2024-11-14 00:32:46', '2024-11-14 00:32:46'),
(21, 22, 'Basofil', '0 - 1', '%', NULL, '2024-11-14 02:37:00', '2024-11-14 02:37:00'),
(22, 22, 'Eosinofil', '1 - 3', '%', NULL, '2024-11-14 02:37:21', '2024-11-14 02:37:21'),
(23, 22, 'Neutrofil Batang', '2 - 6', '%', NULL, '2024-11-14 02:37:45', '2024-11-14 02:37:45'),
(24, 22, 'Neutrofil Segmen', '50 – 70', '%', NULL, '2024-11-14 02:38:39', '2024-11-14 02:38:39'),
(25, 22, 'Limfosit', '20 - 40', '%', NULL, '2024-11-14 02:38:57', '2024-11-14 02:38:57'),
(26, 22, 'Monosit', '2 - 8', '%', NULL, '2024-11-14 02:39:20', '2024-11-14 02:39:20');

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
(2, 'Vivianne Hayes', '2010-01-28', 'L', 'KTP', '6448646554531', '090950115746', '08123xxxxxx', '94028 Rath Inlet\nSouth Eloy, TN 26129', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL),
(3, 'Miss Petra Lebsack PhD', '2019-06-14', 'L', 'SIM', '1020341413372', '485214704553', '08123xxxxxx', '391 Kelli Extension Apt. 070\nEast Otilia, MI 27361-3951', '2024-02-09 00:10:11', '2024-02-09 00:10:11', NULL),
(4, 'Gino Dibbert', '1975-01-18', 'L', 'PASSPORT', '2256777324258', '754637091159', '08123xxxxxx', '816 Cummings Knolls\nAracelyburgh, CT 38735-3280', '2024-02-09 00:10:12', '2024-02-09 00:10:12', NULL),
(5, 'Prof. Gardner Hilpert I', '1982-10-13', 'P', 'SIM', '4620412593788', '633135512093', '08123xxxxxx', '178 Weber Rest\nRueckerburgh, CA 32204', '2024-02-09 00:10:12', '2024-02-09 00:10:12', NULL),
(6, 'Delaney Kuhn', '1991-03-28', 'L', 'PASSPORT', '5629866384411', '854688169735', '08123xxxxxx', '9347 Nyasia Stravenue\nBraedenborough, UT 00752', '2024-02-09 00:10:13', '2024-02-09 00:10:13', NULL),
(7, 'Ms. Jacklyn Kiehn', '2001-04-30', 'L', 'SIM', '1242879583414', '724895637915', '08123xxxxxx', '4830 Bernadette Plains\nPort Karley, AZ 70545', '2024-02-09 00:10:14', '2024-02-09 00:10:14', NULL),
(8, 'Mr. Einar Klocko Sr.', '1997-08-03', 'L', 'PASSPORT', '4946299259865', '345586548250', '08123xxxxxx', '32911 America Greens\nBatzbury, CO 67203-2792', '2024-02-09 00:10:15', '2024-02-09 00:10:15', NULL),
(9, 'Candace Sporer', '1979-06-13', 'P', 'PASSPORT', '3854742931650', '943784249022', '08123xxxxxx', '66050 Ankunding Estates Apt. 109\nPort Joshire, AK 38394-8850', '2024-02-09 00:10:15', '2024-02-09 00:10:15', NULL),
(10, 'Nadia Cormier', '1992-12-03', 'L', 'PASSPORT', '9378889504236', '644719125187', '08123xxxxxx', '55508 Satterfield Place\nNew Hallestad, WA 65135', '2024-02-09 00:10:16', '2024-02-09 00:10:16', NULL);

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `marketing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `contact_person`, `jabatan`, `alamat`, `kota`, `no_hp`, `email`, `nama_perusahaan`, `updated_at`, `created_at`, `marketing`) VALUES
(3, 'DESSY', 'PIC', 'CILEGON', 'CILEGON', '085945170201', 'aston@gmail.com', 'ASTON CILEGON BOUTIQUE HOTEL', '2024-11-12 14:38:08', '2024-11-12 14:38:08', 1),
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
(3, 'Laborat', 'laborat@mail.com', '$2y$10$Ud6ck7OQy3OZvpua3DQu4u8tZNrJbeyqlUu8MOUN436iJ6fjEQqnC', 'Laborat', '08123xxxxxx', 3, NULL, NULL, '2024-02-09 00:10:19', '2024-02-09 01:01:37'),
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
  ADD KEY `pemeriksaans_user_id_foreign` (`user_id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangans`
--
ALTER TABLE `keterangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mcu`
--
ALTER TABLE `mcu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metode_pemeriksaans`
--
ALTER TABLE `metode_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parameter_pemeriksaans`
--
ALTER TABLE `parameter_pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pemeriksaans`
--
ALTER TABLE `pemeriksaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  ADD CONSTRAINT `pemeriksaans_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `pemeriksaans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
