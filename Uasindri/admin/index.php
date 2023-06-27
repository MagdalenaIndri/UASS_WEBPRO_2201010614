<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Indri Blog - My Blog</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" /> -->
  
        
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Administrator</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Data Blog</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/Uasindri/admin/about.php">Halaman About</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
                   <div class="panel panel-headline">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Blog</h3>
                                     <?php
                                if(isset($_GET['pesan'])){?>
                                    <div class="col-sm-12 text-center">
                                        <div class="alert alert-success" role="alert" style="margin-top:15px;"><?php echo $_GET['pesan']; ?></div>
                                    </div>
                                    <?php }
                                    ?>
                                     <?php
                                if(isset($_GET['message'])){?>
                                    <div class="col-sm-12 text-center">
                                        <div class="alert alert-danger" role="alert" style="margin-top:15px;"><?php echo $_GET['message']; ?></div>
                                    </div>
                                    <?php }
                                    ?>
                                      <a href="tambah_blog.php" class="btn btn-sm btn-info mb-2"><i class="fa fa-history"></i>Tambah Blog</a>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-bordered" id="dataTable">
                                        <thead>
                                            <tr class="text-center">
                                                <th class="text-center">Judul</th>
                                                <th class="text-center">Sub Judul</th>
                                                <th class="text-center">Blog</th>
                                                <th class="text-center">Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <?php 
                    include 'config.php';
                    $batas = 4;
                    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
                    $halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;    
     
                    $previous = $halaman - 1;
                    $next = $halaman + 1;
                    $data = mysqli_query($koneksi,"select * from blog");
                     $jumlah_data = mysqli_num_rows($data);
                    $total_halaman = ceil($jumlah_data / $batas);

                    $data_blog = mysqli_query($koneksi,"select * from blog limit $halaman_awal, $batas");
                    while($d = mysqli_fetch_array($data_blog)){
                    ?>
                                            <tr class="text-center">
                                                <td><?php echo $d['judul']; ?></td>
                                                <td><?php echo $d['subjudul']; ?></td>
                                                <td><?php echo $d['blog']; ?></td>
                                                <td>
                                                <a href="edit.php?id=<?php echo $d['id']; ?>" class="btn btn-info">Edit</a>
                                                <a href="hapus.php?id=<?php echo $d['id']; ?>" class="btn btn-danger">Hapus</a>
                                                </td>
                                            </tr>
                                             <?php 
        }
        ?>
                                        </tbody>
                                    </table>
                                      <nav>
            <ul class="pagination justify-content-center">
                <!-- <li class="page-item">
                    <a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$Previous'"; } ?>>Previous</a>
                </li> -->
                <?php 
                for($x=1;$x<=$total_halaman;$x++){
                    ?> 
                    <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                    <?php
                }
                ?>              
                <!-- <li class="page-item">
                    <a  class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>>Next</a>
                </li> -->
            </ul>
        </nav>
                                </div>
                            </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="datatables/jquery.dataTables.min.js"></script>
        <script src="datatables/dataTables.bootstrap4.min.js"></script>
        <script src="js/datatables-demo.js"></script>
    </body>
</html>
