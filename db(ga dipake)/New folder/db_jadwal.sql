-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 04:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(30) NOT NULL,
  `kd_kelas` int(4) NOT NULL,
  `kd_guru` varchar(4) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL,
  `kd_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `kd_kelas`, `kd_guru`, `kd_mapel`, `kd_jurusan`) VALUES
('J1', 1, '12', 'MP03', '');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(4) NOT NULL,
  `id_jadwal` varchar(30) NOT NULL,
  `kd_jurusan_rpl` varchar(30) NOT NULL,
  `kd_jurusan_bkdp` varchar(30) NOT NULL,
  `kd_jurusan_dpib` varchar(30) NOT NULL,
  `kd_jurusan_tab` varchar(30) NOT NULL,
  `kd_jurusan_tav` varchar(30) NOT NULL,
  `kd_jurusan_tbsm` varchar(30) NOT NULL,
  `kd_jurusan_titl` varchar(30) NOT NULL,
  `kd_jurusan_tjtl` varchar(30) NOT NULL,
  `kd_jurusan_tkj` varchar(30) NOT NULL,
  `kd_jurusan_tkkr` varchar(30) NOT NULL,
  `kd_jurusan_tkp` varchar(30) NOT NULL,
  `kd_jurusan_tsm` varchar(30) NOT NULL,
  `kd_jurusan_tkr` varchar(30) NOT NULL,
  `kd_jurusan_tkro` varchar(30) NOT NULL,
  `kd_jurusan_tlas` varchar(30) NOT NULL,
  `kd_jurusan_tp` varchar(30) NOT NULL,
  `kd_jurusan_tpl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `id_jadwal`, `kd_jurusan_rpl`, `kd_jurusan_bkdp`, `kd_jurusan_dpib`, `kd_jurusan_tab`, `kd_jurusan_tav`, `kd_jurusan_tbsm`, `kd_jurusan_titl`, `kd_jurusan_tjtl`, `kd_jurusan_tkj`, `kd_jurusan_tkkr`, `kd_jurusan_tkp`, `kd_jurusan_tsm`, `kd_jurusan_tkr`, `kd_jurusan_tkro`, `kd_jurusan_tlas`, `kd_jurusan_tp`, `kd_jurusan_tpl`) VALUES
(1, '', 'JRPL-1', 'JBKDP-1', 'JDPIB-1', 'JTAB-1', 'JTAV-1', 'JTBSM-1', ' JTITL-1', 'JTJTL-1', 'JTKJ-1', 'JTKKR-1', 'JTKP-1', '', 'JTKR-1', 'JTKRO-1', 'JTLAS-1', 'JTP-1', 'TPL-1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kd_kelas` int(4) NOT NULL,
  `Kelas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kd_kelas`, `Kelas`) VALUES
