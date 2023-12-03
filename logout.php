<?php
    require("./db_config/db_config.php");
    session_destroy();
    header("location:student_login.php");
?>