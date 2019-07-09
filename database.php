<?php
$servername = 'localhost';
$username = 'root';
$pass = '';
$dbname = 'a_database';

$conn = new mysqli($servername, $username, $pass, $dbname);
if($conn->connect_error){
	die("Connection Failed". $conn->connect_error);
}
?>