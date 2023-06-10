-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jun 2023 pada 22.25
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
-- Database: `db_jadwal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_xi`
--

CREATE TABLE `kelas_xi` (
  `id` int NOT NULL,
  `kd_jurusan` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kd_guru` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kd_mapel` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas_xi`
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
-- Struktur dari tabel `kelas_xii`
--

CREATE TABLE `kelas_xii` (
  `id` int NOT NULL,
  `kd_jurusan` varchar(4) NOT NULL,
  `kd_guru` varchar(4) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(4) NOT NULL,
  `nama_pelajaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kd_mapel`, `nama_pelajaran`) VALUES
('MP01', 'PKB'),
('MP02', 'PPKN'),
('MP03', 'PENJAS'),
('MP04', 'PKDK'),
('MP05', 'B.INDONESIA'),
('MP06', 'SEJARAH'),
('MP07', 'AGAMA'),
('MP08', 'MATEMATIKA'),
('MP09', 'PBP'),
('MP10', 'B.INGGRIS'),
('MP11', 'PKP'),
('MP12', 'EBKP'),
('MP13', 'PDKP'),
('MP14', 'RAB'),
('MP15', 'MA'),
('MP16', 'MDPL'),
('MP17', 'PDPKDP'),
('MP18', 'EBKDP'),
('MP19', 'PEBKDP'),
('MP20', 'PBKDP'),
('MP21', 'APLDPIG'),
('MP22', 'EBK'),
('MP23', 'KJDJ'),
('MP24', 'KDUG'),
('MP25', 'IPL'),
('MP26', 'IML'),
('MP27', 'PKKW'),
('MP28', 'RML'),
('MP29', 'ITL'),
('MP30', 'PPL'),
('MP31', 'JDTL'),
('MP32', 'GI'),
('MP33', 'JTTL'),
('MP34', 'PJTL'),
('MP35', 'PKK'),
('MP36', 'PKKW'),
('MP37', 'TAV'),
('MP38', 'KELISTRIKAN'),
('MP39', 'PPAV'),
('MP40', 'PISAV'),
('MP41', 'PSRT'),
('MP42', 'PRE'),
('MP43', 'CNC'),
('MP44', 'FRAIS'),
('MP45', 'GBR MAN'),
('MP46', 'SMAW'),
('MP47', 'BUBUT'),
('MP48', 'OAW'),
('MP49', 'MIG/MAG'),
('MP50', 'GERINDA'),
('MP51', 'TIG'),
('MP52', 'PMSM'),
('MP53', 'PBKR'),
('MP54', 'PSSM'),
('MP55', 'PKSM'),
('MP56', 'PKKR'),
('MP57', 'PSPTKR'),
('MP58', 'SBSM'),
('MP59', 'PMKR'),
('MP60', 'PBSM'),
('MP61', 'EDUAB'),
('MP62', 'PTDHAB'),
('MP63', 'KAB'),
('MP64', 'HAB'),
('MP65', 'PD'),
('MP66', 'PWEB'),
('MP67', 'MULTEK'),
('MP68', 'PBO'),
('MP69', 'IJKBK'),
('MP70', 'KRPJK'),
('MP71', 'KPJK'),
('MP72', 'DATABASE ADM'),
('MP73', 'PWPB'),
('MP74', 'BD'),
('MP75', 'TLJ'),
('MP76', 'ASJ'),
('MP77', 'AIJ'),
('MP78', 'TKKR'),
('MP79', 'M.JAMU TRADISIONAL'),
('MP80', 'PRPS'),
('MP81', 'PWB'),
('MP82', 'PPR'),
('MP83', 'PTK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kd_guru` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`kd_guru`, `nama_guru`) VALUES
('1', 'MISRAYANI, S.Pd., M.Si.'),
('100', 'LINDON ALFANTRI SARAGIH, S.Pd.K'),
('101', 'HELMINA HUTAGALUNG'),
('102', 'SRI MARIATI, S.Pd'),
('103', 'LELA HUTAPEA, S.Pd.'),
('104', 'FARIDA DELIYANTI TAMBUNAN, S.Pd'),
('105', 'META MARIA KRISTIANI GINTING, S.Pd'),
('106', 'FRISKA PURBA, S.Pd.'),
('107', 'NUR AFIQALUTYA SARI'),
('108', 'FITRI ROMAULI, S.Pd '),
('109', 'ALEXANDER PURBA, ST'),
('11', 'Hj. SRI RAHAYU, SPd'),
('110', 'MARTA RINA HUTAGALUNG, S.Pd.K'),
('111', 'ANNISA NUR FATHIYYAH, S.Pd '),
('112', 'FIQIH KARTIKA SIAHAAN, S.Kom'),
('113', 'NGAMEHI SITEPU'),
('114', 'SRI RAHAYU UTAMI, S.Pd '),
('115', 'MARTIN SIMATUPANG, S.Pd '),
('116', 'RAHMAD HIDAYAT, S.Pd '),
('117', 'DWI EKA PANCA TAMBA, S.Pd '),
('118', 'KARTINI SITORUS, S.Pd '),
('119', 'DINI ANDRIANI, S.Pd '),
('12', 'T I A R M A, STh'),
('120', 'EMA RAHMADIAH'),
('121', 'SAMPURNO, S.Pd '),
('123', 'ASRI TAMBUNAN , S.Pd '),
('124', 'MUHAMMAD GARUDI, S.PdI'),
('125', 'SRI INDRIANI F BARUS'),
('126', 'SISKA SIMANJUNTAK, S.Pd '),
('127', 'RIZKI KURNIAWAN, S.Pd '),
('128', 'ANNITA SELLIANA SIREGAR, S.Pd '),
('129', 'ZHAN ELY SARAGIH, S.Pd '),
('13', 'LAPANRIA SILAEN, SPd'),
('130', 'KRISTINA NATALIA SITEPU, S.Pd '),
('131', 'JUNI WULANDA, S.Pd '),
('132', 'FITRI WAHYUNI, S.Pd '),
('133', 'NOVELINA SIGALINGGING, S.Kom.'),
('134', 'RIZKY ACHMAD RISAL, S.Kom.'),
('135', 'NURAINI PURBA, S.Pd'),
('136', 'SRY RAHAYU NASUTION, S.PdI'),
('138', 'THERESIA MAGESTIKA SIPAYUNG, S.Pd '),
('139', 'AULIA HUSNA'),
('14', 'SUGENG HARIADI, SPd'),
('140', 'YUNI SRI SUYATNO, S.Pd.'),
('141', 'DENDI KUNCORO, ST'),
('142', 'SEFRINA VIDIA SIPAYUNG, S.Pd.'),
('144', 'ARMA WINDA, S.Pd '),
('145', 'EVA SAFITRI, SE'),
('146', 'AHMAD TARERAJA TAHER, SAR'),
('147', 'KHAIRUL BADRI, S.Pd '),
('148', 'Drs.  M.RIZAL'),
('149', 'MHD. PRASETIO WIBOWO, SP'),
('15', 'NURLIANA PARDOSI, SPd'),
('150', 'ELFANDO '),
('151', 'YOPI FERNANDO GULO'),
('152', 'ANISA PERMATA SARI'),
('153', 'Drs. SYARIF MUDA'),
('154', 'MHD. RIFKI MUSLIM, S.Pd.'),
('155', 'TRI RANGGA BAYU'),
('156', 'ANDRE PRATAMA'),
('157', 'MELSYA DILLA TARIGAN, S.Pd.'),
('158', 'MUJI SATRIO'),
('159', 'Drs. L. BERNAD LUMBAN TORUAN'),
('16', 'Drs.  PRELY HASIBUAN'),
('161', 'MINTER SURAIDI BARUS '),
('162', 'BAIDA RANI, S.Pd.'),
('163', 'ALBERTH P. SILALAHI'),
('164', 'ELFANY ESTHER SARAGIH'),
('165', 'ISNAINI RIZKI, S.PdI'),
('166', 'LUSIA SIRINGO-RINGO'),
('167', 'ROZI WINANDA, A.Md.A.B.'),
('168', 'RIFAI POHAN, S.Pd.'),
('18', 'ANNARITA SIDABUTAR, S.Pd '),
('19', 'IR. ELFRIDA LUBIS, M.Pd'),
('2', 'Dra. NURHAYATI'),
('20', 'NURMAYANI, S.Pd '),
('21', 'JULISNAN, SPd'),
('22', 'Drs.  MAHFUAD'),
('23', 'ANI SURAINI,STh'),
('24', 'Drs. ELISER SARAGIH'),
('25', 'SENNY PINTAULI  GULTOM, S.Pd'),
('26', 'ELMIDA SONTI MARIA PURBA, S.Pd '),
('27', 'YANMAR SIMARMATA,SPd,MM'),
('28', 'EVA JUITA SRI MURNI PANJAITAN, ST, M.Si'),
('29', 'ATIKA AZZAKAMAL, S.Pd '),
('30', 'TEGUH RAHAYU, SPd'),
('31', 'SAIDI ANTONIUS SIMANJUNTAK, M.Kom'),
('32', 'YUNILAWATI, ST'),
('33', 'BETTY OCTAVIA BARUS, S.Pd'),
('34', 'SRI WAHYUNI. SPd'),
('35', 'JUSTIUS SURBAKTI, SPd'),
('36', 'ADVENOV FRIANI SILALAHI, S.Pd'),
('37', 'BENNI DAME DONDA SIMAM0RA. S.Pd '),
('38', 'Dra. JANDIOSA MARDALENA BARUS'),
('39', 'Drs. JASMAN SIMBOLON'),
('4', 'Drs.  HERMANSYAH'),
('40', 'H. JASON SARAGIH,SPd, MM'),
('41', 'Drs. Y U H A R D I'),
('42', 'DEMAK SIMATUPANG, S.Pd '),
('43', 'SAMPETUA TINDAON, M.Pd'),
('44', 'Drs. BITNER TAMPUBOLON'),
('45', 'JOHANES PASARIBU, S.Pd '),
('46', 'Drs. K H A I R U N'),
('47', 'PARULIAN  ROMAIDA, S.Pd'),
('48', 'HERMANTO SAPUTRA HARIANJA, S.Pd '),
('49', 'Drs. EDISON SIHOMBING'),
('5', 'Drs.  YAFAO ZEBUA'),
('50', 'Drs. JONI MANGISITUA SILALAHI'),
('51', 'JUSMEN SARAGIH, S.Pd '),
('52', 'SAFRIANTINA PURBA, M.Pd'),
('53', 'SITI RAHMAH , S.Pd'),
('54', 'WANCEN GALINGGING'),
('55', 'NGATIANI,S.Pd'),
('56', 'FARIDAH, SH'),
('57', 'R A H M I T O, S.Pd '),
('59', 'MARDAWATI, S.Pd'),
('6', 'Drs.  H. GHAZALI SIREGAR'),
('60', 'BAMBANG SUSISWO,SPd'),
('61', 'ROSMELDA BR. GINTING, S.Si, M.Kom.'),
('62', 'SULISTIANI, S.T'),
('63', 'EMI RATNA SARI , S.Sos.I'),
('64', 'NIA RAHMAYANI, S.Pd'),
('65', 'ARIASNA NASUTION, S.Pd'),
('66', 'RITAWATI SAGALA,S.Pd'),
('67', 'ROMAWATI PANJAITAN, S.Pd '),
('68', 'KARTIKA OKTA PURNAMA, M.Si'),
('69', 'ROMANTI NOPRALINA SITORUS, S.Pd '),
('7', 'Dra. ROSMINAH'),
('70', 'YUNITA SIBURIAN, S.Pd'),
('71', 'IDAWATI, S.Pd'),
('72', 'B A H R I N, S.Pd'),
('73', 'NANDO CASANOFA SIDABUTAR, S.Pd'),
('74', 'DEDI ISKANDAR, S.Pd '),
('75', 'ABIDAN SIMBOLON, S.Pd '),
('76', 'PAMORIA SONDANG, S.Pd '),
('77', 'BETTY MARIANI PASARIBU, S.Pd '),
('78', 'BETTY PURBA, S.PdK'),
('79', 'LEONARD SAMOSIR, S.Pd.'),
('8', 'Dra. FINERIA NAINGGOLAN'),
('80', 'DEBORAH RAJAGUKGUK, S.Pd.'),
('81', 'TITIN SAFITRI, ST'),
('82', 'ROSMERYWATI SIAHAAN, S.Pd'),
('83', 'ENITA DAMANIK, S.Pd '),
('84', 'DIRJA HASIBUAN , M.PdI'),
('85', 'ENNY WAHYUNI, S.Pd '),
('86', 'ERJAN ALBAR GINTING, S.SosI'),
('87', 'TUTI WARDANI, S.Pd '),
('88', 'DESY YUSNAINI PANJAITAN, S.Pd'),
('89', 'EDI BENNA TUAHTA DAMANIK, S.Pd'),
('90', 'GIONO, S.Pd'),
('91', 'ELISA SURBAKTI, S.Pd.'),
('92', 'SABARINA MUNTHE'),
('93', 'ELISA KRISNA SIDABUTAR, S.Pd'),
('94', 'ELFANY MONANDA LUBIS, S.Pd'),
('95', 'EKA HANDAYANI SIMARMATA, S.Pd'),
('96', 'SARI DEWI LUMBANGAOL, S.Pd'),
('97', 'SRI HARYATI INDRIANI, S.Pd.I'),
('98', 'NURLIAH, S.Pd.I'),
('99', 'WIDURI, S.Pd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_admin` int NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `user_admin` varchar(45) NOT NULL,
  `pass_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'admin1', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_jurusan` (`kd_jurusan`),
  ADD KEY `kd_guru` (`kd_guru`),
  ADD KEY `kd_mapel` (`kd_mapel`);

--
-- Indeks untuk tabel `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_guru` (`kd_guru`),
  ADD KEY `kd_jurusan` (`kd_jurusan`),
  ADD KEY `kd_mapel` (`kd_mapel`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`kd_guru`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas_xi`
--
ALTER TABLE `kelas_xi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kelas_xii`
--
ALTER TABLE `kelas_xii`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
