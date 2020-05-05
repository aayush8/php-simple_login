<?php

    session_start();

    if (isset($_SESSION['user'])) {
        //if the user is loogged in ...
        echo 'Welcome to users page';
    }

    else {
        //if not logged in send to login page
        header("Location: login.php");
    }

?>