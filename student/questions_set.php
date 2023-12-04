<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../student_login.php?err=Please Login First!!!");
}

if (!isset($_GET["module"])) {
    header("location:dashboard.php");
} else {
    $module_id = $_GET["module"];
}

$student_id = $_SESSION["user"]["index"];

$get_module_details = "SELECT `module_name`, `level`,`semester` FROM `modules` WHERE module_id = '$module_id'";
$result = mysqli_query($conn, $get_module_details);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $module_name = $row["module_name"];
    $module_level = $row["level"];
    $module_semester = $row["semester"];
} else {
    echo "0 results";
}

$q_kit_sql = "SELECT q_kit_id FROM q_kit WHERE module_id = '$module_id' AND student_id = '$student_id'";

$result_2 = mysqli_query($conn, $q_kit_sql);

if(isset($_SESSION["questions"])){
    unset($_SESSION["questions"]);
    $_SESSION["questions"] = array();
}

if(isset($_SESSION["count"])){
    unset($_SESSION["count"]);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/questions_set.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
    <?php require("components/header.php"); ?>
    <div class="container">
        <div class="section_01">
            <div class="head">
                <h1><?php echo $module_name ?></h1>
                <!-- <a href="">Bookmarked Challenges</a> -->
            </div>

            <div class="grid-div">
                <?php
                    $kit_count = 0;
                    if (mysqli_num_rows($result_2) > 0) {
                        while($row_2 = mysqli_fetch_assoc($result_2)){
                            echo '
                                <div class="quize_done">
                                    <div class="div_head">
                                        <p style="margin-bottom: 30px; font-weight: 600; color: #0e141e;">Quiz Kit '.($kit_count + 1).'</p>
                                        <img class="done" src="images/done_green.png" width="25px" height="25px">
                                    </div>
                                    <p style="margin-bottom: 30px; color: #87888a;">'.$module_name.'</p>
                                    <div class="btn_row">
                                        <div class="btn_left">
                                            <div class="level-tag">Level '.$module_level.'</div>
                                            <div class="level-tag">Semester '.$module_semester.'</div>
                                        </div>
                                        <div class="btn-right">
                                            <a href = "view_question_kit.php?kit='.$row_2["q_kit_id"].'"><button class="admin-btn">Review</button></a>
                                        </div>
                                    </div>
                                </div>
                            ';
                            $kit_count++;
                        }
                    } else {
                        $kit_count = 0;
                    }

                    for ($i=$kit_count; $i < 10; $i++) { 
                        if($i == $kit_count){
                            echo '
                                <div class="quize_unlocked">
                                    <div class="div_head">
                                        <p style="margin-bottom: 30px;">Quiz Kit '.($kit_count + 1).'</p>
                                        <img src="images/unlock_icon.png" width="25px" height="25px">
                                    </div>
                                    <p style="margin-bottom: 30px; color: #87888a;">'.$module_name.'</p>
                                    <div class="btn_row">
                                    <div class="btn_left">
                                        <div class="level-tag">Level '.$module_level.'</div>
                                        <div class="level-tag">Semester '.$module_semester.'</div>
                                    </div>
                                        <div class="btn-right">
                                            <a href ="./apis/get_random_question.php?module='.$module_id.'">
                                                <button class="admin-btn">Start</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            ';
                        }else{
                            echo '
                            <div class="quize_locked">
                                <div class="div_head">
                                    <p style="margin-bottom: 30px;">Quiz Kit '.($i + 1).'</p>
                                    <img src="images/lock_icon.png" width="20px" height="20px">
                                </div>
                                <p style="margin-bottom: 30px; color: #87888a;">'.$module_name.'</p>
                                <div class="btn_row">
                                <div class="btn_left">
                                    <div class="level-tag">Level '.$module_level.'</div>
                                    <div class="level-tag">Semester '.$module_semester.'</div>
                                </div>
                                    <div class="btn-right">
            
                                    </div>
                                </div>
                            </div>
                            ';
                        }
                    }
                ?>
                <!-- <div class="quize_done">
                    <div class="div_head">
                        <p style="margin-bottom: 30px; font-weight: 600; color: #0e141e;">Quize KIT 1</p>
                        <img class="done" src="images/done_green.png" width="25px" height="25px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">
                            <button class="admin-btn">Review</button>
                        </div>
                    </div>
                </div>

                <div class="quize_unlocked">
                    <div class="div_head">
                        <p style="margin-bottom: 30px;">Quize KIT 1</p>
                        <img src="images/unlock_icon.png" width="25px" height="25px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">
                            <button class="admin-btn">Start</button>
                        </div>
                    </div>
                </div>

                <div class="quize_locked">
                    <div class="div_head">
                        <p style="margin-bottom: 30px;">Quize KIT 1</p>
                        <img src="images/lock_icon.png" width="20px" height="20px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">

                        </div>
                    </div>
                </div>

                <div class="quize_locked">
                    <div class="div_head">
                        <p style="margin-bottom: 30px;">Quize KIT 1</p>
                        <img src="images/lock_icon.png" width="20px" height="20px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">

                        </div>
                    </div>
                </div>

                <div class="quize_locked">
                    <div class="div_head">
                        <p style="margin-bottom: 30px;">Quize KIT 1</p>
                        <img src="images/lock_icon.png" width="20px" height="20px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">

                        </div>
                    </div>
                </div>

                <div class="quize_locked">
                    <div class="div_head">
                        <p style="margin-bottom: 30px;">Quize KIT 1</p>
                        <img src="images/lock_icon.png" width="20px" height="20px">
                    </div>
                    <p style="margin-bottom: 30px; color: #87888a;">Lorem ipsum dolor sit amet.</p>
                    <div class="btn_row">
                        <div class="btn_left">
                            <div class="level-tag">Level 1</div>
                            <div class="level-tag">Semester 1</div>
                        </div>
                        <div class="btn-right">

                        </div>
                    </div>
                </div> -->




            </div>
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