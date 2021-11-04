-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Agu 2021 pada 04.35
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alexcell`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'role owner'),
(2, 'admin', 'role admin'),
(3, 'karyawan', 'role karyawan'),
(4, 'user', 'role user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin@gmail.com', 2, '2021-07-22 22:59:16', 1),
(2, '::1', 'karyawan@gmail.com', 3, '2021-07-22 23:19:24', 1),
(3, '::1', 'owner@gmail.com', 1, '2021-07-23 00:24:50', 1),
(4, '::1', 'karyawan@gmail.com', NULL, '2021-07-23 00:32:19', 0),
(5, '::1', 'karyawan@gmail.com', 3, '2021-07-23 00:32:27', 1),
(6, '::1', 'karyawan@gmail.com', 3, '2021-07-29 15:52:45', 1),
(7, '::1', 'karyawan@gmail.com', 3, '2021-07-29 21:46:11', 1),
(8, '::1', 'admin@gmail.com', 2, '2021-08-15 22:02:10', 1),
(9, '::1', 'owner@gmail.com', 1, '2021-08-15 22:22:39', 1),
(10, '::1', 'karyawan@gmail.com', 3, '2021-08-15 22:24:15', 1),
(11, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:19:21', 0),
(12, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:19:58', 0),
(13, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:19:59', 0),
(14, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:20:00', 0),
(15, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:20:10', 0),
(16, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:20:12', 0),
(17, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:20:13', 0),
(18, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:20:14', 0),
(19, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:20:59', 0),
(20, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:21:39', 0),
(21, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:21:40', 0),
(22, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:21:41', 0),
(23, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:21:42', 0),
(24, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:21:43', 0),
(25, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:22:39', 0),
(26, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:24:04', 0),
(27, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:24:06', 0),
(28, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:25:46', 0),
(29, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:25:47', 0),
(30, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:29:57', 0),
(31, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:29:58', 0),
(32, '::1', 'asdasd@gmail.com', NULL, '2021-08-18 12:30:31', 0),
(33, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:30:56', 0),
(34, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:31:28', 0),
(35, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:31:59', 0),
(36, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:32:02', 0),
(37, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:32:51', 0),
(38, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:32:54', 0),
(39, '::1', 'karyawan@gmail.com', NULL, '2021-08-18 12:32:55', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(1) UNSIGNED NOT NULL,
  `kategori_nama` varchar(128) NOT NULL,
  `kategori_slug` varchar(128) NOT NULL,
  `kategori_gambar` varchar(128) NOT NULL,
  `kategori_deskripsi` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_nama`, `kategori_slug`, `kategori_gambar`, `kategori_deskripsi`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kartu', 'kartu', 'kartu_kategori.jpg', 'kartu perdana dan paketan', NULL, NULL, NULL, '2021-07-22 22:55:33', '2021-07-22 22:55:33', NULL),
