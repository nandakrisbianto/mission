-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Mar 2021 pada 04.46
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mission`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `bagian` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kemajuan_perbaikan`
--

CREATE TABLE `kemajuan_perbaikan` (
  `id` int(11) NOT NULL,
  `id_permintaan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) NOT NULL,
  `pelaksana` varchar(120) NOT NULL,
  `kemajuan` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kemajuan_perbaikan`
--

INSERT INTO `kemajuan_perbaikan` (`id`, `id_permintaan`, `tanggal`, `jam`, `pelaksana`, `kemajuan`, `status`) VALUES
(3, 2, '2021-03-06', '17:12', 'Nanda Krisbianto', 'waduh susah pak', 'Dalam Perbaikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kemajuan_rencana`
--

CREATE TABLE `kemajuan_rencana` (
  `id` int(11) NOT NULL,
  `id_rencana` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) NOT NULL,
  `pelaksana` varchar(128) NOT NULL,
  `kemajuan` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kemajuan_rencana`
--

INSERT INTO `kemajuan_rencana` (`id`, `id_rencana`, `tanggal`, `jam`, `pelaksana`, `kemajuan`, `status`) VALUES
(9, 10, '2021-02-19', '00:39', 'Nanda Krisbianto', 'Sudah di defrost dan siap digunakan kembali', 'Selesai'),
(12, 8, '2021-02-19', '07:14', 'Nanda Krisbianto', 'Sudah selesai dan dapat 2 timba untuk hasilnya ', 'Selesai'),
(14, 6, '2021-02-25', '06:32', 'Nanda Krisbianto', 'Sudah di drain dan dapat 6 timba ukuran 10liter', 'Selesai'),
(15, 7, '2021-02-25', '06:32', 'Nanda Krisbianto', 'Sudah dibuat dan berhasil', 'Selesai'),
(18, 19, '2021-03-10', '13:38', 'Nanda Krisbianto', 'udah dicek', 'Dalam Perbaikan'),
(19, 19, '2021-03-10', '13:42', 'Nanda Krisbianto', 'OK', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Core'),
(2, 'Rencana Kerja'),
(3, 'Permintaan Perbaikan'),
(6, 'PENGATURAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan`
--

CREATE TABLE `permintaan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(100) NOT NULL,
  `pemohon` varchar(120) NOT NULL,
  `permintaan` text NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `urgensi` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `permintaan`
--

INSERT INTO `permintaan` (`id`, `tanggal`, `jam`, `pemohon`, `permintaan`, `bagian`, `urgensi`, `status`) VALUES
(3, '2021-02-24', 'Telah Diedit 20:28', 'Nanda Krisbianto', 'Ass soaking D1 Lepas.', 'Mekanik', '1-2 Minggu', 'Dalam Perbaikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rencana`
--

CREATE TABLE `rencana` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `rencana` text NOT NULL,
  `bagian` varchar(150) NOT NULL,
  `urgensi` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rencana`
--

INSERT INTO `rencana` (`id`, `tanggal`, `rencana`, `bagian`, `urgensi`, `status`) VALUES
(6, '2021-02-16', 'Drain oli vessel luar', 'Operator', '1-3 Hari', 'Selesai'),
(7, '2021-02-17', 'Buat meja untuk sortir udang', 'Mekanik', '1-3 Hari', 'Selesai'),
(8, '2021-02-17', 'Drain oli ice flake', 'Mekanik', '1-2 Minggu', 'Selesai'),
(10, '2021-02-18', 'Defros cold storage 4 evap barat', 'Elektrik', '1-2 Minggu', 'Selesai'),
(19, '2021-03-10', 'coba', 'Mekanik', '1-3 Hari', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `icon` varchar(220) NOT NULL,
  `submenu` varchar(100) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `id_menu`, `icon`, `submenu`, `link`) VALUES
(3, 2, 'fa fa-edit', 'Input Pekerjaan', 'aplikasi/rencana/create'),
(7, 6, 'fa fa-database', 'Data Menu', 'pengaturan/menu'),
(8, 1, 'fa fa-tachometer-alt', 'Dashboard', 'aplikasi'),
(9, 3, 'fa fa-book', 'Input Permintaan', 'aplikasi/permintaan/create'),
(10, 2, 'fa fa-folder', 'Data Pekerjaan', 'aplikasi/rencana/read/'),
(11, 3, 'fa fa-archive', 'Data Permintaan', 'aplikasi/permintaan/read/'),
(12, 6, 'fa fa-user', 'Data User', 'pengaturan/user'),
(13, 0, 'fa fa-folder', 'eqeqeqq', 'qeq');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(120) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `role`, `is_active`) VALUES
(1, 'Nanda Krisbianto', 'nandakrisbianto808@gmail.com', 'admin', 'Super Admin', 1),
(2, 'Nanda Krisbianto', 'nandakrisbianto809@gmail.com', 'username', 'Admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kemajuan_perbaikan`
--
ALTER TABLE `kemajuan_perbaikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kemajuan_rencana`
--
ALTER TABLE `kemajuan_rencana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rencana`
--
ALTER TABLE `rencana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kemajuan_perbaikan`
--
ALTER TABLE `kemajuan_perbaikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kemajuan_rencana`
--
ALTER TABLE `kemajuan_rencana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rencana`
--
ALTER TABLE `rencana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
