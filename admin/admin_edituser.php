<?php
	require_once('phpscripts/config.php');
	//confirm_logged_in();

	$id = $_SESSION['user_id'];
	$tbl = "tbl_user";
	$col = "user_id";
	$popForm = getSingle($tbl, $col, $id);
	$info = mysqli_fetch_array($popForm);
	//echo $info;

	if(isset($_POST['submit'])){
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$result = editUser($id, $fname, $username, $password, $email);
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
<title>Edit User</title>
</head>
<body>
	<div class="wrapper">
		<h2 class="formHead">Edit User</h2>
		<?php if(!empty($message)){echo $message;} ?>
		<form action="admin_edituser.php" method="post">
			<label>First Name:</label>
			<input type="text" name="fname" value="<?php echo $info['user_fname'];  ?>"><br><br>
			<label>Username:</label>
			<input type="text" name="username" value="<?php echo $info['user_name'];  ?>"><br><br>
			<label>Password:</label>
			<input type="text" name="password" value="<?php echo $info['user_pass'];  ?>"><br><br>
			<label>Email:</label>
			<input type="text" name="email" value="<?php echo $info['user_email'];  ?>"><br><br>
			<input type="submit" name="submit" value="Edit Account">
		</form>
	</div>

</body>
</html>