(2, 'acc', 'kartu', 'acc_kategori.jpg', 'aksesoris', NULL, NULL, NULL, '2021-07-22 22:55:33', '2021-07-22 22:55:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konter`
--

CREATE TABLE `konter` (
  `id` int(1) UNSIGNED NOT NULL,
  `konter_nama` varchar(128) NOT NULL,
  `konter_gambar` varchar(128) NOT NULL,
  `konter_email` varchar(128) NOT NULL,
  `konter_no_telp` varchar(13) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `konter`
--

INSERT INTO `konter` (`id`, `konter_nama`, `konter_gambar`, `konter_email`, `konter_no_telp`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asabri', 'asabri.jpg', 'asabri@gmail.com', '081934613970', NULL, NULL, NULL, '2021-07-22 22:55:33', '2021-07-22 22:55:33', NULL),
(2, 'cokro', 'cokro.jpg', 'cokro@gmail.com', '081934613970', NULL, NULL, NULL, '2021-07-22 22:55:33', '2021-07-22 22:55:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(12, '2017-11-20-223112', 'App\\Database\\Migrations\\CreateAuthTables', 'default', 'App', 1626969293, 1),
(13, '2021-01-11-042542', 'App\\Database\\Migrations\\AddKategori', 'default', 'App', 1626969293, 1),
(14, '2021-01-11-042549', 'App\\Database\\Migrations\\AddKonter', 'default', 'App', 1626969293, 1),
(15, '2021-01-11-042555', 'App\\Database\\Migrations\\AddProduk', 'default', 'App', 1626969293, 1),
(16, '2021-01-11-042559', 'App\\Database\\Migrations\\AddStok', 'default', 'App', 1626969294, 1),
(17, '2021-01-11-042605', 'App\\Database\\Migrations\\AddTransaksi', 'default', 'App', 1626969294, 1),
(18, '2021-01-11-042651', 'App\\Database\\Migrations\\AddTransaksiAcc', 'default', 'App', 1626969294, 1),
(19, '2021-01-11-042700', 'App\\Database\\Migrations\\AddTransaksiKartu', 'default', 'App', 1626969294, 1),
(20, '2021-01-11-042706', 'App\\Database\\Migrations\\AddTransaksiPartai', 'default', 'App', 1626969294, 1),
(21, '2021-01-11-042711', 'App\\Database\\Migrations\\AddTransaksiSaldo', 'default', 'App', 1626969294, 1),
(22, '2021-01-22-172133', 'App\\Database\\Migrations\\AlterUsersAddKonterId', 'default', 'App', 1626969294, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(3) UNSIGNED NOT NULL,
  `kategori_id` int(1) UNSIGNED NOT NULL,
  `produk_gambar` varchar(128) NOT NULL,
  `produk_slug` varchar(128) NOT NULL,
  `produk_nama` varchar(128) NOT NULL,
  `produk_deskripsi` varchar(128) NOT NULL,
  `produk_qty` int(5) NOT NULL,
  `harga_supply` int(8) NOT NULL,
  `harga_user` int(6) NOT NULL,
  `harga_partai` int(6) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `produk_gambar`, `produk_slug`, `produk_nama`, `produk_deskripsi`, `produk_qty`, `harga_supply`, `harga_user`, `harga_partai`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'produk1.png', 'Isat-1GB-UNL', 'Isat 1GB + UNL', 'Isat 1GB + UNL', 200, 24000, 27000, 25000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:18:13', NULL),
(2, 1, 'produk2.png', 'Isat-7GB-UNL', 'Isat 7GB + UNL', 'Isat 7GB + UNL', 100, 45500, 47500, 46500, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:17:31', NULL),
(3, 1, 'produk3.png', 'Isat-35GB', 'Isat 3,5GB', 'Isat 3,5GB', 295, 12000, 15000, 13000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-08-15 22:25:26', NULL),
(4, 1, 'produk4.png', 'Isat-6GB', 'Isat 6GB', 'Isat 6GB', 200, 35000, 38000, 37000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:15:54', NULL),
(5, 1, 'produk5.png', 'V-Isat-1GB-UNL', 'V Isat 1GB + UNL', 'V Isat 1GB + UNL', 200, 24000, 27000, 25000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:15:05', NULL),
(6, 1, 'produk6.png', 'V-Isat-7GB-UNL', 'V Isat 7GB + UNL', 'V Isat 7GB + UNL', 50, 50000, 55000, 53000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:14:34', NULL),
(7, 1, 'produk7.png', 'V-Isat-35GB', 'V Isat 3,5GB', 'V Isat 3,5GB', 350, 12000, 15000, 14000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:20:03', NULL),
(8, 1, 'produk8.png', 'V-Isat-6GB', 'V Isat 6GB', 'V Isat 6GB', 100, 30000, 35000, 34000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:12:45', NULL),
(9, 1, 'produk9.png', 'XL-45GB', 'XL 4,5GB', 'XL 4,5GB', 100, 24000, 27000, 25000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:20:21', NULL),
(10, 1, 'produk10.png', 'XL-7GB', 'XL 7GB', 'XL 7GB', 100, 35000, 38000, 37000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:11:30', NULL),
(11, 1, 'produk11.png', 'XL-25GB', 'XL 25GB', 'XL 25GB', 100, 45000, 55000, 50000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:10:29', NULL),
(12, 1, 'produk12.png', 'Sf-UNL-Lite', 'Sf UNL Lite', 'Sf UNL Lite', 200, 55000, 65000, 60000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:09:42', NULL),
(13, 1, 'produk13.png', 'Sf-UNL-Maxi', 'Sf UNL Maxi', 'Sf UNL Maxi', 50, 60000, 75000, 65000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:08:59', NULL),
(14, 1, 'produk14.png', 'Three-2GB', 'Three 2GB', 'Three 2GB', 300, 17000, 20000, 18000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:07:54', NULL),
(15, 1, 'produk15.png', 'Three-16GB', 'Three 16GB', 'Three 16GB', 50, 30000, 34000, 32000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:07:01', NULL),
(16, 1, 'produk16.png', 'Tsel-4GB', 'Tsel 4GB', 'Tsel 4GB', 200, 17000, 20000, 18000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:04:53', NULL),
(17, 1, 'produk17.png', 'Tsel-6GB', 'Tsel 6GB', 'Tsel 6GB', 100, 24000, 27000, 25000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:04:04', NULL),
(18, 2, 'produk18.png', 'Tempred-Glass-TG', 'Tempred Glass (TG)', 'Tempred Glass (TG)', 100, 9000, 10000, 9500, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-07-22 23:20:34', NULL),
(19, 2, 'produk19.png', 'Soft-Case', 'Soft Case', 'Soft Case', 500, 9000, 15000, 12000, NULL, NULL, NULL, '2021-07-22 22:55:35', '2021-08-15 22:06:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id` int(3) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `produk_id` int(3) UNSIGNED NOT NULL,
  `stok` int(4) DEFAULT NULL,
  `sisa_stok` int(4) DEFAULT NULL,
  `stok_terjual` int(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id`, `konter_id`, `produk_id`, `stok`, `sisa_stok`, `stok_terjual`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 90, 89, 1, NULL, NULL, NULL, '2021-07-22 23:19:52', '2021-07-22 23:24:52', NULL),
(2, 1, 7, 50, 50, 0, NULL, NULL, NULL, '2021-07-22 23:20:03', '2021-07-22 23:24:52', NULL),
(3, 1, 9, 100, 100, 0, NULL, NULL, NULL, '2021-07-22 23:20:21', '2021-07-22 23:24:52', NULL),
(4, 1, 18, 90, 89, 1, NULL, NULL, NULL, '2021-07-22 23:20:34', '2021-07-22 23:25:17', NULL),
(5, 1, 19, 80, 80, 0, NULL, NULL, NULL, '2021-07-22 23:20:45', '2021-07-22 23:25:17', NULL),
(6, 1, 3, 79, 78, 1, NULL, NULL, NULL, '2021-07-22 23:24:52', '2021-07-29 15:54:12', NULL),
(7, 1, 7, 50, 50, 0, NULL, NULL, NULL, '2021-07-22 23:24:52', '2021-07-29 15:54:12', NULL),
(8, 1, 9, 100, 100, 0, NULL, NULL, NULL, '2021-07-22 23:24:52', '2021-07-29 15:54:12', NULL),
(9, 1, 18, 89, 89, 0, NULL, NULL, NULL, '2021-07-22 23:25:17', '2021-07-29 15:54:33', NULL),
(10, 1, 19, 80, 79, 1, NULL, NULL, NULL, '2021-07-22 23:25:17', '2021-07-29 15:54:33', NULL),
(11, 1, 3, 63, 62, 1, NULL, NULL, NULL, '2021-07-29 15:54:12', '2021-07-29 21:47:47', NULL),
(12, 1, 7, 50, 50, 0, NULL, NULL, NULL, '2021-07-29 15:54:12', '2021-07-29 21:47:47', NULL),
(13, 1, 9, 100, 100, 0, NULL, NULL, NULL, '2021-07-29 15:54:12', '2021-07-29 21:47:47', NULL),
(14, 1, 18, 89, 88, 1, NULL, NULL, NULL, '2021-07-29 15:54:33', '2021-07-29 21:47:23', NULL),
(15, 1, 19, 79, 79, 0, NULL, NULL, NULL, '2021-07-29 15:54:33', '2021-07-29 21:47:23', NULL),
(16, 1, 18, 88, 88, 0, NULL, NULL, NULL, '2021-07-29 21:47:23', '2021-08-15 22:47:33', NULL),
(17, 1, 19, 79, 78, 1, NULL, NULL, NULL, '2021-07-29 21:47:23', '2021-08-15 22:47:33', NULL),
(18, 1, 3, 57, 55, 2, NULL, NULL, NULL, '2021-07-29 21:47:47', '2021-08-15 22:45:04', NULL),
(19, 1, 7, 50, 50, 0, NULL, NULL, NULL, '2021-07-29 21:47:47', '2021-08-15 22:45:04', NULL),
(20, 1, 9, 100, 100, 0, NULL, NULL, NULL, '2021-07-29 21:47:47', '2021-08-15 22:45:04', NULL),
(23, 1, 3, 55, NULL, NULL, NULL, NULL, NULL, '2021-08-15 22:45:04', '2021-08-15 22:45:04', NULL),
(24, 1, 7, 50, NULL, NULL, NULL, NULL, NULL, '2021-08-15 22:45:04', '2021-08-15 22:45:04', NULL),
(25, 1, 9, 100, NULL, NULL, NULL, NULL, NULL, '2021-08-15 22:45:04', '2021-08-15 22:45:04', NULL),
(26, 1, 18, 88, NULL, NULL, NULL, NULL, NULL, '2021-08-15 22:47:33', '2021-08-15 22:47:33', NULL),
(27, 1, 19, 78, NULL, NULL, NULL, NULL, NULL, '2021-08-15 22:47:33', '2021-08-15 22:47:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `total_pulsa` int(8) DEFAULT NULL,
  `total_saldo` int(8) DEFAULT NULL,
  `total_acc` int(8) DEFAULT NULL,
  `total_kartu` int(8) DEFAULT NULL,
  `total_partai` int(8) DEFAULT NULL,
  `total_tunai` int(8) DEFAULT NULL,
  `total_modal` int(8) DEFAULT NULL,
  `total_keluar` int(8) DEFAULT NULL,
  `total_trx` int(8) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `konter_id`, `total_pulsa`, `total_saldo`, `total_acc`, `total_kartu`, `total_partai`, `total_tunai`, `total_modal`, `total_keluar`, `total_trx`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1000000, 1000000, 10000, 15000, 225000, 2490000, 250000, 10000, 2490000, NULL, NULL, NULL, '2021-07-22 00:20:58', '2021-07-23 00:20:58', NULL),
(3, 1, 3000000, 500000, 10000, 15000, 195000, 3969500, 250000, 500, 3969500, NULL, NULL, NULL, '2021-07-29 21:48:27', '2021-07-29 21:48:27', NULL),
(4, 1, 1000000, 1000000, 15000, 30000, 130000, 2405000, 250000, 20000, 2405000, NULL, NULL, NULL, '2021-08-15 22:49:59', '2021-08-15 22:49:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_acc`
--

CREATE TABLE `transaksi_acc` (
  `id` int(10) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `produk_id` int(3) UNSIGNED NOT NULL,
  `trx_acc_qty` int(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi_acc`
--

INSERT INTO `transaksi_acc` (`id`, `konter_id`, `produk_id`, `trx_acc_qty`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 18, 89, NULL, NULL, NULL, '2021-07-22 23:25:13', '2021-07-22 23:25:13', NULL),
(2, 1, 19, 80, NULL, NULL, NULL, '2021-07-22 23:25:13', '2021-07-22 23:25:13', NULL),
(5, 1, 18, 88, NULL, NULL, NULL, '2021-07-29 21:47:19', '2021-07-29 21:47:19', NULL),
(6, 1, 19, 79, NULL, NULL, NULL, '2021-07-29 21:47:19', '2021-07-29 21:47:19', NULL),
(7, 1, 18, 88, NULL, NULL, NULL, '2021-08-15 22:47:17', '2021-08-15 22:47:17', NULL),
(8, 1, 19, 78, NULL, NULL, NULL, '2021-08-15 22:47:17', '2021-08-15 22:47:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_kartu`
--

CREATE TABLE `transaksi_kartu` (
  `id` int(10) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `produk_id` int(3) UNSIGNED NOT NULL,
  `trx_kartu_qty` int(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi_kartu`
--

INSERT INTO `transaksi_kartu` (`id`, `konter_id`, `produk_id`, `trx_kartu_qty`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 89, NULL, NULL, NULL, '2021-07-22 23:24:41', '2021-07-22 23:24:41', NULL),
(2, 1, 7, 50, NULL, NULL, NULL, '2021-07-22 23:24:41', '2021-07-22 23:24:41', NULL),
(3, 1, 9, 100, NULL, NULL, NULL, '2021-07-22 23:24:41', '2021-07-22 23:24:41', NULL),
(7, 1, 3, 62, NULL, NULL, NULL, '2021-07-29 21:47:42', '2021-07-29 21:47:42', NULL),
(8, 1, 7, 50, NULL, NULL, NULL, '2021-07-29 21:47:42', '2021-07-29 21:47:42', NULL),
(9, 1, 9, 100, NULL, NULL, NULL, '2021-07-29 21:47:42', '2021-07-29 21:47:42', NULL),
(10, 1, 3, 55, NULL, NULL, NULL, '2021-08-15 22:44:31', '2021-08-15 22:45:00', NULL),
(11, 1, 7, 50, NULL, NULL, NULL, '2021-08-15 22:44:31', '2021-08-15 22:44:31', NULL),
(12, 1, 9, 100, NULL, NULL, NULL, '2021-08-15 22:44:31', '2021-08-15 22:44:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_partai`
--

CREATE TABLE `transaksi_partai` (
  `id` int(10) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `produk_id` int(3) UNSIGNED NOT NULL,
  `reseller` varchar(128) NOT NULL,
  `trx_partai_qty` int(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi_partai`
--

INSERT INTO `transaksi_partai` (`id`, `konter_id`, `produk_id`, `reseller`, `trx_partai_qty`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 'Aang Cell', 10, NULL, NULL, NULL, '2021-07-22 23:23:30', '2021-07-22 23:23:30', NULL),
(2, 1, 18, 'Aang Cell', 10, NULL, NULL, NULL, '2021-07-22 23:23:48', '2021-07-22 23:23:48', NULL),
(4, 1, 3, 'Vyan Cell', 15, NULL, NULL, NULL, '2021-07-29 21:46:54', '2021-07-29 21:46:54', NULL),
(5, 1, 3, 'aang cell', 10, NULL, NULL, NULL, '2021-08-15 22:40:32', '2021-08-15 22:40:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_saldo`
--

CREATE TABLE `transaksi_saldo` (
  `id` int(10) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED NOT NULL,
  `ar_id` varchar(10) NOT NULL,
  `ar_nama` varchar(128) NOT NULL,
  `saldo` int(8) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi_saldo`
--

INSERT INTO `transaksi_saldo` (`id`, `konter_id`, `ar_id`, `ar_nama`, `saldo`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'AR001', 'Aang Cell', 1000000, NULL, NULL, NULL, '2021-07-22 23:23:09', '2021-07-22 23:23:09', NULL),
(3, 1, 'AR001', 'Aang Cell', 500000, NULL, NULL, NULL, '2021-07-29 21:46:30', '2021-07-29 21:46:30', NULL),
(5, 1, '001', 'aang cell', 1000000, NULL, NULL, NULL, '2021-08-15 22:38:18', '2021-08-15 22:38:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(2) UNSIGNED NOT NULL,
  `konter_id` int(1) UNSIGNED DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `jenkel` enum('Laki - Laki','Perempuan') NOT NULL DEFAULT 'Perempuan',
  `username` varchar(50) DEFAULT NULL,
  `password_hash` varchar(128) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `reset_hash` varchar(128) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(128) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `status_message` varchar(128) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `konter_id`, `email`, `alamat`, `no_telp`, `jenkel`, `username`, `password_hash`, `avatar`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Owner@gmail.com', 'Psr. Badak No. 785', '081934613970', 'Perempuan', 'Owner', '$2y$10$umy.OmWOBLUDNXBdqT1e1.sNynULxyi4uuS2aFG4DaiY5OhdaSrMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-07-22 22:55:34', '2021-08-15 22:23:04', NULL),
(2, 1, 'Admin@gmail.com', 'Kpg. M.T. Haryono No. 435', '081934613970', 'Perempuan', 'Admin', '$2y$10$umy.OmWOBLUDNXBdqT1e1.sNynULxyi4uuS2aFG4DaiY5OhdaSrMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-07-22 22:55:34', '2021-08-15 22:21:48', NULL),
(3, 1, 'Karyawan@gmail.com', 'Ds. Supono No. 376', '081934613970', 'Perempuan', 'Karyawan', '$2y$10$umy.OmWOBLUDNXBdqT1e1.sNynULxyi4uuS2aFG4DaiY5OhdaSrMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-07-22 22:55:34', '2021-08-15 22:24:35', NULL),
(4, 2, 'karyawan2@gmail.com', 'Dk. Labu No. 34', '081934613970', 'Perempuan', 'karyawan2', '$2y$10$umy.OmWOBLUDNXBdqT1e1.sNynULxyi4uuS2aFG4DaiY5OhdaSrMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-07-22 22:55:34', '2021-07-22 22:55:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konter`
--
ALTER TABLE `konter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_produk_id_foreign` (`produk_id`),
  ADD KEY `stok_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `transaksi_acc`
--
ALTER TABLE `transaksi_acc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_acc_produk_id_foreign` (`produk_id`),
  ADD KEY `transaksi_acc_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `transaksi_kartu`
--
ALTER TABLE `transaksi_kartu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_kartu_produk_id_foreign` (`produk_id`),
  ADD KEY `transaksi_kartu_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `transaksi_partai`
--
ALTER TABLE `transaksi_partai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_partai_produk_id_foreign` (`produk_id`),
  ADD KEY `transaksi_partai_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `transaksi_saldo`
--
ALTER TABLE `transaksi_saldo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_saldo_konter_id_foreign` (`konter_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_konter_id_foreign` (`konter_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `konter`
--
ALTER TABLE `konter`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi_acc`
--
ALTER TABLE `transaksi_acc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi_kartu`
--
ALTER TABLE `transaksi_kartu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi_partai`
--
ALTER TABLE `transaksi_partai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi_saldo`
--
ALTER TABLE `transaksi_saldo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stok_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_acc`
--
ALTER TABLE `transaksi_acc`
  ADD CONSTRAINT `transaksi_acc_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_acc_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_kartu`
--
ALTER TABLE `transaksi_kartu`
  ADD CONSTRAINT `transaksi_kartu_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_kartu_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_partai`
--
ALTER TABLE `transaksi_partai`
  ADD CONSTRAINT `transaksi_partai_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_partai_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_saldo`
--
ALTER TABLE `transaksi_saldo`
  ADD CONSTRAINT `transaksi_saldo_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_konter_id_foreign` FOREIGN KEY (`konter_id`) REFERENCES `konter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
