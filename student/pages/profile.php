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
    <title>Online Exam | Profile</title>

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

                    <!-- Title -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Student Profile</h4>
                    </div>

                    <!-- Form -->
                    <div class="panel-body">
                        <form id="student_update_form">

                            <!-- Alerts -->
                            <div id="alert" class="alert text-center hidden">
                            </div>

                            <!-- First Name -->
                            <div class="form-group">
                                <label for="first_name" class="control-label">First Name</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-fw fa-user"></span></span>
                                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name" required>
                                </div>
                            </div>

                            <!-- Last Name -->
                            <div class="form-group">
                                <label for="last_name" class="control-label">Last Name</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-fw fa-user"></span></span>
                                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name" required>
                                </div>
                            </div>

                            <!-- Submit -->
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/student/includes/footer.php"); ?>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/student/js/profile.js"></script>

</body>

</html>