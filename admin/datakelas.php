<?php
require("../config/config.default.php");
$id_level = $_POST['level'];
$sql = mysql_query("SELECT * FROM kelas WHERE level='" . $id_level . "'");
echo "<option value='semua'>Semua Kelas</option>";
while ($data = mysql_fetch_array($sql)) {
	echo "<option value='$data[id_kelas]'>$data[id_kelas]</option>";
}
