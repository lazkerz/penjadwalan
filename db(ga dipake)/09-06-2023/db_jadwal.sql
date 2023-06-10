-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2023 at 02:12 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xii`
--

CREATE TABLE `kelas_xii` (
  `id` int NOT NULL,
  `kd_jurusan` varchar(4) NOT NULL,
  `kd_guru` varchar(4) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(4) NOT NULL,
  `nama_pelajaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kd_mapel`, `nama_pelajaran`) VALUES
('MP01', 'PENJAS'),
('MP02', 'MATEMATIKA'),
('MP03', 'AGAMA'),
('MP04', 'TAV'),
('MP05', 'KELISTRIKAN'),
('MP06', 'PPKN'),
('MP07', 'SEJARAH'),
('MP08', 'BAHASA INGGRIS'),
('MP09', 'PPKU'),
('MP10', 'BAHASA INDONESIA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kd_guru` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`kd_guru`, `nama_guru`) VALUES
('1', 'MISRAYANI, S.Pd., M.Si'),
('107', 'NUR AFIQALUTYA SARI'),
('12', 'TIARMA, S.Th'),
('131', 'JUNI WULANDA, S.Pd'),
('142', 'SEFRINA VIDIA SIPAYUNG, S.Pd'),
('145', 'EVA SAFITRI, SE'),
('150', 'ELFANDO'),
('191', 'Juni'),
('21', 'JULISNAN, SPd'),
('37', 'BENNI DAME DONDA SIMAM0RA. S.Pd'),
('38', 'Dra. JANDIOSA MARDALENA BARUS'),
('43', 'SAMPETUA TINDAON, M.Pd'),
('48', 'HERMANTO SAPUTRA HARIANJA, S.Pd'),
('55', 'NGATIANI,S.Pd'),
('84', 'DIRJA HASIBUAN , M.Pd.I'),
('85', 'ENNY WAHYUNI, S.Pd'),
('89', 'EDI BENNA TUAHTA DAMANIK, S.Pd'),
('93', 'ELISA KRISNA SIDABUTAR, S.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_admin` int NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `user_admin` varchar(45) NOT NULL,
  `pass_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'admin1', 'admin', 'admin');

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
-- Indexes for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_guru` (`kd_guru`),
  ADD KEY `kd_jurusan` (`kd_jurusan`),
  ADD KEY `kd_mapel` (`kd_mapel`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`kd_guru`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD CONSTRAINT `kelas_xi_ibfk_1` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`),
  ADD CONSTRAINT `kelas_xi_ibfk_2` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`),
  ADD CONSTRAINT `kelas_xi_ibfk_3` FOREIGN KEY (`kd_jurusan`) REFERENCES `db_jurusan`.`jurusan_tav` (`kd_jurusan`);

--
-- Constraints for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD CONSTRAINT `kelas_xii_ibfk_2` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`),
  ADD CONSTRAINT `kelas_xii_ibfk_3` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
