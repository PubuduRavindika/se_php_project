<?php

require("../db_config/db_config.php");

$ques = $_SESSION["questions"];
$module_id = $_GET["module"];
$student_id = $_SESSION["user"]["index"];

$sql = "SELECT module_name FROM modules WHERE module_id = '$module_id'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while ($row = mysqli_fetch_assoc($result)) {
        $module = $row["module_name"];
    }
} else {
    echo "0 results";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $insert_q_kit = "INSERT INTO `q_kit`(`module_id`, `student_id`) VALUES ('$module_id','$student_id')";

    if (mysqli_query($conn, $insert_q_kit)) {
        $last_id = mysqli_insert_id($conn);

        $q_kit_questions = "INSERT INTO `q_kit_questions`(`q_kit_id`, `q_id`,`q_is_correct`) VALUES";

        foreach ($ques as $key => $element) {
            $q_kit_questions .= "('$last_id', '$element[0]', '$element[1]')";
            if ($key != count($ques) - 1) {
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
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/summary.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
    <?php
        include("components/header.php");    
    ?>
    <div class="sub-container">
        <h1><?php echo $module; ?></h1>
        <div class="line"></div>
    </div>

    <div class="container">
        <div class="section_01">

            <table>
                <thead>
                    <th>Question No</th>
                    <th>Question</th>
                    <th>Answer</th>
                </thead>
                <tbody>
                    <?php
                    $count = 0;
                    $correct_ans_count = 0;
                    foreach ($ques as $key => $element) {
                        $get_q_name = "SELECT q_title FROM questions WHERE q_id = '$element[0]'";
                        $result_2 = mysqli_query($conn, $get_q_name);

                        if (mysqli_num_rows($result_2) > 0) {
                            $row_2 = mysqli_fetch_assoc($result_2);
                        }
                        $count++;
                        if ($element[1] == 1) {
                            $correct_ans_count++;
                            echo '
                                    <tr>
                                        <td>' . $count . '</td>
                                        <td style="text-align: left;">' . $row_2['q_title'] . '</td>
                                        <td><i class="bx bx-check"></i></td>
                                    </tr>
                                ';
                        } else {
                            echo '
                                    <tr class="wrong">
                                        <td>' . $count . '</td>
                                        <td style="text-align: left;">' . $row_2['q_title'] . '</td>
                                        <td><i class="bx bx-x"></i></td>
                                    </tr>
                                ';
                        }
                    }
                    ?>
                </tbody>
            </table>
            <p><?php echo $correct_ans_count ?></p>
            <form action="" method="POST" id ="submit-form"></form>
            <?php
            if ($correct_ans_count >= 8) {
                echo '
                        <button type = "submit" form = "submit-form" class="btn" style="margin-top:40px;">CONTINUE</button>
                    ';
            } else {
                echo '
                        <button class="btn" onclick=\'window.location.href="questions_set.php?module=' . $module_id . '"\' style="margin-top:40px;">TRY AGAIN</button>
                    ';
            }
            ?>
        </div>

    </div>

</body>

<!--------js for toggle menu-------->

<script>
    var menuItems = document.getElementById("profile-item");

    function profiletoggle() {

        if (menuItems.style.maxHeight == "0px") {
            menuItems.style.maxHeight = "200px";
        } else {
            menuItems.style.maxHeight = "0px";
        }
    }
</script>

</html>