-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 06:09 AM
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
-- Database: `apotik_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `ID_Obat` int(11) NOT NULL,
  `Nama_Obat` varchar(100) DEFAULT NULL,
  `Jenis_Obat` varchar(50) DEFAULT NULL,
  `Keterangan_Obat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`ID_Obat`, `Nama_Obat`, `Jenis_Obat`, `Keterangan_Obat`) VALUES
(1, 'Paracetamol', 'Analgesik', 'Obat pereda nyeri dan penurun demam'),
(2, 'Amoxicillin', 'Antibiotik', 'Obat antibiotik untuk infeksi bakteri'),
(3, 'Lansoprazole', 'Antasida', 'Obat untuk mengurangi produksi asam lambung'),
(4, 'Cetirizine', 'Antihistamin', 'Obat alergi dan gatal-gatal'),
(5, 'Ibuprofen', 'Antiinflamasi', 'Obat pereda nyeri dan antiinflamasi'),
(6, 'Omeprazole', 'Antasida', 'Obat untuk mengurangi produksi asam lambung'),
(7, 'Metformin', 'Antidiabetik', 'Obat untuk pengobatan diabetes'),
(8, 'Simvastatin', 'Antilipidemia', 'Obat untuk menurunkan kadar kolesterol'),
(9, 'Losartan', 'Antihipertensi', 'Obat untuk menurunkan tekanan darah tinggi'),
(10, 'Aspirin', 'Analgesik', 'Obat pereda nyeri dan antiinflamasi'),
(11, 'Atorvastatin', 'Antilipidemia', 'Obat untuk menurunkan kadar kolesterol'),
(12, 'Ciprofloxacin', 'Antibiotik', 'Obat antibiotik untuk infeksi bakteri'),
(13, 'Metoprolol', 'Beta Blocker', 'Obat untuk mengatasi tekanan darah tinggi'),
(14, 'Prednisone', 'Kortikosteroid', 'Obat antiinflamasi dan imunosupresan'),
(15, 'Diazepam', 'Anksiolitik', 'Obat penenang dan antikecemasan'),
(16, 'Ranitidine', 'Antasida', 'Obat untuk mengurangi produksi asam lambung'),
(17, 'Hydrochlorothiazide', 'Diuretik', 'Obat untuk meningkatkan produksi urine'),
(18, 'Warfarin', 'Antikoagulan', 'Obat pengencer darah'),
(19, 'Clopidogrel', 'Antiplatelet', 'Obat untuk mencegah pembekuan darah'),
(20, 'Allopurinol', 'Antigout', 'Obat untuk mengatasi asam urat');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama_Pelanggan` varchar(100) DEFAULT NULL,
  `Alamat_Pelanggan` varchar(255) DEFAULT NULL,
  `Email_Pelanggan` varchar(100) DEFAULT NULL,
  `No_Telepon_Pelanggan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama_Pelanggan`, `Alamat_Pelanggan`, `Email_Pelanggan`, `No_Telepon_Pelanggan`) VALUES
(1, 'Agus Prabowo', 'Jl. Merdeka No. 123', 'agus.prabowo@example.com', '081234567890'),
(2, 'Anisa Ratnasari', 'Jl. Pahlawan No. 45', 'anisa.rsari@example.com', '081345678901'),
(3, 'Ganjar Setiawan', 'Jl. Kartini No. 67', 'ganjar.setiawan@example.com', '081456789012'),
(4, 'Rina Wijaya', 'Jl. Diponegoro No. 89', 'rina.wijaya@example.com', '081567890123'),
(5, 'Adi Nugroho', 'Jl. Sudirman No. 101', 'adi.nugroho@example.com', '081678901234'),
(6, 'Siti Rahayu', 'Jl. Gajah Mada No. 121', 'siti.rahayu@example.com', '081789012345'),
(7, 'Faisal Abdullah', 'Jl. Hayam Wuruk No. 143', 'faisal.abdullah@example.com', '081890123456'),
(8, 'Maya Indriani', 'Jl. Imam Bonjol No. 165', 'maya.indriani@example.com', '081901234567'),
(9, 'Joko Santoso', 'Jl. Juanda No. 187', 'joko.santoso@example.com', '081012345678'),
(10, 'Eva Susanti', 'Jl. Asia Afrika No. 209', 'eva.susanti@example.com', '081123456789');

-- --------------------------------------------------------

--
-- Table structure for table `petugas_apoteker`
--

CREATE TABLE `petugas_apoteker` (
  `ID_Petugas_Apoteker` int(11) NOT NULL,
  `Nama_Petugas_Apoteker` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas_apoteker`
