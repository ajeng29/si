-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Okt 2021 pada 15.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbalumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idAdm` int(11) NOT NULL,
  `username_adm` varchar(100) NOT NULL,
  `password_adm` varchar(100) NOT NULL,
  `nama_adm` varchar(100) NOT NULL,
  `email_adm` varchar(100) NOT NULL,
  `nohp_adm` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idAdm`, `username_adm`, `password_adm`, `nama_adm`, `email_adm`, `nohp_adm`, `alamat`) VALUES
(2, 'admin01', '123456', 'Elen West', 'admin1.123@gmail.com', '0897684563536', 'Jl. Mawar No. 80'),
(3, 'admin02', '123456', 'Mirai Kiwa', 'admin2.123@gmail.com', '087256343543', 'Jl. Cemara Indah No. 32'),
(4, 'admin03', '123456', 'Admin3', 'admin3.123@gmail.com', '08875434566', 'Jl. Waru No. 2'),
(6, 'admin04', '123', 'admin 4', 'admin4.admin@gmail.com', '0879664342425', 'Jl. Karang Semanding No.2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `idAlumni` int(11) NOT NULL,
  `username_al` varchar(255) NOT NULL,
  `password_al` varchar(100) NOT NULL,
  `nama_al` varchar(255) NOT NULL,
  `nik_al` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `profesi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`idAlumni`, `username_al`, `password_al`, `nama_al`, `nik_al`, `tempat_lahir`, `tgl_lahir`, `agama`, `no_hp`, `prodi`, `tahun_lulus`, `alamat`, `jk`, `profesi`) VALUES
(1, 'LILIK28', '12345678', 'LILIK NURWATI', '35XXXXXXXXXXXXXX4', 'BLITAR', '2000-11-28', 'ISLAM', '08970602332', 'D3 MANAJEMEN INFORMATIKA', '2022', 'BLITAR', 'PEREMPUAN', 'SECRET AGENT'),
(2, 'AJENG29', '12345678    ', 'AJENG EKA YUDIANINGRUM  ', '34XXXXXXXXXXXXXX2  ', 'BLITAR  ', '2001-06-29', 'ISLAM  ', '08987634543', 'D3 MANAJEMEN INFORMATIKA  ', '2022', 'BLITAR    ', 'PEREMPUAN    ', 'WEB DEVELOPER ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `idJawaban` int(11) NOT NULL,
  `idAl` int(11) NOT NULL,
  `idPert` int(11) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`idJawaban`, `idAl`, `idPert`, `jawaban`) VALUES
(2, 1, 2, 'Cukup Sesuai'),
(3, 1, 3, '4 juta - 6 juta'),
(4, 1, 4, '2 juta - 4 juta'),
(5, 1, 1, 'Engineer'),
(6, 1, 5, 'Sangat Baik'),
(7, 1, 6, 'Sangat Baik'),
(8, 1, 7, 'Sangat Baik'),
(9, 1, 8, 'Sangat Baik'),
(10, 1, 9, 'Sangat Baik'),
(11, 1, 10, 'Sangat Baik'),
(12, 1, 11, 'Sangat Baik'),
(13, 1, 12, 'Sangat Baik'),
(14, 1, 13, 'Sangat Baik'),
(15, 1, 14, 'Ya'),
(16, 1, 15, '510 - 550'),
(17, 1, 16, 'Sangat Baik'),
(18, 1, 17, 'Sangat Baik'),
(19, 1, 18, 'Sangat Baik'),
(20, 1, 19, 'Sangat Baik'),
(21, 1, 20, 'Sangat Baik'),
(22, 1, 21, 'Sangat Baik'),
(23, 1, 22, 'Sangat Baik'),
(24, 1, 23, 'Sangat Baik'),
(25, 1, 24, 'Sangat Baik'),
(26, 1, 25, 'Sangat Baik'),
(27, 2, 1, 'Supervisor'),
(28, 2, 2, 'Cukup Sesuai'),
(29, 2, 3, '4 juta - 6 juta'),
(30, 2, 4, '4 juta - 6 juta'),
(32, 2, 5, 'Baik'),
(33, 2, 6, 'Baik'),
(34, 2, 7, 'Baik'),
(35, 2, 8, 'Baik'),
(36, 2, 9, 'Baik'),
(37, 2, 10, 'Baik'),
(38, 2, 11, 'Baik'),
(39, 2, 12, 'Baik'),
(40, 2, 13, 'Baik'),
(41, 2, 14, 'Ya'),
(42, 2, 15, '401-500'),
(43, 2, 16, 'Baik'),
(44, 2, 17, 'Baik'),
(45, 2, 18, 'Baik'),
(46, 2, 19, 'Baik'),
(47, 2, 20, 'Baik'),
(48, 2, 21, 'Baik'),
(49, 2, 22, 'Baik'),
(50, 2, 23, 'Baik'),
(51, 2, 24, 'Baik'),
(52, 2, 25, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `idProdi` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `komentar` text CHARACTER SET utf16 NOT NULL,
  `tanggal` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`komentar`, `tanggal`, `time`) VALUES
('', '2021-07-03', '05:23:59'),
('', '2021-07-03', '05:25:00'),
('', '2021-07-03', '05:25:01'),
('', '2021-07-03', '05:25:01'),
('', '2021-07-03', '05:25:02'),
('', '2021-07-03', '05:25:02'),
('', '2021-07-03', '05:25:03'),
('', '2021-07-03', '05:25:03'),
('', '2021-07-03', '05:25:03'),
('', '2021-07-03', '05:26:53'),
('swdd', '2021-07-03', '05:26:56'),
('', '2021-07-03', '05:28:18'),
('', '2021-07-03', '05:28:21'),
('', '2021-07-03', '05:28:24'),
('', '2021-07-03', '05:28:36'),
('', '2021-07-03', '05:28:40'),
('hai', '2021-07-03', '05:28:57'),
('hai', '2021-07-03', '05:29:38'),
('hai', '2021-07-03', '05:30:00'),
('sddd', '2021-07-03', '05:30:03'),
('', '2021-07-03', '05:38:03'),
('', '2021-07-03', '05:38:49'),
('v hgvgj', '2021-07-03', '05:40:18'),
('sfrr', '2021-07-03', '05:41:21'),
('v hgvgj', '2021-07-03', '05:43:13'),
('v hgvgj', '2021-07-03', '05:44:08'),
('', '2021-07-03', '05:44:59'),
('defe', '2021-07-03', '05:46:25'),
('defe', '2021-07-03', '05:53:51'),
('hgfcghg', '2021-07-03', '05:54:50'),
('hgfcghg', '2021-07-03', '06:00:48'),
('hgfcghg', '2021-07-03', '06:02:38'),
('hgfcghg', '2021-07-03', '06:09:19'),
('hgfcghg', '2021-07-03', '06:10:22'),
('hgfcghg', '2021-07-03', '06:11:37'),
('hfjgyuu', '2021-07-03', '06:12:33'),
('', '2021-07-03', '15:34:58'),
('okeee', '2021-07-03', '15:37:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kuisioner`
--

CREATE TABLE `t_kuisioner` (
  `id` int(11) NOT NULL,
  `responden` varchar(250) NOT NULL,
  `p1` varchar(500) NOT NULL,
  `p2` varchar(500) NOT NULL,
  `p3` varchar(500) NOT NULL,
  `p4` varchar(500) NOT NULL,
  `p5` varchar(500) NOT NULL,
  `p6` varchar(500) NOT NULL,
  `p7` varchar(500) NOT NULL,
  `p8` varchar(500) NOT NULL,
  `p9` varchar(500) NOT NULL,
  `p10` varchar(500) NOT NULL,
  `p11` varchar(500) NOT NULL,
  `p12` varchar(500) NOT NULL,
  `p13` varchar(500) NOT NULL,
  `p14` varchar(500) NOT NULL,
  `p15` varchar(500) NOT NULL,
  `p16` varchar(500) NOT NULL,
  `p17` varchar(500) NOT NULL,
  `p18` varchar(500) NOT NULL,
  `p19` varchar(500) NOT NULL,
  `p20` varchar(500) NOT NULL,
  `p21` varchar(500) NOT NULL,
  `p22` varchar(500) NOT NULL,
  `p23` varchar(500) NOT NULL,
  `p24` varchar(500) NOT NULL,
  `p25` varchar(500) NOT NULL,
  `p26` varchar(500) NOT NULL,
  `p27` varchar(500) NOT NULL,
  `p28` varchar(500) NOT NULL,
  `p29` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kuisioner`
--

INSERT INTO `t_kuisioner` (`id`, `responden`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `p19`, `p20`, `p21`, `p22`, `p23`, `p24`, `p25`, `p26`, `p27`, `p28`, `p29`) VALUES
(9, 'Karian1', 'Sangat Baik', 'Baik', 'Cukup', 'Sangat Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Karin2', 'Sangat Baik', 'Baik', 'Cukup', 'Cukup', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'Karin3', 'Baik', 'Baik', 'Cukup', 'Baik', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'Karin4', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'Karin5', 'Cukup', 'Cukup', 'Buruk', 'Buruk', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'Karin6', 'Cukup', 'Cukup', 'Baik', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 'Karin7', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'Karin8', 'Buruk', 'Buruk', 'Baik', 'Sangat Baik', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'Karin9', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'Karin10', 'Buruk', 'Buruk', 'Buruk', 'Buruk', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'Karin11', 'Baik', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 'Karin12', 'Cukup', 'Cukup', 'Buruk', 'Buruk', 'Cukup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'Karin13', 'Sangat Baik', 'Sangat Baik', 'Baik', 'Baik', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 'Karin15', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'Karin16', 'Cukup', 'Buruk', 'Cukup', 'Buruk', 'Cukup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'Karin17', 'Baik', 'Cukup', 'Baik', 'Cukup', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'Karin19', 'Baik', 'Cukup', 'Baik', 'Cukup', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'Karin20', 'Sangat Baik', 'Buruk', 'Sangat Baik', 'Buruk', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 'Karin21', 'Buruk', 'Sangat Baik', 'Buruk', 'Sangat Baik', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'Karin22', 'Baik', 'Buruk', 'Buruk', 'Baik', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'Karin23', 'Cukup', 'Sangat Baik', 'Cukup', 'Sangat Baik', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'Karin24', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'Karin25', 'Baik', 'Cukup', 'Baik', 'Cukup', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'Karin26', 'Sangat Baik', 'Buruk', 'Sangat Baik', 'Buruk', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'Karin27', 'Cukup', 'Cukup', 'Cukup', 'Cukup', 'Cukup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'Karin28', 'Baik', 'Cukup', 'Baik', 'Cukup', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'Karin28', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'Karin29', 'Cukup', 'Baik', 'Cukup', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'Karin30', 'Baik', 'Cukup', 'Baik', 'Cukup', 'Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'Karin31', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik', 'Sangat Baik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'Karin32', 'Baik', 'Baik', 'Cukup', 'Cukup', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'Karin32', 'Buruk', 'Buruk', 'Buruk', 'Buruk', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'Karin50', 'Sangat Baik', 'Baik', 'Baik', 'Sangat Baik', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'Karin51', 'Buruk', 'Baik', 'Cukup', 'Cukup', 'Buruk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'Anggi', 'Cukup', 'Cukup', 'Cukup', 'Cukup', 'Cukup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pertanyaan`
--

CREATE TABLE `t_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(250) NOT NULL,
  `isi1` varchar(250) NOT NULL,
  `isi2` varchar(250) NOT NULL,
  `isi3` varchar(250) NOT NULL,
  `isi4` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pertanyaan`
--

INSERT INTO `t_pertanyaan` (`id`, `pertanyaan`, `isi1`, `isi2`, `isi3`, `isi4`) VALUES
(1, 'Pada perusahaan tempat anda bekerja, lulusan jurusan Teknologi Informasi ditempatkan pada posisi kerja apa? ', 'Engineer', 'Manager', 'Supervisor', 'Designer'),
(2, 'Bagaimana posisi anda Anda dalam perusahaan dengan background kuliah yang anda miliki?', 'Tidak sesuai', 'Kurang sesuai', 'Cukup sesuai', 'Sangat sesuai'),
(3, 'Berapa gaji pertama kali anda bekerja?', '< 2 juta', '2 juta - 4 juta', '4 juta - 6 juta', '> 6 juta'),
(4, 'Berapa standar UMR di daerah anda bekerja pertama kali?', '< 2 juta', '2 juta - 4 juta', '4 juta - 6 juta', '> 6 juta'),
(5, 'Bagaimana Anda dalam melaksanakan tugas dengan tanggung jawab terhadap pekerjaan yang diberikan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(6, 'Bagaimana Anda dalam mentaati peraturan yang berlaku di perusahaan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(7, 'Bagaimana Anda dalam menjaga nama nama baik perusahaan?', 'Kurang', 'Baik', 'Cukup', 'Sangat baik'),
(8, 'Bagaimana Anda dalam menjaga sopan santun dan kesusilaan dalam bekerja di perusahaan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(9, 'Bagaimana Anda dalam mengelola waktu, biaya, tenaga, dan resiko pada tugas yang diberikan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(10, 'Bagaimana Anda dalam menerapkan pendekatan metode desain di bidang TI ke dalam permasalahan nyata?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(11, 'Bagaimana kemampuan Anda dalam menganalisis kebutuhan kelayakan proyek perangkat lunak/sistem informasi?', 'Tidak relevan', 'Kurang relevan', 'Cukup relevan', 'Sangat relevan'),
(12, 'Bagaimana kemampuan Anda dalam menguasai bahasa Inggris secara lisan?', 'Kurang', 'Cukup', 'Baik ', 'Sangat baik'),
(13, 'Bagaimana kemampuan Anda dalam menguasai bahasa Inggris secara tulisan?', 'Kurang', 'Cukup', 'Baik ', 'Sangat Baik'),
(14, 'Apakah Perusahaan Anda mensyaratkan Anda harus mempunyai sertifikat TOEFL, TOEIC atau sejenisnya untuk masuk bekerja di perusahaan?', 'Ya', 'Tidak', '', ''),
(15, 'Jika Ya berapa nilai skor TOEFL, TOEIC, atau sejenisnya yang menjadi persyaratan masuk ke perusahaan?', '> 550', '501 - 550', '401 - 500', '< 400'),
(16, 'Bagaimana kemampuan skill Anda dalam memenuhi kebutuhan perusahaan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(17, 'Bagaimana perusahaan dalam memberikan training kepada Anda untuk melaksanakan tugas dengan tanggung jawab terhadap pekerjaan yang diberikan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(18, 'Bagaimana kemampuan Anda dalam berkomunikasi dengan bawahan, sesama rekan, dan atasan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(19, 'Bagaimana kemampuan Anda dalam menyampaikan ide, pendapat yang berkaitan dengan pekerjaan yang diberikan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(20, 'Bagaimana kemampuan Anda dalam mempresentasikan hasil pekerjaan kepada sesama tim dan atasan?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(21, 'Bagaimana kemampuan Anda dalam mempresentasikan hasil pekerjaan kepada pihak pengguna atau pihak luar?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(22, 'Bagaimana kemampuan Anda dalam bekerjasama dengan tim?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(23, 'Bagaimana kemampuan Anda dalam menyelesaikan tugas dengan target dan waktu yang diberikan kepada tim?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(24, 'Bagaimana kemampuan Anda dalam mengatasi permasalahan yang terjadi dalam tim?\r\n', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(25, 'Bagaimana kemampuan Anda dalam rkoordinasi dengan sesama anggota tim, atasan maupun pihak luar?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(26, 'Bagaimana antusias Anda dalam meningkatkan kemampuan diri?', 'Kurang ', 'Cukup', 'Baik', 'Sangat baik'),
(27, 'Bagaimana antusias Perusahaan dalam program pengembangan diri bagi karyawannya?\r\n', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(28, 'Bagaimana kemampuan Anda dalam mengatasi permasalahan yang terjadi dalam tim?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik'),
(29, 'Bagaimana potensi Anda dalam pengembangan karirnya di perusahaan ?', 'Kurang', 'Cukup', 'Baik', 'Sangat baik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdm`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`idAlumni`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`idJawaban`),
  ADD KEY `idAl` (`idAl`),
  ADD KEY `idPert` (`idPert`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idProdi`);

--
-- Indeks untuk tabel `t_kuisioner`
--
ALTER TABLE `t_kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pertanyaan`
--
ALTER TABLE `t_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `idAlumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `idJawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `idProdi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_kuisioner`
--
ALTER TABLE `t_kuisioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `t_pertanyaan`
--
ALTER TABLE `t_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`idAl`) REFERENCES `alumni` (`idAlumni`),
  ADD CONSTRAINT `jawaban_ibfk_2` FOREIGN KEY (`idPert`) REFERENCES `t_pertanyaan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
