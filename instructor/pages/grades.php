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
    <title>Online Exam | Grades</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body>

    <!-- Header -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/header.php"); ?>

    <!-- Content -->
    <div id="content" class="container">

        <!-- Top content -->
        <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/top_content.php"); ?>

        <!-- Main content -->
        <div class="row">

            <!--  LEFT BAR -->
            <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/left_bar.php"); ?>

            <!-- RIGHT CONTENT -->
            <div class="col-sm-8 col-md-8 col-lg-9">

                <!-- Top Panel -->
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-pencil-square-o"></span></span>
                                <select id="exams_list" class="form-control">
                                    <option class="hidden" selected>Select Exam</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Table Panel -->
                <div class="panel panel-primary">

                    <!-- Title -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Grades</h4>
                    </div>

                    <!-- Table -->
                    <table id="tblGrades" class="table table-striped table-bordered" style="width: 100%;">

                        <!-- Table Head -->
                        <thead>
                            <tr>
                                <th class="text-center">Student</th>
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
                            <tr>
                                <th colspan="2">Total Students:</th>
                                <th colspan="1"></th>
                                <th colspan="2">Average Grade:</th>
                                <th colspan="1"></th>
                            </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/footer.php"); ?>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/grades.js"></script>

</body>

</html>