<?php

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/exams.php");
    exit();
}
$id_exam = $_POST['id_exam'];

try {
    // Connect to database then update data
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "UPDATE exams SET id_status = '2' WHERE id_exam = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$id_exam]);

    $response = ['success' => true, 'message' => 'Exam Successfully Activated'];
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
