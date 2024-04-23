<?php
header("Access-Control-Allow-Origin: *");
$data = json_decode(file_get_contents("php://input"));
if (isset($data->{"email"})) {
	$email = $data->{"email"};
	$job = $data->{"job"};

$newform = substr(base64_encode(password_hash("$email", PASSWORD_ARGON2ID, ['memory_cost' => 8196, 'time_cost' => 2, 'threads' => 1])), 40);

$newsubmit = rtrim(strtr(base64_encode(random_bytes(64)), '+/', '-_'), '=');

shell_exec("sudo cp form/form~proto.php form.$newform.php");

shell_exec("sudo cp form/submit~proto.php submit.$newsubmit.php");
$attime = date("Ymdhi.s");

$prep = "<?php \$email = " . "\"".$email."\" ?>";
$prep2 = "<?php \$submitaddr = " . "\""."submit.$newsubmit.php"."\" ?>";
$prep3 = "<?php \$job = " . "\"".$job."\" ?>";


shell_exec("sudo sed -i.old '1s;^;$prep\\n;' form.$newform.php");
shell_exec("sudo sed -i.old '1s;^;$prep2\\n;' form.$newform.php");
shell_exec("sudo sed -i.old '1s;^;$prep3\\n;' form.$newform.php");

shell_exec("sudo sed -i.old '1s;^;$prep\\n;' submit.$newsubmit.php");
shell_exec("sudo sed -i.old '1s;^;$prep3\\n;' submit.$newsubmit.php");

shell_exec("sudo rm form.*.php.old");
shell_exec("sudo rm submit.*.php.old");

shell_exec("echo \"Thanks for applying!\n\nHere is the link to the form:\n\n\n\nhttps://jobs2024.northernhorizon.org/form.$newform.php\" | neomutt -s 'Verify Your Email' '$email'");

shell_exec("echo \"sudo rm form.$newform.php #\" | at now + 30 minutes");
shell_exec("echo \"sudo rm form.$newform.php\" | at now + 12 hours");
shell_exec("echo \"sudo rm submit.$newsubmit.php #\" | at now + 30 minutes");
shell_exec("echo \"sudo rm submit.$newsubmit.php\" | at now + 12 hours");

}
?>
