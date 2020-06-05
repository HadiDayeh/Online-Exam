<?php
session_start();

// If logged in redirect to exams page
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
    <title>Instructor Register</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body class="bg-pattern">

    <!-- Login Form -->
    <div class="login_form">
        <div class="panel panel-default">
            <div class="panel-body">
                <form id="instructor_register_form">

                    <!-- Form Title -->
                    <h3 class="text-center mt-0 mb-20">Instructor Register</h3>

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

                    <!-- E-mail -->
                    <div class="form-group">
                        <label for="email" class="control-label">E-mail</label>
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
                    
                    <!-- confirm password -->
                    <div class="form-group">
                        <label for="confirm_password" class="control-label">Confirm Password</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-fw fa-lock"></span></span>
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Password" required>
                        </div>
                    </div>

                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-block btn-primary">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>
    <script src="/instructor/js/register.js"></script>

</body>

</html>