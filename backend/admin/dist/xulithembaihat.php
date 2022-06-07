<?php 
	 $hostname = "localhost";
    $username = "id10692690_binbeo90";
    $password = "Beohin-12345";
    $databasename = "id10692690_mp3zing";
      

   $con = mysqli_connect("$hostname","$username","$password","$databasename");
    mysqli_query($con,"SET NAME 'utf8'");

    $tenbaihat =$_POST['TenBaiHat'];
    $tencasi = $_POST['CaSi'];
    $idalbum = $_POST['idAlbum'];
    $idtheloai = $_POST['idTheLoai'];
    $idplaylist = $_POST['idPlayList'];

$target_dir = "../../Hinhanh/Baihat/";
$tmp_anh = $_FILES['HinhBaiHat']['tmp_name'];
$target_file = $target_dir . basename($_FILES["HinhBaiHat"]["name"]);
$song_dir= "../../Nhac/";
$tmp_song = $_FILES['LinkBaiHat']['tmp_name'];
$song_file = $song_dir . basename($_FILES["LinkBaiHat"]["name"]);
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
$songFileType =  strtolower(pathinfo($song_file,PATHINFO_EXTENSION));

move_uploaded_file($tmp_anh, $target_file);
move_uploaded_file($tmp_song, $song_file);


$hinhbaihat = $_FILES['HinhBaiHat']['name'];
$linkanh = "https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/".$hinhbaihat;


$tencakhuc = $_FILES['LinkBaiHat']['name'];
$linkbaihat = "https://trannhathuy18it3.000webhostapp.com/Nhac/".$tencakhuc;

$sqladd = "INSERT INTO baihat(idAlbum,idTheLoai,idPlayList,TenBaiHat,HinhBaiHat,CaSi,LinkBaiHat) VALUES ('$idalbum','$idtheloai','$idplaylist','$tenbaihat','$linkanh','$tencasi','$linkbaihat')";
$resultAdd = mysqli_query($con,$sqladd) or die("lỗi truy vấn");
header('location:index.php');
 
 ?>
