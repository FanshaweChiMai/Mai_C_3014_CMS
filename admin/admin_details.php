<?php
	require_once('phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="../css/style.css">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<title>Details</title>
</head>
<body>
<div class="wrapper">
	<?php
	include('includes/nav.html');
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img class=\"detailPoster\" src=\"../images/{$row['movies_img']}\" alt=\"{$row['movies_title']}\">
			<p class=\"movieTitle\">{$row['movies_title']}</p>
			<p class=\"movieYear\">{$row['movies_year']}</p>
			<p class=\"moviePlot\">{$row['movies_plot']}</p>

			<a class=\"formHead\" href=\"admin_editmovie.php?id={$row['movies_id']}\">Edit Movie Info Movie</a>
			<a class=\"goBack\" href=\"admin/admin_movies.php\">Back</a>

			";

		}else{
			echo "<p>{$getMovie}</p>";
		}
		include('includes/footer.html');
	?>
</div>


</body>
</html>
