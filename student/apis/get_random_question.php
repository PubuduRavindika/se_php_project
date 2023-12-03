<?php

require("../../db_config/db_config.php");

if (!isset($_SESSION["count"])) {
    $_SESSION["count"] = 0;
}

// Question Array

if(!isset($_SESSION["questions"])){
    $_SESSION["questions"] = array();
}

if(isset($_GET["pre_q_id"])){
    array_push($_SESSION["questions"], $_GET["pre_q_id"]);
}

if (!isset($_GET["module"])) {
    header("location:../question_set.php");
} else {
    $module_id = $_GET["module"];
}


if (isset($_SESSION["count"]) && (int)$_SESSION["count"] >= 10) {
    header("location:../done.php?module=$module_id");
    unset($_SESSION["count"]);
}
else{
    // if (!isset($_GET["module"])) {
    //     header("location:../question_set.php");
    // } else {
    //     $module_id = $_GET["module"];
    // }
    
    $select_all = "SELECT q_id FROM questions WHERE module_id = '$module_id' ORDER BY rand() LIMIT 1";
    $result_1 = mysqli_query($conn, $select_all);
    if (mysqli_num_rows($result_1) > 0) {
    
        $row = mysqli_fetch_assoc($result_1);
        $selected_id = $row["q_id"];
        $_SESSION["count"]++;
        header("location:../question.php?module=$module_id&&q=$selected_id");
    } else {
        echo "0 results";
    }
}
