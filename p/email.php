<?php
$data = json_decode(file_get_contents("php://input"));
if (isset($data->{"email"})) {
$email = $data->{"email"};
$mysqli = new mysqli("127.0.0.1", "root", "", "job", 3306);
$c = $mysqli->query("SELECT COUNT(*) FROM form");
$len = $c->fetch_array()[0] ?? 0;
try {
	$mysqli->query("INSERT INTO form (id, email) VALUES ($len, \"$email\")");
}
catch (Exception $e) {
	die();
}
$mysqli->close();

$newform = substr(base64_encode(password_hash("$email", PASSWORD_ARGON2ID, ['memory_cost' => 8196, 'time_cost' => 2, 'threads' => 1])), 40);

$newsubmit = rtrim(strtr(base64_encode(random_bytes(64)), '+/', '-_'), '=');

shell_exec("sudo cp form/form~proto.php form.$newform.php");

shell_exec("sudo cp form/submit~proto.php submit.$newsubmit.php");

$prep = "<?php \$email = " . "\"".$email."\" ?>";
$prep2 = "<?php \$submitaddr = " . "\""."submit.$newsubmit.php"."\" ?>";


shell_exec("sudo sed -i.old '1s;^;$prep\\n;' form.$newform.php");
shell_exec("sudo sed -i.old '1s;^;$prep2\\n;' form.$newform.php");

shell_exec("sudo sed -i.old '1s;^;$prep\\n;' submit.$newsubmit.php");

shell_exec("sudo rm form.*.php.old");
shell_exec("sudo rm submit.*.php.old");

shell_exec("echo \"Thanks for using!\n\nHere is the link:\n\n\n\nhttp://129.213.117.186/form.$newform.php\" | neomutt -s ':)' '$email'");
shell_exec("echo \"sudo rm form.$newform.php\" | at now + 30 minutes");
shell_exec("echo \"sudo rm submit.$newsubmit.php\" | at now + 12 hours");

}
?>
