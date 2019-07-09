<?php include 'database.php'; ?>
<?php
$query = "SELECT * FROM questions";
$results = $conn->query($query) or die($conn->error.__LINE__);
$total = $results->num_rows;
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quiz</title>
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<style type="text/css">
		.logout{
			position: absolute;
			left: 1300px;
			top: 20px;
			color: white;
	font-size: 2em;
		}
	</style>
	<header>
		<div class="container">
			<h1>Welcome to Quiz</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<h2>Test Your Knowledge</h2>
			<p>This is a multiple choice question with only one Option corect</p>
			<ul>
				<b>Number of Questions: </b><?php echo $total; ?><br>
				<b>Time: </b><?php echo $total * 0.5; ?> Minutes
			</ul>
			<a href="questions.php?n=1" class="start"><b>Start Quiz</b>
		</div>
		<div class="logout">
			<a href="login.php"><b>LOGOUT</b></a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy Vaibhav-2019.
		</div>
	</footer>
</body>
</html>