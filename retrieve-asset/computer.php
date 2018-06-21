<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>Computers</title>
</head>
<body>
    <div class = "container">
        <h1>Computers (Desktops + Laptops) in the Database:</h1>

    <?php
$count = 1;
echo "<table class = 'table table-hover'>";
// echo "<tr><th>Name</th><th>Type</th><th>Length</th><th>Connector type</th><th>Mode</th><th>Core</th><th>Remarks</th>";
echo "
    <thead>
        <tr>
            <th>#</th>
            <th>Type</th>
            <th>Model </th>
            <th>Make</th>
            <th>Processor Speed</th>
            <th>Processor Type</th>
            <th>Generation</th>
            <th>Dimension</th>
            <th>Operating System</th>
            <th>HardDisk Size </th>
            <th>RAM</th>
            <th>FormFactor</th>
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
    $stmt = $conn->prepare("SELECT `type`, `model`, `make`, `processor speed`, `processor type`, `generation`, `dimension`, `os`, `harddisk size`, `ram size`, `form factor`, `remarks` FROM `computer`");
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