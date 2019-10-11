<?php

require("../config/config.default.php");
require("../config/config.function.php");

$exec = mysql_query("TRUNCATE berita");
$beritaQ = mysql_query("SELECT * FROM ujian");
while ($berita = mysql_fetch_array($beritaQ)) {
	$sesi = mysql_num_rows(mysql_query("SELECT * FROM siswa GROUP BY sesi"));
	$ruangq = mysql_query("SELECT * FROM ruang");
	while ($ruang = mysql_fetch_array($ruangq)) {
		for ($i = 1; $i <= $sesi; $i++) {
			$exec = mysql_query("INSERT INTO berita (id_mapel,sesi,ruang,jenis)VALUES('$berita[id_mapel]','$i','$ruang[kode_ruang]','$berita[kode_ujian]')");
		}
	}
}
