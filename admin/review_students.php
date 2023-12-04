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
    <link rel="stylesheet" href="styles/review_students.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <?php include "./components/sidebar.php" ?>

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Select Student</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="logout.php">Logout</a>
            </div>

            <div class="sub-container">
                <div class="add">
                    <div class="questions">
                        <div class="content">
                            <div class="search">
                                <input type="text" placeholder="Search By Index">
                                <button class="btn">Search</button>
                            </div>
                            <table>
                                <thead>
                                    <th>Student Id</th>
                                    <th>Student Name</th>
                                    <th>Action</th>
                                </thead>
                                <tbody>
                                    <?php
                                        $sql = "SELECT * FROM `student_table`";
                                        $result = mysqli_query($conn, $sql);
                                        
                                        if (mysqli_num_rows($result) > 0) {
                                          // output data of each row
                                          while($row = mysqli_fetch_assoc($result)) {
                                            echo '
                                                <tr>
                                                    <td>'.$row["student_id"].'</td>
                                                    <td>'.$row["student_name"].'</td>
                                                    <td><button class="btn">View</button></td>
                                                </tr>
                                            
                                            ';
                                          }
                                        } else {
                                          echo "0 results";
                                        }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.getElementById("review-st-menu-item").classList.add("active");
        </script>

</body>

</html>