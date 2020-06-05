<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/register.php");
    exit();
}
$first_name = ucwords(strtolower($_POST['first_name']));
$last_name = ucwords(strtolower($_POST['last_name']));
$email = strtolower($_POST['email']);
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

try {
    // Connect to database then check if account exists
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "SELECT * FROM students WHERE students.email = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$email]);

    if ($stmt->rowCount() > 0) {
        // Account exists
        $response = ['success' => false, 'message' => 'Account with this e-mail address already exists'];
        echo json_encode($response, JSON_PRETTY_PRINT);
    } else {
        // Account does not exist -> Confirm password
        if ($password === $confirm_password) {
            // Password confirmed -> Insert into database then save student info in session
            $hash_pass = password_hash($password, PASSWORD_BCRYPT);
            $sql = "INSERT INTO students (first_name, last_name, email, password) VALUES (?, ?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->execute([$first_name, $last_name, $email, $hash_pass]);

            $_SESSION["student_id"] = $con->lastInsertId();
            $_SESSION["student_first_name"] = $first_name;
            $_SESSION["student_last_name"] = $last_name;
            $_SESSION["student_email"] = $email;

            $response = ['success' => true, 'message' => 'Register Success'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        } else {
            // Password in not confirmed
            $response = ['success' => false, 'message' => 'Password was not confirmed'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    }
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
