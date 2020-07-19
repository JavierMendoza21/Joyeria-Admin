<?php
session_start();
if (!empty($_SESSION['idusuario'])) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    //echo 'entre a session activa ' . $_SESSION['idusuario'];
    header("Location: http://$host$uri/$extra");
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <style>
        img {
            max-width: 100%;
            width: 100%;
            height: 100%;
            max-height: 100%;
        }

        .login-logo img {
            width: 150px;
            border-radius: 50%;
        }
    </style>
</head>

<body class="" style="background-color: #e1e1e1;">
    <div class="content">
        <div class="row justify-content-center">
            <div class="col-11 col-md-5 col-lg-4 my-3">
                <form action="iniciarSesion.php" method="post">
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">Iniciar session.</h3>
                        </div>
                        <div class="card-body">
                            <div class="input-group mb-3 justify-content-center">
                                <img src="img/logo.png" alt="" class="img-fluid w-50 h-50 img-thumbnail" style="border-radius: 50%;">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" name="user" class="form-control" placeholder="Usuario">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" name="pass" class="form-control" placeholder="Contrseña">
                            </div>

                            <div class="form-group mb-3">
                                <div class="custom-control custom-checkbox">
                                    <input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
                                    <label for="customCheckbox1" class="custom-control-label">Recordar</label>
                                </div>
                            </div>
                            <p class="mb-2">
                                <a href="recuperarContraseña/forgot-password.php">Olvide mi contraseña</a>
                            </p>
                            <p class="mb-0">
                                <a href="crearUsuarioVendedor.php" class="text-center">Registrarme.</a>
                            </p>

                        </div>
                        <div class="card-footer text-center">
                            <button type="submit" class="btn btn-lg btn-primary w-50"><i class="fas fa-sign-in-alt"></i></button>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- bs-custom-file-input -->
    <script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            bsCustomFileInput.init();
        });
    </script>
</body>

</html>