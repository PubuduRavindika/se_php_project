<?php
require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../student_login.php?err=Please Login First!!!");
}

if (!isset($_GET['module'])) {
    $module_id = 1;
} else {
    $module_id = $_GET["module"];
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/leaderboard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
    <?php
    include("components/header.php");
    ?>
    <div class="sub-container">
        <h1>Leaderboard</h1>
        <div class="line"></div>
    </div>

    <div class="container">
        <div class="section_01">
            <select class="subjects" onchange="redirectToSelectedOption(this)">
                <?php
                $sql_3 = "SELECT module_name, module_id FROM modules";
                $result_3 = mysqli_query($conn, $sql_3);

                if (mysqli_num_rows($result_3) > 0) {
                    // output data of each row
                    $count = 0;
                    while ($row_3 = mysqli_fetch_assoc($result_3)) {
                        $count++;
                        if ($count == $module_id) {
                            echo '
                        <option value="' . $row_3["module_id"] . '" selected>' . $row_3["module_name"] . '</option>
                    ';
                        } else {
                            echo '
                            <option value="' . $row_3["module_id"] . '">' . $row_3["module_name"] . '</option>
                        ';
                        }
                    }
                } else {
                    echo "0 results";
                }
                ?>
            </select>

            <table>
                <thead>
                    <th>Rank</th>
                    <th>Student</th>
                    <th>Index</th>
                    <th>Score</th>
                </thead>
                <tbody>
                    <?php
                    $rank_count = 0;
                    $sql = "SELECT * FROM student_table";
                    $result = mysqli_query($conn, $sql);

                    $data_set = array();

                    if (mysqli_num_rows($result) > 0) {
                        // output data of each row
                        while ($row = mysqli_fetch_assoc($result)) {
                            $st_id = $row["student_id"];
                            $sql_2 = "SELECT q_is_correct FROM q_kit_questions, q_kit WHERE q_kit.q_kit_id = q_kit_questions.q_kit_id AND module_id = '$module_id' AND student_id = '$st_id';";
                            $result_2 = mysqli_query($conn, $sql_2);
                            $total_count = 0;
                            $correct_count = 0;
                            if (mysqli_num_rows($result_2) > 0) {
                                while ($row_2 = mysqli_fetch_assoc($result_2)) {
                                    $total_count++;
                                    if ($row_2["q_is_correct"] == 1) {
                                        $correct_count++;
                                    }
                                }

                                $score = ($correct_count/$total_count) * 100;

                                $rank_count++;
                                $data_item = array($row["student_name"], $row["student_id"], number_format((float)$score, 2, '.', ''));
                                array_push($data_set, $data_item);
                            } else {
                            }
                        }
                    } else {
                    }

                    // Sorting 2D array
                    function compareByScore($a, $b)
                    {
                        return $b[2] - $a[2];
                    }
                    usort($data_set, 'compareByScore');

                    foreach ($data_set as $key => $value) {
                        echo '
                                <tr>
                                    <td>' .( $key + 1 ). '</td>
                                    <td>' . $value[0] . '</td>
                                    <td>' . $value[1] . '</td>';

                                if ($total_count == 0 || $correct_count == 0) {
                                    echo '<td>0</td>';
                                } else {
                                    $score = ($correct_count / $total_count) * 100;
                                    echo '<td>' . $value[2] . '</td>';
                                }

                                echo '</tr>
                            ';
                    }

                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- JS for toggle menu -->
    <script>
        var menuItems = document.getElementById("profile-item");

        function profiletoggle() {
            if (menuItems.style.maxHeight == "0px") {
                menuItems.style.maxHeight = "200px";
            } else {
                menuItems.style.maxHeight = "0px";
            }
        }

        // Function to redirect to the selected option's value
        function redirectToSelectedOption(selectElement) {
            var selectedValue = selectElement.options[selectElement.selectedIndex].value;
            if (selectedValue !== "") {
                window.location.href = "leaderboard.php?module=" + selectedValue;
            }
        }
    </script>
</body>

</html>