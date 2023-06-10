-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2023 at 12:55 PM
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
-- Table structure for table `daftar_kelas`
--

CREATE TABLE `daftar_kelas` (
  `jenis_kelas` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `kd_jurusan` varchar(11) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_kelas`
--

INSERT INTO `daftar_kelas` (`jenis_kelas`, `kd_jurusan`) VALUES
('BKDP-1', 'BKDP'),
('DPIB-1', 'DPIB'),
('RPL-1', 'RPL'),
('TAB-1', 'TAB'),
('TAV-1', 'TAV'),
('TAV-2', 'TAV'),
('TBSM-1', 'TBSM'),
('TITL-1', 'TITL'),
('TJTL-1', 'TJTL'),
('TKJ-1', 'TKJ'),
('TKKR-1', 'TKKR'),
('TKP-1', 'TKP'),
('TKR-1', 'TKR'),
('TKRO-1', 'TKRO'),
('TLAS-1', 'TLAS'),
('TP-1', 'TP'),
('TSM-1', 'TSM');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xi`
--

CREATE TABLE `kelas_xi` (
  `id` int NOT NULL,
  `jenis_kelas` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `kd_mapel` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kd_guru` varchar(4) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_xi`
--

INSERT INTO `kelas_xi` (`id`, `jenis_kelas`, `kd_mapel`, `kd_guru`) VALUES
(1, 'DPIB-1', 'MP14', '34'),
(2, 'DPIB-1', 'MP03', '37'),
(3, 'DPIB-1', 'MP02', '59'),
(4, 'DPIB-1', 'MP15', '57'),
(5, 'DPIB-1', 'MP04', '13'),
(6, 'DPIB-1', 'MP08', '36'),
(7, 'DPIB-1', 'MP05', '20'),
(8, 'DPIB-1', 'MP10', '12'),
(9, 'DPIB-1', 'MP16', '13'),
(10, 'DPIB-1', 'MP07', '13'),
(11, 'DPIB-1', 'MP07', '12'),
(12, 'TKP-1', 'MP03', '116'),
(13, 'TKP-1', 'MP04', '76'),
(14, 'TKP-1', 'MP05', '55'),
(15, 'TKP-1', 'MP06', '43'),
(16, 'TKP-1', 'MP09', '13'),
(17, 'TKP-1', 'MP10', '33'),
(18, 'TKP-1', 'MP11', '5'),
(19, 'TKP-1', 'MP11', '76'),
(20, 'TKP-1', 'MP07', '97'),
(21, 'TKP-1', 'MP07', '110'),
(22, 'TKP-1', 'MP12', '13'),
(23, 'TKP-1', 'MP17', '34'),
(24, 'TAV-1', 'MP01', '37'),
(25, 'TAV-1', 'MP02', '89'),
(26, 'TAV-1', 'MP03', '107'),
(27, 'TAV-1', 'MP03', '93'),
(28, 'TAV-1', 'MP09', '48'),
(29, 'TAV-1', 'MP04', '21'),
(30, 'TAV-1', 'MP05', '48'),
(31, 'TAV-1', 'MP06', '85'),
(32, 'TAV-1', 'MP07', '43'),
(33, 'TAV-1', 'MP08', '131'),
(34, 'TLAS-1', 'MP46', '41'),
(35, 'TLAS-1', 'MP02', '38'),
(36, 'TLAS-1', 'MP03', '116'),
(37, 'TLAS-1', 'MP47', '41'),
(38, 'TLAS-1', 'MP05', '55'),
(39, 'TLAS-1', 'MP06', '152'),
(40, 'TLAS-1', 'MP48', '54'),
(41, 'TLAS-1', 'MP10', '131'),
(42, 'TLAS-1', 'MP49', '54'),
(43, 'TLAS-1', 'MP08', '103'),
(44, 'TLAS-1', 'MP07', '97'),
(45, 'TLAS-1', 'MP07', '78'),
(46, 'TLAS-1', 'MP35', '99'),
(47, 'TITL-1', 'MP25', '4'),
(48, 'TITL-1', 'MP02', '38'),
(49, 'TITL-1', 'MP03', '129'),
(50, 'TITL-1', 'MP26', '4'),
(51, 'TITL-1', 'MP05', '105'),
(52, 'TITL-1', 'MP06', '152'),
(53, 'TITL-1', 'MP08', '142'),
(54, 'TITL-1', 'MP10', '53'),
(55, 'TITL-1', 'MP27', '128'),
(56, 'TITL-1', 'MP28', '2'),
(57, 'TITL-1', 'MP07', '124'),
(58, 'TITL-1', 'MP07', '12'),
(59, 'TITL-1', 'MP30', '154'),
(60, 'TITL-1', 'MP29', '2'),
(61, 'TITL-1', 'MP02', '38'),
(62, 'TJTL-1', 'MP10', '47'),
(63, 'TJTL-1', 'MP06', '43'),
(64, 'TJTL-1', 'MP03', '37'),
(65, 'TJTL-1', 'MP31', '154'),
(66, 'TJTL-1', 'MP27', '44'),
(67, 'TJTL-1', 'MP02', '42'),
(68, 'TJTL-1', 'MP32', '6'),
(69, 'TJTL-1', 'MP28', '6'),
(70, 'TJTL-1', 'MP33', '2'),
(71, 'TJTL-1', 'MP34', '44'),
(72, 'TJTL-1', 'MP07', '132'),
(73, 'TJTL-1', 'MP07', '100'),
(87, 'TP-1', 'MP43', '75'),
(88, 'TP-1', 'MP44', '73'),
(89, 'TP-1', 'MP45', '60'),
(90, 'TP-1', 'MP10', '126'),
(91, 'TP-1', 'MP46', '75'),
(92, 'TP-1', 'MP35', '99'),
(93, 'TP-1', 'MP03', '37'),
(94, 'TP-1', 'MP07', '124'),
(95, 'TP-1', 'MP07', '12'),
(96, 'TP-1', 'MP47', '60'),
(97, 'TP-1', 'MP02', '59'),
(98, 'TP-1', 'MP05', '102'),
(99, 'TP-1', 'MP08', '95');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_xii`
--

CREATE TABLE `kelas_xii` (
  `id` int NOT NULL,
  `jenis_kelas` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kd_mapel` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `kd_guru` varchar(4) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_xii`
--

INSERT INTO `kelas_xii` (`id`, `jenis_kelas`, `kd_mapel`, `kd_guru`) VALUES
(1, 'TAV-1', 'MP43', '27'),
(2, 'TAV-1', 'MP47', '39'),
(3, 'TAV-1', 'MP08', '19'),
(4, 'TAV-1', 'MP02', '42'),
(5, 'TAV-1', 'MP07', '97'),
(6, 'TAV-1', 'MP07', '78'),
(7, 'TAV-1', 'MP10', '53'),
(8, 'TAV-1', 'MP05', '108'),
(9, 'TAV-1', 'MP35', '27'),
(10, 'TAV-1', 'MP44', '73'),
(11, 'TAV-1', 'MP45', '60'),
(12, 'TAV-1', 'MP50', '39'),
(13, 'DPIB-1', 'MP21', '57'),
(14, 'DPIB-1', 'MP08', '36'),
(15, 'DPIB-1', 'MP22', '34'),
(16, 'DPIB-1', 'MP07', '138'),
(17, 'DPIB-1', 'MP07', '121'),
(18, 'DPIB-1', 'MP05', '105'),
(19, 'DPIB-1', 'MP02', '38'),
(20, 'DPIB-1', 'MP23', '34'),
(21, 'DPIB-1', 'MP04', '76'),
(22, 'DPIB-1', 'MP24', '13'),
(23, 'DPIB-1', 'MP10', '33'),
(24, 'TITL-1', 'MP26', '6'),
(25, 'TITL-1', 'MP05', '52'),
(26, 'TITL-1', 'MP29', '6'),
(27, 'TITL-1', 'MP10', '47'),
(28, 'TITL-1', 'MP08', '16'),
(29, 'TITL-1', 'MP27', '99'),
(30, 'TITL-1', 'MP02', '59'),
(31, 'TITL-1', 'MP07', '132'),
(32, 'TITL-1', 'MP07', '100'),
(33, 'TITL-1', 'MP30', '45'),
(34, 'TITL-1', 'MP25', '45'),
(35, 'TJTL-1', 'MP05', '102'),
(36, 'TJTL-1', 'MP33', '44'),
(37, 'TJTL-1', 'MP31', '44'),
(38, 'TJTL-1', 'MP34', '44'),
(39, 'TJTL-1', 'MP07', '107'),
(40, 'TJTL-1', 'MP07', '12'),
(41, 'TJTL-1', 'MP02', '59'),
(42, 'TJTL-1', 'MP35', '83'),
(43, 'TJTL-1', 'MP32', '154'),
(44, 'TJTL-1', 'MP10', '18'),
(45, 'TJTL-1', 'MP08', '19'),
(57, 'TLAS-1', 'MP35', '27'),
(58, 'TLAS-1', 'MP46', '41'),
(59, 'TLAS-1', 'MP02', '59'),
(60, 'TLAS-1', 'MP51', '54'),
(61, 'TLAS-1', 'MP05', '20'),
(62, 'TLAS-1', 'MP48', '54'),
(63, 'TLAS-1', 'MP10', '66'),
(64, 'TLAS-1', 'MP49', '54'),
(65, 'TLAS-1', 'MP08', '16'),
(66, 'TLAS-1', 'MP07', '84'),
(67, 'TLAS-1', 'MP07', '110');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_pelajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kd_mapel`, `nama_pelajaran`) VALUES
('KO88', 'Saygyg'),
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
('MP17', 'PDPKP'),
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
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kd_guru` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_guru`
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
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `kd_jurusan` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('BKDP', 'Teknik Bisnis'),
('DPIB', 'Teknik Desain Permodelan dan Informasi Bangunan'),
('RPL', 'Rekayasa Perangkat Lunak'),
('TAB', 'Teknik Alat Berat'),
('TAV', 'Teknik Audio Video'),
('TBSM', 'Teknik Bisnis Sepeda Motor'),
('TITL', 'Teknik Instalasi Tenaga Listrik'),
('TJTL', 'Teknik Jaringan Tenaga Listrik'),
('TKJ', 'Teknik Komputer Jaringan'),
('TKKR', 'Teknik Kecantikan Kulit dan Rambut'),
('TKP', 'Teknik Konstruksi dan  Perumahan'),
('TKR', 'Teknik Kendaraan Ringan'),
('TKRO', 'Teknik  Kendaraan Ringan Otomotif'),
('TLAS', 'Teknik Pengelasan'),
('TP', 'Teknik Permesinan'),
('TSM', 'Teknik Sepeda Motor');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_admin` int NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `user_admin` varchar(45) NOT NULL,
  `pass_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'admin1', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_kelas`
--
ALTER TABLE `daftar_kelas`
  ADD PRIMARY KEY (`jenis_kelas`),
  ADD KEY `kd_jurusan` (`kd_jurusan`);

--
-- Indexes for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_kelas` (`jenis_kelas`),
  ADD KEY `kd_mapel` (`kd_mapel`),
  ADD KEY `kd_guru` (`kd_guru`);

--
-- Indexes for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_kelas` (`jenis_kelas`),
  ADD KEY `kd_mapel` (`kd_mapel`),
  ADD KEY `kd_guru` (`kd_guru`);

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
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_kelas`
--
ALTER TABLE `daftar_kelas`
  ADD CONSTRAINT `daftar_kelas_ibfk_1` FOREIGN KEY (`kd_jurusan`) REFERENCES `tb_jurusan` (`kd_jurusan`);

--
-- Constraints for table `kelas_xi`
--
ALTER TABLE `kelas_xi`
  ADD CONSTRAINT `kelas_xi_ibfk_2` FOREIGN KEY (`jenis_kelas`) REFERENCES `daftar_kelas` (`jenis_kelas`),
  ADD CONSTRAINT `kelas_xi_ibfk_4` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`),
  ADD CONSTRAINT `kelas_xi_ibfk_5` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`);

--
-- Constraints for table `kelas_xii`
--
ALTER TABLE `kelas_xii`
  ADD CONSTRAINT `kelas_xii_ibfk_1` FOREIGN KEY (`jenis_kelas`) REFERENCES `daftar_kelas` (`jenis_kelas`),
  ADD CONSTRAINT `kelas_xii_ibfk_2` FOREIGN KEY (`kd_mapel`) REFERENCES `mapel` (`kd_mapel`),
  ADD CONSTRAINT `kelas_xii_ibfk_3` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
