<?php
session_start();

// If logged in redirect to dashboard page
if (isset($_SESSION["instructor_email"])) {
    header("Location: /instructor/pages/exams.php");
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
    <title>Instructor Login</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body class="bg-pattern">

    <!-- Login Form -->
    <div class="login_form">
        <div class="panel panel-default">
            <div class="panel-body">
                <form id="instructor_login_form">

                    <!-- Form Title -->
                    <h3 class="text-center mt-0 mb-20">Instructor Login</h3>

                    <!-- Alerts -->
                    <div id="alert" class="alert text-center hidden">
                    </div>

                    <!-- E-mail -->
                    <div class="form-group">
                        <label for="email" class="control-label">Email</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-fw fa-envelope"></span></span>
                            <input type="email" class="form-control" id="email" name="email" placeholder="admin@instructor.com" required>
                        </div>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label for="password" class="control-label">Password</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-fw fa-lock"></span></span>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        </div>
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-block btn-primary">Log In</button>
                    </div>
                </form>

                <!-- Some links -->
                <p class="help-block mt-10 mb-0">
                    <!-- Create account -->
                    <a href="/instructor/pages/register.php" class="pull-left">Create Account</a>

                    <!-- Switch to Instructor -->
                    <a href="/student/pages/login.php" class="pull-right">Login as Student</a>
                </p>

            </div>
        </div>
    </div>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/login.js"></script>

</body>

</html>