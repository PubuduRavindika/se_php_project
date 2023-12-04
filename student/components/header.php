<header>
    <a href="dashboard.php" class="logo"><i class='bx bxl-redux'></i>LMS QUIZ</a>
    <div class="profile">
        <span><?php echo $_SESSION["user"]["name"]; ?></span>
        <img src="../public/images/profile.png" onclick="profiletoggle()">
        <i class='bx bx-caret-down' onclick="profiletoggle()"></i>

        <ul class="profile-detail" id="profile-item">
            <li><a href="">Profile</a></li>
            <li><a href="leaderboard.php">Leaderboard</a></li>
            <li><a href="">Settings</a></li>
            <li><a href="../logout.php">Logout</a></li>
        </ul>
    </div>

    <!-- <i class='bx bx-menu' id="menu-icon"></i> -->
</header>