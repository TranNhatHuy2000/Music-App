<?php
	require"connect.php";
	$query = "SELECT DISTINCT * FROM playlist ORDER BY rand(" . date("Ymd") . ") LiMIT 3";
	class PlaylistToday {
		function PlaylistToday($idplaylist,$ten,$hinh,$icon){
			$this->IdPlaylist = $idplaylist;
			$this->Ten = $ten;
			$this->HinhPlaylist = $hinh;
			$this->Icon = $icon;
		}
	}
	
	$arrayPlaylistfortoday = array();
	$data = mysqli_query($con,$query);
	while ($row =  mysqli_fetch_assoc($data)) {
		array_push($arrayPlaylistfortoday, new PlaylistToday($row['idPlayList']
															,$row['Ten']
															,$row['HinhNen']
															,$row['Hinhicon']));

	    
	}
	echo json_encode($arrayPlaylistfortoday);
?>