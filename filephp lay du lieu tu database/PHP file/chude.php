<?php 
	require "connect.php";
	class ChuDe{
		function ChuDe($idchude,$tenchude,$hinhchude){
			$this->IdChuDe = $idchude;
			$this->TenChuDe = $tenchude;
			$this->HinhChuDe = $hinhchude;
		}
	}
	$arraychude = array();

	$querychude = "SELECT DISTINCT * FROM	chude ORDER BY rand(".date("Ymd"). ") LIMIT 4";
	$datachude =  mysqli_query($con,$querychude);
	while ($row = mysqli_fetch_assoc($datachude)) {
		array_push($arraychude, new ChuDe($row['idChuDe']
											 ,$row['TenChuDe']
											 ,$row['HinhChuDe']));
	    
	}
	echo json_encode($arraychude);
 ?>