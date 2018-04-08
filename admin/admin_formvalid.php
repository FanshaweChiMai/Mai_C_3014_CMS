<?php require_once('phpscripts/config.php');
ini_set('display_errors',1);
error_reporting(E_ALL);
$ip = $_SERVER['REMOTE_ADDR'];
// echo $ip;
$errors = array();
if(isset($_POST['submit']))
{
  // echo "works";
  $name = trim($_POST['name']);
  $phone = trim($_POST['phone']);
  $address = trim($_POST['address']);

$required = array("name","phone","address");
foreach($required as $require)
{
  $value = trim($_POST[$require]);
  if(!has_value($value))
  {
    $errors[$require] = ucfirst($require)." cannot be blank.";
  }
}
$max_lengths = array("name"=>15, "phone"=>8);
max_lengths($max_lengths);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login page</title>
</head>
<body>
  <?php echo form_errors($errors);

  $no_attack = "&\'";
  $attack = "\x8F!!!";
  //echo htmlspecialchars($no_attack, ENT_QUOTES, 'UTF-8')."<br>";
  // echo $attack;
  //echo htmlspecialchars($attack, ENT_QUOTES, 'UTF-8')."<br>";


  ?>


<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
  <label for="">Name</label>
  <input type="text" name="name" value="">
<br>
  <!-- <label for="">Password</label>
  <input type="text" name="password" value="">
<br> -->
<label for="">Phone</label>
<input type="tel" name="phone" value="">
<br>
<label for="">Address</label>
<input type="text" name="address" value="">
<br>
  <input type="submit" name="submit" value="Submit">

</form>
</body>
</html>
