<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" href="/assets/img/favicon.png">
    <title>Online Exam</title>

    <!-- ========================= CSS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/css_includes.php"); ?>

</head>

<body class="bg-pattern">

    <!-- Intro -->
    <div id="intro_wrapper">
        <div id="intro">
            <h1 class="text-center mt-0 mb-30">Online Exam</h1>

            <p class="text-center">
                <a class="btn btn-lg btn-primary mh-10" href="/student/pages/login.php">Student Login</a>
                <a class="btn btn-lg btn-primary mh-10" href="/instructor/pages/login.php">Instructor Login</a>
            </p>
        </div>
    </div>

    <!-- ========================= JS ========================= -->
    <?php include($_SERVER["DOCUMENT_ROOT"] . "/includes/js_includes.php"); ?>

</body>

</html>