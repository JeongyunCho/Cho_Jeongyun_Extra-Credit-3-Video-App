<?php

require 'functions.php';

if (isset($_GET['id'])) {
    // pass the connection and the movie id to a function
  $data = get_one_movie_data($conn, $_GET['id']);
  echo json_encode($data);
}
else {
    // pass the connection and the movie id to a function
    $data = get_all_movie_data($conn);
    echo json_encode($data);
}
?>