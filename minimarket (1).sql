-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 03:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_tranc`
--

CREATE TABLE `tb_detail_tranc` (
  `id_detail_tranc` varchar(14) NOT NULL,
  `id_tranc` char(17) NOT NULL,
  `id_produk` varchar(25) NOT NULL,
  `qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` varchar(15) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga_beli` int(7) DEFAULT NULL,
  `harga_jual` int(8) DEFAULT NULL,
  `stok` int(4) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `kategori_produk` enum('makanan','minuman','kosmetik','perlengkapan_baby','kesehatan') DEFAULT NULL,
  `merek` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `harga_beli`, `harga_jual`, `stok`, `deskripsi`, `foto`, `kategori_produk`, `merek`) VALUES
('1', 'Photato', 5000, 7000, 1000, 'bjhdfvjchccvdshcj', NULL, 'makanan', 'Photato'),
('2', 'Poxy', 10000, 12000, 1000, 'jsdhwiydszjxsh', NULL, 'makanan', 'Poxy'),
('3', 'Guribee', 8000, 10000, 1000, 'jdhcvjsdgivsbx', NULL, 'makanan', 'Guribee'),
('4', 'Cimory', 5000, 8000, 1000, 'yerihncklasud', NULL, 'minuman', 'Cimory'),
('5', 'Lee Mineral', 6000, 7000, 1000, 'gfdtgfjjgb', NULL, 'minuman', 'Lee Mineral'),
('6', 'Sosis Kenzler', 8000, 10000, 1000, 'ughgjhixhc', NULL, 'makanan', 'Kenzler'),
('7', 'Silverquinn', 20000, 25000, 40, 'aaaaaaaaaaaaaaaaaaa', NULL, 'makanan', 'Silverquinn'),
('8', 'pepsodent', 7000, 9000, 10, 'Bagus', NULL, 'kosmetik', 'Pepsodent');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tranc`
--

CREATE TABLE `tb_tranc` (
  `id_tranc` char(17) NOT NULL,
  `username` varchar(15) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(15) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level_user` enum('admin','kasir') NOT NULL,
  `hp` varchar(16) NOT NULL,
  `address` varchar(200) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `full_name`, `password`, `level_user`, `hp`, `address`, `is_active`) VALUES
('Lili123', 'Lili yana', '$2y$10$PHTo9L11/b.iEJKxR0OHTeIore0dxjkaUSbAsb7N..QkHMA/Ha5D.', 'admin', '0882016140240', 'Pantai Labu', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_tranc`
--
ALTER TABLE `tb_detail_tranc`
  ADD PRIMARY KEY (`id_detail_tranc`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_tranc`
--
ALTER TABLE `tb_tranc`
  ADD PRIMARY KEY (`id_tranc`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
