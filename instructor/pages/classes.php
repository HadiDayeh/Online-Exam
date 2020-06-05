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
    <title>Online Exam | Classes</title>

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
                                <button id="createClass" class="btn btn-success">
                                    <span class="fa fa-plus mr-10"></span>Create Class
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Table Panel -->
                <div class="panel panel-primary">

                    <!-- Title -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Classes</h4>
                    </div>

                    <!-- Table -->
                    <table id="tblClasses" class="table table-striped table-bordered" style="width: 100%;">

                        <!-- Table Head -->
                        <thead>
                            <tr>
                                <th class="text-center">Class</th>
                                <th class="text-center">Total Students</th>
                                <th class="text-center">Total Exams</th>
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
    <div class="modal fade" id="create_class_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="panel-title fw-bold pv-5">Create New Class</h4>
                </div>

                <!-- Modal Body -->
                <div class="modal-body pv-10">

                    <!-- Modal Form -->
                    <form id="create_class_form">

                        <!-- Class Name -->
                        <div class="form-group">
                            <label for="class_name" class="control-label">Class Name</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-fw fa-book"></span></span>
                                <input name="class_name" id="class_name" type="text" class="form-control" placeholder="Class Name" required>
                            </div>
                        </div>

                    </form>
                </div>

                <!-- Modal Footer -->
                <div class="modal-footer">
                    <div class="text-right">
                        <button type="submit" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="create_class_form">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/classes.js"></script>

</body>

</html>