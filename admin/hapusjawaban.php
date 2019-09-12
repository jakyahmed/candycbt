<?php

require("../config/config.default.php");
require("../config/config.function.php");
$kode = $_POST['id'];

$exec = mysql_query("DELETE FROM jawaban WHERE id_ujian='$kode'");
