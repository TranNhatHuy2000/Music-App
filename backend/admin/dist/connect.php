<?php
	$hostname = "localhost";
	$username = "id10692690_binbeo90";
	$password = "Beohin-12345";
	$databasename = "id10692690_mp3zing";

	$con = mysqli_connect($hostname,$username,$password,$databasename);
	mysqli_query($con,"SET NAME 'utf8'");
?>