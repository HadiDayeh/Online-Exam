<?php
session_start();

// Check if session is empty
if (empty($_SESSION)) {
    header("Location: /instructor/pages/classes.php");
    exit();
}

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        total_students.id_class,
        total_students.class,
        total_students.total_students,
        total_exams.total_exams
    FROM
        total_students,
        total_exams
    WHERE
        total_students.id_class = total_exams.id_class
            AND total_students.id_instructor = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["instructor_id"]]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
