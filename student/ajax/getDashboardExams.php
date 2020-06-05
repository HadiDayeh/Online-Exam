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
        all_exams.id_exam,
        all_exams.id_class,
        classes.name AS class,
        all_exams.title,
        all_exams.questions,
        all_exams.duration
    FROM
        (SELECT 
            students_exams.id_student, students_exams.id_exam
        FROM
            students_exams
        WHERE
            students_exams.id_student = ?) AS attended_exams
            RIGHT JOIN
        (SELECT 
            students_classes.id_student,
                exams.id_exam,
                exams.id_class,
                exams.id_status,
                exams.title,
                exams.questions,
                exams.duration
        FROM
            exams
        INNER JOIN students_classes ON exams.id_class = students_classes.id_class
        WHERE
            students_classes.id_student = ?) AS all_exams ON attended_exams.id_exam = all_exams.id_exam,
        classes
    WHERE
        attended_exams.id_exam IS NULL
            AND all_exams.id_class = classes.id_class
            AND all_exams.id_status = '2'";

    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["student_id"], $_SESSION["student_id"]]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
