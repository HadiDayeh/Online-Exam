<?php

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/exams.php");
    exit();
}
$id_class = $_POST['id_class'];
$title = ucwords(strtolower($_POST['title']));
$description = $_POST['description'];
$questions = $_POST['questions'];
$duration = $_POST['duration'];
$questions_list = $_POST['questions_list'];

try {
    // Connect to database then insert exam and get its id
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "INSERT INTO exams (id_class, title, description, questions, duration) VALUES (?, ?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->execute([$id_class, $title, $description, $questions, $duration]);
    $id_exam = $con->lastInsertId();

    foreach ($questions_list as $key => $question) {
        // Insert question into database and get its id
        $sql = "INSERT INTO questions (id_exam, question) VALUES (?, ?)";
        $stmt = $con->prepare($sql);
        $stmt->execute([$id_exam, $question['question']]);
        $question_id = $con->lastInsertId();

        // Insert question options into database
        $sql = "INSERT INTO options (id_question, `option`, is_true) VALUES ( ?, ?, '1'), ( ?, ?, '0'), ( ?, ?, '0')";
        $stmt = $con->prepare($sql);
        $stmt->execute([
            $question_id, $question['option1'],
            $question_id, $question['option2'],
            $question_id, $question['option3']
        ]);
    }

    $response = ['success' => true, 'message' => 'Added Successfully'];
    echo json_encode($response, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
