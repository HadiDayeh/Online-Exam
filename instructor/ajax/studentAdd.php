<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/students.php");
    exit();
}
$student_email = strtolower($_POST["student_email"]);
$id_class = $_POST["id_class"];

try {
    // Connect to database then get related account
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "SELECT * FROM students WHERE students.email = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$student_email]);

    if ($stmt->rowCount() > 0) {
        // Account exists -> Check if student is already in the class
        $data = $stmt->fetch();
        $id_student = $data['id_student'];
        $sql = "SELECT * FROM students_classes WHERE students_classes.id_student = ? AND students_classes.id_class = ?";
        $stmt = $con->prepare($sql);
        $stmt->execute([$id_student, $id_class]);

        if ($stmt->rowCount() > 0) {
            // Student is already in the class
            $response = ['success' => false, 'message' => 'Student is already in this class'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        } else {
            // Student is not in the class -> Add student to the class
            $sql = "INSERT INTO students_classes (id_class, id_student) VALUES (?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->execute([$id_class, $id_student]);
            $response = ['success' => true, 'message' => 'Student Added Successfully'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    } else {
        // Account does no exist
        $response = ['success' => false, 'message' => 'Account does not exist'];
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
