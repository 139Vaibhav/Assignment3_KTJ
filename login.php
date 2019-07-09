<?php include 'database.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login_Page</title>
</head>
<body>
	<style type="text/css">
		body{
				background-image: url('quiz1.jpg');
				background-repeat: no-repeat;
				background-size: cover;
		}
		form{
			margin-top: 200px;
			margin-left: 400px;
		}
		.start{
			border: 2px solid rgb(204,206,207);
			font-size: 2em;
			color: rgb(196,64,80);
			background: rgba(204,206,207,0.5);
			position: relative;
			top: 10px;
			padding-left: 10px;
			padding-right: 10px;
		}
		.sign_in{
			background:rgba(100,100,100,0.5);
			padding-bottom: 20px;
			padding-left: 200px;
		}
		a{
			text-decoration: none;
		}
	</style>
	<div class="sign_in">
		<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
			<b>Username: </b><input type="text" name="username"><br>
		<b>Password: </b><input type="Password" name="password"><br>
		<input type="submit" value="Submit" class="start"><br><br>
		<a href="signin.php" class="start">Create New Account</a>
		</form>
	</div>

	<?php
	$name = $pass = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = test_input($_POST["username"]);
  $pass = test_input($_POST["password"]);
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

	$query = "SELECT * FROM users";
	$result = $conn->query($query) or die($conn->error.__LINE__);
	$total = $result->num_rows;
	for($i=0; $i<$total; $i++){
		$row = $result->fetch_assoc();
		if($name == $row['Username'] && $pass == $row['Password'] && $name!="" && $pass!=""){
			echo 'You have successfully logged in';
			header("Location: index.php");
		}
	}
	?>
</body>
</html>