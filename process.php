<?php include 'database.php'; ?>
<?php session_start(); ?>
<?php
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}

	if($_POST){
		$number = $_POST['number'];
		$selected_choice = $_POST['choice'];
		$next = $number+1;

		$query = "SELECT * FROM questions";
		$results = $conn->query($query) or die($conn->error.__LINE__);
		$total = $results->num_rows;

		$query = "SELECT * FROM choices WHERE question_number = $number AND is_correct = 1";

		$result = $conn->query($query) or die($conn->error.__LINE__);

		$row = $result->fetch_assoc();

		$correct_choice = $row['Id'];

		if($correct_choice == $selected_choice){
			$_SESSION['score']=$_SESSION['score']+1;
		}
		if($number == $total){
			header("Location: final.php");
			exit();
		}
		else{
				header("Location: questions.php?n=".$next);
		}
	}
?>