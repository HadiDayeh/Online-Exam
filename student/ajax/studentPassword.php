<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /student/pages/password.php");
    exit();
}
$old_password = $_POST['old_password'];
$new_password = $_POST['new_password'];
$confirm_password = $_POST['confirm_password'];

try {
    // Connect to database then get related account
    include_once $_SERVER["DOCUMENT_ROOT"] . '/includes/connection.php';
    $sql = "SELECT * FROM students WHERE students.id_student = ?";
    $stmt = $con->prepare($sql);
    $stmt->execute([$_SESSION["student_id"]]);

    // Verify old password
    $data = $stmt->fetch();
    $hash_old_password = $data['password'];
    if (password_verify($old_password, $hash_old_password)) {

        // Old password is verified -> Confirm new password
        if ($new_password === $confirm_password) {
            // New password is confirmed -> Update password
            $hash_new_password = password_hash($new_password, PASSWORD_BCRYPT);
            $sql = "UPDATE students SET password = ? WHERE id_student = ?";
            $stmt = $con->prepare($sql);
            $stmt->execute([$hash_new_password, $_SESSION["student_id"]]);

            $response = ['success' => true, 'message' => 'Password Successfully Updated'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        } else {
            // New password is not confirmed
            $response = ['success' => false, 'message' => 'New password was not confirmed'];
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    } else {
        // Old password is not verified
        $response = ['success' => false, 'message' => 'Wrong Old Password'];
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
