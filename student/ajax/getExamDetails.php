<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/dashboard.php");
    exit();
}
$id_exam = $_POST['id_exam'];

try {
    // Connect to database then check if exam is related
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
            AND all_exams.id_status = '2'
            AND all_exams.id_exam = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["student_id"], $_SESSION["student_id"], $id_exam]);

    if ($stmt->rowCount() > 0) {
        // Exam is related -> Get exam details
        $sql =
            "SELECT 
            classes.name AS class,
            exams.title,
            exams.description,
            exams.questions,
            exams.duration
        FROM
            exams,
            classes
        WHERE
            exams.id_class = classes.id_class
                AND exams.id_exam = ?";

        $stmt = $con->prepare($sql);
        $stmt->execute([$id_exam]);
        $data = $stmt->fetch();

        $response = ['success' => true, 'data' => $data];
        echo json_encode($response, JSON_PRETTY_PRINT);
    } else {
        // Exam is not related
        $response = ['success' => false, 'data' => null];
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
