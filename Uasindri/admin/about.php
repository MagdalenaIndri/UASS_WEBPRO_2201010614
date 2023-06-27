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
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Administrator</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/Uasindri/admin/index.php">Data Blog</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Halaman About</a>
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
                                    <h3 class="panel-title">About</h3>
                                       <?php
                                if(isset($_GET['pesan'])){?>
                                    <div class="col-sm-12 text-center">
                                        <div class="alert alert-success" role="alert" style="margin-top:15px;"><?php echo $_GET['pesan']; ?></div>
                                    </div>
                                    <?php }
                                    ?>
                                </div>
                                <div class="panel-body">
                                     <?php 
                                    include 'config.php';

                                    $data = mysqli_query($koneksi,"select * from tentang");
                                
                                    while($d = mysqli_fetch_array($data)){
                                    ?>
                                    <form method="post" action="update_about.php">
                                  <div class="mb-3 row">
                                    <label for="inputPassword" class="col-sm-2 col-form-label">About</label>
                                    <div class="form-floating">
                                        <input type="hidden" name="id" value="<?php echo $d['id']; ?>">
                                      <textarea class="form-control" name="tentang" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"><?php echo $d['tentang']; ?></textarea>
                                    </div>
                                  </div>
                                   <div class="mb-3 row">
                                    <div class="form-floating">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                                  </div>
                              </form>
                             <?php 
                                }
                                ?>
                                </div>
                            </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
