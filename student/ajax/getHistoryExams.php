<?php
session_start();

// If not logged in redirect to login page
if (empty($_SESSION["student_email"])) {
    header("Location: /student/pages/login.php");
    exit();
}

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        exams.id_exam,
        exams.id_class,
        classes.name AS class,
        exams.title,
        exams.questions,
        students_exams.right_answers,
        (exams.questions - students_exams.right_answers) AS wrong_answers,
        ROUND(((students_exams.right_answers * 100) / exams.questions), 2) AS score,
        students_exams.date_time
    FROM
        exams,
        classes,
        students_exams
    WHERE
        exams.id_class = classes.id_class
            AND exams.id_exam = students_exams.id_exam
            AND students_exams.id_student = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["student_id"]]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
