<?php
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "invmgmt";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_POST["assettype"] == "activeother") {

        if (isset($_POST["activetype"])) {

            $f = $_POST["activetype"];

        }

        $g = $_POST["makeactive"];
        if ($_POST["modelactive"] != "") {
            $h = $_POST["modelactive"];
        }

        $i = $_POST["typeactive"];
        $j = $_POST["functionactive"];
        $k = $_POST["remarksactive"];

        $stmt = $conn->prepare("INSERT INTO `networking devices` (`Inventory Type Code`, `Non Consumable Id`, `Fixed Asset ID`, `Networking ID`, `Subtype id`,`Name`, `Make`, `Model`, `type`, `Specification`, `remarks`)
    VALUES (:mtype, :nid, :faid, :netid, :subid, :name, :make, :model, :type, :specs, :remarks)");
        $stmt->bindParam(':mtype', $a);
        $stmt->bindParam(':nid', $b);
        $stmt->bindParam(':faid', $c);
        $stmt->bindParam(':netid', $d);
        $stmt->bindParam(':subid', $e);
        $stmt->bindParam(':name', $f);
        $stmt->bindParam(':make', $g);
        $stmt->bindParam(':model', $h);
        $stmt->bindParam(':type', $i);
        $stmt->bindParam(':specs', $j);
        $stmt->bindParam(':remarks', $k);

        $a = 1;
        $b = 1;
        $c = 10;
        $d = 0;
        $e = 0;

        if (isset($_POST["submitform"])) {
            $stmt->execute();
        }

    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
