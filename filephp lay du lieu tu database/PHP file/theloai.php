<?php 
	require "connect.php";
	class TheLoai{
		function TheLoai($idtheloai,$idkeychude,$tentheloai,$hinhtheloai){
			$this->IdTheLoai = $idtheloai;
			$this->IdKeyChuDe = $idkeychude;
			$this->TenTheLoai = $tentheloai;
			$this->HinhTheLoai = $hinhtheloai;
		}
	}
	$arraytheloai = array();

	$querytheloai = "SELECT DISTINCT * FROM	theloai ORDER BY rand(".date("Ymd"). ") LIMIT 4";
	$datatheloai =  mysqli_query($con,$querytheloai);
	while ($row = mysqli_fetch_assoc($datatheloai)) {
		array_push($arraytheloai, new TheLoai($row['idTheLoai']
											 ,$row['idChuDe']
											 ,$row['TenTheLoai']
											 ,$row['HinhTheLoai']));
	    
	}
	echo json_encode($arraytheloai);
 ?>