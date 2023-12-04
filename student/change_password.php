<?php
    require("../db_config/db_config.php");

    if(!isset($_SESSION["user"])){
        header("location:../student_login.php?err=Please Login First!!!");
    }
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/change_password.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>

    <?php
        include("components/header.php");    
    ?>

    <div class="container">
        <div id="sidenav" class="sidenav">
            <div class="top">
                <p><?php echo $_SESSION["user"]["index"];?></p>
            </div>
            
            <a href="profile_settings.php" class="icon-a"> <i class="fa fa-user icons"></i>&nbsp;&nbsp; Profile </a>
            <a href="change_password.php" class="icon-a active"> <i class="fa fa-key icons"></i>&nbsp;&nbsp; Change Password </a>
            <a href="leaderboard.php" class="icon-a-med"> <i class="bx bx-medal icons"></i>&nbsp;&nbsp; Leaderboard </a>
        </div>

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Change Password</span>
                <!-- <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="logout.php">Logout</a> -->
            </div>

            <div class="sub-container">
                <div class="add">
                    <div class="input-box">
                        <label for="">Current Password :</label>
                        <input type="password" placeholder="Enter Current Password">
                    </div>
                </div>

                <div class="add">
                    <div class="input-box">
                        <label for="">New Password :</label>
                        <input type="password" placeholder="Enter New Password">
                    </div>
                </div>

                <div class="add">
                    <div class="input-box">
                        <label for="">Confirm Password :</label>
                        <input type="password" placeholder="Enter Confirm Password">
                    </div>
                </div>
                <button class="btn">Change Password</button>
            </div>
        </div>

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


</body>

</html>