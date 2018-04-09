<?php
	require_once('phpscripts/config.php');
	confirm_logged_in();

	if(isset($_POST['submit'])){
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$lvllist = $_POST['lvllist'];
		if(empty($lvllist)){
			$message = "Please select a user level.";
		}else{
			$result = createUser($fname, $username, $password, $email, $lvllist);
			$message = $result;
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
<title>Create User</title>
</head>
<body>
	<div class="wrapper">
		<h2 class="formHead">Create User</h2>
		<?php if(!empty($message)){echo $message;} ?>
		<form action="admin_createuser.php" method="post">
			<label>First Name:</label>
			<input type="text" name="fname" value=""><br><br>
			<label>Username:</label>
			<input type="text" name="username" value=""><br><br>
			<label>Password:</label>
			<input type="text" name="password" value=""><br><br>
			<label>Email:</label>
			<input type="text" name="email" value=""><br><br>
			<select name="lvllist">
				<option value="">Select User Level</option>
				<option value="2">Web Admin</option>
				<option value="1">Web Master</option>
			</select><br><br>
			<input id="submitButton" type="submit" name="submit" value="Create User">
		</form>
	</div>

</body>
</html>
