<?php

require("../../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../../student_login.php?err=Please Login First!!!");
}

$module = $_GET["module_id"];

$student_id = $_SESSION["user"]["index"];

$get_current_modules = "SELECT `module_id`, `student_id` FROM `progress_module` WHERE student_id = '$student_id' AND module_id = '$module'";

$result = mysqli_query($conn, $get_current_modules);

if (mysqli_num_rows($result) > 0) {
    echo "Already Enrolled";
    header("location:../dashboard.php?err=Already Enrolled");
} else {

    $sql = "INSERT INTO `progress_module`(`module_id`, `student_id`) VALUES ('$module','$student_id')";

    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
        header("location:../dashboard.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

mysqli_close($conn);
