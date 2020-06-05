<?php
session_start();

// If not logged in redirect to login page
if (empty($_SESSION["student_email"])) {
    header("Location: /student/pages/login.php");
    exit();
}

$first_name = $_SESSION["student_first_name"];
$last_name = $_SESSION["student_last_name"];
$data = array(
    "first_name" => $first_name,
    "last_name" => $last_name
);

echo json_encode($data, JSON_PRETTY_PRINT);
