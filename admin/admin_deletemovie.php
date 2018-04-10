<?php
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$tbl = "tbl_movies";
	$getMovie = getAll($tbl);
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link rel="stylesheet" href="../css/style.css">
<title>Delete Movie</title>
</head>
<body>
	<div class="wrapper">
		<?php if(!empty($message)){ echo $message;} ?>
		<h2 class="formHead">Delete Movie</h2>
		<?php
			while($row = mysqli_fetch_array($getMovie)){
				echo "<a href=\"phpscripts/deletemovie.php?delete_id=delete&id={$row['movies_id']}\">Click <p class=\"movieTitle\">{$row['movies_title']}</p> To Delete</a><br>";
			}
		?>
	</div>

</body>
</html>
