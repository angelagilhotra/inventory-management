<?php
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "invmgmt";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	

$g=$_POST["cablename"];
$h=$_POST["cabletype"];
$i=$_POST["cablelength"];
$j=$_POST["cableconnector"];
$k=$_POST["cablemode"];
$l=$_POST["cablecore"];
$m=$_POST["cableremarks"];


$stmt = $conn->prepare("INSERT INTO `cables` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype id`, `Name`, `Type`, `Length`, `Connector Type`, `Mode`, `Core`, `Remarks`) 
    VALUES (:intype, :nid, :faid, :netid, :subid, :name, :type, :length, :contype, :mode, :core, :remarks)");
	$stmt->bindParam(':intype', $a);
	$stmt->bindParam(':nid', $b);
	$stmt->bindParam(':faid', $c);
	$stmt->bindParam(':netid', $d);
	$stmt->bindParam(':subid', $e);
	$stmt->bindParam(':name', $g);
	$stmt->bindParam(':type', $h);
	$stmt->bindParam(':length', $i);
	$stmt->bindParam(':contype', $j);
	$stmt->bindParam(':mode', $k);
    $stmt->bindParam(':core', $l);
    $stmt->bindParam(':remarks', $m);
   

$a=1;
$b=1;
$c=10;
$d=1;
$e=0;

	if(isset($_POST["submitform"]))
	$stmt->execute();

        
}

    

catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }



?>