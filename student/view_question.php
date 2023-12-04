<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../student_login.php?err=Please Login First!!!");
}

if (isset($_GET["q"])) {
    $q = $_GET["q"];
}


$sql = "SELECT q_title, q_explanation, q_correct_answer, q_body, module_name FROM modules, questions WHERE modules.module_id = questions.module_id AND q_id = '$q'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
} else {
    echo "0 results";
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
    <?php include "./components/header.php" ?>
    <div class="sub-container">
        <h1><?php echo $row["module_name"];?></h1>
        <div class="line"></div>
    </div>

    <div class="container">
        <div class="section_01">
            <h3 style="margin-bottom: 20px;"><?php echo $row["q_title"];?></h3>
            <p style="margin-bottom: 20px;"><?php echo $row["q_body"];?></p>
            <p style="margin-bottom: 20px;"><?php echo $row["q_explanation"];?></p>
            <h2 style="color: green;">Answer: <?php echo $row["q_correct_answer"];?></h2>

            <!-- <button class="btn" style="margin-top:40px;">Next</button> -->
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