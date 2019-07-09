<?php include 'database.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>signin</title>
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
		a{
			text-decoration: none;
		}
		.sign_in{
			background:rgba(100,100,100,0.5);
			padding-bottom: 20px;
			padding-left: 200px;
		}
	</style>
	<div class="sign_in">
		<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
		<b>Username: </b><input type="text" name="username"><br>
		<b>Password: </b><input type="Password" name="password"><br>
		<b>First Name: </b><input type="text" name="fname"><br>
		<b>Last Name: </b><input type="text" name="sname"><br>
		<input type="submit" value="Submit" class="start"><br><br>
		<a href="login.php" class="start">Login</a>
		</form>
	</div>

	<?php
		$name = $pass = $fname = $sname = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = test_input($_POST["username"]);
  $pass = test_input($_POST["password"]);
  $fname = test_input($_POST["fname"]);
  $sname = test_input($_POST["sname"]);
}
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
if($name!="" && $pass!="" && $fname!="" && $sname!=""){
$query = "INSERT INTO users(Username, Password, First_Name, Last_Name) VALUES('$name', '$pass', '$fname', '$sname')";

if($conn->query($query)===TRUE){
	echo 'Account Created';
	}
	else{
		echo "Error".$conn->error;
	}
}
	?>

</body>
</html>