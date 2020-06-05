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
    <title>Online Exam | Exams</title>

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
                                <button id="createExam" class="btn btn-success">
                                    <span class="fa fa-plus mr-10"></span>Create Exam
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Table Panel -->
                <div class="panel panel-primary">

                    <!-- Title -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Exams</h4>
                    </div>

                    <!-- Table -->
                    <table id="tblExams" class="table table-striped table-bordered" style="width: 100%;">

                        <!-- Table Head -->
                        <thead>
                            <tr>
                                <th class="text-center">Class</th>
                                <th class="text-center">Exam</th>
                                <th class="text-center">Questions</th>
                                <th class="text-center">Duration</th>
                                <th class="text-center">Action</th>
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

    <!-- Modal -->
    <div class="modal fade" id="create_exam_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="panel-title fw-bold pv-5">Create New Exam</h4>
                </div>

                <!-- Modal Body -->
                <div class="modal-body pv-10">

                    <!-- Modal Form -->
                    <form id="create_exam_form" method="POST" action="create_exam.php">

                        <!-- Class Name -->
                        <div class="form-group">
                            <label for="class_name" class="control-label">Class Name</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-book"></span></span>
                                <select name="class_name" id="class_name" class="form-control" required>
                                </select>
                            </div>
                        </div>

                        <!-- Exam Title -->
                        <div class="form-group">
                            <label for="exam_title" class="control-label">Exam Title</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-pencil-square-o"></span></span>
                                <input type="text" class="form-control" id="exam_title" name="exam_title" placeholder="Exam Title" required>
                            </div>
                        </div>

                        <!-- Exam Description -->
                        <div class="form-group">
                            <label for="description" class="control-label">Description</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-commenting"></span></span>
                                <input type="text" class="form-control" id="description" name="description" placeholder="Description">
                            </div>
                        </div>

                        <!-- Total Questions -->
                        <div class="form-group">
                            <label for="questions" class="control-label">Total Questions</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-list-ol"></span></span>
                                <input type="number" class="form-control" id="questions" name="questions" placeholder="Total Questions" required>
                            </div>
                        </div>

                        <!-- Duration -->
                        <div class="form-group">
                            <label for="duration" class="control-label">Duration (Minutes)</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-hourglass"></span></span>
                                <input type="number" class="form-control" id="duration" name="duration" placeholder="Duration" required>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- Modal Footer -->
                <div class="modal-footer">
                    <div class="text-right">
                        <button type="submit" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="create_exam_form">Submit</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/exams.js"></script>

</body>

</html>