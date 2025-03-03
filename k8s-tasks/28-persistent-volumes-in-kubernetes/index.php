<?php
$servername = getenv("MYSQL_HOST");
$username = getenv("MYSQL_USER");
$password = getenv("MYSQL_PASSWORD");
$database = getenv("MYSQL_DATABASE");

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