(1, 'XI'),
(2, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xi`
--

CREATE TABLE `kelas_xi` (
  `id` int(11) NOT NULL,
  `kd_jurusan` varchar(6) NOT NULL,
  `kd_guru` varchar(4) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL
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
(27, 'JTAV-2', '145', 'MP07'),
(28, 'JTAV-1', '48', 'MP13'),
(29, 'JTAV-1', '21', 'MP11'),
(30, 'JTAV-1', '85', 'MP12');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xii`
--

CREATE TABLE `kelas_xii` (
  `id` int(11) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `kd_guru` varchar(4) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_xii`
--

INSERT INTO `kelas_xii` (`id`, `kd_jurusan`, `kd_guru`, `kd_mapel`) VALUES
(1, 'JRPL-1', '37', 'MP05');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(4) NOT NULL,
  `nama_pelajaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('MP10', 'BAHASA INDONESIA'),
('MP11', 'PPKB'),
('MP12', 'PKP'),
('MP13', 'PKKW');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kd_guru` varchar(4) NOT NULL,
  `nama_guru` varchar(50) NOT NULL
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
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `user_admin` varchar(45) NOT NULL,
  `pass_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'nurul', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `kd_kelas` (`kd_kelas`),
  ADD UNIQUE KEY `kd_guru` (`kd_guru`),
  ADD UNIQUE KEY `kd_mapel` (`kd_mapel`,`kd_jurusan`),
  ADD KEY `kd_jurusan` (`kd_jurusan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_jurusan_rpl` (`kd_jurusan_rpl`,`kd_jurusan_bkdp`,`kd_jurusan_dpib`,`kd_jurusan_tab`,`kd_jurusan_tav`,`kd_jurusan_tbsm`,`kd_jurusan_titl`,`kd_jurusan_tjtl`,`kd_jurusan_tkj`,`kd_jurusan_tkkr`,`kd_jurusan_tkp`,`kd_jurusan_tsm`,`kd_jurusan_tkr`,`kd_jurusan_tkro`,`kd_jurusan_tlas`,`kd_jurusan_tp`,`kd_jurusan_tpl`),
  ADD UNIQUE KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `kd_jurusan_dpib` (`kd_jurusan_dpib`),
  ADD KEY `kd_jurusan_tab` (`kd_jurusan_tab`),
  ADD KEY `kd_jurusan_tav` (`kd_jurusan_tav`),
  ADD KEY `kd_jurusan_tbsm` (`kd_jurusan_tbsm`),
  ADD KEY `kd_jurusan_titl` (`kd_jurusan_titl`),
  ADD KEY `kd_jurusan_tjtl` (`kd_jurusan_tjtl`),
  ADD KEY `kd_jurusan_tkj` (`kd_jurusan_tkj`),
  ADD KEY `kd_jurusan_tkkr` (`kd_jurusan_tkkr`),
  ADD KEY `kd_jurusan_tkp` (`kd_jurusan_tkp`),
  ADD KEY `kd_jurusan_tkro` (`kd_jurusan_tkro`),
  ADD KEY `kd_jurusan_tlas` (`kd_jurusan_tlas`),
  ADD KEY `kd_jurusan_tp` (`kd_jurusan_tp`),
  ADD KEY `kd_jurusan_tpl` (`kd_jurusan_tpl`),
  ADD KEY `kd_jurusan_trk` (`kd_jurusan_tkr`),
  ADD KEY `jurusan_ibfk_17` (`kd_jurusan_bkdp`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kd_kelas`);

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
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kd_kelas`) REFERENCES `kelas` (`kd_kelas`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`);

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_10` FOREIGN KEY (`kd_jurusan_tkkr`) REFERENCES `db_jurusan`.`jurusan_tkkr` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_11` FOREIGN KEY (`kd_jurusan_tkp`) REFERENCES `db_jurusan`.`jurusan_tkp` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_12` FOREIGN KEY (`kd_jurusan_tkro`) REFERENCES `db_jurusan`.`jurusan_tkro` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_13` FOREIGN KEY (`kd_jurusan_tlas`) REFERENCES `db_jurusan`.`jurusan_tlas` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_14` FOREIGN KEY (`kd_jurusan_tp`) REFERENCES `db_jurusan`.`jurusan_tp` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_15` FOREIGN KEY (`kd_jurusan_tpl`) REFERENCES `db_jurusan`.`jurusan_tpl` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_16` FOREIGN KEY (`kd_jurusan_tkr`) REFERENCES `db_jurusan`.`jurusan_tkr` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_17` FOREIGN KEY (`kd_jurusan_bkdp`) REFERENCES `db_jurusan`.`jurusan_bkdp` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_2` FOREIGN KEY (`kd_jurusan_dpib`) REFERENCES `db_jurusan`.`jurusan_dpib` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_3` FOREIGN KEY (`kd_jurusan_rpl`) REFERENCES `db_jurusan`.`jurusan_rpl` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_4` FOREIGN KEY (`kd_jurusan_tab`) REFERENCES `db_jurusan`.`jurusan_tab` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_5` FOREIGN KEY (`kd_jurusan_tav`) REFERENCES `db_jurusan`.`jurusan_tav` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_6` FOREIGN KEY (`kd_jurusan_tbsm`) REFERENCES `db_jurusan`.`jurusan_tbsm` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_7` FOREIGN KEY (`kd_jurusan_titl`) REFERENCES `db_jurusan`.`jurusan_titl` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_8` FOREIGN KEY (`kd_jurusan_tjtl`) REFERENCES `db_jurusan`.`jurusan_tjtl` (`kd_jurusan`),
  ADD CONSTRAINT `jurusan_ibfk_9` FOREIGN KEY (`kd_jurusan_tkj`) REFERENCES `db_jurusan`.`jurusan_tkj` (`kd_jurusan`);

--
-- Constraints for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD CONSTRAINT `kelas_xi_ibfk_1` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`);

--
-- Constraints for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD CONSTRAINT `kelas_xii_ibfk_2` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
