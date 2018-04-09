<?php
	require_once('admin/phpscripts/config.php');

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = "action"; //how to change filter?
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">
<title>Movie Reviews Collection</title>
</head>
<body>
	<div class="wrapper">
			<?php
				include('includes/nav.html');

				if(!is_string($getMovies)){
					while($row = mysqli_fetch_array($getMovies)){
						echo "<div class=\"eachMovie\"> <img src=\"images/{$row['movies_img']}\" alt=\"{$row['movies_title']}\">
							<h3>{$row['movies_title']}</h3>
							<p>{$row['movies_year']}</p>
							<a href=\"details.php?id={$row['movies_id']}\">More Details...</a><br><br></div>
						";
					}
				}else{
					echo "<p class=\"error\">{$getMovies}</p>";
				}

				include('includes/footer.html');
			?>
	
	</div>
</body>
</html>
