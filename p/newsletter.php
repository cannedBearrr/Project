<?php
header("Access-Control-Allow-Origin: *");
$data = json_decode(file_get_contents("php://input"));
if (isset($data->{"email"})) {
	$email = $data->{"email"};
	$mysqli = new mysqli("127.0.0.1", "root", "", "job", 3306);

	$mysqli->query("INSERT IGNORE INTO newsletter (email) VALUES (\"$email\")");

	$mysqli->close();

        shell_exec("echo \"Thanks for subscribing to our newsletter!\" | neomutt -s 'Welcome to the Northern Horizon newsletter' '$email'");
}
?>
