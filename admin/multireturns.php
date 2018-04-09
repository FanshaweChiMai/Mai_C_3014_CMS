<?php
	require_once('phpscripts/config.php');
	$result = multiReturns(17);
	list($add, $multiply) = multiReturns(24567);
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
<title>Multi Returns</title>
</head>
<body>
	<?php
		echo "Result 1: {$result[0]}<br>";
		echo "Result 2: {$result[1]}<br><br>";
		echo "Result 1 from list: {$add}<br>";
		echo "Result 2 from list: {$multiply}<br><br>";
	?>
</body>
</html>
