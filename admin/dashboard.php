<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
    <?php include "./components/sidebar.php"?>     
        <div class="main">
            <div class="col-div-6">
                <span style="font-size: 30px; cursor: pointer; color: #da831a;" class="nav">Dashboard</span>
                <a style="color: #da831a; text-decoration: none; margin-top: 8px;" href="../logout.php">Logout</a>
            </div>

            <div class="sub-container">
                
            </div>
        </div>
        <script>
            document.getElementById("dashboard-menu-item").classList.add("active");
        </script>
</body>

</html>