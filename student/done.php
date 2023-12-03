<?php

    require("../db_config/db_config.php");

    $ques = $_SESSION["questions"];
    $module_id = $_GET["module"];
    $student_id = $_SESSION["user"]["index"];
    
    foreach ($ques as $key => $value) {
        echo $value;
        echo '</br>';
    }
    
    $insert_q_kit = "INSERT INTO `q_kit`(`module_id`, `student_id`) VALUES ('$module_id','$student_id')";
    
    if (mysqli_query($conn, $insert_q_kit)) {
        $last_id = mysqli_insert_id($conn);
        
        $q_kit_questions = "INSERT INTO `q_kit_questions`(`q_kit_id`, `q_id`) VALUES";
        
        foreach ($ques as $key => $value) {
            $q_kit_questions .= "('$last_id', '$value')";
            if($key != count($ques) - 1){
                $q_kit_questions .= ", ";
            }
            echo $q_kit_questions;
            echo '</br>';
        }

        if (mysqli_query($conn, $q_kit_questions)) {
            echo 'Question Added Successfully!!!';
            unset($_SESSION["questions"]);
            unset($_SESSION["count"]);
            header("location:questions_set.php?module=$module_id");
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
?>