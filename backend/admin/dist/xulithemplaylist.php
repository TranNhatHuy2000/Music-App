<?php 
	 $hostname = "localhost";
    $username = "id10692690_binbeo90";
    $password = "Beohin-12345";
    $databasename = "id10692690_mp3zing";
      

   $con = mysqli_connect("$hostname","$username","$password","$databasename");
    mysqli_query($con,"SET NAME 'utf8'");

    $tenplaylist =$_POST['Ten'];
   

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



$sqladd = "INSERT INTO playlist(Ten,HinhNen,Hinhicon) VALUES ('$tenplaylist','$linkhinhnen','$linkicon')";
$resultAdd = mysqli_query($con,$sqladd) or die("lỗi truy vấn");
header('location:playlist.php');
 
 ?>
