<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($email)) {
array(&$_POST["fname"],&$_POST["lname"],&$_POST["phnum"],&$_POST["startdate"],&$_POST["cvletter"]);
$mysqli = new mysqli("127.0.0.1", "AppUser", "Special888%", "job", 3306);
$iname = $_POST["fname"];
$lname = $_POST["lname"];
$phnum = $_POST["phnum"];
$startdate = $_POST["start-date"];
$cvletter = $_POST["cvletter"];

$ex = $mysqli->query("SELECT EXISTS(SELECT * FROM advform WHERE email=\"$email\")");
$ok = $ex->fetch_row();

if ($ok[0]) {
	$delt = $mysqli->query("SELECT filelocation FROM advform WHERE email=\"$email\"");
	$del = $delt->fetch_row();
	shell_exec("sudo rm -r u/$del[0]");
	$mysqli->query("DELETE FROM advform WHERE email=\"$email\"");
}

$prepdir = rtrim(strtr(base64_encode(random_bytes(8)), '+/', '-_'), '=');
shell_exec("sudo mkdir u/$prepdir");
shell_exec("sudo mkdir u/$prepdir/a");
shell_exec("sudo chmod -R 733 u/$prepdir");
$tmp_name = $_FILES["resume"]["tmp_name"];
$fname = basename($_FILES["resume"]["name"]);
move_uploaded_file($tmp_name, "u/$prepdir/$fname");


$total = count($_FILES['addfile']['name']);

// Loop through each file
for( $i=0 ; $i < $total ; $i++ ) {

  //Get the temp file path
  $tmp_name = $_FILES['addfile']['tmp_name'][$i];

  //Make sure we have a file path
  if ($tmp_name != ""){
        $fname = basename($_FILES["addfile"]["name"][$i]);

    //Upload the file into the temp dir
    move_uploaded_file($tmp_name, "u/$prepdir/a/$fname");

  }
}

try {
	$mysqli->query("INSERT INTO advform (fname, lname, phnum, email, job, startdate, cvletter, filelocation) VALUES (\"$iname\", \"$lname\", \"$phnum\", \"$email\", \"$job\", \"$startdate\", \"$cvletter\", \"$prepdir\")");
}
catch (Exception $e) {
	echo $e;
	die();
}



$mysqli->close();

echo "Submitted!";
}
?>
