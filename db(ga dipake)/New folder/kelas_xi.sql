-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2023 at 03:34 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jadwal`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xi`
--

CREATE TABLE `kelas_xi` (
  `id` int NOT NULL,
  `kd_jurusan` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kd_guru` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kd_mapel` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_xi`
--

INSERT INTO `kelas_xi` (`id`, `kd_jurusan`, `kd_guru`, `kd_mapel`) VALUES
(1, 'JTAV-1', '37', 'MP01'),
(2, 'JTAV-1', '89', 'MP02'),
(3, 'JTAV-1', '107', 'MP03'),
(4, 'JTAV-1', '93', 'MP03'),
(5, 'JTAV-1', '48', 'MP09'),
(6, 'JTAV-1', '21', 'MP04'),
(7, 'JTAV-1', '48', 'MP05'),
(8, 'JTAV-1', '85', 'MP06'),
(9, 'JTAV-1', '43', 'MP07'),
(10, 'JTAV-1', '131', 'MP08'),
(17, 'JTAV-2', '48', 'MP04'),
(19, 'JTAV-2', '37', 'MP01'),
(20, 'JTAV-2', '1', 'MP08'),
(21, 'JTAV-2', '150', 'MP09'),
(22, 'JTAV-2', '84', 'MP03'),
(23, 'JTAV-2', '12', 'MP03'),
(24, 'JTAV-2', '38', 'MP06'),
(25, 'JTAV-2', '142', 'MP02'),
(26, 'JTAV-2', '55', 'MP10'),
(27, 'JTAV-2', '145', 'MP07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_jurusan` (`kd_jurusan`),
  ADD KEY `kd_guru` (`kd_guru`),
  ADD KEY `kd_mapel` (`kd_mapel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
