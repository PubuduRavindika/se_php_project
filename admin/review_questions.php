<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["lecturer"])) {
    header("location:../admin_login.php?err=Please Login First!!!");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/review_questions.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">

        <?php include "./components/sidebar.php" ?>

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Review Questions</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="logout.php">Logout</a>
            </div>

            <div class="sub-container">
                <div class="add">
                    <div class="questions">
                        <div class="content">
                            <?php
                            $lec_id = $_SESSION["lecturer"]["id"];
                            $sql = "SELECT q_id, q_title, module_name FROM questions, modules WHERE questions.module_id = modules.module_id AND questions.lecturer_id ='$lec_id'";
                            $result = mysqli_query($conn, $sql);

                            if (mysqli_num_rows($result) > 0) {

                                while ($row = mysqli_fetch_assoc($result)) {

                                    $q_id = $row["q_id"];
                                    $get_quiz_count = "SELECT * FROM q_kit_questions WHERE q_id ='$q_id'";

                                    $result_2 = mysqli_query($conn, $get_quiz_count);
                                    $count = 0;
                                    $correct_count = 0;

                                    if (mysqli_num_rows($result_2) > 0) {

                                        // output data of each row
                                        while ($row_2 = mysqli_fetch_assoc($result_2)) {

                                            $count++;

                                            if (isset($row_2["q_is_correct"])) {
                                                if ($row_2["q_is_correct"] == 1) {
                                                    $correct_count++;
                                                }
                                            }
                                        }
                                        if($correct_count == 0 || $count == 0){
                                            $correct_pre = 0;
                                        }
                                        else{
                                            $correct_pre = ($correct_count/$count) * 100; 
                                        }
                                        echo '
                                        <p style="font-size: 12px; font-weight: bold; margin-bottom: 5px;">' . $row["q_title"] . '</p>
                                        <p style="font-size: 12px; margin: 0;margin-bottom: 4px; color: #818181;">' . $row["module_name"] . '</p>
                                        <div class="progress_bar">
                                            <div class="progress" style="width: '.$correct_pre.'%;"></div>
                                        </div>
                                        <!-- <p style="margin-bottom: 10px; color: #c1c5ce;">15% completed</p> -->
                                        <div class="analys">
                                            <p>Attempts: ' . $count . '</p>
                                            <p>Correct Answer: '.$correct_pre.'%</p>
                                            <p>Wrong Answer: '.($count == 0 ?0:100 - $correct_pre).'%</p>
                                        </div>
                                        ';
                                        $count = 0;
                                        $correct_count = 0;
                                    } else {

                                    }
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>
                        </div>

                    </div>

                </div>


            </div>
        </div>
        <script>
            document.getElementById("review-menu-item").classList.add("active");
        </script>
</body>

</html>