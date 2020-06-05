<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/login.php");
    exit();
}
$email = strtolower($_POST['email']);
$password = $_POST['password'];

try {
    // Connect to database then check if account exists
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "SELECT * FROM students WHERE students.email = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$email]);

    if ($stmt->rowCount() > 0) {
        // Account exists -> Verify password
        $data = $stmt->fetch();
        $hash_password = $data['password'];

        if (password_verify($password, $hash_password)) {
            // Password is verified -> Save student info in session
            $_SESSION["student_id"] = $data['id_student'];
            $_SESSION["student_first_name"] = $data['first_name'];
            $_SESSION["student_last_name"] = $data['last_name'];
            $_SESSION["student_email"] = $data['email'];

            $response = ['success' => true, 'message' => 'Login Success'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        } else {
            // Password is not verified
            $response = ['success' => false, 'message' => 'Wrong Password'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    } else {
        // Account does not exist
        $response = ['success' => false, 'message' => 'Wrong Email Address'];
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;