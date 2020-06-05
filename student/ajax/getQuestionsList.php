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
        questions.id_question, questions.question
    FROM
        exams,
        questions
    WHERE
        exams.id_exam = questions.id_exam
            AND exams.id_exam = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute(array($_POST['id_exam']));
    $questions = $stmt->fetchAll();

    // Select options list for each question
    foreach ($questions as $i => $question) {
        $sql =
            "SELECT 
            options.id_option, options.option, options.is_true
        FROM
            questions,
            options
        WHERE
            questions.id_question = options.id_question
                AND questions.id_question = ?
        ORDER BY options.option ASC";
        $stmt = $con->prepare($sql);
        $stmt->execute([$question['id_question']]);
        $options = $stmt->fetchAll();

        // Add options to the question
        $question['options'] = $options;
        $questions[$i] = $question;
    }

    echo json_encode($questions, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
