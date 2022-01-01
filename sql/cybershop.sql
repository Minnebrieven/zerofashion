-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 05:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `nama`) VALUES
(1, 'Bank Mandiri'),
(2, 'Bank DKI'),
(3, 'BRI'),
(4, 'BNI'),
(5, 'BCA'),
(6, 'Bank Mega');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(4) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `judul`, `deskripsi`, `gambar`) VALUES
(1, 'Baju', 'Koleksi Baju 2022', '5833295_645f4bfd-e7f8-4bda-95f7-43f7f335b3ff_800_800.jpg'),
(2, 'Celana', 'Celana gaya 2022', 'new-gsxr150-red1.jpg'),
(3, 'Topi', 'Topi ala 2022', 'wp-1518425815810851233213.jpg'),
(4, 'Sepatu', 'Sepatu tahun baru', 'cbr250rr-kecelakaan-3.jpg'),
(5, 'CASHBACK UP TO 10K', 'Koleksi Fashion tahun baru', 'imad marketing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` char(3) NOT NULL DEFAULT 'BRG',
  `barang_id` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `merek_id` int(11) NOT NULL,
  `warna_id` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `barang_id`, `nama_barang`, `kategori_id`, `merek_id`, `warna_id`, `harga`, `stok`, `gambar`) VALUES
('BRG', 12, 'Kentang', 5, 8, 7, '1500.00', 10, 'potato_1475961694-150x150.jpg'),
('BRG', 13, 'Brownies', 5, 13, 10, '7000.00', 20, 'brownies intan.PNG'),
('BRG', 14, 'DGI Style Cloth', 1, 13, 4, '250000.00', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama`) VALUES
(1, 'Baju'),
(2, 'Celana'),
(3, 'Sepatu'),
(4, 'Topi'),
(5, 'Aksesoris'),
(6, 'Kerudung'),
(7, 'Outer'),
(8, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(4) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `merek_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`merek_id`, `nama`) VALUES
(1, 'Panasonic'),
(2, 'Philips'),
(3, 'LG'),
(4, 'Sharp'),
(5, 'Lenovo'),
(6, 'HP'),
(7, 'ASUS'),
(8, 'IKEA'),
(9, 'Maxim'),
(10, 'Suzuki'),
(11, 'Honda'),
(12, 'Yamaha'),
(13, 'Intan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` char(3) NOT NULL DEFAULT 'TRK',
  `transaksi_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `bank` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `transaksi_id`, `barang_id`, `users_id`, `jumlah`, `bank`, `timestamp`) VALUES
('TRK', 1, 12, 2, 4, 2, '2018-10-08 08:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `username`, `password`, `phone`, `address`, `level`) VALUES
(1, 'hilih@khintil.com', 'hilih khintil', 'hilih', 'cc2cb18dc5b316d4d359ff23e036b4cc', '080989999', 'TelkomNYET instan', 'user'),
(2, 'admin@email.com', 'Muhammad Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '080989999', 'Di mana aja', 'admin'),
(3, 'halah@email.com', 'Halah khantal', 'halah', '1b2b94086b053034036115619a3b46be', '0809890', 'asdsa', 'user'),
(4, 'fikri@yahoo.com', 'fikri', 'fikri1711', 'c61735266147fa1c8a6b4558bd67f967', '089684711291', 'jl situ indah no.3', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `warna`
--

CREATE TABLE `warna` (
  `warna_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warna`
--

INSERT INTO `warna` (`warna_id`, `nama`) VALUES
(2, 'Hitam'),
(3, 'Abu-abu'),
(4, 'Merah'),
(5, 'Hijau'),
(6, 'Biru'),
(7, 'Jingga'),
(8, 'Ungu'),
(9, 'Kelabu'),
(10, 'Coklat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`,`merek_id`,`warna_id`),
  ADD KEY `merek_id` (`merek_id`),
  ADD KEY `warna_id` (`warna_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`merek_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `barang_id` (`barang_id`,`users_id`),
  ADD KEY `bank` (`bank`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`warna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `keranjang_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `merek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warna`
--
ALTER TABLE `warna`
  MODIFY `warna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`merek_id`) REFERENCES `merek` (`merek_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_3` FOREIGN KEY (`warna_id`) REFERENCES `warna` (`warna_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`bank`) REFERENCES `bank` (`bank_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
