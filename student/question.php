<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../student_login.php?err=Please Login First!!!");
}

if (!isset($_GET["module"])) {
    header("location:question_set.php");
} else {
    $module_id = $_GET["module"];
}

if(!isset($_SESSION["count"])){
    header("location:apis/get_random_question.php?module=$module_id");
}

if (!isset($_GET["q"])) {
    header("location:questions_set.php");
} else {
    $q_id = $_GET["q"];
}

$get_rand_quiz_sql = "SELECT * FROM questions,answers WHERE answers.q_id = questions.q_id AND questions.q_id = '$q_id'";

$result = mysqli_query($conn, $get_rand_quiz_sql);

$answers = array();

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $title = $row["q_title"];
        $body = $row["q_body"];
        $code = $row["q_code"];
        $correct_answer = $row["q_correct_answer"];
        array_push($answers, $row["q_answer"]);
    };
} else {
    echo "0 results";
}

$isCorrect = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selected_answer = $_POST["answer-set"];
    if($selected_answer == $correct_answer){
        $isCorrect = true;
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/question.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
    <div class="container">
        <header>
            <a href="" class="logo"><i class='bx bxl-redux'></i>LMS QUIZ</a>
            <div class="progress-bar">
                <?php
                    if(isset($_SESSION["count"])){
                        $progress = ($_SESSION["count"] / 10) * 100;
                        echo '
                            <div class="progress-bar-progress" style="width: '.$progress.'%;">
                                <div class="progress-bar-slider"></div>
                            </div>
                        ';
                    }
                ?>
            </div>
            <p><?php echo (isset($_SESSION["count"]) ? ($_SESSION["count"]) : "") ?></p>
            <a href="" class="bookmark"><i class='bx bx-bookmark-alt'></i></a>
            <a href="questions_set.php?module=<?php echo($module_id);?>" class="close"><i class='bx bx-x'></i></i>Exit</a>

        </header>

        <div class="sub-container">
            <div class="question">
                <p><?php echo $title; ?></p>
            </div>
            <?php
            if (isset($body) && trim($body) != '') {
                echo '
                        <div class="discription">
                            <p>' . $body . '</p>
                        </div>
                    ';
            }
            if (isset($code) && trim($code) != '') {
                echo '
                        <div class="discription">
                            <pre>' . $code . '</pre>
                        </div>
                    ';
            }
            ?>
            <form class="answers" id="answer_form" method="POST" action="<?php echo $_SERVER["REQUEST_URI"]; ?>">
                <?php
                !$isCorrect && shuffle($answers);
                foreach ($answers as $key => $value) {
                    if($isCorrect){
                        if($value === $correct_answer){
                            echo '
                            <label for ="input_' . $key . '" id="input_label_' . $key . '" class="answer-btn answer-btn-correct" name ="input_labels">' . $value . '</label>
                            <input type="radio" name="answer-set" id="input_' . $key . '" value="' . $value . '" hidden>
                            ';
                        }
                        else{
                            echo '
                            <label for ="input_' . $key . '" id="input_label_' . $key . '" class="answer-btn" name ="input_labels">' . $value . '</label>
                            <input type="radio" name="answer-set" id="input_' . $key . '" value="' . $value . '" hidden>';
                        }
                    }else{
                        echo '
                        <label for ="input_' . $key . '" id="input_label_' . $key . '" class="answer-btn" onclick="highlightText(\'' . $key . '\')" name ="input_labels">' . $value . '</label>
                        <input type="radio" name="answer-set" id="input_' . $key . '" value="' . $value . '" hidden>';
                    }

                    // echo '<input type="submit" class="answer-btn" value = "'.$value.'"/>';
                }
                ?>
            </form>
        </div>
        <footer class="footer">
            <div class="footer-container">
                <button class="back-btn" type="reset" form="answer_form">Back</button>
                <?php
                    if($isCorrect){
                        echo'
                        <a href = "./apis/get_random_question.php?module='.$module_id.'&&pre_q_id='.$q_id.'">
                            <button class="check-btn" type="button" form="answer_form">Continue</button>
                        </a>
                        ';
                    }else{
                        echo '
                            <button class="check-btn" type="submit" form="answer_form">Check</button>
                        ';
                    }
                ?>
            </div>
        </footer>


    </div>
    <script>
        function highlightText(value) {
            let eles = document.getElementsByName("input_labels");
            eles.forEach(element => {
                element.style.border = "2px solid #c8d2db";
            });
            let id = "input_label_" + value;
            console.log(id)
            let lable_ele = document.getElementById(id).style.border = "3px solid #EC9022";
        }
    </script>
</body>

</html>