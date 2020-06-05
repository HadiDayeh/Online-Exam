<?php
session_start();
session_destroy();

header("Location: /student/pages/login.php");
