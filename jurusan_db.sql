-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 09:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jurusan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `created_at`, `updated_at`, `nama`, `deskripsi`) VALUES
(1, NULL, '2023-11-18 23:01:38', 'Teknik Informatika', 'Jurusan ini mempelajari tentang pengembangan perangkat lunak, pemrograman, jaringan komputer, dan sistem informasi. (edit)'),
(3, NULL, NULL, 'Sistem Informasi', 'Jurusan ini fokus pada pengelolaan informasi dan teknologi untuk mendukung kegiatan bisnis dan pengambilan keputusan.\r\n'),
(4, NULL, NULL, 'Ilmu Komputer', 'Jurusan ini melibatkan studi tentang algoritma, pemrosesan data, kecerdasan buatan, dan teori komputasi.'),
(5, NULL, NULL, 'Teknologi Informasi', 'Jurusan ini menggabungkan aspek teknologi dan bisnis, dengan fokus pada pengelolaan sistem informasi dan infrastruktur teknologi.');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `created_at`, `updated_at`, `id_jurusan`, `nama`, `deskripsi`) VALUES
(1, '2023-11-14 15:31:11', '2023-11-16 18:27:43', 1, 'Rekayasa Perangkat Lunak', 'Ini adalah mata pelajaran yang biasanya diajarkan di lembaga pendidikan tinggi dalam konteks teknologi informasi dan komputer.'),
(4, '2023-11-15 18:23:22', '2023-11-15 18:23:22', 5, 'Keamanan Informasi', 'Memahami aspek keamanan dalam TI, termasuk enkripsi, keamanan jaringan, dan manajemen risiko.'),
(5, '2023-11-16 18:04:55', '2023-11-16 18:04:55', 1, 'Struktur Data dan Algoritma', 'Mata kuliah ini fokus pada pemahaman dasar struktur data dan algoritma, yang merupakan dasar penting dalam pengembangan perangkat lunak.'),
(6, '2023-11-16 18:05:40', '2023-11-16 18:05:40', 1, 'Pemrograman Berorientasi Objek', 'Ini adalah mata kuliah yang mengajarkan konsep-konsep dasar pemrograman berorientasi objek (OOP), di mana siswa mempelajari cara mengorganisir dan mengelola kode menggunakan objek dan kelas.'),
(7, '2023-11-16 18:06:12', '2023-11-16 18:06:12', 1, 'Basis Data', 'Mata kuliah ini membahas konsep dasar basis data, termasuk desain basis data, SQL (Structured Query Language), dan cara mengelola data secara efisien dalam konteks pengembangan perangkat lunak.'),
(8, '2023-11-16 18:07:26', '2023-11-16 18:26:56', 3, 'Pemrograman Aplikasi Berbasis Web atau Mobile', 'Dalam mata kuliah ini, mahasiswa mempelajari pemrograman untuk pengembangan aplikasi berbasis web atau mobile.'),
(9, '2023-11-16 18:08:13', '2023-11-16 18:08:13', 1, 'Analisis dan Perancangan Sistem Informasi', 'Mata kuliah ini fokus pada metodologi analisis dan perancangan sistem informasi. Mahasiswa belajar mengidentifikasi kebutuhan bisnis, menganalisis proses bisnis, dan merancang solusi sistem informasi yang efektif.'),
(10, '2023-11-16 18:10:56', '2023-11-16 18:10:56', 3, 'Sistem Basis Data', 'Mata kuliah ini membahas konsep dasar dan pengelolaan basis data, termasuk desain basis data, SQL (Structured Query Language), dan pemeliharaan basis data.'),
(11, '2023-11-16 18:12:24', '2023-11-16 18:12:24', 4, 'Algoritma dan Struktur Data', 'Mata kuliah ini membahas tentang pengembangan algoritma efisien dan implementasi struktur data yang tepat untuk menyelesaikan masalah komputasi.'),
(12, '2023-11-16 18:12:53', '2023-11-16 18:12:53', 4, 'Pemrograman Komputer', 'Fokus pada pengajaran bahasa pemrograman dan konsep dasar pemrograman, termasuk sintaksis, logika pemrograman, dan pengembangan perangkat lunak.'),
(13, '2023-11-16 18:13:24', '2023-11-16 18:13:24', 4, 'Arsitektur Komputer', 'Mata kuliah ini membahas tentang prinsip-prinsip dasar arsitektur komputer, termasuk organisasi komputer, pemahaman tentang perangkat keras, dan cara komponen-komponen tersebut berinteraksi.'),
(14, '2023-11-16 18:15:03', '2023-11-16 18:15:03', 5, 'Jaringan Komputer', 'Mata kuliah ini fokus pada konsep jaringan komputer, protokol komunikasi, keamanan jaringan, dan administrasi sistem jaringan.'),
(15, '2023-11-16 18:15:40', '2023-11-16 18:15:40', 5, 'Basis Data', 'Mata kuliah ini membahas konsep dasar basis data, desain basis data, dan pemrograman basis data. Mahasiswa belajar mengelola dan mengakses data menggunakan sistem basis data.');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2023_11_13_172005_create_jurusans_table', 2),
(4, '2023_11_13_172111_create_mata_pelajarans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cesc Fabregas', 'cesc@yahoo.com', NULL, '$2y$10$JKF3vXY3foyU53W88YxqquwcPP8jXhSa5HyrGW5ohyqvnrohNUv02', NULL, '2023-11-01 20:56:37', '2023-11-01 20:56:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
