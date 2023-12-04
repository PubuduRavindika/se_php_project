<?php
    require("../db_config/db_config.php");

    if(!isset($_SESSION["user"])){
        header("location:../student_login.php?err=Please Login First!!!");
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/c_compiler.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
    <?php include './components/header.php'?>
    <div class="sub-container">
        <h1>C Compiler</h1>
        <div class="line"></div>
    </div>

    <div class="container">
        <div class="section_01">
            <iframe style='max-width:100%; border: none' height=500 width=100% src=https://www.interviewbit.com/embed/snippet/78ee2aed4616367d46ab loading="lazy" allow="clipboard-write" allowfullscreen referrerpolicy="unsafe-url"></iframe>
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