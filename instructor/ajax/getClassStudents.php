<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/students.php");
    exit();
}
$id_class = $_POST['id_class'];

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        students.id_student,
        CONCAT(students.first_name,
                ' ',
                students.last_name) AS student,
        students.email
    FROM
        students,
        students_classes
    WHERE
        students_classes.id_student = students.id_student
            AND students_classes.id_class = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$id_class]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
