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
        "SELECT DISTINCT
        classes_list.id_class,
        classes_list.name AS class,
        classes_list.instructor,
        classes_list.email,
        COUNT(DISTINCT (exams_list.id_exam)) AS total_exams
    FROM
        (SELECT 
            students_classes.id_student,
                classes.id_class,
                classes.name,
                CONCAT(instructors.first_name, ' ', instructors.last_name) AS instructor,
                instructors.email
        FROM
            students_classes, classes, instructors
        WHERE
            students_classes.id_class = classes.id_class
                AND classes.id_instructor = instructors.id_instructor) AS classes_list
            LEFT JOIN
        (SELECT 
            students_classes.id_student,
                exams.id_exam,
                classes.id_class,
                exams.id_status
        FROM
            exams, classes, students_classes
        WHERE
            exams.id_class = classes.id_class
                AND classes.id_class = students_classes.id_class
                AND exams.id_status = '2') AS exams_list ON classes_list.id_class = exams_list.id_class
    WHERE
        classes_list.id_student = ?
    GROUP BY classes_list.name";
    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["student_id"]]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
