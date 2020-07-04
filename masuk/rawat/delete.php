<?php
  $link = mysqli_connect('localhost', 'root', '', 'rs_kdcw') or die(mysqli_error());

  $id = $_GET["no_reg"];

  $hapus = mysqli_query($link, "DELETE FROM rawat WHERE no_reg=$id");

  if($hapus){
    echo "<script> alert('Berhasil menghapus data !'); document.location.href='tampil.php'; </script>";
  }else{
    "<script> alert('Gagal nebghapus data !'); document.location.href='tampil.php'; </script>";
  }
?>
