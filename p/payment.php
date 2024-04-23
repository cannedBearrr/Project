<?php
session_start();
$donate_amount = $_SESSION["donate_amount"];
	require_once '../stripe-php-14.4.0-beta.1/init.php';
	require_once '../secrets.php';

\Stripe\Stripe::setApiKey($stripeSecretKey);
header('Content-Type: application/json');

$YOUR_DOMAIN = 'https://jobs2024.northernhorizon.org';

$checkout_session = \Stripe\Checkout\Session::create([
  'line_items' => [[
	  'price_data' => [
	  	'currency' => 'nzd',
		'product_data' => ['name' => 'Donation'],
		'unit_amount' => $donate_amount,
	  ],
    'quantity' => 1,
  ]],
  'mode' => 'payment',
  'success_url' => $YOUR_DOMAIN . '/donatePageSubmit',
  'cancel_url' => $YOUR_DOMAIN . '/pastProjects',
]);

header("HTTP/1.1 303 See Other");
header("Location: " . $checkout_session->url);
?>
