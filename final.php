<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quiz</title>
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<header>
		<div class="container">
			<h1>Welcome to Quiz</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<h2>You are done!</h2>
			<p>Congrats! You have completed the test.</p>
			<p>Final Score: <?php echo $_SESSION['score']; ?></p>
			<a href="questions.php?n=1" class="start"><b>Start Again</b></a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy Vaibhav-2019.
		</div>
	</footer>
</body>
</html>