<?php
session_start();
session_destroy();

header("Location: /instructor/pages/login.php");
