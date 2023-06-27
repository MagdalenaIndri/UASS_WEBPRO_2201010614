<?php 
// koneksi database
include 'config.php';
 
// menangkap data yang di kirim dari form
$id = $_POST['id'];
$nama = $_POST['tentang'];
 
// update data ke database
mysqli_query($koneksi,"update tentang set tentang='$nama' where id='$id'");
 
// mengalihkan halaman kembali ke index.php
header("location:../admin/about.php?pesan=Update Sukses Dilakukan! <br>");
 
?>