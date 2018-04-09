<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);

	require_once('phpscripts/config.php');
	confirm_logged_in();
	date_default_timezone_set('America/Toronto');
	$time=date("H");
	//$msg=$time;
	//Messages for time of day
	// $morning = "Good morning! Coffee?";
	// $afternoon = "Good afternoon! Lunch yet?";
	// $evening = "Good evening! Take some break!";


	//morning from 6 to 12pm
	 if ($time>="6" && $time<="12") {
	 $msg="Good morning ";
	 $msg_2="! Coffee?";
	}
	//afternoon 12:01 to 5pm
	if ($time>"12"&&$time<="17") {
	$msg="Good afternoon ";
	$msg_2="! Lunch yet?";
	}
	//evening from 5pm to 11pm
	if ($time>"17" && $time<="23") {
	$msg="Good evening " ;
	$msg_2="! Take some break!";
	}
	//night from midnight
	if ($time>"23") {
	$msg="It's late now," ;
	$msg_2="! Go to bed!";
	}
	//night before 6am
	elseif ($time<"6") {
	$msg="It's late now," ;
	$msg_2="! Go to bed!";
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
<title>Welcome to your admin panel</title>
</head>
<body>
	<div class="wrapper">
		<div class="welcomeMessage">
			<?php echo $msg; ?>
			<?php echo $_SESSION['user_name'];  ?>
			<?php echo $msg_2; ?>
			<br>
			<?php
			//echo "Last login was ", UTC_DATE($_SESSION['user_date']);
			//echo $lastLogin;

			echo "<p>Last login was {$_SESSION['user_date']}</p>";
			//echo "Last login was" , $_SESSION['user_date'];
			//echo date("Last login was" + "M d Y H:i a", $lastLogin);
			 ?>
		</div>
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
