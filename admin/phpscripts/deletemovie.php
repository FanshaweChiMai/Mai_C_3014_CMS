<?php
	//This file is not called through config.php
	require_once('config.php');

	if(isset($_GET['delete_id'])){
		$dir = $_GET['delete_id'];

		if($dir == "delete") {
			$id = $_GET['id'];
			deleteMovie($id);
		}else{
			echo "Delete Incomplete. Check for errors.";
		}
	}



?>
