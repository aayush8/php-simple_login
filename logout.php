<?php 

    session_start();

    session_unset();

    session_destroy();


    /// at last redirect to index
    header("Location: index.php");

?>