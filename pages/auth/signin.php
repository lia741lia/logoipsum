<?php

require_once "config/db.php";

if (isset($_POST['register'])) {
    $email = $_POST['email'];
    $name = $_POST['name'];
    $password = $_POST['password'];



}


?>




<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="./assets/css/sign.in.css" rel="stylesheet">
</head>

<body>
    <div class="login-box">
        <div class="form">
            <form class="login-form">
                <input type="text" placeholder="username" />
                <input type="password" placeholder="password" />
                <button>login</button>
                <p class="message">Not registered? <a href="/signup">Create an account</a></p>
            </form>
        </div>
    </div>
</body>

</html>