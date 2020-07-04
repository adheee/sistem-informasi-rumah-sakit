<?php
  $link = mysqli_connect('localhost', 'root', '', 'rs_kdcw') or die(mysqli_error());

  // Menyimpan data ke dalam variabel
  if (isset($_POST['submit'])) {
    $nama        = $_POST['nama'];
    $username    = $_POST['username'];
    $password    = $_POST['pass'];
    $no_tlp      = $_POST['no_tlp'];

    $q = mysqli_query($link, "INSERT INTO admin (nama,username,password,no_tlp) VALUES('". $nama ."', '". $username ."', '". $password ."', '". $no_tlp ."')") or die(mysqli_error());

    if ($q) {
      echo '<script> alert("Berhasil menginput data"); window.location.href = "login.php";</script>';

    } else {
      echo '<script> alert("FUCK YOU"); </script>';
    }
  } else {
    echo "FUCK OFF";
  }
?>
