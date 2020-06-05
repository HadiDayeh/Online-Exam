<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/profile.php");
    exit();
}
$first_name = ucwords(strtolower($_POST['first_name']));
$last_name = ucwords(strtolower($_POST['last_name']));

try {
    // Connect to database then update data
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "UPDATE students SET first_name = ?, last_name = ? WHERE id_student = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$first_name, $last_name, $_SESSION["student_id"]]);

    $_SESSION["student_first_name"] = $first_name;
    $_SESSION["student_last_name"] = $last_name;

    $response = ['success' => true, 'message' => 'Profile Successfully Updated', 'data' => ['first_name' => $first_name, 'last_name' => $last_name]];
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
