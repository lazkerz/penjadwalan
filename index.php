<?php
require "lib/config.php";

if(isset($_POST['login_ok'])){
  $username = $_POST['username'];
  $password = $_POST['password'];
  $sql= $config->query("SELECT * FROM user WHERE user_admin = '$username' AND pass_admin = '$password'");
    $row = $sql->fetch_assoc();
  if($sql->num_rows > 0){
    session_start();
    $_SESSION['nama_admin'] = $row['nama_admin'];
    header('location:index.php?success');
  } else{
    header('location:index.php?error');
  }
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login | Admin</title>
  <link rel="icon" type="image/x-icon" href="assets/img/logo-icon.png">
  <link rel="stylesheet" type="text/css" href="assets/css/login.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
  <?php if(isset($_GET['success'])) { 
    echo "<script>
    setTimeout(() => {
        wpSuccess.classList.add('isAct')
        window.location.href = 'admin/index.php'
    }, 1900)
    </script>";
    ?>
    <div class="wp__icon-success">
      <div class="d-flex flex-column justify-content-center align-items-center">
        <div id="success-icon"></div>
        <span class="text-white fs-5">Login berhasil!</span>
      </div>
    </div>
  <?php } ?>
  <div class="splash">
    <div id="loader-icon"></div>
  </div>
  <div class="wrapper">
    <div class="wrapp__login bg-white rounded-4">
      <form class="d-flex flex-column t" method="POST">
        <div class="login__top rounded-4">
          <img src="assets/img/img-login.jpg" class="img-fluid rounded-5">
        </div>
        <div class="login__bot p-5 mt-5">
          <h3 class="mb-3">Login</h3>
          <div class="mb-3">
            <label>Username</label><br>
            <input type="text" name="username" class="form-control p-1 ps-3">
          </div>
          <div class="mb-5">
            <label>Password</label><br>
            <input type="password" name="password" class="form-control p-1 ps-3">
          </div>
          <div class="mb-3 d-flex justify-content-end">
            <input type="submit" name="login_ok" value="Login" class="btn btn-log">
          </div>
          <?php 
            if(isset($_GET['error'])){
              echo "<script>
              setTimeout(() => {
                errorMsg.classList.add('isAct')

                })
              </script>
              ";
            }
           ?>
           <span class='error_msg p-2 rounded-3' id="error_msg">Username atau password yang anda masukan salah!</span>
        </div>
        <p class="text-center">&copy;Neuron 2023</p>
      </form>
    </div>

  </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.10.2/lottie.min.js"></script>
<script>
const errorMsg = document.querySelector('#error_msg')
const wpSuccess = document.querySelector('.wp__icon-success')
let anim = bodymovin.loadAnimation({
  container : document.querySelector('#loader-icon'),
  renderer : 'svg',
  loop : true,
  autoplay: true,
  path : 'assets/js/loader.json'
})

let animSuccess = bodymovin.loadAnimation({
  container : document.querySelector('#success-icon'),
  renderer : 'svg',
  loop : true,
  autoplay: true,
  path : 'assets/js/success-icon.json'
})

window.addEventListener('load', function() {
    const splash = document.querySelector('.splash');
    setTimeout(() => {
        splash.classList.add('display-none');
    }, 800);
});

</script>
</body>
</html>