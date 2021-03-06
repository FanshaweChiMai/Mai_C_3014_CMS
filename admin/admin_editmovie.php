<?php
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	ini_set('display_errors',1);
	error_reporting(E_ALL);

	$tbl2 = "tbl_genre";
	$genQuery = getAll($tbl2);

	$id = $_GET['id'];
	$tbl = "tbl_movies";
	$col = "movies_id";
	$popForm = getSingle($tbl, $col, $id);
	$info = mysqli_fetch_array($popForm);
	//echo $info;

	if(isset($_POST['submit'])){
		// $cover = $_FILES['cover'];
		$id1 = trim($_POST['id']);
		$title = trim($_POST['title']);
		$year = trim($_POST['year']);
		$run = trim($_POST['run']);
		$plot = trim($_POST['plot']);
		$result = editMovie($id1, $title, $year, $run, $plot);
		$message = $result;
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
<link rel="stylesheet" href="../css/style.css">
<title>Edit Movie</title>
</head>
<body>
	<div class="wrapper">
		<h2 class="formHead">Edit Movie</h2>

		<form action="admin_editmovie.php" method="post">
			<!-- <label>Cover Image:</label>
			<input type="file" name="cover" value="<?php echo $info['movies_img'];  ?>"><br><br> -->
			<input type="hidden" name="id" value="<?php  echo $id?>"/>
			<label>Movie Title:</label>
			<input type="text" name="title" value="<?php echo $info['movies_title'];  ?>"><br><br>
			<label>Movie Year:</label>
			<input type="text" name="year" value="<?php echo $info['movies_year'];  ?>"><br><br>
			<label>Movie Runtime:</label>
			<input type="text" name="run" value="<?php echo $info['movies_length'];  ?>"><br><br>
			<label>Movie Storyline:</label>
			<input type="text" name="plot" value="<?php echo $info['movies_plot'];  ?>"><br><br>

			<input type="submit" name="submit" value="Edit Movie">
		</form>
	</div>

</body>
</html>
