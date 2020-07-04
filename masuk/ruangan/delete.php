<?php
  $link = mysqli_connect('localhost', 'root', '', 'rs_kdcw') or die(mysqli_error());

  $id = $_GET["kode_ruangan"];

  $hapus = mysqli_query($link, "DELETE FROM ruangan WHERE kode_ruangan='".$id."'");

  if($hapus){
    echo "<script> alert('Berhasil menghapus data !'); document.location.href='tampil.php'; </script>";
  }else{
    "<script> alert('Gagal nebghapus data !'); document.location.href='tampil.php'; </script>";
  }
?>
