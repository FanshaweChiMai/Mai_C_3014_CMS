<?php
	require_once('phpscripts/config.php');

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
<title>Edit the Collection</title>
</head>
<body>
	<div class="wrapper">
		<?php
			$tbl = "tbl_movies";
			$col = "movies_id";
			$id = 1;
			echo single_edit($tbl, $col, $id);
		?>
	</div>

</body>
</html>
