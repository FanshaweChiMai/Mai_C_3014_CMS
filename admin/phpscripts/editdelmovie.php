<?php

	function editMovie($id, $title, $year, $run, $plot) {
		include('connect.php');

		$updatestring = "UPDATE tbl_movies SET movies_title='{$title}', movies_year='{$year}', movies_length='{$run}' WHERE movies_id={$id}";
		$updatequery = mysqli_query($link, $updatestring);

		if($updatequery) {
			redirect_to("admin_movies.php");
		}else{
			$message = "Try again!";
			return $message;
		}

		mysqli_close($link);
	}

	function deleteMovie($id) {
		include('connect.php');
		$delstring = "DELETE FROM tbl_movies WHERE movies_id = {$id}";
		$delquery = mysqli_query($link, $delstring);
		if($delquery) {
			redirect_to("../admin_movies.php");
		}else{
			$message = "Try again!";
			return $message;
		}
		mysqli_close($link);
	}
?>
