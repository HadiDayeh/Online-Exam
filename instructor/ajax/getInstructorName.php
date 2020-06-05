<?php
session_start();

// Check if session is empty
if (empty($_SESSION)) {
    header("Location: /instructor/pages/profile.php");
    exit();
}

$first_name = $_SESSION["instructor_first_name"];
$last_name = $_SESSION["instructor_last_name"];
$data = array(
    "first_name" => $first_name,
    "last_name" => $last_name
);

echo json_encode($data, JSON_PRETTY_PRINT);
