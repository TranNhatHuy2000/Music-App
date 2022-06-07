<?php 
	 $hostname = "localhost";
    $username = "id10692690_binbeo90";
    $password = "Beohin-12345";
    $databasename = "id10692690_mp3zing";
      

   $con = mysqli_connect("$hostname","$username","$password","$databasename");
    mysqli_query($con,"SET NAME 'utf8'");

    $tenalbum =$_POST['TenAlbum'];
    $tencasialbum = $_POST['CaSiAlbum'];
   

$target_dir = "../../Hinhanh/Album/";
$tmp_anhalbum = $_FILES['HinhAlbum']['tmp_name'];
$album_file = $target_dir . basename($_FILES["HinhAlbum"]["name"]);

$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


move_uploaded_file($tmp_anhalbum, $album_file);



$hinhalbum = $_FILES['HinhAlbum']['name'];
$linkanhalbum = "https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/".$hinhalbum;



$sqladd = "INSERT INTO album(TenAlbum,CaSiAlbum,HinhAlbum) VALUES ('$tenalbum','$tencasialbum','$linkanhalbum')";
$resultAdd = mysqli_query($con,$sqladd) or die("lỗi truy vấn");
header('location:album.php');
 
 ?>
