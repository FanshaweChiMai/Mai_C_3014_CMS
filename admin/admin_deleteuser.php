<?php
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$tbl = "tbl_user";
	$users = getAll($tbl);
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
<title>Delete User</title>
</head>
<body>
	<div class="wrapper">
		<h2 class="formHead">Delete User</h2>
		<?php
			while($row = mysqli_fetch_array($users)){
				echo "<p class=\"delAcc\">{$row['user_fname']}</p> <a href=\"phpscripts/caller.php?caller_id=delete&id={$row['user_id']}\">Delete This</a><br>";
			}
		?>
	</div>

</body>
</html>
