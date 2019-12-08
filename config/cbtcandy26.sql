-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 10.4.8-MariaDB-log - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table cbtcandy26.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.berita: ~2 rows (lebih kurang)
DELETE FROM `berita`;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` (`id_berita`, `id_mapel`, `sesi`, `ruang`, `jenis`, `ikut`, `susulan`, `no_susulan`, `mulai`, `selesai`, `nama_proktor`, `nip_proktor`, `nama_pengawas`, `nip_pengawas`, `catatan`, `tgl_ujian`) VALUES
	(1, 1, '2', 'R1', 'PH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 1, '2', 'R2', 'PH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.file_pendukung
CREATE TABLE IF NOT EXISTS `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.file_pendukung: ~6 rows (lebih kurang)
DELETE FROM `file_pendukung`;
/*!40000 ALTER TABLE `file_pendukung` DISABLE KEYS */;
INSERT INTO `file_pendukung` (`id_file`, `id_mapel`, `nama_file`, `status_file`) VALUES
	(59, 1, 'gambar4.jpg', NULL),
	(60, 1, 'gambar1.png', NULL),
	(61, 1, 'gambar1.png', NULL),
	(62, 1, 'gambar1.png', NULL),
	(63, 1, 'gambar1.png', NULL),
	(64, 1, 'gambar1.png', NULL);
/*!40000 ALTER TABLE `file_pendukung` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.hasil_jawaban
CREATE TABLE IF NOT EXISTS `hasil_jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jawabx` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) DEFAULT NULL,
  `ragu` int(1) NOT NULL DEFAULT 0,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.hasil_jawaban: ~0 rows (lebih kurang)
DELETE FROM `hasil_jawaban`;
/*!40000 ALTER TABLE `hasil_jawaban` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasil_jawaban` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.jawaban
CREATE TABLE IF NOT EXISTS `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.jawaban: ~245 rows (lebih kurang)
DELETE FROM `jawaban`;
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.jenis
CREATE TABLE IF NOT EXISTS `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.jenis: ~1 rows (lebih kurang)
DELETE FROM `jenis`;
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
INSERT INTO `jenis` (`id_jenis`, `nama`, `status`) VALUES
	('PH', 'Penilaian Harian Semester', 'aktif');
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.jurusan: ~12 rows (lebih kurang)
DELETE FROM `jurusan`;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` (`jurusan_id`, `nama_jurusan_sp`, `kurikulum`, `jurusan_sp_id`, `kurikulum_id`, `sekolah_id`) VALUES
	('10024', 'Teknik Mesin', 'SMP', '3c800d8b-1214-4bf5-b9b2-e46547f7c96e', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('10024210', 'Teknik Pemesinan', 'SMP', '6d94b928-63dc-48c2-b213-41ef0d60f127', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('10042270', 'Teknik Kendaraan Ringan Otomotif', 'SMP', 'd0c87641-a9db-4669-9c1c-96aca0e97af0', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('10044', 'Teknik Otomotif', 'SMP', 'e598f57f-3df9-4571-a2c4-25f3124090db', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('10044400', 'Teknik Kendaraan Ringan', 'SMP', 'd1d23270-f4a7-4fab-b6c0-99ae05d5262d', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('15052', 'Teknik Komputer dan Informatika', 'SMP', '1af78482-4246-4d90-839c-bbc215c19639', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('15052515', 'Teknik Komputer dan Jaringan', 'SMP', '676b9393-4fbf-41b1-ba25-3db356d71baf', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('35088750', 'Administrasi Perkantoran', 'SMP', '9c29bd66-a5c0-4fef-bb0f-020062fd5557', NULL, '8cce47df-aae7-4274-83cb-5af3093eab56'),
	('SMP0000', 'Reguler', 'SMP', '66361a62-6622-11e4-900b-87e57f70ef1b', NULL, '80f33dc6-0d26-e111-8958-61d7211127e4'),
	('SMP0001', 'Terbuka', 'SMP', '664b2920-6622-11e4-a3db-2b18c6ae1a9b', NULL, '80f33dc6-0d26-e111-8958-61d7211127e4'),
	('SMP0002', 'kelas jauh', 'SMP', '664d8a80-6622-11e4-a91e-d3dfd5eeefe9', NULL, '80f33dc6-0d26-e111-8958-61d7211127e4'),
	('SMP0003', 'Akselerasi', 'SMP', 'ef762a2a-361f-11e4-a111-57dea713b49c', NULL, '80f33dc6-0d26-e111-8958-61d7211127e4');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.kelas: ~20 rows (lebih kurang)
DELETE FROM `kelas`;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`id_kelas`, `level`, `nama`, `rombongan_belajar_id`, `semester_id`) VALUES
	('XIITKJ', 'XII', 'XIITKJ', NULL, NULL),
	('XIITKR', 'XII', 'XIITKR', NULL, NULL),
	('XIITP', 'XII', 'XIITP', NULL, NULL),
	('XITKJA', 'XI', 'XITKJA', NULL, NULL),
	('XITKJB', 'XI', 'XITKJB', NULL, NULL),
	('XITKJC', 'XI', 'XITKJC', NULL, NULL),
	('XITKRA', 'XI', 'XITKRA', NULL, NULL),
	('XITKRB', 'XI', 'XITKRB', NULL, NULL),
	('XITPA', 'XI', 'XITPA', NULL, NULL),
	('XITPB', 'XI', 'XITPB', NULL, NULL),
	('XMM', 'X', 'XMM', NULL, NULL),
	('XTKJA', 'X', 'XTKJA', NULL, NULL),
	('XTKJB', 'X', 'XTKJB', NULL, NULL),
	('XTKJC', 'X', 'XTKJC', NULL, NULL),
	('XTKJD', 'X', 'XTKJD', NULL, NULL),
	('XTKRA', 'X', 'XTKRA', NULL, NULL),
	('XTKRB', 'X', 'XTKRB', NULL, NULL),
	('XTKRC', 'X', 'XTKRC', NULL, NULL),
	('XTPA', 'X', 'XTPA', NULL, NULL),
	('XTPB', 'X', 'XTPB', NULL, NULL),
	('XTPC', 'X', 'XTPC', NULL, NULL);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.level
CREATE TABLE IF NOT EXISTS `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.level: ~3 rows (lebih kurang)
DELETE FROM `level`;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` (`kode_level`, `keterangan`, `rombongan_belajar_id`) VALUES
	('X', 'X', NULL),
	('XI', 'XI', NULL),
	('XII', 'XII', NULL);
/*!40000 ALTER TABLE `level` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.log
CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.log: ~19 rows (lebih kurang)
DELETE FROM `log`;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.login
CREATE TABLE IF NOT EXISTS `login` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.login: ~5 rows (lebih kurang)
DELETE FROM `login`;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id_log`, `id_siswa`, `ipaddress`, `date`) VALUES
	(10, 53, NULL, '2019-11-21 00:17:57'),
	(11, 80, NULL, '2019-11-21 16:03:44'),
	(14, 1, NULL, '2019-12-01 12:02:43'),
	(18, 2, NULL, '2019-12-06 20:49:51'),
	(19, 5, NULL, '2019-12-06 21:56:38'),
	(20, 4, NULL, '2019-12-07 15:18:24'),
	(21, 6, NULL, '2019-12-08 10:10:50'),
	(23, 8, NULL, '2019-12-08 11:30:28');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.mapel
CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `statusujian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.mapel: ~0 rows (lebih kurang)
DELETE FROM `mapel`;
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` (`id_mapel`, `idpk`, `idguru`, `nama`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `level`, `opsi`, `kelas`, `date`, `status`, `statusujian`) VALUES
	(1, 'semua', '227', 'PRODUKTIFTKJ', 40, 5, 40, 5, 100, 100, 'semua', 5, 'a:1:{i:0;s:5:"semua";}', '2019-12-01 12:03:25', '1', NULL);
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.mata_pelajaran
CREATE TABLE IF NOT EXISTS `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.mata_pelajaran: ~8 rows (lebih kurang)
DELETE FROM `mata_pelajaran`;
/*!40000 ALTER TABLE `mata_pelajaran` DISABLE KEYS */;
INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`, `mata_pelajaran_id`) VALUES
	('001', '001', NULL),
	('CMD', 'CMD', NULL),
	('Gambartekniktkr', 'Gambartekniktkr', NULL),
	('KelistrikanTKR', 'KelistrikanTKR', NULL),
	('PJOK', 'PJOK', NULL),
	('PMKR', 'PMKR', NULL),
	('PPKN', 'PPKN', NULL),
	('PRODUKTIFTKJ', 'PRODUKTIFTKJ', NULL),
	('ProduktifTKR', 'ProduktifTKR', NULL),
	('SEJARAH', 'SEJARAH', NULL);
/*!40000 ALTER TABLE `mata_pelajaran` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.nilai
CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `hasil` int(2) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.nilai: ~4 rows (lebih kurang)
DELETE FROM `nilai`;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.pengacak
CREATE TABLE IF NOT EXISTS `pengacak` (
  `id_pengacak` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pengacak`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.pengacak: ~1 rows (lebih kurang)
