<?php

// Prepare to connect
$server = "localhost";
$port = "3306";
$db = "online_exam";
$user = "root";
$pass = "";

$con = new PDO("mysql: host=$server; port=$port; dbname=$db", $user, $pass);
$con->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
