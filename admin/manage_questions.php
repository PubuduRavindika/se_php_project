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
        <?php include "./components/sidebar.php"?>

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
        <script>
            document.getElementById("manage-menu-item").classList.add("active");
        </script>
</body>

</html>