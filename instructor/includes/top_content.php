<div class="dashboard_header">
    <div class="dashboard_header_content">
        <?php
        if (isset($_SESSION["instructor_first_name"]) && isset($_SESSION["instructor_last_name"])) {
            echo '<div class="name"><i class="fa fa-lg fa-fw fa-user-circle mr-5"></i><span id="instructorName">'
                . $_SESSION["instructor_first_name"] . " " . $_SESSION["instructor_last_name"] . '</span></div>';
        }
        ?>
        <?php
        if (isset($_SESSION["instructor_email"])) {
            echo '<div class="email"><i class="fa fa-lg fa-fw fa-envelope mr-5"></i>' . $_SESSION["instructor_email"] . '</div>';
        }
        ?>
    </div>
</div>