DELETE FROM `pengacak`;
/*!40000 ALTER TABLE `pengacak` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengacak` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.pengawas
CREATE TABLE IF NOT EXISTS `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.pengawas: ~2 rows (lebih kurang)
DELETE FROM `pengawas`;
/*!40000 ALTER TABLE `pengawas` DISABLE KEYS */;
INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `jabatan`, `username`, `password`, `level`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`, `ptk_id`, `password2`) VALUES
	(1, '-', 'administrator', '', 'admin', '$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im', 'admin', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', NULL, NULL),
	(227, '-', 'PAJAR SIDIK N', NULL, 'pajarsidikn', '12345', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `pengawas` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.pengumuman
CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.pengumuman: ~0 rows (lebih kurang)
DELETE FROM `pengumuman`;
/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
INSERT INTO `pengumuman` (`id_pengumuman`, `type`, `judul`, `user`, `text`, `date`) VALUES
	(1, 'internal', 'aaaaa', 9, '<p>aaaaaaaaaaaaaaaaa</p>', '2019-10-22 09:49:22');
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.pk
CREATE TABLE IF NOT EXISTS `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.pk: ~3 rows (lebih kurang)
DELETE FROM `pk`;
/*!40000 ALTER TABLE `pk` DISABLE KEYS */;
INSERT INTO `pk` (`id_pk`, `program_keahlian`, `jurusan_id`) VALUES
	('MM', 'MM', NULL),
	('TKJ', 'TKJ', NULL),
	('TKR', 'TKR', NULL),
	('TP', 'TP', NULL);
/*!40000 ALTER TABLE `pk` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.referensi_jurusan
CREATE TABLE IF NOT EXISTS `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.referensi_jurusan: ~0 rows (lebih kurang)
DELETE FROM `referensi_jurusan`;
/*!40000 ALTER TABLE `referensi_jurusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `referensi_jurusan` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.ruang
CREATE TABLE IF NOT EXISTS `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.ruang: ~0 rows (lebih kurang)
DELETE FROM `ruang`;
/*!40000 ALTER TABLE `ruang` DISABLE KEYS */;
INSERT INTO `ruang` (`kode_ruang`, `keterangan`) VALUES
	('R1', 'R1'),
	('R2', 'R2');
/*!40000 ALTER TABLE `ruang` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.savsoft_options
CREATE TABLE IF NOT EXISTS `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.savsoft_options: ~0 rows (lebih kurang)
DELETE FROM `savsoft_options`;
/*!40000 ALTER TABLE `savsoft_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `savsoft_options` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.savsoft_qbank
CREATE TABLE IF NOT EXISTS `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.savsoft_qbank: ~0 rows (lebih kurang)
DELETE FROM `savsoft_qbank`;
/*!40000 ALTER TABLE `savsoft_qbank` DISABLE KEYS */;
/*!40000 ALTER TABLE `savsoft_qbank` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.semester
CREATE TABLE IF NOT EXISTS `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.semester: ~0 rows (lebih kurang)
DELETE FROM `semester`;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.server
CREATE TABLE IF NOT EXISTS `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.server: ~5 rows (lebih kurang)
DELETE FROM `server`;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` (`kode_server`, `nama_server`, `status`) VALUES
	('R1', 'SERVER R1', 'aktif'),
	('R2', 'SERVER R2', 'aktif'),
	('ONLINE', 'ONLINE', 'aktif'),
	('SR01', 'SR01', 'aktif'),
	('SR02', 'SR02', 'aktif');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.sesi
CREATE TABLE IF NOT EXISTS `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.sesi: ~0 rows (lebih kurang)
DELETE FROM `sesi`;
/*!40000 ALTER TABLE `sesi` DISABLE KEYS */;
INSERT INTO `sesi` (`kode_sesi`, `nama_sesi`) VALUES
	('1', '1'),
	('2', '2'),
	('3', '3');
