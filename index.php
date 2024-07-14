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
        <section class="form signup">
            <header>Imex Chat App</header>
            <form action="#" enctype="multiipart/form-data" autocomplete="off">
                <div class="error-txt"></div>
                <div class="name-details">
                    <div class="field input">
                        <label>First Name</label>
                        <input type="text" placeholder="First Name" name="fnam" required>
                    </div>
                    <div class="field input">
                        <label>Last Name</label>
                        <input type="text" placeholder="Last Name" name="lname" required>
                    </div>
                </div>
                <div class="field input">
                    <label>Email Address</Address></label>
                    <input type="text" placeholder="Enter your Email" name="email" required>
                </div>
                <div class="field input">
                    <label>Password</label>
                    <input type="password" placeholder="Enter new password" name="password" required>
                    <i class="fas fa-eye"></i>

                </div>
                <div class="field">
                    <label>Select Image</label>
                    <input type="file" name="image" required>
                </div>
                <div class="field button">
                    <input type="submit" value="Continue to Chat">
                </div>

            </form>
            <div class="link">Already singed up ?<a href="login.php">Login now</a></div>

        </section>
    </div>
    <script src="javascript/passwordsh.js"></script>
    <script src="javascript/singup.js"></script>

</body>

</html>