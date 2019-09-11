-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 03:32 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbtcandy`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) NOT NULL,
  `susulan` varchar(10) NOT NULL,
  `no_susulan` text NOT NULL,
  `mulai` varchar(10) NOT NULL,
  `selesai` varchar(10) NOT NULL,
  `nama_proktor` varchar(50) NOT NULL,
  `nip_proktor` varchar(50) NOT NULL,
  `nama_pengawas` varchar(50) NOT NULL,
  `nip_pengawas` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_ujian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_mapel`, `sesi`, `ruang`, `jenis`, `ikut`, `susulan`, `no_susulan`, `mulai`, `selesai`, `nama_proktor`, `nip_proktor`, `nama_pengawas`, `nip_pengawas`, `catatan`, `tgl_ujian`) VALUES
(1, 1, '1', 'R1', 'PAT', '20', '0', 'a:1:{i:0;s:12:\"12-248-087-2\";}', '21:00', '23:00', 'Pajar Sidik N', '2011-09-929091', 'Nur Rohman', '2019-02909-2909', 'TERTIB', '2019-09-06'),
(2, 1, '2', 'R1', 'PAT', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, '3', 'R1', 'PAT', '', '', '', '', '', '', '', '', '', '', ''),
(4, 1, '1', 'R2', 'PAT', '', '', '', '', '', '', '', '', '', '', ''),
(5, 1, '2', 'R2', 'PAT', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, '3', 'R2', 'PAT', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, '1', 'R1', 'PTS', '20', '1', 'a:6:{i:0;s:12:\"12-248-001-8\";i:1;s:12:\"12-248-066-7\";i:2;s:12:\"12-248-002-7\";i:3;s:12:\"12-248-004-5\";i:4;s:12:\"12-248-068-5\";i:5;s:12:\"12-248-006-3\";}', '13:00', '16:00', 'Pajar Sidik N', '2011-09-929091', 'Nur Rohman', '2019-02909-2909', 'Tertib', '2019-09-08'),
(8, 1, '2', 'R1', 'PTS', '', '', '', '', '', '', '', '', '', '', ''),
(9, 1, '3', 'R1', 'PTS', '', '', '', '', '', '', '', '', '', '', ''),
(10, 1, '1', 'R2', 'PTS', '', '', '', '', '', '', '', '', '', '', ''),
(11, 1, '2', 'R2', 'PTS', '', '', '', '', '', '', '', '', '', '', ''),
(12, 1, '3', 'R2', 'PTS', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_jawaban`
--

CREATE TABLE `hasil_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_siswa`, `id_mapel`, `id_soal`, `id_ujian`, `jawaban`, `jenis`, `esai`, `nilai_esai`, `ragu`) VALUES
(1, 1, 1, 24, 10, 'E', 1, '', 0, 0),
(2, 1, 1, 32, 10, 'A', 1, '', 0, 0),
(3, 1, 1, 15, 10, 'A', 1, '', 0, 0),
(4, 1, 1, 14, 10, 'E', 1, '', 0, 0),
(5, 1, 1, 27, 10, 'E', 1, '', 0, 0),
(6, 1, 1, 30, 10, 'D', 1, '', 0, 0),
(7, 1, 1, 28, 10, 'E', 1, '', 0, 0),
(8, 1, 1, 40, 10, 'D', 1, '', 0, 0),
(9, 1, 1, 19, 10, 'D', 1, '', 0, 0),
(10, 1, 1, 29, 10, 'D', 1, '', 0, 0),
(11, 1, 1, 20, 10, 'D', 1, '', 0, 0),
(12, 1, 1, 38, 10, 'C', 1, '', 0, 0),
(13, 1, 1, 33, 10, 'E', 1, '', 0, 0),
(14, 1, 1, 22, 10, 'D', 1, '', 0, 0),
(15, 1, 1, 3, 10, 'C', 1, '', 0, 0),
(16, 1, 1, 26, 10, 'A', 1, '', 0, 0),
(17, 1, 1, 35, 10, 'E', 1, '', 0, 0),
(18, 1, 1, 25, 10, 'D', 1, '', 0, 0),
(19, 1, 1, 17, 10, 'B', 1, '', 0, 0),
(20, 1, 1, 7, 10, 'B', 1, '', 0, 0),
(21, 1, 1, 2, 10, 'D', 1, '', 0, 0),
(22, 1, 1, 16, 10, 'C', 1, '', 0, 0),
(23, 1, 2, 46, 11, 'B', 1, '', 0, 0),
(24, 1, 2, 47, 11, 'A', 1, '', 0, 0),
(25, 1, 2, 48, 11, 'B', 1, '', 0, 0),
(26, 1, 2, 49, 11, 'B', 1, '', 0, 0),
(27, 1, 2, 50, 11, 'C', 1, '', 0, 0),
(28, 1, 2, 51, 11, 'B', 1, '', 0, 0),
(29, 1, 2, 52, 11, 'C', 1, '', 0, 0),
(30, 1, 2, 53, 11, 'B', 1, '', 0, 0),
(31, 1, 2, 54, 11, 'A', 1, '', 0, 0),
(32, 1, 2, 55, 11, 'B', 1, '', 0, 0),
(33, 1, 2, 56, 11, 'B', 1, '', 0, 0),
(34, 1, 2, 57, 11, 'D', 1, '', 0, 0),
(35, 1, 2, 58, 11, 'D', 1, '', 0, 0),
(36, 1, 2, 59, 11, 'A', 1, '', 0, 0),
(37, 1, 2, 60, 11, 'B', 1, '', 0, 0),
(38, 1, 2, 61, 11, 'D', 1, '', 0, 0),
(39, 1, 2, 62, 11, 'A', 1, '', 0, 0),
(40, 1, 2, 63, 11, 'B', 1, '', 0, 0),
(41, 1, 2, 64, 11, 'B', 1, '', 0, 0),
(42, 1, 2, 65, 11, 'C', 1, '', 0, 0),
(43, 1, 2, 66, 11, 'C', 1, '', 0, 0),
(44, 1, 2, 67, 11, 'C', 1, '', 0, 0),
(45, 1, 2, 68, 11, 'C', 1, '', 0, 0),
(46, 1, 2, 69, 11, 'A', 1, '', 0, 0),
(47, 1, 2, 70, 11, 'C', 1, '', 0, 0),
(48, 1, 2, 71, 11, 'A', 1, '', 0, 0),
(49, 1, 2, 72, 11, 'D', 1, '', 0, 0),
(50, 1, 2, 73, 11, 'A', 1, '', 0, 0),
(51, 1, 2, 74, 11, 'C', 1, '', 0, 0),
(52, 1, 2, 75, 11, 'D', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`, `status`) VALUES
('PAT', 'Penilaian Akhir Tahun', 'aktif'),
('PH', 'Penilaian Harian', 'aktif'),
('PTS', 'Penilaian Tengah Semester', 'aktif'),
('USBN', 'Ujian Nasionan Berstandar Nasional', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `level`, `nama`) VALUES
('XIITKJ', 'XII', 'XIITKJ'),
('XIITKR', 'XII', 'XIITKR'),
('XIITP', 'XII', 'XIITP');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`kode_level`, `keterangan`) VALUES
('XII', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_log`, `id_siswa`, `ipaddress`, `date`) VALUES
(1, 68, '', '2019-09-02 07:15:24'),
(2, 1, '', '2019-09-08 05:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `statusujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `idpk`, `idguru`, `nama`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `level`, `opsi`, `kelas`, `date`, `status`, `statusujian`) VALUES
(1, 'semua', '51', 'MTK', 40, 5, 40, 5, 100, 100, 'XII', 5, 'a:1:{i:0;s:5:\"semua\";}', '2019-05-13 06:20:02', '1', 0),
(2, '', '41', 'KIMIA', 30, 0, 30, 0, 100, 0, 'semua', 4, 'a:1:{i:0;s:5:\"semua\";}', '2019-09-08 06:01:14', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`) VALUES
('KIMIA', 'KIMIA'),
('MTK', 'MATEMATIKA');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) NOT NULL,
  `ujian_selesai` varchar(20) NOT NULL,
  `jml_benar` int(10) NOT NULL,
  `jml_salah` int(10) NOT NULL,
  `nilai_esai` varchar(10) NOT NULL,
  `skor` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `hasil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_ujian`, `id_mapel`, `id_siswa`, `kode_ujian`, `ujian_mulai`, `ujian_berlangsung`, `ujian_selesai`, `jml_benar`, `jml_salah`, `nilai_esai`, `skor`, `total`, `status`, `ipaddress`, `hasil`) VALUES
(1, 10, 1, 1, 'PTS', '2019-09-08 12:53:49', '2019-09-08 12:59:05', '2019-09-08 12:58:59', 8, 37, '', '20', '', 0, '192.168.43.1', 1),
(2, 11, 2, 1, 'PH', '2019-09-08 13:05:36', '2019-09-08 13:07:26', '2019-09-08 13:07:25', 8, 22, '', '26.67', '26.67', 0, '192.168.43.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengacak`
--

CREATE TABLE `pengacak` (
  `id_pengacak` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengacak`
--

INSERT INTO `pengacak` (`id_pengacak`, `id_ujian`, `id_siswa`, `id_mapel`, `id_soal`, `id_esai`) VALUES
(1, 10, 1, 1, '24,32,15,14,27,30,28,40,19,29,20,38,33,22,3,26,35,25,17,7,2,16,8,23,6,9,11,5,39,31,4,18,12,21,13,34,36,37,1,10,', '45,44,43,42,41,');

-- --------------------------------------------------------

--
-- Table structure for table `pengacakopsi`
--

CREATE TABLE `pengacakopsi` (
  `id_pengacak` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengacakopsi`
--

INSERT INTO `pengacakopsi` (`id_pengacak`, `id_ujian`, `id_siswa`, `id_mapel`, `id_soal`, `id_esai`) VALUES
(1, 10, 1, 1, 'E,A,B,D,C,D,A,B,E,C,A,B,E,C,D,E,A,C,B,D,E,D,B,A,C,A,D,B,C,E,C,E,B,A,D,D,B,C,A,E,C,D,B,E,A,A,D,E,C,B,D,E,C,A,B,C,B,D,E,A,E,C,A,D,B,C,D,B,A,E,B,C,A,E,D,D,A,C,E,B,E,D,C,B,A,B,D,A,E,C,B,D,A,E,C,B,E,A,C,D,D,E,A,B,C,C,E,D,B,A,C,B,A,D,E,D,C,A,E,B,A,D,C,E,B,D,A,C,B,E,B,A,C,D,E,C,B,D,A,E,A,B,C,D,E,B,E,A,C,D,A,E,D,B,C,E,D,A,B,C,B,D,C,E,A,C,B,E,A,D,A,B,C,E,D,A,E,D,C,B,C,E,B,A,D,D,B,A,C,E,C,E,D,A,B,D,C,B,E,A,', '45,44,43,42,41,');

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(10) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt_rw` varchar(8) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `bidang_studi` varchar(50) NOT NULL,
  `jenis_ptk` varchar(50) NOT NULL,
  `tgs_tambahan` varchar(50) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `status_aktif` varchar(20) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `ahli_lab` varchar(10) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `nik_suami` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tmt` date NOT NULL,
  `keahlian_isyarat` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `npwp` varchar(16) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `jabatan`, `username`, `password`, `level`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`) VALUES
(9, '-', 'administrator', '', 'admin', '$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im', 'admin', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(41, '-', 'Pajar Sidik Nurfakhri', '', 'pajarsidikn', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(42, '-', 'Guru 2', '', 'guru2', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(43, '-', 'Guru 3', '', 'guru3', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(44, '-', 'Guru 4', '', 'guru4', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(45, '-', 'Guru 5', '', 'guru5', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(46, '-', 'Guru 6', '', 'guru6', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(47, '-', 'Guru 7', '', 'guru7', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(48, '-', 'Guru 8', '', 'guru8', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(49, '-', 'Guru 9', '', 'guru9', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(50, '-', 'Ruli Syahruli, S.Pd', '', 'ruli', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(51, '-', 'Agus Prasetyo, S.Pd', '', 'agus', '123456', 'guru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pk`
--

CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pk`
--

INSERT INTO `pk` (`id_pk`, `program_keahlian`, `kode`) VALUES
('TKJ', 'TKJ', ''),
('TKR', 'TKR', ''),
('TP', 'TP', '');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `keterangan`) VALUES
('R1', 'R1'),
('R2', 'R2');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT '0',
  `no_time_corrected` int(11) NOT NULL DEFAULT '0',
  `no_time_incorrected` int(11) NOT NULL DEFAULT '0',
  `no_time_unattempted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`kode_server`, `nama_server`, `status`) VALUES
('R1', 'SERVER R1', 'aktif'),
('R2', 'SERVER R2', 'aktif'),
('ONLINE', 'ONLINE', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`kode_sesi`, `nama_sesi`) VALUES
('1', '1'),
('2', '2'),
('3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `aplikasi` varchar(100) NOT NULL,
  `kode_sekolah` varchar(10) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `web` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  `header` text NOT NULL,
  `header_kartu` text NOT NULL,
  `nama_ujian` text NOT NULL,
  `versi` varchar(10) NOT NULL,
  `ip_server` varchar(100) NOT NULL,
  `waktu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`) VALUES
(1, 'SMK HS AGUNG', 'K123', 'SMK HS AGUNG', 'SMP', 'Dedi Baidillah, S.Pd, M.Pd', '-', 'IO : 503.15/015/IV/SK-SMK/BPMPPT/2013; NPSN: 69787351 ; NSS : 402022210005<br />\r\nJL.Buyut Kaipah .Pulo Bambu Karang Bahagia Kec.Karang Bahagia Kab. Bekasi <br />\r\n', 'Karang Bahagia', 'Bekasi', '021 123 123 123', '', 'smkhsagung.sch.id', 'smkhsagung@gmail.com', 'dist/img/logo43.png', 'YAYASAN SOFIA MUJAHIDA UTAMA', 'KARTU PESERTA\nUJIAN SEKOLAH BERBASIS KOMPUTER', 'UJIAN SEKOLAH BERSTANDAR NASIONAL', '2.5', 'http://192.168.0.200/candycbt', 'Asia/Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `no_peserta` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `sesi` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` int(11) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `nohp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `nohp_ibu` int(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nisn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `idpk`, `nis`, `no_peserta`, `nama`, `level`, `ruang`, `sesi`, `username`, `password`, `foto`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `hp`, `email`, `skhun`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nohp_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nohp_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `nisn`) VALUES
(1, 'XIITP', 'TP', '151610041', '12-248-001-8', 'Ade Saputra', 'XII', 'R1', 1, 'hs001', 'ps001', 'siswa.png', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(2, 'XIITP', 'TP', '151610043', '12-248-002-7', 'Ahmad Fauzi', 'XII', 'R1', 1, 'hs002', 'ps002', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(3, 'XIITP', 'TP', '151610044', '12-248-003-6', 'Ahmad Fauzi', 'XII', 'R1', 1, 'hs003', 'ps003', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(4, 'XIITP', 'TP', '151610045', '12-248-004-5', 'Ahmad Juliansyah', 'XII', 'R1', 1, 'hs004', 'ps004', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(5, 'XIITP', 'TP', '151610047', '12-248-005-4', 'Algi Julian', 'XII', 'R1', 1, 'hs005', 'ps005', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(6, 'XIITP', 'TP', '151610048', '12-248-006-3', 'Anas Aditya', 'XII', 'R1', 1, 'hs006', 'ps006', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(7, 'XIITP', 'TP', '151610049', '12-248-007-2', 'Andre Irawan', 'XII', 'R1', 1, 'hs007', 'ps007', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(8, 'XIITP', 'TP', '151610042', '12-248-008-9', 'Andrian Al Viansyah', 'XII', 'R1', 1, 'hs008', 'ps008', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(9, 'XIITP', 'TP', '151610050', '12-248-009-8', 'Andrian Maulana', 'XII', 'R1', 1, 'hs009', 'ps009', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(10, 'XIITP', 'TP', '151610051', '12-248-010-7', 'Bambang Reza Umbara', 'XII', 'R1', 1, 'hs010', 'ps010', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(11, 'XIITP', 'TP', '151610052', '12-248-011-6', 'Ferdi Hasan', 'XII', 'R1', 1, 'hs011', 'ps011', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(12, 'XIITP', 'TP', '151610053', '12-248-012-5', 'Guntur Adthia Bagaskara', 'XII', 'R1', 1, 'hs012', 'ps012', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(13, 'XIITP', 'TP', '151610055', '12-248-013-4', 'Harun Syahroji Iqmal', 'XII', 'R1', 2, 'hs013', 'ps013', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(14, 'XIITP', 'TP', '151610054', '12-248-014-3', 'Haryadi Sajali', 'XII', 'R1', 2, 'hs014', 'ps014', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(15, 'XIITP', 'TP', '151610057', '12-248-015-2', 'Ismail', 'XII', 'R1', 2, 'hs015', 'ps015', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(16, 'XIITP', 'TP', '151610062', '12-248-016-9', 'Muchtar Gana', 'XII', 'R1', 2, 'hs016', 'ps016', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(17, 'XIITP', 'TP', '151610058', '12-248-017-8', 'Muhamad Abdul Rahman', 'XII', 'R1', 2, 'hs017', 'ps017', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(18, 'XIITP', 'TP', '151610063', '12-248-018-7', 'Muhamad Ali Hapijudin', 'XII', 'R1', 2, 'hs018', 'ps018', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(19, 'XIITP', 'TP', '151610065', '12-248-019-6', 'Muhamad Rizal', 'XII', 'R1', 2, 'hs019', 'ps019', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(20, 'XIITP', 'TP', '151610066', '12-248-020-5', 'Muhammad Niji Yuki Huda Sabillah', 'XII', 'R1', 2, 'hs020', 'ps020', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(21, 'XIITP', 'TP', '151610059', '12-248-021-4', 'Muhammad Ogi Prayoga S.', 'XII', 'R1', 2, 'hs021', 'ps021', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(22, 'XIITP', 'TP', '151610067', '12-248-022-3', 'Niko', 'XII', 'R1', 2, 'hs022', 'ps022', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(23, 'XIITP', 'TP', '151610068', '12-248-023-2', 'Rahma Ahmada', 'XII', 'R1', 2, 'hs023', 'ps023', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(24, 'XIITP', 'TP', '151610070', '12-248-024-9', 'Renaldi', 'XII', 'R1', 2, 'hs024', 'ps024', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(25, 'XIITP', 'TP', '151610069', '12-248-025-8', 'Renaldi', 'XII', 'R1', 2, 'hs025', 'ps025', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(26, 'XIITP', 'TP', '151610072', '12-248-026-7', 'Rico Dwi Addrian Fattah', 'XII', 'R1', 2, 'hs026', 'ps026', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(27, 'XIITP', 'TP', '151610073', '12-248-027-6', 'Riki Riyanto', 'XII', 'R1', 2, 'hs027', 'ps027', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(28, 'XIITP', 'TP', '151610074', '12-248-028-5', 'Riki S', 'XII', 'R1', 2, 'hs028', 'ps028', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(29, 'XIITP', 'TP', '151610075', '12-248-029-4', 'Rudi Hartono', 'XII', 'R1', 2, 'hs029', 'ps029', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(30, 'XIITP', 'TP', '151610076', '12-248-030-3', 'Saipul Anwar', 'XII', 'R1', 3, 'hs030', 'ps030', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(31, 'XIITP', 'TP', '151610077', '12-248-031-2', 'Satya Pratama', 'XII', 'R1', 3, 'hs031', 'ps031', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(32, 'XIITP', 'TP', '151610078', '12-248-032-9', 'Sutrisno', 'XII', 'R1', 3, 'hs032', 'ps032', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(33, 'XIITP', 'TP', '151610079', '12-248-033-8', 'Syarif', 'XII', 'R1', 3, 'hs033', 'ps033', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(34, 'XIITP', 'TP', '151610081', '12-248-034-7', 'Yobi Pratama', 'XII', 'R1', 3, 'hs034', 'ps034', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(35, 'XIITKR', 'TKR', '151610083', '12-248-035-6', 'Adittiya', 'XII', 'R1', 3, 'hs035', 'ps035', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(36, 'XIITKR', 'TKR', '151610084', '12-248-036-5', 'Aef saefullah EDK', 'XII', 'R1', 3, 'hs036', 'ps036', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(37, 'XIITKR', 'TKR', '151610085', '12-248-037-4', 'Ahmad', 'XII', 'R1', 3, 'hs037', 'ps037', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(38, 'XIITKR', 'TKR', '151610086', '12-248-038-3', 'Ahmad dani', 'XII', 'R1', 3, 'hs038', 'ps038', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(39, 'XIITKR', 'TKR', '151610089', '12-248-039-2', 'Amar', 'XII', 'R1', 3, 'hs039', 'ps039', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(40, 'XIITKR', 'TKR', '151610090', '12-248-040-9', 'Andi', 'XII', 'R1', 3, 'hs040', 'ps040', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(41, 'XIITKR', 'TKR', '151610091', '12-248-041-8', 'Anggi Julian Purnama', 'XII', 'R1', 3, 'hs041', 'ps041', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(42, 'XIITKR', 'TKR', '151610092', '12-248-042-7', 'Ardiansyah', 'XII', 'R1', 3, 'hs042', 'ps042', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(43, 'XIITKR', 'TKR', '151610093', '12-248-043-6', 'Aryanto', 'XII', 'R1', 3, 'hs043', 'ps043', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(44, 'XIITKR', 'TKR', '151610094', '12-248-044-5', 'Awaludin', 'XII', 'R1', 3, 'hs044', 'ps044', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(45, 'XIITKR', 'TKR', '151610096', '12-248-045-4', 'Dede Ahmad Pauji', 'XII', 'R1', 3, 'hs045', 'ps045', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(46, 'XIITKR', 'TKR', '151610099', '12-248-046-3', 'Egi Ariansyah', 'XII', 'R1', 3, 'hs046', 'ps046', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(47, 'XIITKR', 'TKR', '151610100', '12-248-047-2', 'Erdin', 'XII', 'R1', 3, 'hs047', 'ps047', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(48, 'XIITKR', 'TKR', '151610101', '12-248-048-9', 'Fajar Ramadhan', 'XII', 'R1', 3, 'hs048', 'ps048', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(49, 'XIITKR', 'TKR', '151610102', '12-248-049-8', 'Fiky Zulfikar', 'XII', 'R1', 3, 'hs049', 'ps049', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(50, 'XIITKR', 'TKR', '151610103', '12-248-050-7', 'Habibi', 'XII', 'R1', 3, 'hs050', 'ps050', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(51, 'XIITKR', 'TKR', '151610104', '12-248-051-6', 'Handriyansyah Wijaya', 'XII', 'R1', 3, 'hs051', 'ps051', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(52, 'XIITKR', 'TKR', '151610128', '12-248-052-5', 'Herlangga Supardi', 'XII', 'R1', 3, 'hs052', 'ps052', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(53, 'XIITKR', 'TKR', '151610106', '12-248-053-4', 'Ibnu Mujahidin', 'XII', 'R1', 3, 'hs053', 'ps053', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(54, 'XIITKR', 'TKR', '151610107', '12-248-054-3', 'Kasan Wijaya Kusuma', 'XII', 'R1', 3, 'hs054', 'ps054', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(55, 'XIITKR', 'TKR', '151610109', '12-248-055-2', 'Muhamad Aldi Ardiansyah', 'XII', 'R1', 3, 'hs055', 'ps055', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(56, 'XIITKR', 'TKR', '151610108', '12-248-056-9', 'Muhammad Sutrisno', 'XII', 'R1', 1, 'hs056', 'ps056', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(57, 'XIITKR', 'TKR', '151610110', '12-248-057-8', 'Muhammad Ramdan', 'XII', 'R1', 1, 'hs057', 'ps057', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(58, 'XIITKR', 'TKR', '151610111', '12-248-058-7', 'Nur Arifin', 'XII', 'R1', 1, 'hs058', 'ps058', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(59, 'XIITKR', 'TKR', '151610112', '12-248-059-6', 'Riyo Wijaya', 'XII', 'R1', 1, 'hs059', 'ps059', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(60, 'XIITKR', 'TKR', '151610113', '12-248-060-5', 'Rizal Maulana Aziz', 'XII', 'R1', 1, 'hs060', 'ps060', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(61, 'XIITKR', 'TKR', '151610114', '12-248-061-4', 'Robi Darwis', 'XII', 'R1', 1, 'hs061', 'ps061', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(62, 'XIITKR', 'TKR', '151610115', '12-248-062-3', 'Roni Sahroni', 'XII', 'R1', 1, 'hs062', 'ps062', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(63, 'XIITKR', 'TKR', '151610117', '12-248-063-2', 'Saemi Al Rasyid', 'XII', 'R1', 1, 'hs063', 'ps063', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(64, 'XIITKR', 'TKR', '151610118', '12-248-064-9', 'Said Abdullah', 'XII', 'R1', 1, 'hs064', 'ps064', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(65, 'XIITKR', 'TKR', '151610119', '12-248-065-8', 'Saripudin', 'XII', 'R1', 1, 'hs065', 'ps065', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(66, 'XIITKR', 'TKR', '151610123', '12-248-066-7', 'Ahmad Faisal', 'XII', 'R1', 1, 'hs066', 'ps066', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(67, 'XIITKR', 'TKR', '151610124', '12-248-067-6', 'Aksal Sobari', 'XII', 'R1', 1, 'hs067', 'ps067', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(68, 'XIITKR', 'TKR', '151610125', '12-248-068-5', 'Alfian', 'XII', 'R1', 1, 'hs068', 'ps068', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(69, 'XIITKR', 'TKR', '151610126', '12-248-069-4', 'Arsad sopian', 'XII', 'R1', 1, 'hs069', 'ps069', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(70, 'XIITKR', 'TKR', '151610127', '12-248-070-3', 'Dede Maulana', 'XII', 'R1', 1, 'hs070', 'ps070', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(71, 'XIITKR', 'TKR', '151610129', '12-248-071-2', 'Junaedi', 'XII', 'R1', 1, 'hs071', 'ps071', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(72, 'XIITKR', 'TKR', '151610168', '12-248-072-9', 'Muhamad Fikri Fahmi Kurniadi', 'XII', 'R1', 1, 'hs072', 'ps072', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(73, 'XIITKR', 'TKR', '151610130', '12-248-073-8', 'Muhamad Kevin Fadli Fauzi', 'XII', 'R1', 2, 'hs073', 'ps073', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(74, 'XIITKR', 'TKR', '151610132', '12-248-074-7', 'Muhamad Rifki Saputra', 'XII', 'R1', 2, 'hs074', 'ps074', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(75, 'XIITKR', 'TKR', '151610133', '12-248-075-6', 'Padrul Cahyadi', 'XII', 'R1', 2, 'hs075', 'ps075', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(76, 'XIITKR', 'TKR', '151610169', '12-248-076-5', 'Pentin Alamsyah', 'XII', 'R1', 2, 'hs076', 'ps076', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(77, 'XIITKR', 'TKR', '151610134', '12-248-077-4', 'Sobri Saputra', 'XII', 'R1', 2, 'hs077', 'ps077', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(78, 'XIITKR', 'TKR', '151610135', '12-248-078-3', 'Sukendar', 'XII', 'R1', 2, 'hs078', 'ps078', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(79, 'XIITKR', 'TKR', '151610120', '12-248-079-2', 'Teguh Nur Sidik', 'XII', 'R1', 2, 'hs079', 'ps079', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(80, 'XIITKR', 'TKR', '151610136', '12-248-080-9', 'Tubagus M. Al-Fajri', 'XII', 'R1', 2, 'hs080', 'ps080', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(81, 'XIITKR', 'TKR', '151610166', '12-248-081-8', 'Wahyu Pratama', 'XII', 'R1', 2, 'hs081', 'ps081', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(82, 'XIITKR', 'TKR', '151610172', '12-248-082-7', 'Wahyudin AZ.', 'XII', 'R1', 2, 'hs082', 'ps082', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(83, 'XIITKR', 'TKR', '151610138', '12-248-083-6', 'Wiro Sugianto', 'XII', 'R1', 2, 'hs083', 'ps083', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(84, 'XIITKR', 'TKR', '151610121', '12-248-084-5', 'Yogi Priyogo', 'XII', 'R1', 2, 'hs084', 'ps084', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(85, 'XIITKR', 'TKR', '151610139', '12-248-085-4', 'Yuda Saputra', 'XII', 'R1', 2, 'hs085', 'ps085', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(86, 'XIITKR', 'TKR', '151610140', '12-248-086-3', 'Yuwanda Musyaddir', 'XII', 'R1', 2, 'hs086', 'ps086', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(87, 'XIITKJ', 'TKJ', '151610001', '12-248-087-2', 'Anggi Gian Sapitri', 'XII', 'R1', 1, 'hs087', 'ps087', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(88, 'XIITKJ', 'TKJ', '151610002', '12-248-088-9', 'Cindy Apriana', 'XII', 'R1', 1, 'hs088', 'ps088', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(89, 'XIITKJ', 'TKJ', '151610003', '12-248-089-8', 'Dwi Lestari', 'XII', 'R1', 1, 'hs089', 'ps089', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(90, 'XIITKJ', 'TKJ', '151610004', '12-248-090-7', 'Ebih', 'XII', 'R1', 1, 'hs090', 'ps090', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(91, 'XIITKJ', 'TKJ', '151610005', '12-248-091-6', 'Elis Saeti Nuraeni', 'XII', 'R1', 3, 'hs091', 'ps091', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(92, 'XIITKJ', 'TKJ', '151610006', '12-248-092-5', 'Euis Susilawati', 'XII', 'R1', 3, 'hs092', 'ps092', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(93, 'XIITKJ', 'TKJ', '151610007', '12-248-093-4', 'Fahmi arni', 'XII', 'R1', 3, 'hs093', 'ps093', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(94, 'XIITKJ', 'TKJ', '151610008', '12-248-094-3', 'Fitri Widiasari', 'XII', 'R1', 3, 'hs094', 'ps094', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(95, 'XIITKJ', 'TKJ', '151610009', '12-248-095-2', 'Gaby Cantika Oktavia', 'XII', 'R1', 3, 'hs095', 'ps095', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(96, 'XIITKJ', 'TKJ', '151610010', '12-248-096-9', 'Haena Hermawati Yuningsih', 'XII', 'R1', 3, 'hs096', 'ps096', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(97, 'XIITKJ', 'TKJ', '151610011', '12-248-097-8', 'Karlina', 'XII', 'R1', 3, 'hs097', 'ps097', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(98, 'XIITKJ', 'TKJ', '151610012', '12-248-098-7', 'Kurniawati', 'XII', 'R1', 3, 'hs098', 'ps098', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(99, 'XIITKJ', 'TKJ', '151610013', '12-248-099-6', 'Ladina al zannah chandra', 'XII', 'R1', 3, 'hs099', 'ps099', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(100, 'XIITKJ', 'TKJ', '151610014', '12-248-100-5', 'Laras Ayu Asmanih', 'XII', 'R1', 3, 'hs100', 'ps100', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(101, 'XIITKJ', 'TKJ', '151610015', '12-248-101-4', 'Lastri Septriani', 'XII', 'R1', 3, 'hs101', 'ps101', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(102, 'XIITKJ', 'TKJ', '151610016', '12-248-102-3', 'Lisah Fitri Kurnia', 'XII', 'R1', 3, 'hs102', 'ps102', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(103, 'XIITKJ', 'TKJ', '151610018', '12-248-103-2', 'Lutfi Wisti Nandasari', 'XII', 'R2', 3, 'hs103', 'ps103', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(104, 'XIITKJ', 'TKJ', '151610019', '12-248-104-9', 'Maya Karmanih', 'XII', 'R2', 3, 'hs104', 'ps104', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(105, 'XIITKJ', 'TKJ', '151610020', '12-248-105-8', 'Mayang Sari', 'XII', 'R2', 3, 'hs105', 'ps105', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(106, 'XIITKJ', 'TKJ', '151610021', '12-248-106-7', 'Mayang Sari Wati', 'XII', 'R2', 3, 'hs106', 'ps106', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(107, 'XIITKJ', 'TKJ', '151610022', '12-248-107-6', 'Megawati', 'XII', 'R2', 1, 'hs107', 'ps107', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(108, 'XIITKJ', 'TKJ', '151610023', '12-248-108-5', 'Narsih Agus Priyanti', 'XII', 'R2', 1, 'hs108', 'ps108', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(109, 'XIITKJ', 'TKJ', '151610024', '12-248-109-4', 'Nuraina', 'XII', 'R2', 1, 'hs109', 'ps109', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(110, 'XIITKJ', 'TKJ', '151610025', '12-248-110-3', 'Pita Kaputri', 'XII', 'R2', 1, 'hs110', 'ps110', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(111, 'XIITKJ', 'TKJ', '151610026', '12-248-111-2', 'Putri Ayu Lestari', 'XII', 'R2', 1, 'hs111', 'ps111', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(112, 'XIITKJ', 'TKJ', '151610027', '12-248-112-9', 'Putri Hagita', 'XII', 'R2', 1, 'hs112', 'ps112', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(113, 'XIITKJ', 'TKJ', '151610028', '12-248-113-8', 'Rasti', 'XII', 'R2', 1, 'hs113', 'ps113', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(114, 'XIITKJ', 'TKJ', '151610029', '12-248-114-7', 'Rizky Khofifah', 'XII', 'R2', 1, 'hs114', 'ps114', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(115, 'XIITKJ', 'TKJ', '151610030', '12-248-115-6', 'Sahroni', 'XII', 'R2', 1, 'hs115', 'ps115', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(116, 'XIITKJ', 'TKJ', '151610031', '12-248-116-5', 'Samah Maesaroh', 'XII', 'R2', 1, 'hs116', 'ps116', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(117, 'XIITKJ', 'TKJ', '151610032', '12-248-117-4', 'Sarmila Febyola Putri', 'XII', 'R2', 1, 'hs117', 'ps117', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(118, 'XIITKJ', 'TKJ', '151610033', '12-248-118-3', 'Silpi Damayanti', 'XII', 'R2', 1, 'hs118', 'ps118', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(119, 'XIITKJ', 'TKJ', '151610034', '12-248-119-2', 'Siti Kartini', 'XII', 'R2', 1, 'hs119', 'ps119', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(120, 'XIITKJ', 'TKJ', '151610035', '12-248-120-9', 'Siti Masitoh', 'XII', 'R2', 1, 'hs120', 'ps120', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(121, 'XIITKJ', 'TKJ', '151610036', '12-248-121-8', 'Suci Selawati', 'XII', 'R2', 2, 'hs121', 'ps121', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(122, 'XIITKJ', 'TKJ', '151610037', '12-248-122-7', 'Tania Pratika', 'XII', 'R2', 2, 'hs122', 'ps122', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(123, 'XIITKJ', 'TKJ', '151610038', '12-248-123-6', 'Tarsimah D.', 'XII', 'R2', 2, 'hs123', 'ps123', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(124, 'XIITKJ', 'TKJ', '151610039', '12-248-124-5', 'Trisna Shalamshah', 'XII', 'R2', 2, 'hs124', 'ps124', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, ''),
(125, 'XIITKJ', 'TKJ', '151610040', '12-248-125-4', 'Yoga Maulana Atmaja', 'XII', 'R2', 2, 'hs125', 'ps125', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) NOT NULL,
  `soal` longtext NOT NULL,
  `jenis` int(1) NOT NULL,
  `pilA` longtext NOT NULL,
  `pilB` longtext NOT NULL,
  `pilC` longtext NOT NULL,
  `pilD` longtext NOT NULL,
  `pilE` longtext NOT NULL,
  `jawaban` varchar(1) NOT NULL,
  `file` text,
  `file1` text,
  `fileA` text,
  `fileB` text,
  `fileC` text,
  `fileD` text,
  `fileE` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_mapel`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `jawaban`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`) VALUES
(1, 1, 1, 'Partisi yang pertama kali dipasang dalam instalasi sistem operasi Linux adalah â€¦.', 1, '/root , /opt', '/root , /home', '/home, /opt', '/boot , /root', '/swap , /root', 'E', '', '', '', '', '', '', ''),
(2, 1, 2, 'Jika komputer pada saat POST mengeluarkan bunyi 1 beep panjang dan 3 beep pendek, berarti ....', 1, 'Kerusakan di modul DRAM parity', 'Kerusakan di bagian VGA', 'Problem di memori', 'PC dalam keadaan baik', 'Kerusakan di modul memori atau memori video', 'C', 'gambar4.jpg', '', 'gambar1.png', 'gambar1.png', 'gambar1.png', 'gambar1.png', 'gambar1.png'),
(3, 1, 3, 'Nama service untuk memberikan IP secara otomatis adalahâ€¦', 1, 'POP3', 'Apache', 'DHCP3', 'Bind9', 'Squid', 'C', '', '', '', '', '', '', ''),
(4, 1, 4, 'Keuntungan menggunakan media transmisi jaringan tanpa kabel / Wireless adalah....', 1, 'Boros Kabel', 'Biaya peralatan dan peripherial relatif mahal', 'Kemampuan transfer data lebih kecil dari jaringan kabel', 'Keamanan data masih belum terjamin karena masih dimungkinkan dilakukan penyadapan', 'Teknologi wireles memungkinkan untuk mengakses internet lebih murah dibanding dengan sistem dial up atau leased line', 'E', '', '', '', '', '', '', ''),
(5, 1, 5, 'Terjadinya tabrakan pengiriman data pada suatu jaringan komputer dikenal dengan istilahâ€¦', 1, 'Collision', 'Fusion', 'Broken', 'Attacking', 'Explode', 'A', '', '', '', '', '', '', ''),
(6, 1, 6, 'Dua software yang digunakan untuk boot loader adalah.....', 1, 'GRUB dan FIFO', 'GRUB dan LIFO', 'GRUB dan LILO', 'LIFO dan SWAP', 'LILO dan SWAP', 'C', '', '', '', '', '', '', ''),
(7, 1, 7, 'Kemampuan sistem operasi untuk menjalankan berbagai perintah dalam waktu bersamaan disebut.....', 1, 'Multi user', 'Pipelining', 'Threading', 'Multitasking', 'Management', 'D', '', '', '', '', '', '', ''),
(8, 1, 8, 'Tipe file yang digunakan oleh linux secara umum adalah â€¦', 1, 'INF', 'FAT', 'FAT32', 'NTFS', 'EXT3', 'E', '', '', '', '', '', '', ''),
(9, 1, 9, 'Sistem file yang disediakan oleh Windows XP dalam format hardisk adalah :', 1, 'FAT dan System', 'NTFS dan FAT', 'System dan NTFS', 'System dan DOS', 'DOS dan FAT', 'B', '', '', '', '', '', '', ''),
(10, 1, 10, 'Perintah append firewall di linux yang memperbolehkan akses service web http adalahâ€¦', 1, '# iptables -A goodtcp -p TCP -m state -state ESTABLISHED, RELATED, j ACCEPTED', '# iptables -A goodtcp -p TCP -syn -j ACCEPT', '# iptables -A INPUT -p UDP -s 0/0 -dport 53 -j ACCEPT', '# iptables -A INPUT -P TCP -s 0/0 -dport 80 -j ACCEPT', '# iptables -I INPUT -s $BAD_IP/32 -j DROP', 'D', '', '', '', '', '', '', ''),
(11, 1, 11, 'apt-get install postfix salah  satu  tahapan untuk konfigurasi â€¦', 1, 'DNS Server', 'MySql server', 'Database server', 'SSH server', 'Webmail server', 'E', '', '', '', '', '', '', ''),
(12, 1, 12, 'Jika diketahui IP address 204.15.15.7 netmask 255.255.255.128, berapa jumlah host yang dapat digunakan untuk jaringan tersebut â€¦', 1, '62', '126', '128', '256', '512', 'B', '', '', '', '', '', '', ''),
(13, 1, 13, 'Suatu jaringan local dengan ip address 193.17.17.6/27, IP broadcastnya adalahâ€¦', 1, '193.17.17.0', '193.17.17.31', '193.17.17.51', '193.17.17.224', '255255255224', 'B', '', '', '', '', '', '', ''),
(14, 1, 14, 'Kerusakan yang sering terjadi pada keyboard jika mencul tulisan di layar Keyboard \"error or no keyboard present\" Maksud dari kalimat itu adalah....', 1, 'Tombol keyboard macet saat ditekan', 'Keyboard meminta untuk dibersihkan', 'Port keyboard pada motherboard rusak', 'Keyboard tidak terdeteksi oleh PC', 'Kabel keyboard putus', 'D', '', '', '', '', '', '', ''),
(15, 1, 15, 'Alat yang digunakan sebagai pengaman CPU terhadap lonjakan tegangan jala-jala listrik maupun listrik yang tiba-tiba padam adalah â€¦.', 1, 'UPS', 'Power supply', 'Adaptor', 'Generator', 'Kontaktor', 'A', '', '', '', '', '', '', ''),
(16, 1, 16, 'Perintah linux untuk mengarahkan dari port http ke port proxy adalahâ€¦', 1, 'iptables -t nat -D PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -m tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -s nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -d tcp --dport 80 -j REDIRECT --to-ports 3128', 'C', '', '', '', '', '', '', ''),
(17, 1, 17, 'Utilitas berupa program cadangan yang pertama kali ditulis oleh Igor Romanenko, digunakan untuk pembuangan data sebuah database atau kumpulan database, disebutâ€¦', 1, 'MySQLDump', 'Backup Physic', 'Backup offline', 'Backup Logika', 'Backup online', 'A', '', '', '', '', '', '', ''),
(18, 1, 18, 'Mengambil datatabase dalam bentuk fisik, untuk database yang menggunakan Appserv secara fisik data disimpan pada folder C:\\Appserv\\Mysql\\data\\, disebut', 1, 'Backup logika', 'Backup Physic', 'Backup offline', 'MysqlBackup', 'Backup online', 'B', '', '', '', '', '', '', ''),
(19, 1, 19, 'Untuk melakukan perawatan PC menggunakan Disk Cleanup yang ada pada Windows, file-file yang tidak diperlukan,dapat dihapus dengan cara â€¦.', 1, 'start > accessories > system tools > disk cleanup', 'accessories > system tools > start > disk cleanup', 'system tools > start > accessories > disk cleanup', 'start > system tools > accessories > disk cleanup', 'system tools > accessories > start > disk clean', 'A', '', '', '', '', '', '', ''),
(20, 1, 20, 'Untuk menghubungkan komputer dengan Komputer digunakan kabel UTP dengan susunan ....', 1, 'rollover', 'straight', 'serial', 'crossover', 'DTE', 'D', '', '', '', '', '', '', ''),
(21, 1, 21, 'Hasil konversi dari bilangan biner 101011 ke bilangan decimal adalahâ€¦', 1, '31', '34', '37', '40', '43', 'E', '', '', '', '', '', '', ''),
(22, 1, 22, 'Salah satu jenis printer yang menggunakan metode hentakan jarum pada pita disebut â€¦', 1, 'Printer inkjet', 'Printer laserjet', 'Printer dotmatrix', 'Printer bubblejet', 'Plotter', 'C', '', '', '', '', '', '', ''),
(23, 1, 23, 'Apabila dari perintah ping muncul keterangan \"Request timed out\" berartiâ€¦', 1, 'Hubungan kedua komputer berjalan secara normal.', 'Hubungan kedua komputer terputus', 'Topologi jaringan tidak sesuai', 'Internet tidak terhubung', 'Masalah pada server', 'B', '', '', '', '', '', '', ''),
(24, 1, 24, 'Rumus dari gerbang logika AND adalah â€¦', 1, 'Y = A * B', 'Y = A / B', 'Y = A + B', 'A = B', 'B = A', 'A', '', '', '', '', '', '', ''),
(25, 1, 25, 'VARCHAR dan CHAR (M) merupakan kolom MySQL tipeâ€¦.', 1, 'Numeric', 'Waktu', 'Kosong', 'String', 'Tanggal', 'D', '', '', '', '', '', '', ''),
(26, 1, 26, 'Urut-urutan 7 layer (dimulai dari layer 1) dalam model Open System Interconnection adalah sebagai berikut :', 1, 'Physical, Session, Network, Transport, Data Link, Presentation, Application', 'Application, Network, Session, Transport, Presentation, Data Link, Physical', 'Physical, Presentation, Network, Transport, Session, Data Link, Application', 'Physical, Data Link, Network, Transport, Session, Presentation, Application', 'Application, Presentation, Session, Transport, Network, Data Link, Physical', 'D', '', '', '', '', '', '', ''),
(27, 1, 27, 'Fungsi kecil dari router yang gunanya menggandakan IP address sehingga perangkat-perangkat yang ada di belakangnya bisa mengakses jaringan Internet adalahâ€¦.', 1, 'TCP/IP', 'NAT', 'Gateway', 'Router', 'Brigde', 'B', '', '', '', '', '', '', ''),
(28, 1, 28, 'Perangkat yang berfungsi mengatur pemilihan jalur terbaik untuk dilewati paket data dikenal sebagai â€¦', 1, 'Switch', 'Router', 'Web server', 'Proxy server', 'Name server', 'B', '', '', '', '', '', '', ''),
(29, 1, 29, 'Komputer yang bertugas menyimpan informasi halaman web yang pernah diakses sebelumnya adalah â€¦', 1, 'Router', 'Web server', 'Proxy server', 'Name server', 'Database server', 'C', '', '', '', '', '', '', ''),
(30, 1, 30, 'Apabila suatu peripheral belum terinstal drivernya, pada device manager akan tampil symbol â€¦.', 1, 'Tanda seru (!) warna kuning', 'Tanda X warna merah', 'Tanda seru (!) warna merah', 'Tanda tanya (?) warna kuning', 'Tanda tanya (?) warna merah', 'D', '', '', '', '', '', '', ''),
(31, 1, 31, 'Gangguan yang  disebabkan oleh tidak berjalannya aplikasi di wireless, konflik IP (Internet Protocol) pada proses proxy server pada server dikelompokkan dalam gangguan â€¦.', 1, 'brainware', 'hardware', 'pemasok daya', 'software', 'user', 'D', '', '', '', '', '', '', ''),
(32, 1, 32, 'Kombinasi pengkabelan straight pada jaringan komputer yang sesuai dengan standart internasional  adalah...', 1, 'White orange - orange - white green - blue - white blue - green - white brown - brown', 'White orange - orange - white green - green - white blue - blue - white brown - brown', 'White green - green - white orange - blue - white blue - orange - white brown - brown', 'White orange - orange - white green - green - white blue - blue - white brown - brown', 'Orange - white orange - green - white green - white blue - blue - white brown - brown', 'A', '', '', '', '', '', '', ''),
(33, 1, 33, 'Teknik yang digunakan untuk melindungi jaringan, dengan menyaring membatasi atau bahkan menolak koneksi adalah â€¦', 1, 'Proxy', 'Firewall', 'IP filter', 'Mac Filter', 'Firewire', 'B', '', '', '', '', '', '', ''),
(34, 1, 34, 'Berapa kecepatan akses data pada access point yang memiliki standar kode IEEE 802.11b â€¦', 1, '11Mb/s', '54Mb/s', '108Mb/s', '216Mb/s', '432Mb/s', 'A', '', '', '', '', '', '', ''),
(35, 1, 35, 'Yang membedakan paket software free dengan paket berbayar adalah â€¦.', 1, 'pada paket berbayar, ada permintaan memasukkan serial number untuk autentikasi', 'pada paket berbayar, dapat dipastikan kapasitas space besar', 'pada paket free, dapat dipastikan kapasitas space kecil', 'pada paket free, ada permintaan memasukkan serial number untuk autentikasi', 'pada paket berbayar, tidak dibatasi waktu penggunaannya', 'A', '', '', '', '', '', '', ''),
(36, 1, 36, 'Penulisan IP Address 10.208.15.240 dalam bentuk binary ditulis sebagai berikut â€¦', 1, '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', 'C', '', '', '', '', '', '', ''),
(37, 1, 37, 'Sebuah komputer memiliki RAM sebesar 1,0 GB. Jika komputer tersebut akan diinstalasi sistem operasi Linux, swap yang dipasang sebesar â€¦.', 1, '1.0 GB', '1.5 GB', '2.0 GB', '2.5 GB', '3.0 GB', 'A', '', '', '', '', '', '', ''),
(38, 1, 38, 'Batasan waktu agar paket data tidak mengambang di jaringan disebut.....', 1, 'Request Time Out', 'Time to Live', 'Time to Leave', 'Data Pending', 'Repply for All', 'B', '', '', '', '', '', '', ''),
(39, 1, 39, 'Signal merewati 2 arah dengan satu kabel, kemungkinan terjadi collision (tabrakan data atau tercampurnya data) besar, adalah kelemahan dari kabel jenis.....', 1, 'Coaxial', 'UTP', 'STP', 'Twisted', 'Unshielded', 'A', '', '', '', '', '', '', ''),
(40, 1, 40, 'Pada gambar dibawah komputer klien tidak dapat mengakses intenet melalui wireless, tetapi komputer yang terhubung melalui kabel dapat bisa terhubung ke internet, sebabnya adalah...', 1, 'Subnetmask klien salah', 'WEP key klien salah', 'Alamat IP klien salah', 'Default gateway klien salah', 'IP internal router salah', 'D', '', '', '', '', '', '', ''),
(41, 1, 1, 'Diketahui IP Address 192.168.9.10/29 .\na. Tuliskan netmask nya dalam bentuk decimal\nb. Tuliskan Broadcast ID nya', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 1, 2, 'Ubahlah nilai berikut kedalam bentuk biner! :\na. Tuliskan netmask nya dalam bentuk decimal\nb. Tuliskan Broadcast ID nya', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 1, 3, 'Sebutkan 3 fungsi dari layer Aplikasi dalam lapisan OSI ?', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 1, 4, 'Apa yang dimaksud dengan jaringan Client - Server?', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 1, 5, 'Sebutkan 3 kelemahan Topologi Star?', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 2, 1, 'Pengambilan endapan partikel padat dengan jalan melewatkan air limbah ke dalam lapisan yang berpori, disebut...', 1, 'Activated sludge', 'Setting', 'Trickling filter', 'Flotation', 'Filtration', 'E', '', '', '', '', '', '', ''),
(47, 2, 2, 'Larutan gula 3% (m) dengan laju alir 1000 kg/jam akan dipekatkan menjadi 25% (m) didalam evaporator. Air yang harus diuapkan...', 1, '120 kg/jam', '200 kg/jam', '420 kg/jam', '880 kg/jam', '920 kg/jam', 'D', '', '', '', '', '', '', ''),
(48, 2, 3, 'Campuran cairan benzene &ndash; toluene didistilasi dalam menara fraksionasi, dimana umpan benzene-toluena yang terdistilasi memberikan komposisi distillate, xD = 0,95 dan komposisi bottom, xw = 0,10. Berdasarkan grafik untuk penentuan perbandingan refluks minimum ( minimum reflux ratio), Rm, diperoleh x&rsquo;=0,45 dan y&rsquo; =0,070. Besarnya perbandingan refluks minimum adalah&hellip;', 1, '0,50', '0,80', '1,25', '1,80', '2,80', 'A', '', '', '', '', '', '', ''),
(49, 2, 4, 'Jenis filter yang digunakan untuk filtrasi jernih (Clarifyng Filtration), terutama untuk penanganan awal air minum atau untuk pembuatan air keperluan pabrik digunakan...', 1, 'Filter spiral', 'Filter pasir', 'Filter pelat', 'Filter hisap', 'Filter putar', 'B', '', '', '', '', '', '', ''),
(50, 2, 5, 'Parameter limbah cair yang sangat berbahaya dinyatakan oleh...', 1, 'DO dan BOD besar', 'DO besar dan COD kecil', 'DO dan BOD kecil', 'DO besar dan BOD kecil', 'BOD dan COD kecil', 'E', '', '', '', '', '', '', ''),
(51, 2, 6, 'Reaksi yang terdapat pada operasi absorpsi adalah...', 1, 'Zn + HCI&nbsp; --&gt;&nbsp; ZnCl<sub>2</sub> + H<sub>2</sub>', 'Zn + CuSO<sub>4</sub>&nbsp; --&gt;&nbsp; &nbsp;ZnSO<sub>4 </sub>+ Cu', 'RSO<sub>3</sub>H + CaCl<sub>2</sub> <sub>&nbsp;--&gt;&nbsp; &nbsp;</sub>(RSO<sub>3</sub>)<sub>2</sub>Ca + HCl', 'NaOH +HCI --&gt; NaCl + H<sub>2</sub>O', 'CaC<sub>2</sub> + H<sub>2</sub>O&nbsp; --&gt; C<sub>2</sub>H<sub>2</sub> + Ca(OH)<sub>2</sub>', 'C', '', '', '', '', '', '', ''),
(52, 2, 7, 'Aplikasi operasi distilasi banyak dipakai di industri...', 1, 'Farmasi', 'Minyak bumi', 'Minuman', 'Minyak hewani', 'Minyak nabati', 'B', '', '', '', '', '', '', ''),
(53, 2, 8, 'Gas karbondioksida yang terdapat di udara dengan kadar 50% diabsorpsi dengan air sehingga kadarnya menjadi 30%. jika laju alir udara 5L/dt dan laju alir air bebas Ca. 10% O<sub>2</sub>10L/dt, maka kadar CO<sub>2</sub>di dalam air adalah...', 1, '12,5%', '15,5%', '25%', '30%', '', 'B', '', '', '', '', '', '', ''),
(54, 2, 9, 'Larutan gula hasil proses evaporasi dapat ditentukan berat jenisnya dalam derajat...', 1, 'API', 'Brix', 'Baume', 'Twaddel', 'Mesh', 'B', '', '', '', '', '', '', ''),
(55, 2, 10, 'Dibawah ini senyawa yang dapat menyublim adalah...', 1, 'Natrium clorida', 'Asam clorida', 'Amonium klorida', 'Kalium klorida', 'Lithium klorida', 'C', '', '', '', '', '', '', ''),
(56, 2, 11, 'Campuran yang terdiri dari 30% (m) benzana dan 70% (m) toluena didistilasi secara kontinyu sehingga diproduk atas mengandung 80% (m) benzena, sedangkan di produk bawah 5% (m). Jika laju alir umpan 1 ton/jam, maka laju alir produk atas..', 1, '222,4 kg/jam', '333,4 kg/jam', '411,8 kg/jam', '588,2 kg/jam', '666,6 kg/jam', 'B', '', '', '', '', '', '', ''),
(57, 2, 12, 'Dua zat yang dicampur cenderung memilki sifat tidak saling larut, maka pada proses pencampuran harus...', 1, 'Dilakukan secara laminar', 'Ditambahkan asam kuat', 'Ditambah basa kuat', 'Dilengkapi dengan baffle/perintang aliran', 'Ditambahkan zat pengemulasi', 'E', '', '', '', '', '', '', ''),
(58, 2, 13, 'Jenis alat pencampur seperti gambar di bawah cocok untuk...', 1, 'Pencampuran liquid-gas', 'Pencampuran gas-gas', 'Pencampuran solid-gas', 'Pencampuran solid-solid', 'Pencampuran liquid-solid', 'E', 'DASAR_TEKNIK_KIMIA_K13_13.jpg', '', '', '', '', '', ''),
(59, 2, 14, 'Pada suatu industri gula pasir, pengujian kualitas produk gula yang dihasilkan diantaranya adalah penetuan kadar sakarosa yang merupakan senyawa dengan optis aktif dan digunakan alat...', 1, 'Water content apparatus', 'High perfomance liquid chromatography', 'Refractomer', 'Water distillation apparatus', 'Polarimeter', 'E', '', '', '', '', '', '', ''),
(60, 2, 15, 'Jahe sebanyak 10 kg diekstraksi dengan 10 L alcohol (&rho;=0,85 g/ml), jika setelah proses ekstraksi diperoleh 10,5 L alcohol (&rho;=0,90 g/ml),maka kadar ekstrak didalam jahe adalah&hellip;', 1, '9,5 %', '12,5 %', '14,5 %', '17,5 %', '20,5 %', 'A', '', '', '', '', '', '', ''),
(61, 2, 16, 'Tuti akan membuat 100mL larutan alkohol 5% dengan mencampur larutan alkohol 2% dan 7%. Berapakah dari larutan alkohol 2% dan 7% yang digunakan?', 1, '50mL dan 50mL', '40mL dan 60mL', '30mL dan 70mL', '45mL dan 55mL', '20mL dan 80mL', 'B', '', '', '', '', '', '', ''),
(62, 2, 17, 'Jenis alat pengaduk seperti gambar dibawah ini adalah...', 1, 'Turbin', 'dayung', 'Propeller', 'Globe impeller', 'Padlle', 'C', 'DASAR_TEKNIK_KIMIA_K13_17.jpg', '', '', '', '', '', ''),
(63, 2, 18, 'Kebakaran kelas B menurut nasional national free protection asosiation (NFPA) antara lain kebakaran yang dapat diakibatkan oleh terbakarnya...', 1, 'Plastik,kertas,dan karet', 'Etanol,dietil eter,dan N-heksana', 'Hot plate,etanol,sodium', 'Kertas,etanol,dan sodium', 'Magnesium, heating &ndash; mantle, plastik', 'B', '', '', '', '', '', '', ''),
(64, 2, 19, 'Pada proses pengomposan, laju metabolisme yang menetukan laju biodegradasi limbah/sampah tergantung pada faktor-faktor rekayasa antara lain penerima elektron (electron aseptor) yang dalam respirasi anaerobik diperlukan...', 1, 'Oksigen', 'Ion karbonat', 'Ion nitrat', 'Metana', 'Asam sulfida', 'D', '', '', '', '', '', '', ''),
(65, 2, 20, 'Jika diindustri kimia terjadi kebakaran yang di akibatkan oleh percikan api yang berasal dari hotplate stire, maka alat pemadam kebakaran yang cocok menurut natioanl free protection asosiation (NFPA) untuk memadamkan api tersebut adalah...', 1, 'Blanket fire', 'Water', 'Foam', 'Sand', 'Carbon dioksida', 'D', '', '', '', '', '', '', ''),
(66, 2, 21, 'Jenis pompa yang umum digunakan oleh suatu pabrik/industri adalah pompa&hellip;', 1, 'Centrifugal', 'Rotary', 'Reciprocating', 'Torak', 'Plunger', 'A', '', '', '', '', '', '', ''),
(67, 2, 22, 'Suatu larutan dalam air mengandung 46% gliserol (Mr. = 92) pada temperature 93oC. Tekanan uap air murni pada 93oC adalah 597 mmHg. Jika Mr. Air dianggap = 18, tekanan uap gliserol diabaikan, dan larutan dianggap dapat mengikuti hukum Roult, maka besarnya tekanan uap air pada keadaan kesetimbangan adalah&hellip; mmHg.', 1, '512', '515', '521', '551', '567', 'A', '', '', '', '', '', '', ''),
(68, 2, 23, 'Di industri, soda abu dapat di buat dengan proses Solvay, yang menggunakan bahan baku garam dapur, batu kapur dan batubara atau kokas.penetuan kadar soda abu yang dihasilkan dilakukan dengan menggunakan larutan standar asam, dan dikenal dengan metoda&hellip;', 1, 'alkali metri', 'argentometri', 'asidimetri', 'yodometri', 'oksidimetri', 'C', '', '', '', '', '', '', ''),
(69, 2, 24, 'Operasi distilasi dapat dilakukan untuk memperoleh kembali aseton dari aliran limbah cair (air). Umpan mengandung aseton sebanyak 40% massa. Komponen produk aseton yang diinginkan memiliki kemurnian minimal 90% massa dan jumlah aseton yang terikut pada komponen produk bawah 10%. Umpan berada pada temperature 20<sup>o</sup>C. Jika laju alir umpan 100kg/jam, maka laju alir produk bawah adalah&hellip;', 1, '62,5 kg/jam', '70,5 kg/jam', '75,5 kg/jam', '87,5 kg/jam', '90,5 kg/jam', 'A', '', '', '', '', '', '', ''),
(70, 2, 25, '16. Sebuah pipa kaca mempunyai diameter luas 6 cm dan diameter dalam 3 cm. Dipakai untuk megalirkan fluida pada suhu 400 K dan diharapkan bagian luar pipa 300 K. Hitung panas yang hilang melewati pipa jika panjang pipa 0,693 m. (Kkaca = 0,35 W/mK dan In 2= 0,693) adalah&hellip;', 1, '110 W', '220 W', '330 W', '440 W', '550 W', 'B', '', '', '', '', '', '', ''),
(71, 2, 26, 'Sebuah dinding tebalnya 5 cm berukuran 100 cm2 dipakai pada suhu 100 &ndash; 200 K. dinding terbuat dari kaolin dengan harga k=0,25 W/mK. Panas yang melewati dinding adalah &hellip;', 1, '0,005', '0,05', '0,5', '5', '500', 'D', '', '', '', '', '', '', ''),
(72, 2, 27, 'Pada suatu proses netralisasi ,untuk menetralkan 50 ml NaOH 0,1 M diperlukan asam sulfat 0,1 M sebanyak&hellip;', 1, '0,5 ml', '5 ml', '50 ml', '100 ml', '200 ml', 'D', '', '', '', '', '', '', ''),
(73, 2, 28, 'Suatu fluida cair mengalir dalam sebuah pipa berdiameter dalam 20 cm. Kecepatan aliran fluida tersebut 1 m/s. Debit aliran fluida dalam pipa tersebut adalah &hellip; ( m3/jam ). (&pi; = 3,14 )', 1, '0,0314', '0,314', '1,884', '314', '18.84', 'A', '', '', '', '', '', '', ''),
(74, 2, 29, 'Steam dengan suhu 250oC masuk evaporator digunakan untuk menguapkan suatu bahan sehingga menjadi pekat. Bila suhu steam keluar dari evaporator adalah 150oC maka penurunan suhu steam bila dinyatakan dalam derajat Kelvin adalah &hellip;', 1, '523 K', '473 K', '423 K', '373 K', '273 K', 'D', '', '', '', '', '', '', ''),
(75, 2, 30, 'Pada ekstraksi kemiri dengan ekstraksi soxchlet dengan pelarut N Heksana ternyata mi nyak kemiri yang didapat mempunyai densitas 0,7625 g/ml, yang artinya lebih kecil daripada densitas minyak kemiri SNI 01-4462-1998, yaitu 0,9240 pada temperature 30-70<sup>o</sup> hal ini belum memenuhi standar nasional , penyebab hal tersebut diperkirakan &hellip;', 1, 'Suhu pemanas terlalu rendah', 'Terlalu banyak penggunaan pelarut', 'Pemanasan terlalu lama', 'Suhu air pendingin terlalu rendah', 'Masih bercampur dengan pelarut', 'E', '', '', '', '', '', '', ''),
(76, 2, 31, 'Perhatikan beberapa jenis mikroba berikut!<br />1) Rhizopus oryzae<br />2) Saccharomyces cerevisiae<br />3) Acetobacter xylinum<br />4) Aspergillus oryzae<br />5) Lactobacillus casei<br />Jenis jamur yang dapat dimanfaatkan dalam proses industri adalah....', 1, '1, 2, 3', '1, 2, 4', '1, 3, 5', '2, 3, 5', '3, 4, 5', 'D', '', '', '', '', '', '', ''),
(77, 2, 32, 'Suatu senyawa direaksikan dengan beberapa pereaksi dan diperoleh data sebagai berikut :<br />1) direaksikan dengan larutan Fehling menghasilkan endapan merah bata,<br />2) direaksikan dengan larutan Tollens menghasilkan endapan berwarna perak,<br />3) direaksikan dengan larutan kalium dikromat menghasilkan senyawa bersifat asam,<br />Berdasarkan data hasil analisis, senyawa karbon tersebut mengandung gugus fungsi &hellip;.', 1, 'aldehid', 'alkohol', 'keton', 'ester', 'eter', 'A', '', '', '', '', '', '', ''),
(78, 2, 33, 'Berikut adalah jumlah koloni bakteri pada pemeriksaan suatu sampel air minum :<br />\n<table>\n<tbody>\n<tr>\n<td width=\"110\">\n<p>Pengenceran</p>\n</td>\n<td width=\"106\">\n<p>Cawan I</p>\n</td>\n<td width=\"95\">\n<p>Cawan II</p>\n</td>\n</tr>\n<tr>\n<td width=\"110\">\n<p>10<sup>-2</sup></p>\n</td>\n<td width=\"106\">\n<p>220</p>\n</td>\n<td width=\"95\">\n<p>300</p>\n</td>\n</tr>\n<tr>\n<td width=\"110\">\n<p>10<sup>-3</sup></p>\n</td>\n<td width=\"106\">\n<p>20</p>\n</td>\n<td width=\"95\">\n<p>30</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>Besarnya angka lempeng total untuk sampel tersebut adalah...cfu/mL</p>', 1, '250 x 10<sup>2</sup>', '255 x 10<sup>2</sup>', '260 x 10<sup>2</sup>', '500 x 10<sup>2</sup>', '520 x 10<sup>2</sup>', 'C', '', '', '', '', '', '', ''),
(79, 2, 34, 'Perhatikan beberapa teknik sterilisasi berikut!<br />1) pemijaran <br />2) udara panas<br />3) tyndalisasi<br />4) penyaringan/filtrasi<br />5) uap panas bertekanan<br />Teknik sterilisasi yang tepat digunakan untuk produk susu, enzim dan antibiotik agar tidak rusak adalah....', 1, '1 dan 2', '1 dan 3', '3 dan 4', '3 dan 5', '2 dan 5', 'C', '', '', '', '', '', '', ''),
(80, 2, 35, 'Berikut merupakan beberapa persyaratan penyimpanan bahan kimia<br />1) Ruangan dingin, kering dan berventilasi<br />2) Disediakan pemadam kebakaran tipe CO2 atau dry powder<br />Syarat di atas merupakan persyaratan penyimpanan bahan kimia golongan....', 1, 'reaktif terhadap asam', 'reaktif terhadap air', 'mudah meledak', 'mudah terbakar', 'oksidator', 'B', '', '', '', '', '', '', ''),
(81, 2, 36, 'Penanganan yang harus dilakukan jika seseorang memecahkan termometer raksa ketika sedang bekerja di laboratorium adalah....', 1, 'membersihkan dengan lap dan air bersih', 'membersihkan dengan lap dan asam cuka', 'menutup pecahan termometer menggunakan serbuk Na2CO3', 'menutup pecahan termometer menggunakan tepung sulfur', 'membersihkan dengan tisue atau lap kering kemudian membakarnya', 'D', '', '', '', '', '', '', ''),
(82, 2, 37, 'Sebanyak 1 mL sampel asam cuka komersial dengan massa jenis 1,05 gr/mL diambil kemudian diencerkan hingga volume 25 mL. Selanjutnya sampel hasil pengenceran dititrasi dan membutuhkan 30,0 mL larutan NaOH 0,10 M untuk mencapai titik akhir titrasi. Kadar asam asetat (Mr: 60) yang terdapat dalam sampel tersebut adalah... %.', 1, '0,58', '1,71', '5,80', '15,80', '17,10', 'E', '', '', '', '', '', '', ''),
(83, 2, 38, 'Identifikasi kation golongan I dalam suatu sampel limbah memberikan data sebagai berikut:<br />\n<ul>\n<li>Penambahan HCl menghasilkan endapan berwarna putih</li>\n<li>Penambahan K2CrO4 pada filtrat air panas hasil penyaringan menghasilkan endapan berwarna kuning</li>\n<li>Penambahan amonia pada residu hasil penyaringan melarutkan seluruh endapan</li>\n<li>Penambahan HNO3 pada filtrat setelah penambahan amonia menghasilkan endapan berwarna putih</li>\n</ul>\n<br />Berdasarkan data analisis tersebut, kation golongan I yang terdapat dalam sampel adalah....', 1, 'Ag+', 'Hg+', 'Pb2+', 'Ag+ dan Pb2+', 'Ag+ dan Hg+', 'D', '', '', '', '', '', '', ''),
(84, 2, 39, 'Massa asam oksalat dihidrat yang harus ditimbang untuk membuat larutan asam oksalat 0,2 M sebanyak 500 mL adalah ... gr. (Diketahui Ar C:12; Ar O:16; Ar H:1)', 1, '0,63', '1,26', '6,30', '9,00', '12,60', 'E', '', '', '', '', '', '', ''),
(85, 2, 40, 'Tahapan yang dilakukan untuk mengendapkan sulfat dengan metode gravimetri secara berurutan dan benar adalah ....<br />Berikut ini merupakan langkah kerja dalam analisis gravimetri:<br />\n<ol>\n<li>Menambahkan larutan pengasam asam klorida</li>\n<li>Mencuci endapan menggunakan akuades panas</li>\n<li>Mencuci endapan menggunakan asam nitrat encer</li>\n<li>Menyaring endapan, mengeringkan, memijarkan dan menimbang hingga bobot tetap</li>\n<li>Menambahkan larutan BaCl2</li>\n<li>Menambahkan larutan NaOH</li>\n<li>Menimbang sampel</li>\n</ol>', 1, '7-1-5-2-4', '7-1-5-3-4', '7-1-6-2-4', '7-1-6-3-4', '7-1-6-5-4', 'D', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masa_berlaku` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
(1, 'OYHLKW', '2019-09-01 09:17:18', '00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL,
  `id_pk` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time NOT NULL,
  `selesai_ujian` time NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) NOT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(3) NOT NULL,
  `hasil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_pk`, `id_guru`, `id_mapel`, `kode_ujian`, `nama`, `jml_soal`, `jml_esai`, `bobot_pg`, `opsi`, `bobot_esai`, `tampil_pg`, `tampil_esai`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `kelas`, `sesi`, `acak`, `token`, `status`, `hasil`) VALUES
(9, 'semua', 51, 1, 'PAT', 'MATEMATIKA', 40, 5, 100, 5, 100, 40, 5, 60, '2019-09-06 21:00:00', '2019-09-06 23:00:00', '21:00:00', '00:00:00', 'XII', 'a:1:{i:0;s:5:\"semua\";}', '1', 1, 0, 1, 1),
(10, 'semua', 51, 1, 'PTS', 'MATEMATIKA', 40, 5, 100, 5, 100, 40, 5, 60, '2019-09-08 08:00:00', '2019-09-08 23:00:00', '08:00:00', '00:00:00', 'XII', 'a:1:{i:0;s:5:\"semua\";}', '1', 1, 0, 1, 1),
(11, '', 41, 2, 'PH', 'KIMIA', 30, 0, 100, 4, 0, 30, 0, 60, '2019-09-08 13:00:00', '2019-09-08 15:00:00', '13:00:00', '00:00:00', 'semua', 'a:1:{i:0;s:5:\"semua\";}', '1', 1, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `hasil_jawaban`
--
ALTER TABLE `hasil_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengacak`
--
ALTER TABLE `pengacak`
  ADD PRIMARY KEY (`id_pengacak`);

--
-- Indexes for table `pengacakopsi`
--
ALTER TABLE `pengacakopsi`
  ADD PRIMARY KEY (`id_pengacak`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pk`
--
ALTER TABLE `pk`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`kode_sesi`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hasil_jawaban`
--
ALTER TABLE `hasil_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengacak`
--
ALTER TABLE `pengacak`
  MODIFY `id_pengacak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengacakopsi`
--
ALTER TABLE `pengacakopsi`
  MODIFY `id_pengacak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
