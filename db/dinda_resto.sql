-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2020 pada 09.38
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dinda_resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`level_id`, `level_nama`) VALUES
(1, 'admin'),
(2, 'kasir'),
(3, 'waiter'),
(4, 'owner'),
(5, 'pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masakan`
--

CREATE TABLE `masakan` (
  `masakan_id` int(11) NOT NULL,
  `masakan_nama` varchar(50) NOT NULL,
  `masakan_harga` varchar(50) NOT NULL,
  `masakan_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masakan`
--

INSERT INTO `masakan` (`masakan_id`, `masakan_nama`, `masakan_harga`, `masakan_status`) VALUES
(1, 'bakso', '2000', 1),
(2, 'mie ayam', '2000', 1),
(3, 'mie ayam', '5000', 1),
(4, 'sdfdg', '23445467', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `order_tanggal` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_keterangan` text NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE `order_detail` (
  `od_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `masakan_id` int(11) NOT NULL,
  `od_keterangan` text NOT NULL,
  `od_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_total_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `level_id`) VALUES
(1, 'dinda', 'dinda', 'dinda', 1),
(2, 'admin', 'admin', 'admin', 1),
(3, 'kasir', 'kasir', '2', 2),
(4, 'waiter', 'waiter', 'waiter', 3),
(5, 'owner', 'owner', 'owner', 4),
(6, 'pelanggan', 'pelanggan', 'pelanggan', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indeks untuk tabel `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`masakan_id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`od_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `masakan`
--
ALTER TABLE `masakan`
  MODIFY `masakan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `od_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
