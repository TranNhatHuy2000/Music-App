<?php 
 	$hostname = "localhost";
    $username = "id10692690_binbeo90";
      
   	$password = "Beohin-12345";
  	$databasename = "id10692690_mp3zing";
       

    $con = mysqli_connect("$hostname","$username","$password","$databasename");
    mysqli_query($con,"SET NAME 'utf8'");

    if (isset($_GET['id'])) {
    	$id = $_GET['id'];
    	$sqldel = "DELETE FROM album WHERE idAlbum=".$id;
    	mysqli_query($con,$sqldel);
    	header('location:album.php');
    	
    }
 ?>