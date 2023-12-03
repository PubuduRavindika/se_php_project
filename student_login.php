<?php

require("./db_config/db_config.php");

if(isset($_SESSION["user"])){
    header("location:./student/dashboard.php");
}

if(isset($_GET["err"])){
    echo '
        <script>
        alert("Message: '.$_GET['err'].'");
        </script>
    ';
}

function validateInput($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = validateInput($_POST["index_no"]);
    $password = validateInput($_POST["password"]);

    $get_student_sql = "SELECT student_id, student_name ,student_password FROM student_table";
    $result = mysqli_query($conn, $get_student_sql);

    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
            if($password === $row["student_password"]){
                $_SESSION['isLoggedIn'] = true;
                $_SESSION['user'] = array("index" => $row["student_id"], "name" => $row["student_name"]);
                header("location:./student/dashboard.php");        
            }
            else{
                header("location:student_login.php?err=Invalid Credentials!!!");
            }
        }
    } else {
        header("location:student_login.php?err=No User Found!!!");
    }

    mysqli_close($conn);
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./styles/student_login.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>

    <div class="login-container">
        <header>
            <a href="" class="logo"><i class='bx bxl-redux'></i>LMS QUIZ</a>
            <h1 style="margin-top: 10px;">For Students</h1>
        </header>
        <div class="login-box">
            <div class="top">Log In</div>
            <form method="post" class="login-form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <div class="text-field">
                    <div class="log">
                        <i class='bx bx-user' style="color: #0e141e; margin: 15px; font-size: 24px;"></i>
                        <input type="text" name="index_no" placeholder="Enter Your Index">
                    </div>

                    <div class="log">
                        <i class='bx bx-user' style="color: #0e141e; margin: 15px; font-size: 24px;"></i>
                        <input type="password" name="password" placeholder="Enter Your password">
                    </div>
                </div>

                <div class="remaind">
                    <div>
                        <input type="checkbox" class="checkbox">
                        <span>Remember me</span>
                    </div>
                    <a href="">Forgot your password?</a>
                </div>

                <div class="login">
                    <button class="admin-btn">Log In</button>
                </div>
            </form>

        </div>
    </div>

</body>

</html>