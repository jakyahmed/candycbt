<?php
require "../../config/config.default.php";
$idujian = $_POST['idu'];
$kode_ujian = $_POST['kode_ujian'];
$sesi = $_POST['sesi'];
$nama = $_POST['namamapel'];
$nama = str_replace("'", "&#39;", $nama);
$tglujian = $_POST['tgl_ujian'];
$tglselesai = $_POST['tgl_selesai'];
$lama = $_POST['lama_ujian'];
$waktu = explode(" ", $tglujian);
$waktu = $waktu[1];
$status = $_POST['status'];
$exec = mysqli_query($koneksi, "UPDATE ujian SET sesi='$sesi',nama='$nama',tgl_ujian='$tglujian',tgl_selesai='$tglselesai',waktu_ujian='$waktu',lama_ujian='$lama',status='$status',kode_ujian='$kode_ujian' WHERE id_ujian='$idujian'");
if ($exec) {
    echo "OK";
}
