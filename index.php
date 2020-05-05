<?php

    session_start();

    //header file 
    require 'components/header.html';

    //for storing actors from db
    $temp = [];
    //connecting to database
    $conn = new mysqli("localhost", "root", "", "simplephp");
    if ($conn->connect_error) {
        die( 'Database connection error');
    }
    else {
        $query = 'SELECT * FROM actor';
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                array_push($temp, $row);
            }
            //all the database record is stored in temp now
        }
        else {
            echo '<div class="container mt-5"><div class="alert alert-danger" role="alert">
             Sorry, no results were found... There may be no entries in DB ....</div>
            </div>';
        }
    }
  

    if (isset($_SESSION['user'])) {

        require 'components/navuser.html';

        if (count($temp)>0) {
            echo '<div class="container mt-5">';

            foreach ($temp as $actor) {
                echo '<div class="card mb-3">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="'.$actor['url'].'" class="card-img" alt="...">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">'.$actor['name'].'</h5>
                      <p class="card-text"><small class="text-muted">Born: '.$actor['born'].'</small></p>
                      <p class="card-text"><strong>Personal Life </strong><br>'.$actor['personal_life'].'</p>  
                    </div>
                  </div>
                </div>
              </div>';

            }


            echo '</div>';
        }

    }

    else {

       
        //navigation file
        require 'components/nav.html';
        echo '<div class="container"><div class="row">';
        foreach ($temp as $actor) {
            # code...


            echo '<div class="col-lg-4 col-md-6 my-3"><div class="card">
            <img src="'.$actor['url'].'" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">'.$actor['name'].'</h5>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <a href="actors.php" class="btn btn-primary">More ...</a>
            </div></div>
          </div>';

        }
        echo '</div></div>';

    }

?>




<?php

    $conn-> close();
    //footer file
    require('components/footer.html');

?>