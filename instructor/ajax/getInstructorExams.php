<?php
session_start();

// Check if session is empty
if (empty($_SESSION)) {
    header("Location: /instructor/pages/exams.php");
    exit();
}

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        exams.id_exam,
        classes.id_class,
        exams.id_status,
        classes.name as class,
        exams.title,
        exams.questions,
        exams.duration
    FROM
        classes,
        exams,
        instructors
    WHERE
        exams.id_class = classes.id_class
            AND classes.id_instructor = instructors.id_instructor
            AND instructors.id_instructor = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["instructor_id"]]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
