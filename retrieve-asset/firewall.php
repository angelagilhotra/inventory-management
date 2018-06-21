<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>Firewalls</title>
</head>
<body>
    <div class = "container">
        <h1>Firewalls in the Database:</h1>
        <hr>
            <a href="networkingdevices.php" class="btn btn-primary">All</a>
            <a href="Switches.php" class = "btn btn-primary">Switches</a>
            <a href="Servers.php" class = "btn btn-primary">Server</a>
            <a href="wirelessc.php" class = "btn btn-primary">Wireless Controller</a>
            <a href="wirelessap.php" class = "btn btn-primary">Wireless AP</a>
            <a href="firewall.php" class = "btn btn-primary">Firewall</a>
            <a href="ise.php" class = "btn btn-primary">Identity Service Engine</a>
            <a href="nms.php" class = "btn btn-primary">Network Management System</a>
            <a href="printer.php" class = "btn btn-primary">Printer</a>
            <a href="projector.php" class = "btn btn-primary">Projector</a>
            <a href="ups.php" class = "btn btn-primary">UPS</a>
        <br> 
        <hr>
        <a href='../new-asset/input.html' class='btn btn-info'>Home</a>
        <hr>
    <?php
$count = 1;
echo "<table class = 'table table-hover'>";
// echo "<tr><th>Name</th><th>Type</th><th>Length</th><th>Connector type</th><th>Mode</th><th>Core</th><th>Remarks</th>";
echo "
    <thead>
        <tr>
            <th>#</th>
            <th>Make </th>
            <th>Model</th>
            <th>Remarks</th>
        </tr>
    </thead>
";

class TableRows extends RecursiveIteratorIterator
{
    public function __construct($it)
    {
        parent::__construct($it, self::LEAVES_ONLY);
    }

    public function current()
    {
        return "<td>" . parent::current() . "</td>";
    }

    public function beginChildren()
    {

        echo "<tr><th scope='row'>" . $GLOBALS['count'] . "</th>";
        $GLOBALS['count'] += 1;
    }

    public function endChildren()
    {
        echo "</tr>" . "\n";
    }
}

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=invmgmt", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
    $stmt = $conn->prepare("SELECT `Make`, `Model`, `remarks` FROM `networking devices` WHERE `Name`='Firewall'");
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    echo "<tbody>";
    foreach (new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k => $v) {
        echo $v;
    }
    echo "</tbody>";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>
</div>
</body>
</html>