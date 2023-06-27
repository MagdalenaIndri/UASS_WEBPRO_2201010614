<?php 
// koneksi database
include 'config.php';
 
// menangkap data yang di kirim dari form
$judul = $_POST['judul'];
$subjudul = $_POST['sub'];
$blog = $_POST['blog'];
 
// menginput data ke database
mysqli_query($koneksi,"insert into blog values('','$judul','$subjudul','$blog','','','')");
 
// mengalihkan halaman kembali ke index.php
header("location:../admin/index.php?pesan=Proses Sukses Dilakukan! <br>");
 
?>