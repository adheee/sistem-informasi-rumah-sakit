<?php
  $link = mysqli_connect('localhost', 'root', '', 'rs_kdcw');
  session_start();
  if($_SESSION['login'] != true){
    header('location:../../login.php');
  }
?>

<html>
  <head>
    <title>RS Mario Bros</title> <link rel="icon" href="../../aa.png">
    <link href="ruangan.css" rel="stylesheet">
  </head>

  <body>
    <div class="wrap">
      <div class="header">
        <h1>RS MARIO BROS</h1>
        <p>Admin <?php echo $_COOKIE['ambil'];?></p>
        <a onclick="logout()">Logout</a>
      </div>

      <div class="headerkecil">
        <span class="menubawah">
          <a href="../../admin.php" class="aa">Profil Rumah Sakit</a>
          <a href="../rawat/laporan.php" class="bb">Laporan Rawat</a>
          <a href="tampil.php" class="cc">Data Ruangan</a>
          <a href="../dokter/tampil.php" class="dd">Data Dokter</a>
          <a href="../pasien/tampilpasien.php" class="ee">Data Pasien</a>
        </span>
      </div><br>
      <script type="text/javascript">
        function logout(){
        var result = confirm("Yakin");

        if(result){
          window.location.href="../../logout.php";
        }
          else return false;
        }
      </script>

      <div class="content">
        <h2>Input Data Ruangan</h2><br>
        <span class="contentkecil">
          <form method="POST" action="simpan.php">
            <p>
              Masukkan kode ruangan<input type="text" name="kode_ruangan" class="inputan1" required>
            </p><br>
            <p>
              Masukkan nama ruangan<input type="text" name="nama_ruangan" class="inputan2" required>
            </p><br>
            <div id="tombol">
              <input type="submit" name="kirim" value="Simpan" class="tombol">
            </div>
          </form>
        </span>
      </div>

      <div class="clear"></div><br>
      <div class="titik" style="border-bottom: 1px dashed #262626"></div>
      <div class="footer">
        <center><p>All Right Reserved</p></center>
      </div>
    </div>
  </body>
</html>
