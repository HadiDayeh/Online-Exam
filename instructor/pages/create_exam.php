<?php
session_start();

// If not logged in redirect to login page
if (empty($_SESSION["instructor_email"])) {
    header("Location: /instructor/pages/login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" href="/assets/img/favicon.png">
    <title>Online Exam | Create Exam</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body>

    <!-- Header -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/header.php"); ?>

    <!-- Content -->
    <div id="content" class="container">
        <div class="jumbotron">
            <input id="class_id" type="hidden" value="<?= $_POST['class_name'] ?>" />
            <h2 class="fw-bold text-center mt-0 mb-15">
                <span id="class_name" class="mb-10" style="display: block"></span>
                <span id="exam_title" style="display: block"><?= ucwords(strtolower($_POST['exam_title'])) ?></span>
            </h2>
            <p id="description" class="text-center mb-15"><?= $_POST['description'] ?></p>
            <br>
            <div class="text-center">
                <span class="label label-lg label-primary mh-5">Questions: <span id="questions"><?= $_POST['questions'] ?></span></span>
                <span class="label label-lg label-primary mh-5">Duration: <span id="duration"><?= $_POST['duration'] ?></span> Minutes</span>
            </div>
        </div>

        <div id="question_form" class="ph-100"></div>
        <button class="btn btn-success pull-right mr-100" id="submit">Save Exam</button>
    </div>

    <!-- Footer -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/footer.php"); ?>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/create_exam.js"></script>

</body>

</html>