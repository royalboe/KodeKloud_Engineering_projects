<?php
$dbhost = getenv("MYSQL_HOST");
$dbuser = getenv("MYSQL_USER");
$dbpass = getenv("MYSQL_PASSWORD");
$dbname = getenv("MYSQL_DATABASE");

$conn = new mysqli($dbuser, $dbpass, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
