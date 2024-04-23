<?php
$url = 'https://jobs2024.northernhorizon.org/payment.php';

session_start();
$_SESSION['donate_amount'] = max($_GET['amount'], 50);
header("Location: $url");

?>
