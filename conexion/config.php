<?php
    session_start();
    $user= "root";
    $host= "localhost";
    $pass= "admin";
    $db="fuerse";
    $port="5432";

    $connection = mysqli_connect($host,$user,$pass,$db);
	try {
		$pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
	} catch (PDOException $e) {
		print "¡Error!: " . $e->getMessage() . "<br/>";
		die();
	}
?>