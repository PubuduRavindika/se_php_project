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
    <link rel="stylesheet" href="styles/manage_questions.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div id="sidenav" class="sidenav">
            <p class="logo"><i class='bx bxl-redux'></i>LMS QUIZ</p>
            <a href="dashboard.php" class="icon-a"> <i class="fa fa-dashboard icons"></i>&nbsp;&nbsp; Dashboard </a>
            <a href="add_question.php" class="icon-a"> <i class="fa fa-plus icons"></i>&nbsp;&nbsp; Add Questions </a>
            <a href="manage_questions.php" class="icon-a active"> <i class="fa fa-tasks icons"></i>&nbsp;&nbsp; Manage
                Questions </a>
            <a href="index.html" class="icon-a"> <i class="fa fa-search icons"></i>&nbsp;&nbsp; Review Questuins </a>
            <a href="index.html" class="icon-a"> <i class="fa fa-users icons"></i>&nbsp;&nbsp; Review Students </a>
        </div>

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Manage Your Questions</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="logout.php">Logout</a>
            </div>

            <div class="sub-container">
                <div class="add">
                    <?php
                        $lec_id = $_SESSION["lecturer"]["id"];
                        $sql = "SELECT q_id, q_title, module_name FROM questions, modules WHERE questions.module_id = modules.module_id AND questions.lecturer_id ='$lec_id'";
                        $result = mysqli_query($conn, $sql);
                        
                        if (mysqli_num_rows($result) > 0) {
                          while($row = mysqli_fetch_assoc($result)) {
                            echo '
                                <div class="questions">
                                    <div class="content">
                                        <h3>'.$row["q_title"].'</h3>
                                        <p>'.$row["module_name"].'</p>
                                    </div>
            
                                    <a href="edit_question.php?q_id='.$row["q_id"].'"><button class="btn">Edit</button></a>
                                </div>
                            ';
                          }
                        } else {
                          echo "0 results";
                        }
                    ?>
                </div>


            </div>
        </div>



</body>

</html>