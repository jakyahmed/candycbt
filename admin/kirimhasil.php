<?php
require "../config/config.koneksipusat.php";
if ($koneksipusat) {
    $serverpusat = mysqli_fetch_array(mysqli_query($koneksipusat, "select * from server where kode_server='$setting[id_server]'"));
    if ($serverpusat['status'] == 'aktif') {
        $idujian = $_POST['id'];
        //kirim nilai
        $sqlcek = mysqli_query($koneksi, "select * from nilai where status is null and id_ujian='$idujian'");
        while ($r = mysqli_fetch_array($sqlcek)) {

            $sql = mysqli_query($koneksipusat, "insert into nilai (id_mapel,id_ujian,id_siswa,kode_ujian,ujian_mulai,ujian_berlangsung,ujian_selesai,jml_benar,jml_salah,nilai_esai,skor,total,hasil) values ('$r[id_mapel]','$r[id_ujian]','$r[id_siswa]','$r[kode_ujian]','$r[ujian_mulai]','$r[ujian_berlangsung]','$r[ujian_selesai]','$r[jml_benar]','$r[jml_salah]','$r[nilai_esai]','$r[skor]','$r[total]','$r[hasil]')");
            if ($sql) {
                $sql = mysqli_query($koneksi, "update nilai set status = '1' where id_nilai='$r[id_nilai]'");
            }
        }
        //kirim Jawaban
        $sqlcekmapel = mysqli_query($koneksi, "select * from hasil_jawaban where id_ujian='$idujian' and status is null");
        while ($r = mysqli_fetch_array($sqlcekmapel)) {
            $sql = mysqli_query($koneksipusat, "insert into hasil_jawaban (id_mapel,id_siswa,id_soal,id_ujian,jawaban,jenis,esai,nilai_esai) values ('$r[id_mapel]','$r[id_siswa]','$r[id_soal]','$r[id_ujian]','$r[jawaban]','$r[jenis]','$r[esai]','$r[nilai_esai]')");
            if ($sql) {
                $sql = mysqli_query($koneksi, "update hasil_jawaban set status = '1' where id_ujian='$idujian' and status is null ");
            }
        }
    } else {
        echo "server pusat tidak diaktifkan";
    }
} else {
    echo "server tidak terhubung";
}
