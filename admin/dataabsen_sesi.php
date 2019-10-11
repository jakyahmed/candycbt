<?php
require("../config/config.default.php");
$id_kelas = $_POST['id_kelas'];
$sql = mysql_query("SELECT * FROM siswa WHERE id_kelas ='$id_kelas' GROUP BY sesi");
echo "<option value=''>Pilih Sesi</option>";
while ($sesi = mysql_fetch_array($sql)) {
	echo "<option value='$sesi[sesi]'>$sesi[sesi]</option>";
}