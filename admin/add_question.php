<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["lecturer"])) {
    header("location:../admin_login.php?err=Please Login First!!!");
}

$lec_id = $_SESSION["lecturer"]["id"];

function validateInput($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $q_title = validateInput($_POST["q_title"]);
    $q_body = validateInput($_POST["q_body"]);
    $q_code = validateInput($_POST["q_code"]);
    $q_correct_ans = validateInput($_POST["q_correct_ans"]);
    $q_other_ans_1 = validateInput($_POST["q_other_ans_1"]);
    $q_other_ans_2 = validateInput($_POST["q_other_ans_2"]);
    $q_other_ans_3 = validateInput($_POST["q_other_ans_3"]);
    $q_hint = validateInput($_POST["q_hint"]);
    $q_explain = validateInput($_POST["q_explain"]);
    $q_module = validateInput($_POST["q_module"]);

    $insert_question = "INSERT INTO `questions`(`q_title`, `q_body`, `q_hint`, `q_explanation`, `q_correct_answer`, `q_type`, `q_code`,`module_id`, `lecturer_id`) VALUES ('$q_title','$q_body','$q_hint','$q_explain','$q_correct_ans','mcq','$q_code','$q_module', '$lec_id')";

    if (mysqli_query($conn, $insert_question)) {
        $last_id = mysqli_insert_id($conn);

        $insert_answers = "INSERT INTO `answers`(`q_id`, `q_answer`) VALUES ('$last_id','$q_correct_ans'), ('$last_id','$q_other_ans_1'), ('$last_id','$q_other_ans_2'), ('$last_id','$q_other_ans_3')";

        if (mysqli_query($conn, $insert_answers)) {
            echo '
                <script>
                    alert("Question Added Successfully!!!");
                </script>
            ';
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/add_question.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div id="sidenav" class="sidenav">
            <p class="logo"><i class='bx bxl-redux'></i>LMS QUIZ</p>
            <a href="dashboard.php" class="icon-a"> <i class="fa fa-dashboard icons"></i>&nbsp;&nbsp; Dashboard </a>
            <a href="add_question.php" class="icon-a active"> <i class="fa fa-plus icons"></i>&nbsp;&nbsp; Add Questions </a>
            <a href="index.html" class="icon-a"> <i class="fa fa-tasks icons"></i>&nbsp;&nbsp; Manage Questions </a>
            <a href="index.html" class="icon-a"> <i class="fa fa-search icons"></i>&nbsp;&nbsp; Review Questuins </a>
            <a href="index.html" class="icon-a"> <i class="fa fa-users icons"></i>&nbsp;&nbsp; Review Students </a>
        </div>

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Dashboard</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="../logout.php">Logout</a>
            </div>

            <div class="sub-container">
            <form method="post" class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <div class="add">
                    <div class="input-box">
                        <label for="">Question Title :</label>
                        <input type="text" placeholder="" name="q_title" required>
                    </div>

                    <div class="input-box">
                        <label for="">Question Body(Optional) :</label>
                        <textarea id="" name="q_body"></textarea>
                    </div>

                    <div class="input-box">
                        <label for="">Code(Optional) :</label>
                        <textarea name="q_code" id=""></textarea>
                    </div>

                    <div class="input-box">
                        <label for="">Correct Answer</label>
                        <input type="text" name="q_correct_ans">
                    </div>

                    <div class="input-box">
                        <label for="">Answer Option 1:</label>
                        <input type="text" name="q_other_ans_1" />
                    </div>

                    <div class="input-box">
                        <label for="">Answer Option 2:</label>
                        <input type="text" name="q_other_ans_2" />
                    </div>

                    <div class="input-box">
                        <label for="">Answer Option 3:</label>
                        <input type="text" name="q_other_ans_3" />
                    </div>

                    <div class="input-box">
                        <label for="">Hint(Optional) :</label>
                        <textarea name="q_hint" id=""></textarea>
                    </div>

                    <div class="input-box">
                        <label for="">Explanation :</label>
                        <textarea name="q_explain" id=""></textarea>
                    </div>

                    <div class="input-box">
                        <label for="">Select Module:</label>
                        <select name="q_module" id="">
                            <?php
                                $sql = "SELECT * FROM modules WHERE lecturer_id = '$lec_id'";
                                $result = mysqli_query($conn, $sql);

                                if (mysqli_num_rows($result) > 0) {
                                    // output data of each row
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo '<option value="' . $row["module_id"] . '">' . $row["module_code"] . "-" . $row["module_name"] . '</option>';
                                    }
                                } else {
                                    echo "0 results";
                                }
                            ?>
                        </select>
                    </div>
                    <button class="btn">Add Question</button>
                </div>

                </form>
            </div>
        </div>



</body>

</html>