-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Bulan Mei 2023 pada 01.34
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jurusan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_bkdp`
--

CREATE TABLE `jurusan_bkdp` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_bkdp`
--

INSERT INTO `jurusan_bkdp` (`kd_jurusan`, `nama_jurusan`) VALUES
('JBKDP-1', 'Teknik Bisnis Konstruksi dan Properti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_dpib`
--

CREATE TABLE `jurusan_dpib` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_dpib`
--

INSERT INTO `jurusan_dpib` (`kd_jurusan`, `nama_jurusan`) VALUES
('JDPIB-1', 'Teknik Desain Pemodelan dan Informasi Bangunan'),
('JDPIB-2', 'Teknik Desain Pemodelan dan Informasi Bangunan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_rpl`
--

CREATE TABLE `jurusan_rpl` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_rpl`
--

INSERT INTO `jurusan_rpl` (`kd_jurusan`, `nama_jurusan`) VALUES
('JRPL-1', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tab`
--

CREATE TABLE `jurusan_tab` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tab`
--

INSERT INTO `jurusan_tab` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTAB-1', 'Teknik Alat Berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tav`
--

CREATE TABLE `jurusan_tav` (
  `kd_jurusan` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tav`
--

INSERT INTO `jurusan_tav` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTAV-1', 'Teknik Audio Video'),
('JTAV-2', 'Teknik Audio Video');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tbsm`
--

CREATE TABLE `jurusan_tbsm` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tbsm`
--

INSERT INTO `jurusan_tbsm` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTBSM-1', 'Teknik Bisnis Sepeda Motor'),
('JTBSM-2', 'Teknik Bisnis Sepeda Motor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_titl`
--

CREATE TABLE `jurusan_titl` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_titl`
--

INSERT INTO `jurusan_titl` (`kd_jurusan`, `nama_jurusan`) VALUES
(' JTITL-1', 'Teknik Instalasi Tenaga Listrik'),
('JTITL-2', 'Teknik Instalasi Tenaga Listrik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tjtl`
--

CREATE TABLE `jurusan_tjtl` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tjtl`
--

INSERT INTO `jurusan_tjtl` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTJTL-1', 'Teknik Jaringan Tenaga Listrik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tkj`
--

CREATE TABLE `jurusan_tkj` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tkj`
--

INSERT INTO `jurusan_tkj` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTKJ-1', 'Teknik Komputer Jaringan'),
('JTKJ-2', 'Teknik Komputer Jaringan'),
('JTKJ-3', 'Teknik Komputer Jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tkkr`
--

CREATE TABLE `jurusan_tkkr` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tkkr`
--

INSERT INTO `jurusan_tkkr` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTKKR-1', 'Tata Kecantikan Kulit dan Rambut'),
('JTKKR-2', 'Tata Kecantikan Kulit dan Rambut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tkp`
--

CREATE TABLE `jurusan_tkp` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tkp`
--

INSERT INTO `jurusan_tkp` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTKP-1', 'Teknik Konstruksi dan Perumahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tkr`
--

CREATE TABLE `jurusan_tkr` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tkr`
--

INSERT INTO `jurusan_tkr` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTKR-1', 'Teknik Kendaraan Ringan'),
('JTKR-2', 'Teknik Kendaraan Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tkro`
--

CREATE TABLE `jurusan_tkro` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tkro`
--

INSERT INTO `jurusan_tkro` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTKRO-1', 'Teknik Kendaraan Ringan Otomotif'),
('JTKRO-2', 'Teknik Kendaraan Ringan Otomotif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tlas`
--

CREATE TABLE `jurusan_tlas` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tlas`
--

INSERT INTO `jurusan_tlas` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTLAS-1', 'Teknik Pengelasan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tp`
--

CREATE TABLE `jurusan_tp` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tp`
--

INSERT INTO `jurusan_tp` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTP-1', 'Teknik Permesinan'),
('JTP-2', 'Teknik Permesinan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tpl`
--

CREATE TABLE `jurusan_tpl` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan_tsm`
--

CREATE TABLE `jurusan_tsm` (
  `kd_jurusan` varchar(30) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan_tsm`
--

INSERT INTO `jurusan_tsm` (`kd_jurusan`, `nama_jurusan`) VALUES
('JTSM-1', 'Teknik Sepeda Motor'),
('JTSM-2', 'Teknik Sepeda Motor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan_bkdp`
--
ALTER TABLE `jurusan_bkdp`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_dpib`
--
ALTER TABLE `jurusan_dpib`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_rpl`
--
ALTER TABLE `jurusan_rpl`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tab`
--
ALTER TABLE `jurusan_tab`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tav`
--
ALTER TABLE `jurusan_tav`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tbsm`
--
ALTER TABLE `jurusan_tbsm`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_titl`
--
ALTER TABLE `jurusan_titl`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tjtl`
--
ALTER TABLE `jurusan_tjtl`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tkj`
--
ALTER TABLE `jurusan_tkj`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tkkr`
--
ALTER TABLE `jurusan_tkkr`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tkp`
--
ALTER TABLE `jurusan_tkp`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tkr`
--
ALTER TABLE `jurusan_tkr`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tkro`
--
ALTER TABLE `jurusan_tkro`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tlas`
--
ALTER TABLE `jurusan_tlas`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tp`
--
ALTER TABLE `jurusan_tp`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `jurusan_tpl`
--
ALTER TABLE `jurusan_tpl`
  ADD PRIMARY KEY (`kd_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
