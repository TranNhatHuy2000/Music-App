<?php 
	require "connect.php";

	class Baihat{
		function Baihat($idbaihat,$tenbaihat,$hinhanh,$casi,$linkbaihat,$luotthich){
			$this->Idibaihat = $idbaihat;
			$this->Tenbaihat = $tenbaihat;
			$this->Hinhbaihat = $hinhanh;
			$this->Casi = $casi;
			$this->Linkbaihat = $linkbaihat;
			$this->Luotthich = $luotthich;
		}
	}
	
	$mangcakhuc = array();
	if (isset($_POST['tukhoa'])) {
	$tukhoa =$_POST['tukhoa'];
	$query = "SELECT * FROM baihat WHERE lower(TenBaiHat) LIKE '%tukhoa%'";
	$data = mysqli_query($con,$query);	
	while ($row = mysqli_fetch_assoc($data)) {
	    array_push($mangcakhuc, new Baihat($row['idBaiHat']
										,$row['TenBaiHat']
										,$row['HinhBaiHat']
										,$row['CaSi']
										,$row['LinkBaiHat']
										,$row['LuotThich']));
	}
	echo json_encode($mangcakhuc);
	}
	

	

 ?>