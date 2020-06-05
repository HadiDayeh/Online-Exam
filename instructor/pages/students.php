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
    <title>Online Exam | Students</title>

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
                    <!-- Classes List -->
                    <div class="col-sm-5 col-md-5 col-lg-4">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-book"></span></span>
                                <select name="classes_list" id="classes_list" class="form-control" required>
                                    <option class="hidden" selected>Select Class</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <!-- Add Student -->
                    <div class="col-sm-7 col-md-7 col-lg-6 col-sm-offset-0 col-md-offset-0 col-lg-offset-2">
                        <div class="form-group">
                            <div class="input-group">
                                <input type="email" class="form-control" id="student_email" placeholder="user@student.com">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" id="addStudent">
                                        <span class="fa fa-plus"></span><span class="ml-10 hidden-sm">Add Student</span>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Table Panel -->
                <div class="panel panel-primary">

                    <!-- Title -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Students</h4>
                    </div>

                    <!-- Table -->
                    <table id="tblStudents" class="table table-striped table-bordered" style="width: 100%;">

                        <!-- Table Head -->
                        <thead>
                            <tr>
                                <th class="text-center">Student</th>
                                <th class="text-center">E-mail</th>
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
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/instructor/includes/footer.php"); ?>
    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/students.js"></script>

</body>

</html>