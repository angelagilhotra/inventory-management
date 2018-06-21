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

        
}

    

catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }



?>