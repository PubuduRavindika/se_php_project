<?php
    require("../db_config/db_config.php");

    if(!isset($_SESSION["user"])){
        header("location:../student_login.php?err=Please Login First!!!");
    }

    $student_id = $_SESSION["user"]["index"];

    if(isset($_GET["err"])){
        echo '
            <script>
            alert("Message: '.$_GET['err'].'");
            </script>
        ';
    }
    
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
    <link rel="stylesheet" href="styles/dashboard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>
<style>
    a {
        color: black;
    }
    .compiler-btn {
        border: 1px solid black;
        margin: 0px 5px;
        padding: 5px 10px;
        font-weight: 700
    }
</style>
<body>
    
    <?php
        include("components/header.php");    
    ?>

    <div class="container">
        <div class="section_01">
            <div class="head">
                <h1>Prepare</h1>
                <div>
                <a href="c_compiler.php">
                    <span class="compiler-btn">C Compiler </span>
                </a>
                <a href="java_compiler.php">
                <span class="compiler-btn"><i class='bx bxl-java'></i> Java Compiler</span>
                </a>
                </div>
            </div>

            <div class="topic">
                <h3>Your Preparation</h3>
            </div>

            <div class="grid-div">
                <?php
                    $sql = "SELECT modules.module_id,module_name FROM modules, progress_module WHERE progress_module.module_id = modules.module_id AND student_id = $student_id";
                    $result = mysqli_query($conn, $sql);
                    
                    if (mysqli_num_rows($result) > 0) {
                      // output data of each row
                      while($row = mysqli_fetch_assoc($result)) {
                        $module_id = $row["module_id"];
                        $get_precentage = "SELECT q_kit_id FROM q_kit WHERE student_id = '$student_id' AND module_id = '$module_id'";

                        $result_2 = mysqli_query($conn, $get_precentage);

                        if (mysqli_num_rows($result_2) > 0) {
                            $row_count = mysqli_num_rows($result_2);
                            $precentage = ($row_count/10)*100;
                        }
                        else{
                            $precentage = 0;
                        }

                        echo '
                            <div class="year">
                                <p style="margin-bottom: 30px;">'.$row["module_name"].'</p>
                                <div class="progress_bar">
                                    <div class="progress" style ="width:'.$precentage.'%"></div>
                                </div>
                                <p style="margin-bottom: 30px; color: #c1c5ce;">'.$precentage.'% completed</p>
                                <a href = "./questions_set.php?module='.$row["module_id"].'"><button class="admin-btn">Continue Preparation</button></a>
                            </div>
                        ';
                      }
                    } else {
                      echo '
                            <div class = "year">
                                <p style="margin-bottom: 30px;">No Results Found</p>
                                <p style="margin-bottom: 30px;">Select Course Modules</p>
                            </div>
                      ';
                    }
                ?>
            </div>
        </div>

        <div class="section_02">
            <div class="head">
                <h1>Subjects</h1>
            </div>

            <div class="topic">
                <h3>Your Subjects</h3>
            </div>
            <div class="table">
                <div class="sub-table">
                    <?php
                        $sql = "SELECT module_id,module_name FROM modules";
                        $result = mysqli_query($conn, $sql);
                        
                        if (mysqli_num_rows($result) > 0) {
                          // output data of each row
                          while($row = mysqli_fetch_assoc($result)) {
                            echo '
                            <a href="./apis/add_modules_to_progress.php?module_id='.$row["module_id"].'"><div class="cell"><i class="bx bxl-c-plus-plus"></i>'.$row["module_name"].'</div></a>
                            ';
                          }
                        } else {
                          echo "0 results";
                        }
                    ?>
                </div>
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