/*!40000 ALTER TABLE `sesi` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.session
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.session: ~0 rows (lebih kurang)
DELETE FROM `session`;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `db_folder` varchar(50) DEFAULT NULL,
  `db_host` varchar(50) DEFAULT NULL,
  `db_user` varchar(50) DEFAULT NULL,
  `db_pass` varchar(50) DEFAULT NULL,
  `db_name` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.setting: ~0 rows (lebih kurang)
DELETE FROM `setting`;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `db_folder`, `db_host`, `db_user`, `db_pass`, `db_name`, `sekolah_id`, `npsn`) VALUES
	(1, 'CaNdY SchooL', 'SR0', 'CANDY SCHOOL', 'SMK', 'Dedi Baidillah, S.Pd, M.Pd', '-', 'IO : 503.15/015/IV/SK-SMK/BPMPPT/2013; NPSN: 69787351 ; NSS : 402022210005<br />\r\nJL.Buyut Kaipah .Pulo Bambu Karang Bahagia Kec.Karang Bahagia Kab. Bekasi <br />\r\n', 'Karang Bahagia      ', 'Bekasi', '021 123 123 123', '021 95878050', 'smkhsagung.sch.id', 'smkhsagung@gmail.com', 'dist/img/logo42.png', '', 'KARTU PESERTA\nUJIAN SEKOLAH BERBASIS KOMPUTER', 'Penilaian Harian Semester', '2.5', 'http://192.168.0.200/candycbt', 'Asia/Jakarta', 'pusat', 'SR01', 'candycbt', '103.242.106.130', 'candy', 'candycbt', 'cbtcandy26', '8cce47df-aae7-4274-83cb-5af3093eab56', '69787351');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.sinkron
CREATE TABLE IF NOT EXISTS `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel cbtcandy26.sinkron: ~6 rows (lebih kurang)
DELETE FROM `sinkron`;
/*!40000 ALTER TABLE `sinkron` DISABLE KEYS */;
INSERT INTO `sinkron` (`nama_data`, `jumlah`, `tanggal`, `status_sinkron`) VALUES
	('DATA1', '', '', 0),
	('DATA2', '', '', 0),
	('DATA3', '', '', 0),
	('DATA4', '', '', 0),
	('DATA5', '', '', 0),
	('DATA6', '', '', 0);
