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
    <title>Online Exam | Exam History</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body>

    <!-- Header -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/header.php"); ?>

    <!-- Content -->
    <div id="content" class="container">

        <!-- Top content -->
        <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/top_content.php"); ?>

        <!-- Main content -->
        <div class="row">

            <!--  LEFT BAR -->
            <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/left_bar.php"); ?>

            <!-- RIGHT CONTENT -->
            <div class="col-sm-8 col-md-8 col-lg-9">

                <!-- Content Panel -->
                <div class="panel panel-primary">

                    <!-- Panel Heading -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Exam History</h4>
                    </div>

                    <!-- Table -->
                    <table id="tblHistory" class="table table-striped table-bordered" style="width: 100%;">

                        <!-- Table Head -->
                        <thead>
                            <tr>
                                <th class="text-center">Class</th>
                                <th class="text-center">Exam</th>
                                <th class="text-center">Questions</th>
                                <th class="text-center">Right Answers</th>
                                <th class="text-center">Wrong Answers</th>
                                <th class="text-center">Score</th>
                                <th class="text-center">Date</th>
                            </tr>
                        </thead>

                        <!-- Table Body -->
                        <tbody>
                        </tbody>

                        <!-- Table Foot -->
                        <tfoot>
                        </tfoot>
                    </table>

                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/footer.php"); ?>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/student/js/history.js"></script>

</body>

</html>