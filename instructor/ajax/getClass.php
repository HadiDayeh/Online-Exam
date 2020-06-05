<?php
session_start();

// Check if request is empty then get data
if (empty($_POST)) {
    header("Location: /instructor/pages/exams.php");
    exit();
}
$id_class = $_POST['id_class'];

try {
    // Connect to database then select data
    include_once($_SERVER["DOCUMENT_ROOT"] . "/includes/connection.php");

    $sql =
        "SELECT 
        classes.name
    FROM
        classes
    WHERE
        classes.id_class = ?";

    $stmt = $con->prepare($sql);
    $stmt->execute([$id_class]);
    $Class = $stmt->fetch();

    echo json_encode($Class, JSON_PRETTY_PRINT);
} catch (PDOException $e) {
    die($e->getMessage());
}

$con = null;
