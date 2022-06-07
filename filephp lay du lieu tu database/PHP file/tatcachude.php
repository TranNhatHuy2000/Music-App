<?php 
	require "connect.php";

	class Chude{
		function Chude($idchude,$tenchude,$hinhchude){
			$this->IdChuDe = $idchude;
			$this->TenChuDe =$tenchude;
			$this->HinhChuDe = $hinhchude;
		}
	}

	$arraychude = array();
	$query = "SELECT * FROM chude";
	$data = mysqli_query($con,$query);

	while ($row = mysqli_fetch_assoc($data)) {
		array_push($arraychude, new Chude($row['idChuDe']
											 ,$row['TenChuDe']
											 ,$row['HinhChuDe']));
	    
	}
	echo json_encode($arraychude);
 ?>