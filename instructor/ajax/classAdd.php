<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/classes.php");
    exit();
}
$class_name = ucwords(strtolower($_POST['class_name']));
$id_instructor = $_SESSION["instructor_id"];

try {
    // Connect to database then insert data
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "INSERT INTO classes (id_instructor, name) VALUES (?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->execute([$id_instructor, $class_name]);

    $response = ['success' => true, 'message' => 'Added Successfully'];
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