--

INSERT INTO `petugas_apoteker` (`ID_Petugas_Apoteker`, `Nama_Petugas_Apoteker`) VALUES
(1, 'Andi Wijaya'),
(2, 'Siti Indah'),
(3, 'Faisal Abdullah'),
(4, 'Maya Sari'),
(5, 'Joko Santoso');

-- --------------------------------------------------------

--
-- Table structure for table `petugas_gudang`
--

CREATE TABLE `petugas_gudang` (
  `ID_Petugas_Gudang` int(11) NOT NULL,
  `Nama_Petugas_Gudang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas_gudang`
--

INSERT INTO `petugas_gudang` (`ID_Petugas_Gudang`, `Nama_Petugas_Gudang`) VALUES
(1, 'Rudi Hermawan'),
(2, 'Kusuma Wijaya'),
(3, 'Surya Adi'),
(4, 'Susanto'),
(5, 'Budi Pranata');

-- --------------------------------------------------------

--
-- Table structure for table `petugas_kasir`
--

CREATE TABLE `petugas_kasir` (
  `ID_Petugas_Kasir` int(11) NOT NULL,
  `Nama_Petugas_Kasir` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas_kasir`
--

INSERT INTO `petugas_kasir` (`ID_Petugas_Kasir`, `Nama_Petugas_Kasir`) VALUES
(1, 'Rina Kartini'),
(2, 'Ahmad Surya'),
(3, 'Dewi Rahayu'),
(4, 'Budi Pratama'),
(5, 'Siti Aisyah');

-- --------------------------------------------------------

--
-- Table structure for table `retur_obat`
--

CREATE TABLE `retur_obat` (
  `ID_Retur_Obat` int(11) NOT NULL,
  `ID_Supplier` int(11) DEFAULT NULL,
  `ID_Obat_Retur` int(11) DEFAULT NULL,
  `Jumlah_Obat_Retur` int(11) DEFAULT NULL,
  `Tanggal_Retur` date DEFAULT NULL,
  `Alasan_Retur` text DEFAULT NULL,
  `ID_Petugas_Gudang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `retur_obat`
--

INSERT INTO `retur_obat` (`ID_Retur_Obat`, `ID_Supplier`, `ID_Obat_Retur`, `Jumlah_Obat_Retur`, `Tanggal_Retur`, `Alasan_Retur`, `ID_Petugas_Gudang`) VALUES
(1, 1, 3, 10, '2024-02-20', 'Kemasan Rusak', 1),
(2, 3, 7, 15, '2024-02-21', 'Kemasan Rusak', 2),
(3, 5, 2, 5, '2024-02-22', 'Tidak Sesuai Pesanan', 3),
(4, 2, 5, 8, '2024-02-23', 'Pembelian berlebih', 4),
(5, 4, 9, 12, '2024-02-24', 'Tidak sesuai pesanan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `stok_obat`
--

CREATE TABLE `stok_obat` (
  `ID_Stok_Obat` int(11) NOT NULL,
  `ID_Obat` int(11) DEFAULT NULL,
  `Jumlah_Stok` int(11) DEFAULT NULL,
  `Tanggal_Input` date DEFAULT NULL,
  `ID_Petugas_Gudang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_obat`
--

INSERT INTO `stok_obat` (`ID_Stok_Obat`, `ID_Obat`, `Jumlah_Stok`, `Tanggal_Input`, `ID_Petugas_Gudang`) VALUES
(1, 1, 100, '2024-02-20', 2),
(2, 3, 150, '2024-02-21', 1),
(3, 5, 200, '2024-02-22', 5),
(4, 7, 50, '2024-02-23', 4),
(5, 9, 120, '2024-02-24', 3),
(6, 1, 100, '2024-02-20', 4),
(7, 3, 150, '2024-02-21', 3),
(8, 5, 200, '2024-02-22', 1),
(9, 7, 50, '2024-02-23', 5),
(10, 9, 120, '2024-02-24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID_Supplier` int(11) NOT NULL,
  `Nama_Supplier` varchar(100) DEFAULT NULL,
  `Alamat_Supplier` varchar(255) DEFAULT NULL,
  `No_Telfon_Supplier` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID_Supplier`, `Nama_Supplier`, `Alamat_Supplier`, `No_Telfon_Supplier`) VALUES
(1, 'PT. Sejahtera Farmasi', 'Jl. Merdeka No. 123', '081234567890'),
(2, 'CV. Cemerlang Medika', 'Jl. Pahlawan No. 45', '081345678901'),
(3, 'PD. Terang Jaya', 'Jl. Kartini No. 67', '081456789012'),
(4, 'UD. Budi Sehat', 'Jl. Diponegoro No. 89', '081567890123'),
(5, 'PT. Sentosa Farma', 'Jl. Sudirman No. 101', '081678901234');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_keluar_supp`
--

CREATE TABLE `transaksi_keluar_supp` (
  `ID_Transaksi_Keluar` int(11) NOT NULL,
  `ID_Supplier` int(11) DEFAULT NULL,
  `ID_Obat` int(11) DEFAULT NULL,
  `Tanggal_Masuk` date DEFAULT NULL,
  `Jumlah_Obat_Dibeli` int(11) DEFAULT NULL,
  `Harga_Satuan_Obat` decimal(10,2) DEFAULT NULL,
  `Total_Harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_keluar_supp`
--

INSERT INTO `transaksi_keluar_supp` (`ID_Transaksi_Keluar`, `ID_Supplier`, `ID_Obat`, `Tanggal_Masuk`, `Jumlah_Obat_Dibeli`, `Harga_Satuan_Obat`, `Total_Harga`) VALUES
(1, 1, 3, '2024-02-20', 500, 3000.00, 1500000.00),
(2, 3, 7, '2024-02-21', 1000, 2500.00, 2500000.00),
(3, 5, 2, '2024-02-22', 200, 4000.00, 800000.00),
(4, 2, 5, '2024-02-23', 300, 3500.00, 1050000.00),
(5, 4, 9, '2024-02-24', 800, 1200.00, 960000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pelanggan`
--

CREATE TABLE `transaksi_pelanggan` (
  `ID_Transaksi_Pelanggan` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `ID_Obat` int(11) DEFAULT NULL,
  `Tanggal_Transaksi` date DEFAULT NULL,
  `Total_Harga` decimal(10,2) DEFAULT NULL,
  `ID_Petugas_Kasir` int(11) DEFAULT NULL,
  `ID_Petugas_Apoteker` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_pelanggan`
--

INSERT INTO `transaksi_pelanggan` (`ID_Transaksi_Pelanggan`, `ID_Pelanggan`, `ID_Obat`, `Tanggal_Transaksi`, `Total_Harga`, `ID_Petugas_Kasir`, `ID_Petugas_Apoteker`) VALUES
(1, 1, 3, '2024-02-20', 150000.00, 1, 3),
(2, 3, 7, '2024-02-21', 300000.00, 2, 4),
(3, 5, 2, '2024-02-22', 50000.00, 3, 1),
(4, 2, 5, '2024-02-23', 200000.00, 4, 2),
(5, 4, 9, '2024-02-24', 100000.00, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`ID_Obat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indexes for table `petugas_apoteker`
--
ALTER TABLE `petugas_apoteker`
  ADD PRIMARY KEY (`ID_Petugas_Apoteker`);

--
-- Indexes for table `petugas_gudang`
--
ALTER TABLE `petugas_gudang`
  ADD PRIMARY KEY (`ID_Petugas_Gudang`);

--
-- Indexes for table `petugas_kasir`
--
ALTER TABLE `petugas_kasir`
  ADD PRIMARY KEY (`ID_Petugas_Kasir`);

--
-- Indexes for table `retur_obat`
--
ALTER TABLE `retur_obat`
  ADD PRIMARY KEY (`ID_Retur_Obat`),
  ADD KEY `ID_Supplier` (`ID_Supplier`),
  ADD KEY `ID_Obat_Retur` (`ID_Obat_Retur`),
  ADD KEY `ID_Petugas_Gudang` (`ID_Petugas_Gudang`);

--
-- Indexes for table `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD PRIMARY KEY (`ID_Stok_Obat`),
  ADD KEY `ID_Obat` (`ID_Obat`),
  ADD KEY `ID_Petugas_Gudang` (`ID_Petugas_Gudang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID_Supplier`);

--
-- Indexes for table `transaksi_keluar_supp`
--
ALTER TABLE `transaksi_keluar_supp`
  ADD PRIMARY KEY (`ID_Transaksi_Keluar`),
  ADD KEY `ID_Supplier` (`ID_Supplier`),
  ADD KEY `ID_Obat` (`ID_Obat`);

--
-- Indexes for table `transaksi_pelanggan`
--
ALTER TABLE `transaksi_pelanggan`
  ADD PRIMARY KEY (`ID_Transaksi_Pelanggan`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`),
  ADD KEY `ID_Obat` (`ID_Obat`),
  ADD KEY `ID_Petugas_Kasir` (`ID_Petugas_Kasir`),
  ADD KEY `ID_Petugas_Apoteker` (`ID_Petugas_Apoteker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `ID_Obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_Pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `petugas_apoteker`
--
ALTER TABLE `petugas_apoteker`
  MODIFY `ID_Petugas_Apoteker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `petugas_gudang`
--
ALTER TABLE `petugas_gudang`
  MODIFY `ID_Petugas_Gudang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `petugas_kasir`
--
ALTER TABLE `petugas_kasir`
  MODIFY `ID_Petugas_Kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `retur_obat`
--
ALTER TABLE `retur_obat`
  MODIFY `ID_Retur_Obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stok_obat`
--
ALTER TABLE `stok_obat`
  MODIFY `ID_Stok_Obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `ID_Supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi_keluar_supp`
--
ALTER TABLE `transaksi_keluar_supp`
  MODIFY `ID_Transaksi_Keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi_pelanggan`
--
ALTER TABLE `transaksi_pelanggan`
  MODIFY `ID_Transaksi_Pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `retur_obat`
--
ALTER TABLE `retur_obat`
  ADD CONSTRAINT `retur_obat_ibfk_1` FOREIGN KEY (`ID_Supplier`) REFERENCES `supplier` (`ID_Supplier`),
  ADD CONSTRAINT `retur_obat_ibfk_2` FOREIGN KEY (`ID_Obat_Retur`) REFERENCES `obat` (`ID_Obat`),
  ADD CONSTRAINT `retur_obat_ibfk_3` FOREIGN KEY (`ID_Petugas_Gudang`) REFERENCES `petugas_gudang` (`ID_Petugas_Gudang`);

--
-- Constraints for table `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD CONSTRAINT `stok_obat_ibfk_1` FOREIGN KEY (`ID_Obat`) REFERENCES `obat` (`ID_Obat`),
  ADD CONSTRAINT `stok_obat_ibfk_2` FOREIGN KEY (`ID_Petugas_Gudang`) REFERENCES `petugas_gudang` (`ID_Petugas_Gudang`);

--
-- Constraints for table `transaksi_keluar_supp`
--
ALTER TABLE `transaksi_keluar_supp`
  ADD CONSTRAINT `transaksi_keluar_supp_ibfk_1` FOREIGN KEY (`ID_Supplier`) REFERENCES `supplier` (`ID_Supplier`),
  ADD CONSTRAINT `transaksi_keluar_supp_ibfk_2` FOREIGN KEY (`ID_Obat`) REFERENCES `obat` (`ID_Obat`);

--
-- Constraints for table `transaksi_pelanggan`
--
ALTER TABLE `transaksi_pelanggan`
  ADD CONSTRAINT `transaksi_pelanggan_ibfk_1` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`),
  ADD CONSTRAINT `transaksi_pelanggan_ibfk_2` FOREIGN KEY (`ID_Obat`) REFERENCES `obat` (`ID_Obat`),
  ADD CONSTRAINT `transaksi_pelanggan_ibfk_3` FOREIGN KEY (`ID_Petugas_Kasir`) REFERENCES `petugas_kasir` (`ID_Petugas_Kasir`),
  ADD CONSTRAINT `transaksi_pelanggan_ibfk_4` FOREIGN KEY (`ID_Petugas_Apoteker`) REFERENCES `petugas_apoteker` (`ID_Petugas_Apoteker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
