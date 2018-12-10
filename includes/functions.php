<?php
require 'connect.php';

function get_all_movie_data($pdo)
{
  $query = "select * from video v, tbl_vid_gen vg, tbl_genre g where v.vid_id = vg.vid_id and vg.genre_id = g.genre_id";
  $get_data = $pdo->query($query);
  $results = array();
  while ($row = $get_data->fetch(PDO::FETCH_ASSOC)) {
    $results[] = $row;
  }
  return $results;
}

function get_one_movie_data($pdo, $id)
{
  $query = "select * from video v, tbl_vid_img vi, tbl_images i where v.vid_id = vi.vid_id and vi.images_id = i.images_id and v.vid_id='$id'";
  $get_data = $pdo->query($query);
  $results = array();
  while ($row = $get_data->fetch(PDO::FETCH_ASSOC)) {
    $results[] = $row;
        // you could run subresult queries here - just write another function and append.
  }
  return $results;
}
?>