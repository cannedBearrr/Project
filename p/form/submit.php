<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($email) && isset($_POST["name"]) && isset($_POST["stink"])) {
	$mysqli = new mysqli("127.0.0.1", "root", "", "job", 3306);
$name = $_POST["name"];
$stink = $_POST["stink"];

$ex = $mysqli->query("SELECT EXISTS(SELECT * FROM advform WHERE email=\"$email\")");
$ok = $ex->fetch_row();

if ($ok[0]) {
	$mysqli->query("DELETE FROM advform WHERE email=\"$email\"");
}

$c = $mysqli->query("SELECT COUNT(*) FROM advform");
$len = $c->fetch_array()[0] ?? 0;

try {
	$mysqli->query("INSERT INTO advform (id, name, henrystinky, email) VALUES ($len, \"$name\", \"$stink\", \"$email\")");
}
catch (Exception $e) {
	die();
}

$mysqli->close();

echo "Submitted!";
}
?>
