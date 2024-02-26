-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2024 at 10:04 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir2`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(2, 7, 5, 14, 70000.00),
(5, 8, 6, 7, 14000.00),
(7, 7, 5, 6, 30000.00),
(8, 15, 10, 51, 76500.00),
(9, 18, 5, 2, 10000.00),
(10, 12, 10, 96, 144000.00),
(11, 12, 7, 6, 12000.00),
(12, 12, 14, 3, 3.00),
(13, 13, 12, -5, -75015.00),
(14, 16, 7, 7, 14000.00),
(15, 19, 6, 9, 18000.00),
(16, 19, 0, 0, 0.00),
(17, 20, 0, 0, 0.00),
(19, 16, 15, 5, 20000.00),
(20, 12, 13, 3, 450.00),
(21, 12, 13, -3, -450.00),
(22, 33, 15, -5, -20000.00),
(24, 34, 6, 1, 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` varchar(20) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`) VALUES
('', '', '', ''),
('2202121238', 'nita', 'tuban', '0886327625178'),
('2302022620', 'Anns', 'Tokyo', '09765544'),
('2302022654', 'ggg', 'jpmg', '88766'),
('2302032713', 'ggg', 'Tokyo', '88766'),
('2302055230', 'anis', 'tuban', '0975467'),
('2302102001', 'nitaaaa', 'tuban', '0886327625178'),
('2402063407', 'pppp', 'Tuban', '0812345678900'),
('2402064633', 'fara', 'tuban', '085145261254'),
('2402065153', 'Dina', 'mbogor', '0975467'),
('2502055123', 'yani', 'temandang', '0897654321'),
('2502060149', 'iqlima', 'temandang', '0897654321'),
('2502060235', 'sriiii', 'temandang', '0897654321'),
('2502060247', 'ta', 'temandang', '0897654321'),
('2502060421', 'taaaaaa', 'temandang', '0897654321'),
('2502061111', 'sriiii', 'tuban', '0897654321'),
('2502092921', 'sriiii', 'temandang', '78909888'),
('2602060233', 'rea', 'tuban', '0975467'),
('2901080443', 'asdasd', 'dasdas', 'adsads'),
('2901080621', '12', 'sdasd', '12312'),
('2901080800', 'jadid', 'merakurak', '085614'),
('2901080822', 'anita', 'kerek', '085648819030'),
('3101010416', 'nitt', 'Kerek', '0099867'),
('3101010736', 'umi', 'temandang', '085847730295'),
('31231233', 'NamaPelanggan', 'Alamat', '45645645');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL DEFAULT 0.00,
  `PelangganID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(12, '2024-01-29', 153453.00, '2901080800'),
(13, '2024-01-29', -75015.00, '2901080822'),
(15, '2024-01-31', 76500.00, '3101010416'),
(16, '2024-01-31', 34000.00, '3101010736'),
(32, '2024-02-25', 0.00, '2502060149'),
(33, '2024-02-25', -20000.00, '2502092921'),
(34, '2024-02-26', 2000.00, '2602060233');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 2),
(4, 'Petugas 1', 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', 2),
(8, 'anita', 'nita', '1eb6d605e0698d0c6d3121c8cd45e6b5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
(6, 'Snack Ring', 2000.00, 173),
(7, 'Buku', 2000.00, 78),
(10, 'Sabun', 1500.00, 259),
(11, 'pensil', 2500.00, 3),
(12, 'sapu', 15003.00, 7),
(13, 'sepatu', 150.00, 11),
(14, 'emas', 1.00, 1),
(15, 'Chitato', 4000.00, 30),
(16, 'Sampo', 500.00, 85);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `PenjualanID` (`PenjualanID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `ProdukID_2` (`ProdukID`),
  ADD KEY `ProdukID_3` (`ProdukID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`),
  ADD KEY `PenjualanID` (`PenjualanID`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `ProdukID_2` (`ProdukID`),
  ADD KEY `ProdukID_3` (`ProdukID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `ProdukID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
