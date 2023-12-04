<?php
    require("./db_config/db_config.php");
    session_destroy();
    header("location:index.php");
?>