/*!40000 ALTER TABLE `sinkron` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.siswa: ~125 rows (lebih kurang)
DELETE FROM `siswa`;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `idpk`, `nis`, `no_peserta`, `nama`, `level`, `ruang`, `sesi`, `username`, `password`, `foto`, `server`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `hp`, `email`, `skhun`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nohp_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nohp_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `nisn`, `peserta_didik_id`, `semester_id`, `rombongan_belajar_id`) VALUES
	(1, 'XIITP', 'TP', '151610041', '12-248-001-8', 'Ade Saputra', 'XII', 'R1', 1, 'hs001', 'ps001', 'siswa.png', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'XIITP', 'TP', '151610043', '12-248-002-7', 'Ahmad Fauzi', 'XII', 'R1', 1, 'hs002', 'ps002', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'XIITP', 'TP', '151610044', '12-248-003-6', 'Ahmad Fauzi', 'XII', 'R1', 1, 'hs003', 'ps003', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'XIITP', 'TP', '151610045', '12-248-004-5', 'Ahmad Juliansyah', 'XII', 'R1', 1, 'hs004', 'ps004', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'XIITP', 'TP', '151610047', '12-248-005-4', 'Algi Julian', 'XII', 'R1', 1, 'hs005', 'ps005', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'XIITP', 'TP', '151610048', '12-248-006-3', 'Anas Aditya', 'XII', 'R1', 1, 'hs006', 'ps006', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'XIITP', 'TP', '151610049', '12-248-007-2', 'Andre Irawan', 'XII', 'R1', 1, 'hs007', 'ps007', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'XIITP', 'TP', '151610042', '12-248-008-9', 'Andrian Al Viansyah', 'XII', 'R1', 1, 'hs008', 'ps008', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'XIITP', 'TP', '151610050', '12-248-009-8', 'Andrian Maulana', 'XII', 'R1', 1, 'hs009', 'ps009', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'XIITP', 'TP', '151610051', '12-248-010-7', 'Bambang Reza Umbara', 'XII', 'R1', 1, 'hs010', 'ps010', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'XIITP', 'TP', '151610052', '12-248-011-6', 'Ferdi Hasan', 'XII', 'R1', 1, 'hs011', 'ps011', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 'XIITP', 'TP', '151610053', '12-248-012-5', 'Guntur Adthia Bagaskara', 'XII', 'R1', 1, 'hs012', 'ps012', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 'XIITP', 'TP', '151610055', '12-248-013-4', 'Harun Syahroji Iqmal', 'XII', 'R1', 2, 'hs013', 'ps013', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'XIITP', 'TP', '151610054', '12-248-014-3', 'Haryadi Sajali', 'XII', 'R1', 2, 'hs014', 'ps014', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'XIITP', 'TP', '151610057', '12-248-015-2', 'Ismail', 'XII', 'R1', 2, 'hs015', 'ps015', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 'XIITP', 'TP', '151610062', '12-248-016-9', 'Muchtar Gana', 'XII', 'R1', 2, 'hs016', 'ps016', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 'XIITP', 'TP', '151610058', '12-248-017-8', 'Muhamad Abdul Rahman', 'XII', 'R1', 2, 'hs017', 'ps017', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'XIITP', 'TP', '151610063', '12-248-018-7', 'Muhamad Ali Hapijudin', 'XII', 'R1', 2, 'hs018', 'ps018', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'XIITP', 'TP', '151610065', '12-248-019-6', 'Muhamad Rizal', 'XII', 'R1', 2, 'hs019', 'ps019', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'XIITP', 'TP', '151610066', '12-248-020-5', 'Muhammad Niji Yuki Huda Sabillah', 'XII', 'R1', 2, 'hs020', 'ps020', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'XIITP', 'TP', '151610059', '12-248-021-4', 'Muhammad Ogi Prayoga S.', 'XII', 'R1', 2, 'hs021', 'ps021', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'XIITP', 'TP', '151610067', '12-248-022-3', 'Niko', 'XII', 'R1', 2, 'hs022', 'ps022', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'XIITP', 'TP', '151610068', '12-248-023-2', 'Rahma Ahmada', 'XII', 'R1', 2, 'hs023', 'ps023', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'XIITP', 'TP', '151610070', '12-248-024-9', 'Renaldi', 'XII', 'R1', 2, 'hs024', 'ps024', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'XIITP', 'TP', '151610069', '12-248-025-8', 'Renaldi', 'XII', 'R1', 2, 'hs025', 'ps025', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 'XIITP', 'TP', '151610072', '12-248-026-7', 'Rico Dwi Addrian Fattah', 'XII', 'R1', 2, 'hs026', 'ps026', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 'XIITP', 'TP', '151610073', '12-248-027-6', 'Riki Riyanto', 'XII', 'R1', 2, 'hs027', 'ps027', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'XIITP', 'TP', '151610074', '12-248-028-5', 'Riki S', 'XII', 'R1', 2, 'hs028', 'ps028', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 'XIITP', 'TP', '151610075', '12-248-029-4', 'Rudi Hartono', 'XII', 'R1', 2, 'hs029', 'ps029', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 'XIITP', 'TP', '151610076', '12-248-030-3', 'Saipul Anwar', 'XII', 'R1', 3, 'hs030', 'ps030', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'XIITP', 'TP', '151610077', '12-248-031-2', 'Satya Pratama', 'XII', 'R1', 3, 'hs031', 'ps031', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'XIITP', 'TP', '151610078', '12-248-032-9', 'Sutrisno', 'XII', 'R1', 3, 'hs032', 'ps032', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'XIITP', 'TP', '151610079', '12-248-033-8', 'Syarif', 'XII', 'R1', 3, 'hs033', 'ps033', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'XIITP', 'TP', '151610081', '12-248-034-7', 'Yobi Pratama', 'XII', 'R1', 3, 'hs034', 'ps034', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 'XIITKR', 'TKR', '151610083', '12-248-035-6', 'Adittiya', 'XII', 'R1', 3, 'hs035', 'ps035', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 'XIITKR', 'TKR', '151610084', '12-248-036-5', 'Aef saefullah EDK', 'XII', 'R1', 3, 'hs036', 'ps036', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'XIITKR', 'TKR', '151610085', '12-248-037-4', 'Ahmad', 'XII', 'R1', 3, 'hs037', 'ps037', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'XIITKR', 'TKR', '151610086', '12-248-038-3', 'Ahmad dani', 'XII', 'R1', 3, 'hs038', 'ps038', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'XIITKR', 'TKR', '151610089', '12-248-039-2', 'Amar', 'XII', 'R1', 3, 'hs039', 'ps039', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'XIITKR', 'TKR', '151610090', '12-248-040-9', 'Andi', 'XII', 'R1', 3, 'hs040', 'ps040', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'XIITKR', 'TKR', '151610091', '12-248-041-8', 'Anggi Julian Purnama', 'XII', 'R1', 3, 'hs041', 'ps041', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'XIITKR', 'TKR', '151610092', '12-248-042-7', 'Ardiansyah', 'XII', 'R1', 3, 'hs042', 'ps042', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'XIITKR', 'TKR', '151610093', '12-248-043-6', 'Aryanto', 'XII', 'R1', 3, 'hs043', 'ps043', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'XIITKR', 'TKR', '151610094', '12-248-044-5', 'Awaludin', 'XII', 'R1', 3, 'hs044', 'ps044', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'XIITKR', 'TKR', '151610096', '12-248-045-4', 'Dede Ahmad Pauji', 'XII', 'R1', 3, 'hs045', 'ps045', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'XIITKR', 'TKR', '151610099', '12-248-046-3', 'Egi Ariansyah', 'XII', 'R1', 3, 'hs046', 'ps046', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'XIITKR', 'TKR', '151610100', '12-248-047-2', 'Erdin', 'XII', 'R1', 3, 'hs047', 'ps047', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 'XIITKR', 'TKR', '151610101', '12-248-048-9', 'Fajar Ramadhan', 'XII', 'R1', 3, 'hs048', 'ps048', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 'XIITKR', 'TKR', '151610102', '12-248-049-8', 'Fiky Zulfikar', 'XII', 'R1', 3, 'hs049', 'ps049', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 'XIITKR', 'TKR', '151610103', '12-248-050-7', 'Habibi', 'XII', 'R1', 3, 'hs050', 'ps050', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(51, 'XIITKR', 'TKR', '151610104', '12-248-051-6', 'Handriyansyah Wijaya', 'XII', 'R1', 3, 'hs051', 'ps051', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(52, 'XIITKR', 'TKR', '151610128', '12-248-052-5', 'Herlangga Supardi', 'XII', 'R1', 3, 'hs052', 'ps052', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(53, 'XIITKR', 'TKR', '151610106', '12-248-053-4', 'Ibnu Mujahidin', 'XII', 'R1', 3, 'hs053', 'ps053', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(54, 'XIITKR', 'TKR', '151610107', '12-248-054-3', 'Kasan Wijaya Kusuma', 'XII', 'R1', 3, 'hs054', 'ps054', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(55, 'XIITKR', 'TKR', '151610109', '12-248-055-2', 'Muhamad Aldi Ardiansyah', 'XII', 'R1', 3, 'hs055', 'ps055', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(56, 'XIITKR', 'TKR', '151610108', '12-248-056-9', 'Muhammad Sutrisno', 'XII', 'R1', 1, 'hs056', 'ps056', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(57, 'XIITKR', 'TKR', '151610110', '12-248-057-8', 'Muhammad Ramdan', 'XII', 'R1', 1, 'hs057', 'ps057', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(58, 'XIITKR', 'TKR', '151610111', '12-248-058-7', 'Nur Arifin', 'XII', 'R1', 1, 'hs058', 'ps058', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(59, 'XIITKR', 'TKR', '151610112', '12-248-059-6', 'Riyo Wijaya', 'XII', 'R1', 1, 'hs059', 'ps059', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(60, 'XIITKR', 'TKR', '151610113', '12-248-060-5', 'Rizal Maulana Aziz', 'XII', 'R1', 1, 'hs060', 'ps060', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(61, 'XIITKR', 'TKR', '151610114', '12-248-061-4', 'Robi Darwis', 'XII', 'R1', 1, 'hs061', 'ps061', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 'XIITKR', 'TKR', '151610115', '12-248-062-3', 'Roni Sahroni', 'XII', 'R1', 1, 'hs062', 'ps062', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(63, 'XIITKR', 'TKR', '151610117', '12-248-063-2', 'Saemi Al Rasyid', 'XII', 'R1', 1, 'hs063', 'ps063', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(64, 'XIITKR', 'TKR', '151610118', '12-248-064-9', 'Said Abdullah', 'XII', 'R1', 1, 'hs064', 'ps064', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(65, 'XIITKR', 'TKR', '151610119', '12-248-065-8', 'Saripudin', 'XII', 'R1', 1, 'hs065', 'ps065', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(66, 'XIITKR', 'TKR', '151610123', '12-248-066-7', 'Ahmad Faisal', 'XII', 'R1', 1, 'hs066', 'ps066', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(67, 'XIITKR', 'TKR', '151610124', '12-248-067-6', 'Aksal Sobari', 'XII', 'R1', 1, 'hs067', 'ps067', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(68, 'XIITKR', 'TKR', '151610125', '12-248-068-5', 'Alfian', 'XII', 'R1', 1, 'hs068', 'ps068', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(69, 'XIITKR', 'TKR', '151610126', '12-248-069-4', 'Arsad sopian', 'XII', 'R1', 1, 'hs069', 'ps069', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(70, 'XIITKR', 'TKR', '151610127', '12-248-070-3', 'Dede Maulana', 'XII', 'R1', 1, 'hs070', 'ps070', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(71, 'XIITKR', 'TKR', '151610129', '12-248-071-2', 'Junaedi', 'XII', 'R1', 1, 'hs071', 'ps071', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(72, 'XIITKR', 'TKR', '151610168', '12-248-072-9', 'Muhamad Fikri Fahmi Kurniadi', 'XII', 'R1', 1, 'hs072', 'ps072', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(73, 'XIITKR', 'TKR', '151610130', '12-248-073-8', 'Muhamad Kevin Fadli Fauzi', 'XII', 'R1', 2, 'hs073', 'ps073', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(74, 'XIITKR', 'TKR', '151610132', '12-248-074-7', 'Muhamad Rifki Saputra', 'XII', 'R1', 2, 'hs074', 'ps074', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(75, 'XIITKR', 'TKR', '151610133', '12-248-075-6', 'Padrul Cahyadi', 'XII', 'R1', 2, 'hs075', 'ps075', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(76, 'XIITKR', 'TKR', '151610169', '12-248-076-5', 'Pentin Alamsyah', 'XII', 'R1', 2, 'hs076', 'ps076', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(77, 'XIITKR', 'TKR', '151610134', '12-248-077-4', 'Sobri Saputra', 'XII', 'R1', 2, 'hs077', 'ps077', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(78, 'XIITKR', 'TKR', '151610135', '12-248-078-3', 'Sukendar', 'XII', 'R1', 2, 'hs078', 'ps078', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(79, 'XIITKR', 'TKR', '151610120', '12-248-079-2', 'Teguh Nur Sidik', 'XII', 'R1', 2, 'hs079', 'ps079', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(80, 'XIITKR', 'TKR', '151610136', '12-248-080-9', 'Tubagus M. Al-Fajri', 'XII', 'R1', 2, 'hs080', 'ps080', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(81, 'XIITKR', 'TKR', '151610166', '12-248-081-8', 'Wahyu Pratama', 'XII', 'R1', 2, 'hs081', 'ps081', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 'XIITKR', 'TKR', '151610172', '12-248-082-7', 'Wahyudin AZ.', 'XII', 'R1', 2, 'hs082', 'ps082', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(83, 'XIITKR', 'TKR', '151610138', '12-248-083-6', 'Wiro Sugianto', 'XII', 'R1', 2, 'hs083', 'ps083', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(84, 'XIITKR', 'TKR', '151610121', '12-248-084-5', 'Yogi Priyogo', 'XII', 'R1', 2, 'hs084', 'ps084', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 'XIITKR', 'TKR', '151610139', '12-248-085-4', 'Yuda Saputra', 'XII', 'R1', 2, 'hs085', 'ps085', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(86, 'XIITKR', 'TKR', '151610140', '12-248-086-3', 'Yuwanda Musyaddir', 'XII', 'R1', 2, 'hs086', 'ps086', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(87, 'XIITKJ', 'TKJ', '151610001', '12-248-087-2', 'Anggi Gian Sapitri', 'XII', 'R1', 2, 'hs087', 'ps087', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(88, 'XIITKJ', 'TKJ', '151610002', '12-248-088-9', 'Cindy Apriana', 'XII', 'R1', 2, 'hs088', 'ps088', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(89, 'XIITKJ', 'TKJ', '151610003', '12-248-089-8', 'Dwi Lestari', 'XII', 'R1', 2, 'hs089', 'ps089', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(90, 'XIITKJ', 'TKJ', '151610004', '12-248-090-7', 'Ebih', 'XII', 'R1', 2, 'hs090', 'ps090', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(91, 'XIITKJ', 'TKJ', '151610005', '12-248-091-6', 'Elis Saeti Nuraeni', 'XII', 'R1', 3, 'hs091', 'ps091', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(92, 'XIITKJ', 'TKJ', '151610006', '12-248-092-5', 'Euis Susilawati', 'XII', 'R1', 3, 'hs092', 'ps092', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(93, 'XIITKJ', 'TKJ', '151610007', '12-248-093-4', 'Fahmi arni', 'XII', 'R1', 3, 'hs093', 'ps093', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(94, 'XIITKJ', 'TKJ', '151610008', '12-248-094-3', 'Fitri Widiasari', 'XII', 'R1', 3, 'hs094', 'ps094', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(95, 'XIITKJ', 'TKJ', '151610009', '12-248-095-2', 'Gaby Cantika Oktavia', 'XII', 'R1', 3, 'hs095', 'ps095', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(96, 'XIITKJ', 'TKJ', '151610010', '12-248-096-9', 'Haena Hermawati Yuningsih', 'XII', 'R1', 3, 'hs096', 'ps096', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(97, 'XIITKJ', 'TKJ', '151610011', '12-248-097-8', 'Karlina', 'XII', 'R1', 3, 'hs097', 'ps097', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(98, 'XIITKJ', 'TKJ', '151610012', '12-248-098-7', 'Kurniawati', 'XII', 'R1', 3, 'hs098', 'ps098', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(99, 'XIITKJ', 'TKJ', '151610013', '12-248-099-6', 'Ladina al zannah chandra', 'XII', 'R1', 3, 'hs099', 'ps099', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(100, 'XIITKJ', 'TKJ', '151610014', '12-248-100-5', 'Laras Ayu Asmanih', 'XII', 'R1', 3, 'hs100', 'ps100', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(101, 'XIITKJ', 'TKJ', '151610015', '12-248-101-4', 'Lastri Septriani', 'XII', 'R1', 3, 'hs101', 'ps101', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(102, 'XIITKJ', 'TKJ', '151610016', '12-248-102-3', 'Lisah Fitri Kurnia', 'XII', 'R1', 3, 'hs102', 'ps102', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(103, 'XIITKJ', 'TKJ', '151610018', '12-248-103-2', 'Lutfi Wisti Nandasari', 'XII', 'R2', 3, 'hs103', 'ps103', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(104, 'XIITKJ', 'TKJ', '151610019', '12-248-104-9', 'Maya Karmanih', 'XII', 'R2', 3, 'hs104', 'ps104', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(105, 'XIITKJ', 'TKJ', '151610020', '12-248-105-8', 'Mayang Sari', 'XII', 'R2', 3, 'hs105', 'ps105', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(106, 'XIITKJ', 'TKJ', '151610021', '12-248-106-7', 'Mayang Sari Wati', 'XII', 'R2', 3, 'hs106', 'ps106', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(107, 'XIITKJ', 'TKJ', '151610022', '12-248-107-6', 'Megawati', 'XII', 'R2', 1, 'hs107', 'ps107', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(108, 'XIITKJ', 'TKJ', '151610023', '12-248-108-5', 'Narsih Agus Priyanti', 'XII', 'R2', 1, 'hs108', 'ps108', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(109, 'XIITKJ', 'TKJ', '151610024', '12-248-109-4', 'Nuraina', 'XII', 'R2', 1, 'hs109', 'ps109', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(110, 'XIITKJ', 'TKJ', '151610025', '12-248-110-3', 'Pita Kaputri', 'XII', 'R2', 1, 'hs110', 'ps110', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(111, 'XIITKJ', 'TKJ', '151610026', '12-248-111-2', 'Putri Ayu Lestari', 'XII', 'R2', 1, 'hs111', 'ps111', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(112, 'XIITKJ', 'TKJ', '151610027', '12-248-112-9', 'Putri Hagita', 'XII', 'R2', 1, 'hs112', 'ps112', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(113, 'XIITKJ', 'TKJ', '151610028', '12-248-113-8', 'Rasti', 'XII', 'R2', 1, 'hs113', 'ps113', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(114, 'XIITKJ', 'TKJ', '151610029', '12-248-114-7', 'Rizky Khofifah', 'XII', 'R2', 1, 'hs114', 'ps114', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(115, 'XIITKJ', 'TKJ', '151610030', '12-248-115-6', 'Sahroni', 'XII', 'R2', 1, 'hs115', 'ps115', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(116, 'XIITKJ', 'TKJ', '151610031', '12-248-116-5', 'Samah Maesaroh', 'XII', 'R2', 1, 'hs116', 'ps116', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(117, 'XIITKJ', 'TKJ', '151610032', '12-248-117-4', 'Sarmila Febyola Putri', 'XII', 'R2', 1, 'hs117', 'ps117', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(118, 'XIITKJ', 'TKJ', '151610033', '12-248-118-3', 'Silpi Damayanti', 'XII', 'R2', 1, 'hs118', 'ps118', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(119, 'XIITKJ', 'TKJ', '151610034', '12-248-119-2', 'Siti Kartini', 'XII', 'R2', 1, 'hs119', 'ps119', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(120, 'XIITKJ', 'TKJ', '151610035', '12-248-120-9', 'Siti Masitoh', 'XII', 'R2', 1, 'hs120', 'ps120', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(121, 'XIITKJ', 'TKJ', '151610036', '12-248-121-8', 'Suci Selawati', 'XII', 'R2', 2, 'hs121', 'ps121', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(122, 'XIITKJ', 'TKJ', '151610037', '12-248-122-7', 'Tania Pratika', 'XII', 'R2', 2, 'hs122', 'ps122', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(123, 'XIITKJ', 'TKJ', '151610038', '12-248-123-6', 'Tarsimah D.', 'XII', 'R2', 2, 'hs123', 'ps123', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(124, 'XIITKJ', 'TKJ', '151610039', '12-248-124-5', 'Trisna Shalamshah', 'XII', 'R2', 2, 'hs124', 'ps124', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(125, 'XIITKJ', 'TKJ', '151610040', '12-248-125-4', 'Yoga Maulana Atmaja', 'XII', 'R2', 2, 'hs125', 'ps125', '', 'SR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.soal
CREATE TABLE IF NOT EXISTS `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `file1` longtext DEFAULT NULL,
  `fileA` longtext DEFAULT NULL,
  `fileB` longtext DEFAULT NULL,
  `fileC` longtext DEFAULT NULL,
  `fileD` longtext DEFAULT NULL,
  `fileE` longtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel cbtcandy26.soal: ~44 rows (lebih kurang)
DELETE FROM `soal`;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` (`id_soal`, `id_mapel`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `jawaban`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`) VALUES
	(2, 1, 2, '<p>Jika komputer pada saat POST mengeluarkan bunyi 1 beep panjang dan 3 beep pendek, berarti ....</p>', 1, '<p>Kerusakan di modul DRAM parity</p>', '<p>Kerusakan di bagian VGA</p>', '<p>Problem di memori</p>', '<p>PC dalam keadaan baik</p>', '<p>Kerusakan di modul memori atau memori video</p>', 'C', 'gambar4.jpg', '', 'gambar1.png', 'gambar1.png', 'gambar1.png', 'gambar1.png', 'gambar1.png'),
	(3, 1, 3, '<p>Nama service untuk memberikan IP secara otomatis adalah&hellip;</p>', 1, '<p>POP3</p>', '<p>Apache</p>', '<p>DHCP3</p>', '<p>Bind9</p>', '<p>Squid</p>', 'C', '', '', '', '', '', '', ''),
	(4, 1, 4, 'Keuntungan menggunakan media transmisi jaringan tanpa kabel / Wireless adalah....', 1, 'Boros Kabel', 'Biaya peralatan dan peripherial relatif mahal', 'Kemampuan transfer data lebih kecil dari jaringan kabel', 'Keamanan data masih belum terjamin karena masih dimungkinkan dilakukan penyadapan', 'Teknologi wireles memungkinkan untuk mengakses internet lebih murah dibanding dengan sistem dial up atau leased line', 'E', '', '', '', '', '', '', ''),
	(5, 1, 5, 'Terjadinya tabrakan pengiriman data pada suatu jaringan komputer dikenal dengan istilah…', 1, 'Collision', 'Fusion', 'Broken', 'Attacking', 'Explode', 'A', '', '', '', '', '', '', ''),
	(6, 1, 6, 'Dua software yang digunakan untuk boot loader adalah.....', 1, 'GRUB dan FIFO', 'GRUB dan LIFO', 'GRUB dan LILO', 'LIFO dan SWAP', 'LILO dan SWAP', 'C', '', '', '', '', '', '', ''),
	(7, 1, 7, 'Kemampuan sistem operasi untuk menjalankan berbagai perintah dalam waktu bersamaan disebut.....', 1, 'Multi user', 'Pipelining', 'Threading', 'Multitasking', 'Management', 'D', '', '', '', '', '', '', ''),
	(8, 1, 8, 'Tipe file yang digunakan oleh linux secara umum adalah …', 1, 'INF', 'FAT', 'FAT32', 'NTFS', 'EXT3', 'E', '', '', '', '', '', '', ''),
	(9, 1, 9, 'Sistem file yang disediakan oleh Windows XP dalam format hardisk adalah :', 1, 'FAT dan System', 'NTFS dan FAT', 'System dan NTFS', 'System dan DOS', 'DOS dan FAT', 'B', '', '', '', '', '', '', ''),
	(10, 1, 10, 'Perintah append firewall di linux yang memperbolehkan akses service web http adalah…', 1, '# iptables -A goodtcp -p TCP -m state -state ESTABLISHED, RELATED, j ACCEPTED', '# iptables -A goodtcp -p TCP -syn -j ACCEPT', '# iptables -A INPUT -p UDP -s 0/0 -dport 53 -j ACCEPT', '# iptables -A INPUT -P TCP -s 0/0 -dport 80 -j ACCEPT', '# iptables -I INPUT -s $BAD_IP/32 -j DROP', 'D', '', '', '', '', '', '', ''),
	(11, 1, 11, 'apt-get install postfix salah  satu  tahapan untuk konfigurasi …', 1, 'DNS Server', 'MySql server', 'Database server', 'SSH server', 'Webmail server', 'E', '', '', '', '', '', '', ''),
	(12, 1, 12, 'Jika diketahui IP address 204.15.15.7 netmask 255.255.255.128, berapa jumlah host yang dapat digunakan untuk jaringan tersebut …', 1, '62', '126', '128', '256', '512', 'B', '', '', '', '', '', '', ''),
	(13, 1, 13, 'Suatu jaringan local dengan ip address 193.17.17.6/27, IP broadcastnya adalah…', 1, '193.17.17.0', '193.17.17.31', '193.17.17.51', '193.17.17.224', '255255255224', 'B', '', '', '', '', '', '', ''),
	(14, 1, 14, 'Kerusakan yang sering terjadi pada keyboard jika mencul tulisan di layar Keyboard "error or no keyboard present" Maksud dari kalimat itu adalah....', 1, 'Tombol keyboard macet saat ditekan', 'Keyboard meminta untuk dibersihkan', 'Port keyboard pada motherboard rusak', 'Keyboard tidak terdeteksi oleh PC', 'Kabel keyboard putus', 'D', '', '', '', '', '', '', ''),
	(15, 1, 15, 'Alat yang digunakan sebagai pengaman CPU terhadap lonjakan tegangan jala-jala listrik maupun listrik yang tiba-tiba padam adalah ….', 1, 'UPS', 'Power supply', 'Adaptor', 'Generator', 'Kontaktor', 'A', '', '', '', '', '', '', ''),
	(16, 1, 16, 'Perintah linux untuk mengarahkan dari port http ke port proxy adalah…', 1, 'iptables -t nat -D PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -m tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -s nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128', 'iptables -t nat -A PREROUTING -s 192.168.55.0/24 -d tcp --dport 80 -j REDIRECT --to-ports 3128', 'C', '', '', '', '', '', '', ''),
	(17, 1, 17, 'Utilitas berupa program cadangan yang pertama kali ditulis oleh Igor Romanenko, digunakan untuk pembuangan data sebuah database atau kumpulan database, disebut…', 1, 'MySQLDump', 'Backup Physic', 'Backup offline', 'Backup Logika', 'Backup online', 'A', '', '', '', '', '', '', ''),
	(18, 1, 18, 'Mengambil datatabase dalam bentuk fisik, untuk database yang menggunakan Appserv secara fisik data disimpan pada folder C:\\Appserv\\Mysql\\data\\, disebut', 1, 'Backup logika', 'Backup Physic', 'Backup offline', 'MysqlBackup', 'Backup online', 'B', '', '', '', '', '', '', ''),
	(19, 1, 19, 'Untuk melakukan perawatan PC menggunakan Disk Cleanup yang ada pada Windows, file-file yang tidak diperlukan,dapat dihapus dengan cara ….', 1, 'start > accessories > system tools > disk cleanup', 'accessories > system tools > start > disk cleanup', 'system tools > start > accessories > disk cleanup', 'start > system tools > accessories > disk cleanup', 'system tools > accessories > start > disk clean', 'A', '', '', '', '', '', '', ''),
	(20, 1, 20, 'Untuk menghubungkan komputer dengan Komputer digunakan kabel UTP dengan susunan ....', 1, 'rollover', 'straight', 'serial', 'crossover', 'DTE', 'D', '', '', '', '', '', '', ''),
	(21, 1, 21, 'Hasil konversi dari bilangan biner 101011 ke bilangan decimal adalah…', 1, '31', '34', '37', '40', '43', 'E', '', '', '', '', '', '', ''),
	(22, 1, 22, 'Salah satu jenis printer yang menggunakan metode hentakan jarum pada pita disebut …', 1, 'Printer inkjet', 'Printer laserjet', 'Printer dotmatrix', 'Printer bubblejet', 'Plotter', 'C', '', '', '', '', '', '', ''),
	(23, 1, 23, 'Apabila dari perintah ping muncul keterangan "Request timed out" berarti…', 1, 'Hubungan kedua komputer berjalan secara normal.', 'Hubungan kedua komputer terputus', 'Topologi jaringan tidak sesuai', 'Internet tidak terhubung', 'Masalah pada server', 'B', '', '', '', '', '', '', ''),
	(24, 1, 24, 'Rumus dari gerbang logika AND adalah …', 1, 'Y = A * B', 'Y = A / B', 'Y = A + B', 'A = B', 'B = A', 'A', '', '', '', '', '', '', ''),
	(25, 1, 25, 'VARCHAR dan CHAR (M) merupakan kolom MySQL tipe….', 1, 'Numeric', 'Waktu', 'Kosong', 'String', 'Tanggal', 'D', '', '', '', '', '', '', ''),
	(26, 1, 26, 'Urut-urutan 7 layer (dimulai dari layer 1) dalam model Open System Interconnection adalah sebagai berikut :', 1, 'Physical, Session, Network, Transport, Data Link, Presentation, Application', 'Application, Network, Session, Transport, Presentation, Data Link, Physical', 'Physical, Presentation, Network, Transport, Session, Data Link, Application', 'Physical, Data Link, Network, Transport, Session, Presentation, Application', 'Application, Presentation, Session, Transport, Network, Data Link, Physical', 'D', '', '', '', '', '', '', ''),
	(27, 1, 27, 'Fungsi kecil dari router yang gunanya menggandakan IP address sehingga perangkat-perangkat yang ada di belakangnya bisa mengakses jaringan Internet adalah….', 1, 'TCP/IP', 'NAT', 'Gateway', 'Router', 'Brigde', 'B', '', '', '', '', '', '', ''),
	(28, 1, 28, 'Perangkat yang berfungsi mengatur pemilihan jalur terbaik untuk dilewati paket data dikenal sebagai …', 1, 'Switch', 'Router', 'Web server', 'Proxy server', 'Name server', 'B', '', '', '', '', '', '', ''),
	(29, 1, 29, 'Komputer yang bertugas menyimpan informasi halaman web yang pernah diakses sebelumnya adalah …', 1, 'Router', 'Web server', 'Proxy server', 'Name server', 'Database server', 'C', '', '', '', '', '', '', ''),
	(30, 1, 30, 'Apabila suatu peripheral belum terinstal drivernya, pada device manager akan tampil symbol ….', 1, 'Tanda seru (!) warna kuning', 'Tanda X warna merah', 'Tanda seru (!) warna merah', 'Tanda tanya (?) warna kuning', 'Tanda tanya (?) warna merah', 'D', '', '', '', '', '', '', ''),
	(31, 1, 31, 'Gangguan yang  disebabkan oleh tidak berjalannya aplikasi di wireless, konflik IP (Internet Protocol) pada proses proxy server pada server dikelompokkan dalam gangguan ….', 1, 'brainware', 'hardware', 'pemasok daya', 'software', 'user', 'D', '', '', '', '', '', '', ''),
	(32, 1, 32, 'Kombinasi pengkabelan straight pada jaringan komputer yang sesuai dengan standart internasional  adalah...', 1, 'White orange - orange - white green - blue - white blue - green - white brown - brown', 'White orange - orange - white green - green - white blue - blue - white brown - brown', 'White green - green - white orange - blue - white blue - orange - white brown - brown', 'White orange - orange - white green - green - white blue - blue - white brown - brown', 'Orange - white orange - green - white green - white blue - blue - white brown - brown', 'A', '', '', '', '', '', '', ''),
	(33, 1, 33, 'Teknik yang digunakan untuk melindungi jaringan, dengan menyaring membatasi atau bahkan menolak koneksi adalah …', 1, 'Proxy', 'Firewall', 'IP filter', 'Mac Filter', 'Firewire', 'B', '', '', '', '', '', '', ''),
	(34, 1, 34, 'Berapa kecepatan akses data pada access point yang memiliki standar kode IEEE 802.11b …', 1, '11Mb/s', '54Mb/s', '108Mb/s', '216Mb/s', '432Mb/s', 'A', '', '', '', '', '', '', ''),
	(35, 1, 35, 'Yang membedakan paket software free dengan paket berbayar adalah ….', 1, 'pada paket berbayar, ada permintaan memasukkan serial number untuk autentikasi', 'pada paket berbayar, dapat dipastikan kapasitas space besar', 'pada paket free, dapat dipastikan kapasitas space kecil', 'pada paket free, ada permintaan memasukkan serial number untuk autentikasi', 'pada paket berbayar, tidak dibatasi waktu penggunaannya', 'A', '', '', '', '', '', '', ''),
	(36, 1, 36, 'Penulisan IP Address 10.208.15.240 dalam bentuk binary ditulis sebagai berikut …', 1, '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', '1.0101101E+27', 'C', '', '', '', '', '', '', ''),
	(37, 1, 37, 'Sebuah komputer memiliki RAM sebesar 1,0 GB. Jika komputer tersebut akan diinstalasi sistem operasi Linux, swap yang dipasang sebesar ….', 1, '1.0 GB', '1.5 GB', '2.0 GB', '2.5 GB', '3.0 GB', 'A', '', '', '', '', '', '', ''),
	(38, 1, 38, 'Batasan waktu agar paket data tidak mengambang di jaringan disebut.....', 1, 'Request Time Out', 'Time to Live', 'Time to Leave', 'Data Pending', 'Repply for All', 'B', '', '', '', '', '', '', ''),
	(39, 1, 39, 'Signal merewati 2 arah dengan satu kabel, kemungkinan terjadi collision (tabrakan data atau tercampurnya data) besar, adalah kelemahan dari kabel jenis.....', 1, 'Coaxial', 'UTP', 'STP', 'Twisted', 'Unshielded', 'A', '', '', '', '', '', '', ''),
	(40, 1, 40, 'Pada gambar dibawah komputer klien tidak dapat mengakses intenet melalui wireless, tetapi komputer yang terhubung melalui kabel dapat bisa terhubung ke internet, sebabnya adalah...', 1, 'Subnetmask klien salah', 'WEP key klien salah', 'Alamat IP klien salah', 'Default gateway klien salah', 'IP internal router salah', 'D', '', '', '', '', '', '', ''),
	(42, 1, 2, 'Ubahlah nilai berikut kedalam bentuk biner! :\na. Tuliskan netmask nya dalam bentuk decimal\nb. Tuliskan Broadcast ID nya', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(43, 1, 3, 'Sebutkan 3 fungsi dari layer Aplikasi dalam lapisan OSI ?', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(44, 1, 4, 'Apa yang dimaksud dengan jaringan Client - Server?', 2, '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(46, 1, 1, '<p>aaaaaaaaaaaaaaaaaaxxx</p>', 1, '', '', '', '', '', 'A', '', '', '', '', '', '', ''),
	(47, 1, 1, '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
	(48, 1, 5, '<p>bbbbbbbbbbbbbbb</p>', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.token
CREATE TABLE IF NOT EXISTS `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.token: ~0 rows (lebih kurang)
DELETE FROM `token`;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
	(1, 'RYCGJT', '2019-12-02 06:21:52', '00:15:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;

-- membuang struktur untuk table cbtcandy26.ujian
CREATE TABLE IF NOT EXISTS `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `id_pk` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
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
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel cbtcandy26.ujian: ~0 rows (lebih kurang)
DELETE FROM `ujian`;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
INSERT INTO `ujian` (`id_ujian`, `id_pk`, `id_guru`, `id_mapel`, `kode_ujian`, `nama`, `jml_soal`, `jml_esai`, `bobot_pg`, `opsi`, `bobot_esai`, `tampil_pg`, `tampil_esai`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `kelas`, `sesi`, `acak`, `token`, `status`, `hasil`, `kkm`, `ulang`) VALUES
	(4, 'semua', 227, 1, 'PH', 'PRODUKTIFTKJ', 40, 5, 100, 5, 100, 40, 5, 30, '2019-12-06 17:00:00', '2019-12-08 23:00:00', '17:00:00', NULL, 'semua', 'a:1:{i:0;s:5:"semua";}', '1', 1, 0, 1, 1, '50', 0);
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
