<?php
session_start();
if(isset($_SESSION['unique_id'])){//if user logged in
    header("location: users.php");

}

?>
<?php
include_once "header.php";
?>


<body>

    <div class="wrapper">
        <section class="form login">
            <header>Imex Chat App</header>
            <form action="#">
                <div class="error-txt"></div>

                <div class="field input">
                    <label>Email Address</Address></label>
                    <input type="text" placeholder="Enter your Email" name="email">
                </div>
                <div class="field input">
                    <label>Password</label>
                    <input type="password" placeholder="Enter your password" name="password">
                    <i class="fas fa-eye"></i>
                </div>
                <div class="field button">
                    <input type="submit" value="Continue to Chat">
                </div>

            </form>
            <div class="link">Not yet singed up ?<a href="index.php">Singup now</a></div>

        </section>
    </div>
    <script src="javascript/passwordsh.js"></script>
    <script src="javascript/login.js"></script>

</body>

</html>