<?php 
     $hostname = "localhost";
    $username = "id10692690_binbeo90";
      
   $password = "Beohin-12345";
  $databasename = "id10692690_mp3zing";
       

    $con = mysqli_connect("$hostname","$username","$password","$databasename");
    mysqli_query($con,"SET NAME 'utf8'");


    $tenplaylist = "";
    

    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $sqlGetId ="SELECT * FROM playlist WHERE idPlayList =".$id;
        $result = mysqli_query($con,$sqlGetId) or die("lỗi truy vấn");
        $row = mysqli_fetch_assoc($result);
        $tenplaylist = $row['Ten'];
       
    }

    if (isset($_POST['submit'])){
    
    $Tenplaylist =$_POST['Ten'];
   

    $hinhnen_dir = "../../Hinhanh/Playlist/";
    $tmp_hinhnen = $_FILES['HinhNen']['tmp_name'];
    $hinhnen_file = $hinhnen_dir . basename($_FILES["HinhNen"]["name"]);

    $icon_dir = "../../Hinhanh/Playlist/";
    $tmp_icon = $_FILES['Hinhicon']['tmp_name'];
    $icon_file = $icon_dir . basename($_FILES["HinhAlbum"]["name"]);

    $hinhnenFileType = strtolower(pathinfo($hinhnen_file,PATHINFO_EXTENSION));
    $iconFileType = strtolower(pathinfo($icon_file,PATHINFO_EXTENSION));



    move_uploaded_file($tmp_hinhnen, $hinhnen_file);
    move_uploaded_file($tmp_icon, $icon_file);



    $hinhnen = $_FILES['HinhNen']['name'];
    $linkhinhnen = "https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/".$hinhnen;

    $icon = $_FILES['Hinhicon']['name'];
    $linkicon = "https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/".$icon;



    $sqledit = "UPDATE playlist SET Ten = '$Tenplaylist',`HinhNen`='$linkhinhnen',`Hinhicon`='$linkicon'";
    $sqledit = mysqli_query($con,$sqledit) or die("lỗi truy vấn");
    }

 ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.php">MP3 Manage</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Các Trang Quản Lí</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Song Manage
                            </a>
                            <a class="nav-link" href="album.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Album Manage
                            </a>
                            <a class="nav-link" href="playlist.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Playlist Manage
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Playlist Manage</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-upload"></i>
                                Thêm Playlist
                            </div>
                            <div class="card-body">
                            <form action="xulithemplaylist.php" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="inputtenbaihat">Tên playlist:</label>
                                  <input type="text" class="form-control" placeholder="Nhập tên Playlist" name="Ten" value="<?php echo $tenplaylist?>">
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="upimage">Ảnh Nền</label><br>
                                    <input type="file" name="HinhNen" id="HinhNen">
                                </div>
                                <div class="form-group">
                                    <label for="upimage">Ảnh icon</label><br>
                                    <input type="file" name="Hinhicon" id="Hinhicon">
                                </div>
                                <input type="submit" name="submit" class="btn btn-success">
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>
