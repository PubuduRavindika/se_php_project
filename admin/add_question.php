<?php
require("../db_config/db_config.php");

// if (!isset($_SESSION["user"])) {
//     header("location:../student_login.php?err=Please Login First!!!");
// }

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

    $insert_question = "INSERT INTO `questions`(`q_title`, `q_body`, `q_hint`, `q_explanation`, `q_correct_answer`, `q_type`, `q_code`,`module_id`) VALUES ('$q_title','$q_body','$q_hint','$q_explain','$q_correct_ans','mcq','$q_code','$q_module')";

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
    <title>Document</title>
    <style>
        .form-holder form {
            width: 80%;
            display: flex;
            flex-direction: column;
        }

        /* Alert Box */
        .alert {
            padding: 20px;
            background-color: #0b3100;
            color: white;
        }

        .closebtn {
            margin-left: 15px;
            color: white;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .closebtn:hover {
            color: black;
        }
    </style>
</head>

<body>
    <div class="form-holder">
        <form method="post" class="login-form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <label for="q_title">Question Title:</label>
            <input type="text" name="q_title" id="q_title" required>

            <label for="q_body">Question Body: (Optional)</label>
            <input type="text" name="q_body" id="q_body">

            <label for="q_explain">Code :(Optional)</label>
            <textarea name="q_code" id="q_code" cols="30" rows="10"></textarea>

            <label for="q_correct_ans">Correct Answer:</label>
            <input type="text" name="q_correct_ans" id="q_correct_ans" required>

            <label for="q_other_ans_1">Answer Option 1:</label>
            <input type="text" name="q_other_ans_1" id="q_other_ans_1" required>

            <label for="q_other_ans_2">Answer Option 2:</label>
            <input type="text" name="q_other_ans_2" id="q_other_ans_2" required>

            <label for="q_other_ans_3">Answer Option 3:</label>
            <input type="text" name="q_other_ans_3" id="q_other_ans_3" required>

            <label for="q_hint">Hint :(Optional)</label>
            <textarea name="q_hint" id="q_hint" cols="30" rows="10"></textarea>

            <label for="q_explain">Explanation :</label>
            <textarea name="q_explain" id="q_explain" cols="30" rows="10"></textarea>

            <label for="q_module">Select Module:</label>
            <select name="q_module" id="q_module">
                <?php
                $sql = "SELECT * FROM modules";
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

            <input type="submit" value="add question">

        </form>
    </div>
</body>

</html>