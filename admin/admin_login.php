<?php
	require_once('phpscripts/config.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		//echo "Works";
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill out the required fields.";
		}
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
<title>Welcome to your admin panel login</title>
</head>
<body>
	<div class="wrapper">
		<?php if(!empty($message)){ echo $message;} ?>
		<h2 class="formHead">Log In To Control Your World</h2>
		<form action="admin_login.php" method="post">
			<label>Username:</label>
			<input type="text" name="username" value="">
			<br>
			<label>Password:</label>
			<input type="password" name="password" value="">
			<br><br>
			<input id="submitButton" type="submit" name="submit" value="SUBMIT">
		</form>
	</div>


</body>
</html>
