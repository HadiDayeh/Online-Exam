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
    <title>Online Exam | Password</title>

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
                        <h4 class="panel-title">Change Password</h4>
                    </div>

                    <!-- Form -->
                    <div class="panel-body">
                        <form id="student_password_form">

                            <!-- Alerts -->
                            <div id="alert" class="alert text-center hidden">
                            </div>

                            <!-- Old Password -->
                            <div class="form-group">
                                <label for="old_password" class="control-label">Old Password</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-fw fa-lock"></span></span>
                                    <input type="password" class="form-control" id="old_password" name="old_password" placeholder="Old Password" required>
                                </div>
                            </div>

                            <!-- New Password -->
                            <div class="form-group">
                                <label for="new_password" class="control-label">New Password</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-fw fa-lock"></span></span>
                                    <input type="password" class="form-control" id="new_password" name="new_password" placeholder="New Password" required>
                                </div>
                            </div>

                            <!-- Confirm Password -->
                            <div class="form-group">
                                <label for="confirm_password" class="control-label">Confirm Password</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-fw fa-lock"></span></span>
                                    <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
                                </div>
                            </div>

                            <!-- Submit -->
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Change</button>
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
    <script src="/student/js/password.js"></script>

</body>

</html>