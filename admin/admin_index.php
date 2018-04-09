<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);

	require_once('phpscripts/config.php');
	confirm_logged_in();
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
<title>Welcome to your admin panel</title>
</head>
<body>
	<div class="wrapper">
		<div class="userFunc">
			<h2 class="formHead"><?php echo $_SESSION['user_name'];?></h2>
			<a href="admin_createuser.php">Create User</a>
			<a href="admin_edituser.php">Edit User</a>
			<a href="admin_deleteuser.php">Delete User</a>
			<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
		</div>
</div>
</body>
</html>
