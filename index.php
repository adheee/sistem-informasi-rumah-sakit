<?php
error_reporting(0);
require 'koneksi.php';

session_start();

if( isset($_POST['submit']) ) {
  $user = $_POST['username'];
  $pass = $_POST['password'];

  $query  = mysqli_query($link, "select *from admin where username='$user' && password='$pass'");
    $cek  = mysqli_num_rows($query);

  $nama=$_POST['username'];
  $pengguna=mysqli_fetch_array($query);
  $data=$pengguna[nama];


    if ($cek) {
      setcookie('ambil',$data,time()+3600);
      $_SESSION['login']=true;
      header('location:admin.php');
    }
    else{ echo '<script>alert ("Username atau Password anda salah"); </script>';
}}
?>


<html>
  <head>
    <title>RS_KDCW </title> <link rel="icon" href="aa.png">
    <link href="login.css" rel="stylesheet">
  </head>
  <body>
    <div class="content">
      <h1>RS MARIO BROS</h1><br>
          <p>silahkan login untuk memulai aplikasi</p>

          <form action="index.php" method="post">
            <input placeholder="masukkan username" onkeypress="return Abcd()" type="text" name="username" class="inputan" required><br>
            <input placeholder="masukkan password" type="password" name="password" class="inputan" required>
              <div id="tombol">
                <input type="submit" name="submit" value="Login" class="tombol">
              </div>
            <p> <a href="register.php" class="register">Belum punya akses? Silhkan register</a> </p>
          </form>
    </div>
    <script>
      function Abcd(){
        if (event.keyCode == 32){
          event.returnValue = false;
          returnValueturn false;
        }
      }
    </script>
  </body>
</html>
