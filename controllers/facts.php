<?php

$curl = curl_init();

curl_setopt_array($curl, [
	CURLOPT_URL => "https://air-quality.p.rapidapi.com/history/airquality?lon=-78.638&lat=35.779",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "GET",
	CURLOPT_HTTPHEADER => [
		"X-RapidAPI-Host: air-quality.p.rapidapi.com",
		"X-RapidAPI-Key: 83320947e2msh0d0abc2e53a205ep1b1370jsn710b46f46e31"
	],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
	echo "cURL Error #:" . $err;
} else {
	$weather = json_decode($response, true); // Must include true so that that the code becomes json code instead of an object
    // echo "<pre>";
    // var_dump($weather);
    // exit();
}

$Smarty->assign('weather', $weather); // Assigns array $weather to Smarty tpl to be called 