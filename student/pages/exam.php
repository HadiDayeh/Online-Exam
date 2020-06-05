<?php
session_start();

// If not logged in redirect to login page
if (empty($_SESSION["student_email"])) {
    header("Location: /student/pages/login.php");
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
    <title>Online Exam | Exam</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body>

    <!-- Header -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:void(0);">
                    Online Exam | <span id="exam_title"></span>
                </a>
            </div>
            <div class="navbar-right">
                <p id="timer" class="navbar-text fw-bold"></p>
                <button id="btnStart" class="btn navbar-btn btn-default disabled">Start Now</button>
            </div>
        </div>
    </nav>


    <!-- Content -->
    <div id="content" class="container mt-80">
        <div id="content" class="container">

            <!-- Top content -->
            <div class="jumbotron">
                <h2 class="fw-bold text-center mt-0 mb-15">
                    <span id="class" class="mb-10" style="display: block"></span>
                    <span id="title" style="display: block"></span>
                </h2>
                <p id="description" class="text-center mb-15"></p>
                <br>
                <div class="text-center">
                    <span class="label label-lg label-primary mh-5">Questions: <span id="questions"></span></span>
                    <span class="label label-lg label-primary mh-5">Duration: <span id="duration"></span></span>
                </div>
            </div>

            <!-- Main content -->
            <div id="exam" class="ph-100 hidden">
            </div>

            <!-- Bottom content -->
            <div class="text-right ph-100 mb-20">
                <button id="submit" class="btn btn-success hidden">Submit</button>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/footer.php"); ?>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/student/js/exam.js"></script>

</body>

</html>