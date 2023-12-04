<?php

require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
  header("location:../student_login.php?err=Please Login First!!!");
}

if (!isset($_GET["kit"])) {
  header("location:questions_set.php");
} else {
  $kit_id = $_GET["kit"];
}

$get_module = "SELECT module_name FROM q_kit, modules WHERE q_kit.module_id = modules.module_id AND q_kit_id = '$kit_id'";
$result_1 = mysqli_query($conn, $get_module);

if (mysqli_num_rows($result_1) > 0) {
$row_1 = mysqli_fetch_assoc($result_1);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="styles/view_question_kit.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>

  <?php include "components/header.php"; ?>

  <div class="sub-container">
    <h1><?php echo $row_1["module_name"]?></h1>
    <div class="line"></div>
  </div>

  <div class="container">
    <div class="section_01">

      <div class="grid-div">
        <?php 
        $sql = "SELECT questions.q_id, q_title, q_correct_answer FROM q_kit_questions, questions WHERE q_kit_questions.q_id = questions.q_id AND q_kit_id = '$kit_id'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
          // output data of each row
          while ($row = mysqli_fetch_assoc($result)) {
            echo '
                          <div class="year">
                              <div class="text">
                                  <p style="margin-bottom: 10px; color: #0e141e; font-weight: bold; font-size: 24px;">' . $row["q_title"] . '</p>
                                  <p style="margin-bottom: 30px; color: #c1c5ce;">'.$row_1["module_name"].'</p>
                                  <p style="color: #0e141e">' . $row["q_correct_answer"] . '</p>
                              </div>
          
                              <button onclick=\'window.location.href="view_question.php?q='.$row["q_id"].'"\' class="admin-btn">View Explanation</button>
                          </div>
                        ';
          }
        } else {
          echo "0 results";
        }
        ?>

        <!-- <div class="year">
          <div class="text">
            <p style="margin-bottom: 10px; color: #0e141e; font-weight: bold; font-size: 24px;">Lorem ipsum dolor sit amet.</p>
            <p style="margin-bottom: 30px; color: #c1c5ce;">Lorem ipsum dolor sit amet.</p>
            <p style="color: #0e141e">Lorem ipsum dolor sit amet.</p>
          </div>

          <button class="admin-btn-disable">Slove Challenge</button>
        </div> -->
      </div>
    </div>

    <!-- <div class="section_02">
            <div class="sort">
                <div class="row-sort">
                    <input type="radio" name="sloved">
                    <label for="sloved">Solved</label>
                </div>
                <div class="row-sort">
                    <input type="radio" name="sloved">
                    <label for="sloved">Solved</label>
                </div>
            </div>
        </div> -->
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