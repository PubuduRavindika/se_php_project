<?php

require("../db_config/db_config.php");

if (!isset($_SESSION["user"])) {
    header("location:../student_login.php?err=Please Login First!!!");
}

if (!isset($_GET["kit"])) {
    header("location:questions_set.php");
} else {
    $kit_id = $_GET["kit"];
}

echo "Kit ID: ".$kit_id;

$sql = "SELECT questions.q_id, q_title FROM q_kit_questions, questions WHERE q_kit_questions.q_id = questions.q_id AND q_kit_id = '$kit_id'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "<p>".$row["q_id"]." - ".$row["q_title"]."</p>";
  }
} else {
  echo "0 results";
}
