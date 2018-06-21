<?php
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "invmgmt";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	

$g=$_POST["type"];
$h=$_POST["modeltype"];
$i=$_POST["maketype"];
$j=$_POST["speedtype"];
$k=$_POST["processtype"];
$l=$_POST["gentype"];
$m=$_POST["dimtype"];
$n=$_POST["ostype"];
$o=$_POST["sizetype"];
$p=$_POST["ramtype"];
$q=$_POST["factor"];
$r=$_POST["remarktype"];

$stmt = $conn->prepare("INSERT INTO `computer` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype id`, `Type`, `Model`, `Make`, `Processor speed`, `processor type`, `Generation`, `dimension`, `OS`, `Harddisk size`, `RAM size`, `form factor`, `remarks`) 
    VALUES (:mtype, :nid, :faid, :netid, :subid, :type, :model, :make, :pspeed, :ptype, :gen, :dim, :os, :hsize, :rsize, :factor, :remarks)");
	$stmt->bindParam(':mtype', $a);
	$stmt->bindParam(':nid', $b);
	$stmt->bindParam(':faid', $c);
	$stmt->bindParam(':netid', $d);
	$stmt->bindParam(':subid', $e);
	$stmt->bindParam(':type', $g);
	$stmt->bindParam(':model', $h);
	$stmt->bindParam(':make', $i);
	$stmt->bindParam(':pspeed', $j);
	$stmt->bindParam(':ptype', $k);
    $stmt->bindParam(':gen', $l);
    $stmt->bindParam(':dim', $m);
    $stmt->bindParam(':os', $n);
    $stmt->bindParam(':hsize', $o);
    $stmt->bindParam(':rsize', $p);
    $stmt->bindParam(':factor', $q);
    $stmt->bindParam(':remarks', $r);

$a=1;
$b=1;
$c=10;
$d=0;
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
