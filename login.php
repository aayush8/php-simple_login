<?php

    session_start();

     if ($_SERVER['REQUEST_METHOD']=="POST") {
        if ($_POST['username'] == "aayush" && $_POST['password']=="aayush") {
            $_SESSION['user'] = "aayush";
            //redirect to login page with logged in
             header("Location: index.php");
        }
        else {
          $_SESSION['error']="error";
          header("Location: login.php");
        }
     }

     else if  ($_SERVER['REQUEST_METHOD']=="GET") {
        //header file 
        require 'components/header.html';
        
        //navigation file
        require 'components/nav.html';
     }

?>


<div class="container mt-5 "><div class="container "><div class="jumbotron">
     <?php 
     
     if (isset($_SESSION['error'])) {
      echo '<div class="alert alert-danger" role="alert">
      Your login details are incorrect
    </div>';
     }

     ?>
    <form method="POST">
        <div class="form-group">
          <label for="exampleInputEmail1">Username</label>
          <input required type="text" style="max-width: 500px" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input required type="password" style="max-width: 500px" name="password" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary">Log in</button>
      </form>
    </div></div>
</div>



<?php
    //footer file
    require('components/footer.html');

?>