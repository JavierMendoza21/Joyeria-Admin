<?php
include 'crearVendedorInicio.php';
?>

<!DOCTYPE html>

<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
    <!-- Toastr -->
    <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style>
        body {
            background-color: #e1e1e1;
        }

        .dividir * {
            display: block;
        }

        @media (min-width: 700px) {
            .dividir {
                display: flex;
                justify-content: space-between;
            }

            .dividir .form-group {
                flex-basis: calc(50% - 1rem);
            }
        }
    </style>
</head>

<body class="">
    <div class="container">
        <!-- Main row -->
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-7 col-md-8 mt-3">
                <!--Alerta inicio-->
                <div class="alert <?= ($complet == 'error' ? 'alert-danger' : 'alert-success') ?> alert-dismissible <?= ($complet == '') ? 'd-none' : '' ?>">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h5><?php echo ($complet == 'error' ? '<i class="icon fas fa-ban"></i> Alerta!' : '<i class="icon fas fa-check"></i> Aviso!');   ?></h5>
                    <?php echo $message ?>
                </div>
                <!--Alerta final-->
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-7 col-md-8 mt-0">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Datos del vendedor</h3>
                    </div>
                    <!-- form start -->
                    <form role="form" action="" onsubmit="return comprobar()" method="post" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="nombreVendedor">Nombre del vendedor</label>
                                <input type="text" name="nombre" id="nombre" class="form-control" id="nombreVendedor" placeholder="Nombre" require>
                                <div class="invalid-feedback" id="msjValidname">
                                </div>
                            </div>
                            <div class="dividir">
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="apellidoP">Apellido paterno</label>
                                    <input type="text" name="apellidoP" id="apellidoP" class="form-control" id="apellidoP" placeholder="Apellido paterno" require>
                                    <div class="valid-feedback" id="msjValidapellidoP">
                                    </div>
                                </div>
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="apellidoM">Apellido materno</label>
                                    <input type="text" name="apellidoM" id="apellidoM" class="form-control" id="apellidoM" placeholder="Apellido materno" require>
                                    <div class="valid-feedback" id="msjValidapellidoM">
                                    </div>
                                </div>
                            </div>
                            <div class="dividir">
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="numeroC">Numero de celular</label>
                                    <input type="tel" name="numeroC" id="numeroC" class="form-control" id="numeroC" placeholder="Telefono celular" require>
                                    <div class="valid-feedback" id="msjValidnumC">
                                    </div>
                                </div>
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="email">Correo electronico</label>
                                    <input type="email" name="email" id="email" class="form-control"  placeholder="E-mail" require>
                                    <div class="valid-feedback" id="msjValidEmail">
                                    </div>
                                </div>
                            </div>
                            <div class="dividir">
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="user">Usuario</label>
                                    <input type="text" name="user" id="user" class="form-control" id="user" placeholder="Usuario" require>
                                    <div class="valid-feedback" id="msjValidUsuario">
                                    </div>
                                </div>
                                <div class="form-group col-lg-6 col-sm-12">
                                    <label for="pass">Contraseña</label>
                                    <input type="password" name="pass" id="pass" class="form-control" placeholder="Contraseña" require>
                                    <div class="valid-feedback" id="msjValidContraseña">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-lg-8 col-sm-12 mx-auto">
                                <label for="targeta">Targeta de credito o debito <i class="fab fa-cc-visa"></i> <i class="fab fa-cc-mastercard"></i> <i class="fab fa-cc-amex"></i></label>
                                <input class="form-control"  type="text" name="tageta" id="targeta" placeholder="XXXX-XXXX-XXXX-XXXX" required>
                                <div class="valid-feedback" id="msjValidTargeta">
                                </div>
                            </div>
                            <div class="form-group col-lg-8 col-sm-12 mx-auto">
                                <label for="direccion">Direccion completa</label>
                                <textarea name="direccion" id="direccion" class="form-control"></textarea>
                            </div>
                            <div class="form-group col-lg-8 col-sm-12 mx-auto">
                                <label for="imagen">Entrada de archivo</label>
                                <div class="custom-file">
                                    <input type="file" lang="es" class="custom-file-input" id="imagen" name="imagen" accept="image/png, image/jpeg">
                                    <label class="custom-file-label" for="imagen">Elija el archivo</label>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer text-center ">
                                <button id="enviar" onclick="return comprobar()" type="submit" class=" cambiar-tamanio  btn btn-primary btn-lg" >Registrarse</button>
                                <a href="index.php" class=" btn btn-danger btn-lg" >Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <!--                 /.content-wrapper -->


        <!-- Control Sidebar -->
        <aside class=" control-sidebar control-sidebar-dark ">Dashboard
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js "></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="plugins/jquery-ui/jquery-ui.min.js "></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button)
        </script>
        <!-- Bootstrap 4 -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js "></script>

        <!-- Summernote -->
        <script src="plugins/summernote/summernote-bs4.min.js "></script>
        <!-- overlayScrollbars -->
        <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js "></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.js "></script>

        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js "></script>
        <!-- bs-custom-file-input -->
        <script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
        <script src="comprobarCampos.js"></script>



</body>

</html>