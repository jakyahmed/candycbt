<?php
require("../config/config.default.php");
$id_kelas = $_POST['id_kelas'];
$sql = mysql_query("SELECT * FROM siswa WHERE id_kelas ='$id_kelas' GROUP BY ruang");
echo "<option value=''>Pilih Ruang</option>";
while ($ruang = mysql_fetch_array($sql)) {
	echo "<option value='$ruang[ruang]'>$ruang[ruang]</option>";
}

