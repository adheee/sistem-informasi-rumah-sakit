<?php
  $link = mysqli_connect('localhost', 'root', '', 'rs_kdcw');

  session_start();
  if($_SESSION['login'] != true){
    header('location:../../login.php');
  }
?>
