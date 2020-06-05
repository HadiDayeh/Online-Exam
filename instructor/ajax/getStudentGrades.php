<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/grades.php");
    exit();
}
$id_exam = $_POST['id_exam'];

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        students_exams.id_student,
        CONCAT(students.first_name, ' ', students.last_name) AS student,
        exams.questions,
        students_exams.right_answers,
        (exams.questions - students_exams.right_answers) AS wrong_answers,
        ROUND(((students_exams.right_answers * 100) / exams.questions),
                2) AS score,
        students_exams.date_time
    FROM
        exams,
        students,
        students_exams
    WHERE
        students.id_student = students_exams.id_student
            AND exams.id_exam = students_exams.id_exam
            AND exams.id_exam = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$id_exam]);
    $data = $stmt->fetchAll();

    echo json_encode($data, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
