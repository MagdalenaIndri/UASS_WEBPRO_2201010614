<?php 
// koneksi database
include 'config.php';
 
// menangkap data yang di kirim dari form
$id = $_POST['id'];
$judul = $_POST['judul'];
$subjudul = $_POST['sub'];
$blog = $_POST['blog'];
// update data ke database
mysqli_query($koneksi,"update blog set judul='$judul', subjudul='$subjudul', blog='$blog' where id='$id'");
 
// mengalihkan halaman kembali ke index.php
header("location:../admin/index.php?pesan=Proses Sukses Dilakukan! <br>");
 
?>