<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["lecturer"])) {
    header("location:../admin_login.php?err=Please Login First!!!");
}

if (!isset($_GET["q_id"])) {
    header("location:manage_questions.php");
}

$q_id = $_GET["q_id"];


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

    $insert_question = "UPDATE `questions` SET`q_title`='$q_title',`q_body`='$q_body',`q_hint`='$q_hint',`q_explanation`='$q_explain',`q_correct_answer`='$q_correct_ans',`q_code`='$q_code' WHERE `q_id` = '$q_id'";

    if (mysqli_query($conn, $insert_question)) {
        $last_id = mysqli_insert_id($conn);

        $insert_answers = "UPDATE `answers` SET `answer_id`='[value-1]',`q_id`='[value-2]',`q_answer`='[value-3]' WHERE 1";

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
    <link rel="stylesheet" href="styles/edit_question.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">

        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Edit Questions</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="manage_questions.php">Back</a>
            </div>

            <?php
            $sql = "SELECT * FROM questions, answers WHERE questions.q_id = answers.q_id AND questions.q_id = '" . $q_id . "'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                $answers = array();
                while ($row = mysqli_fetch_assoc($result)) {
                    $q_title = $row["q_title"];
                    $q_body = $row["q_body"];
                    $q_code = $row["q_code"];
                    $q_hint = $row["q_hint"];
                    $q_explanation = $row["q_explanation"];
                    $q_correct_answer = $row["q_correct_answer"];
                    array_push($answers, $row["q_answer"]);
                }
            } else {
                echo "0 results";
            }
            ?>

            <div class="sub-container">
                <div class="add">
                    <form method="post" class="" id="q_update_form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                        <div class="input-box">
                            <label for="">Question Title :</label>
                            <input name="q_title" type="text" placeholder="Add Question Title" value="<?php echo $q_title; ?>">
                        </div>

                        <div class="input-box">
                            <label for="">Question Body(Optional) :</label>
                            <textarea name="q_body" id=""><?php echo $q_body; ?></textarea>
                        </div>

                        <div class="input-box">
                            <label for="">Code(Optional) :</label>
                            <textarea name="q_code" id=""><?php echo $q_body; ?></textarea>
                        </div>

                        <div class="input-box">
                            <label for="">Correct Answer</label>
                            <input name="q_correct_ans" type="text" value="<?php echo $q_correct_answer; ?>">
                        </div>

                        <?php
                        foreach ($answers as $key => $value) {
                            if ($key == 0) {
                                continue;
                            }
                            echo '
                                <div class="input-box">
                                    <label for="">Answer Option ' . ($key) . ':</label>
                                    <input name= "q_other_ans_'.$key.'" type="text" value = "' . $value . '">
                                </div>
                            ';
                        }
                        ?>

                        <div class="input-box">
                            <label for="">Hint(Optional) :</label>
                            <textarea name="q_hint" id=""><?php echo $q_hint; ?></textarea>
                        </div>

                        <div class="input-box">
                            <label for="">Explanation :</label>
                            <textarea name="q_explain" id=""><?php echo $q_explanation; ?></textarea>
                        </div>
                </form>
                <button class="btn" form="q_update_form">UPDATE QUESTION</button>
                </div>
            </div>
        </div>



</body>

</html>