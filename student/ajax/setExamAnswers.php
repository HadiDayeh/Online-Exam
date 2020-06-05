<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/dashboard.php");
    exit();
}
$id_exam = $_POST['id_exam'];
$answers = $_POST['answers'];
$id_student = $_SESSION['student_id'];
$right_answers = 0;

try {
    // Connect to database then loop over answers
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    foreach ($answers as $key => $answer) {

        // Count right answers
        if ($answer['is_true'] == 1) {
            $right_answers++;
        }

        // For each answer prepare data
        $id_question = $answer['id_question'];
        $id_option = ($answer['id_option'] != "") ? $answer['id_option'] : NULL;

        // Insert answer into database
        $sql = "INSERT INTO answers (id_student, id_question, id_option) VALUES (?, ?, ?)";
        $stmt = $con->prepare($sql);
        $stmt->execute([$id_student, $id_question, $id_option]);
    }

    // Insert the exam into students_exams history
    $sql = "INSERT INTO students_exams (id_student, id_exam, right_answers) VALUES (?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->execute([$id_student, $id_exam, $right_answers]);
    
    $response = ['success' => true, 'message' => 'Exam Saved'];
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
