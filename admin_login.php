<?php

require("./db_config/db_config.php");

if (isset($_SESSION["lecturer"])) {
    header("location:./admin/dashboard.php");
}

if (isset($_GET["err"])) {
    echo '
        <script>
        alert("Message: ' . $_GET['err'] . '");
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
    $email = validateInput($_POST["email"]);
    $password = validateInput($_POST["password"]);

    $get_lecture_sql = "SELECT lecturer_name, lecturer_email, lecturer_password, lecturer_id FROM lecturer_table WHERE lecturer_email = '$email'";
    $result = mysqli_query($conn, $get_lecture_sql);

    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
            if ($password === $row["lecturer_password"]) {
                $_SESSION['isLoggedIn'] = true;
                $_SESSION['lecturer'] = array("id" => $row["lecturer_id"], "email" => $row["lecturer_email"], "name" => $row["lecturer_name"]);
                header("location:./admin/dashboard.php");
            } else {
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
            <h1 style="margin-top: 10px;">For Lectures</h1>
        </header>
        <div class="login-box">
            <div class="top">Log In</div>
            <form method="post" class="login-form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <div class="text-field">
                    <div class="log">
                        <i class='bx bx-user' style="color: #0e141e; margin: 15px; font-size: 24px;"></i>
                        <input type="text" name="email" placeholder="Enter Your Email">
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