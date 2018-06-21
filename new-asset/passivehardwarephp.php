<?php
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "invmgmt";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	

$g=$_POST["namehardware"];
$h=$_POST["portshardware"];
$i=$_POST["sizehardware"];
$j=$_POST["typehardware"];
$k=$_POST["remarkshardware"];


$stmt = $conn->prepare("INSERT INTO `other hardware` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype id`, `Name`,`Size`, `Type`, `Port`, `Remarks`) 
    VALUES (:intype, :nid, :faid, :netid, :subid, :name, :size, :type, :port, :remarks)");
	$stmt->bindParam(':intype', $a);
	$stmt->bindParam(':nid', $b);
	$stmt->bindParam(':faid', $c);
	$stmt->bindParam(':netid', $d);
	$stmt->bindParam(':subid', $e);
	$stmt->bindParam(':name', $g);
	$stmt->bindParam(':size', $h);
	$stmt->bindParam(':type', $i);
	$stmt->bindParam(':port', $j);
	$stmt->bindParam(':remarks', $k);
   

$a=1;
$b=1;
$c=10;
$d=1;
$e=1;

	if(isset($_POST["submitform"]))
	$stmt->execute();
	echo "
	<!DOCTYPE html>
	<html lang='en'>
	
	<head>
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
		<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
		<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
		<title>Added to Database</title>
	</head>
	<body>
	<div class = 'container'>
	<hr>
	<h2>Added to Database</h2>
	<button class='btn btn-info' onclick='window.history.back();'>Go Back</button>
	<a href='input.html' class='btn btn-primary'>Home</a>
	</div>
	</body>
	</html>";
        
}

    

catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }



?>