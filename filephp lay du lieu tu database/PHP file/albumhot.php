<?php 
	require "connect.php";
	$query = "SELECT DISTINCT * FROM album ORDER BY rand(". date("Ymd").") LIMIT 4";
	$dataalbum = mysqli_query($con,$query);
	
	class Album {
		function Album($idalbum,$tenalbum,$tencasialbum,$hinhalbum){
			$this->idAlbum = $idalbum;
			$this->TenAlbum = $tenalbum;
			$this->TenCaSiAlbum = $tencasialbum;
			$this->HinhAlbum = $hinhalbum;
		}
	}
	$arrayalbum = array();
	while ($row = mysqli_fetch_assoc($dataalbum)) {
		array_push($arrayalbum, new Album($row['idAlbum']
										,$row['TenAlbum']
										,$row['TenCaSiAlbum']
										,$row['HinhAlbum']));
	    
	}
	echo json_encode($arrayalbum);
 ?>