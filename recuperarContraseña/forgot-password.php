<?php
$envio = "";
$msj = '';
if (isset($_GET['envio']) && $_GET['envio'] != '') {
  $envio = $_GET['envio'];
}
if (isset($_GET['msj']) && $_GET['msj'] != '') {
  $msj = $_GET['msj'];
}
?>


<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Forgot Password</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body style="background-color: #e1e1e1;">
  <div class="content">
    <div class="row justify-content-center my-3">
      <div class="col-11 col-md-5 col-lg-4">
        <div class="alert <?= ($envio == 'error' ? 'alert-danger' : 'alert-success') ?> alert-dismissible <?= ($envio == '') ? 'd-none' : '' ?>">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h5><?php echo ($envio == 'error' ? '<i class="icon fas fa-ban"></i> Alert!' : '<i class="icon fas fa-check"></i> Alert!');   ?></h5>
          <?php echo $msj ?>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-11 col-md-5 col-lg-4 my-2">
        <form action="emailSend.php" method="post">
          <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">Recuperar contraseña.</h3>
            </div>
            <div class="card-body">
              <div class="input-group mb-3 justify-content-center">
                <img src="../img/logo.png" alt="" class="img-fluid w-50 img-thumbnail" style="border-radius: 50%;">
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-at"></i></span>
                </div>
                <input type="email" name="email" class="form-control" placeholder="E-mail">
              </div>
              <p class="mb-0">
                <a href="../index.php" class="text-center">Iniciar sesion.</a>
              </p>
            </div>

            <div class="card-footer">
              <button type="submit" class="btn btn-primary d-block">Recuperar informacion.</button>

              <!-- /.card-body -->
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
  <!-- /.login-box -->

  <!-- jQuery -->
  <script src="../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../dist/js/adminlte.min.js"></script>

</body>

</html>