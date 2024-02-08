-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 08 Feb 2024 pada 14.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tpm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_11_040657_create_tb_user_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Shandy', 'Shandy1', '$2y$10$GLPz98.GM8IH2lTH8VYMxuzmXc6EPlnTMlba5kIsJDaeM1cLYr/uG', '2024-02-02 01:20:24', '2024-02-02 01:20:24'),
(2, 'Dental', 'work1', '$2y$10$5VImLH7Vj7mbcXWPXnxvQuZXbDcdwbdlLKeNPtD7uc0jRh/Y/eozK', '2024-02-02 17:04:48', '2024-02-02 17:04:48'),
(3, 'Deni surya', 'test', '$2y$10$jHMCAyBJKRpkSeJNSyIEF.09HMLEuTPVW9IAPApsdXf91vidCtwtm', '2024-02-02 17:05:58', '2024-02-02 17:05:58'),
(4, 'test', 'tester', '$2y$10$kF3joTfHMsuqyTF0WkbBhuXQjHt/9j0nSj.2jWKrqoukXkxd.BB0.', '2024-02-02 17:06:47', '2024-02-02 17:06:47'),
(5, 'Shandy', 'dddd', '$2y$10$sz8VVHuTE6sYYEgqYkmU9.7wfbqZ1J4cA2wmz9P7nYd9zCeAJVfvm', '2024-02-02 17:09:27', '2024-02-02 17:09:27'),
(6, 'Deni surya', 't', '$2y$10$0ifNfJni0keM8VFNx23WMeT3zUmUvv9LNKy4eZqqFBnHIs5kiF3Dm', '2024-02-02 17:14:23', '2024-02-02 17:14:23'),
(7, 'ppp', 'qqq', '$2y$10$WmsdsCogOni/metcPtYaiOSdCPk4U0Px4zno/CWbYF8mxXN4HYRQC', '2024-02-02 17:21:50', '2024-02-02 17:21:50'),
(8, 'jack', 'jck', '$2y$10$II5DjgK/1EGAKMrO6G8rX.d3v68gODlKJTjuK3JQpvjVhGoZi6w7u', '2024-02-04 08:37:09', '2024-02-04 08:37:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `tb_user_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
