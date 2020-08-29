<?php
include '../sessionIniciada.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
$message = -1;
//Accion inicial///
if (
    !empty($_POST['nombre']) && !empty($_POST['apellidoP'])
    && !empty($_POST['apellidoM']) && !empty($_POST['numeroC'])
    && !empty($_POST['email']) && !empty($_POST['user'])
    && !empty($_POST['pass']) && !empty($_POST['categoria'][0])
) {
    //echo 'Voy a hacer el insert con el procedimiento almacenado.  ';
    $conexion = new mysqli('127.0.0.1', 'root', '100%Alexis', 'Joyeria');
    $direccion = $_POST['direccion'];
    if (empty($direccion)) {
        $direccion = "";
    }
    if ((isset($_FILES['imagen'])) && ($_FILES['imagen'] != '') && !empty($_FILES['imagen']['tmp_name'])) {
        switch ($_FILES['imagen']['error']) {
            case UPLOAD_ERR_OK:
                //echo '<br>Todo bien<br>';
                break;
            case UPLOAD_ERR_NO_FILE:
                //Se ejecuta cuando no se sube ningun fichero
                break;
            case UPLOAD_ERR_INI_SIZE:
                //El fichero subido excede la directiva upload_max_filesize de php.ini. 
                break;
            case UPLOAD_ERR_FORM_SIZE:
                //El fichero subido excede la directiva MAX_FILE_SIZE especificada en el formulario HTML. 
                break;
            default:
                echo $_FILES['imagen']['error'];
                //throw new RuntimeException('Unknown errors.');
        }

        if ($_FILES['imagen']['size'] > 8000000) {
            throw new RuntimeException('Exceeded filesize limit.');
        }

        $finfo = new finfo(FILEINFO_MIME_TYPE);
        if (false === $ext = array_search(
            $finfo->file($_FILES['imagen']['tmp_name']),
            array(
                'jpg' => 'image/jpeg',
                'png' => 'image/png',
                'gif' => 'image/gif',
            ),
            true
        )) {
            throw new RuntimeException('Invalid file format.');
        }
        $posFile = "";
        if (!move_uploaded_file(
            $_FILES['imagen']['tmp_name'],
            $posFile = sprintf(
                '../uploads/%s.%s',
                sha1_file($_FILES['imagen']['tmp_name']),
                $ext
            )
        )) {
            throw new RuntimeException('Failed to move uploaded file.');
        }
        $img = $posFile;
    } else {
        $img = 'user-default.jpg';
    }

    $sql = "INSERT INTO usuarios(
    idusuarios,nombre,
    apellidoP,apellidoM,
    numeroCelular,correoElectronico,
    direccion,estado,
    usuario,contraseña,
    imgUsuario,categoria_usuario)
    VALUES (NULL,?,?,?,?,?,?,1,?,?,?,?);";
    $sql = "CALL insert_usuarios(?,?,?,?,?,?,?,?,?,?)";

    if ($stmt = $conexion->prepare($sql)) {
        //echo '<br>Entre al if-------------------------' . '<br>';
        $nombre = $_POST['nombre'];
        $apellidoP = $_POST['apellidoP'];
        $apellidoM = $_POST['apellidoM'];
        $numeroC = $_POST['numeroC'];
        $email = $_POST['email'];
        $direccionP = $direccion;
        $user = $_POST['user'];
        $pas = sha1($_POST['pass']);
        $img_S = $img;
        $cate = 1;
        $stmt->bind_param(
            "sssssssssi",
            $nombre,
            $apellidoP,
            $apellidoM,
            $numeroC,
            $email,
            $direccionP,
            $user,
            $pas,
            $img_S,
            $cate
        );
        try {

            if ($stmt->execute()) {
                $message = 1;
            } else {
                $message = 0;
            }
            $stmt->close();
        } catch (Exception $e) {
            echo $e->getMessage();
            die('Error modificando producto: ' .  $e->getMessage());
        } finally {
            $conexion->close();
        }
    }
}


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
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style>
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

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Enlaces de la barra de navegación izquierda -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <a class="nav-link effectoHover" data-toggle="" href="../cerrarSesion.php">
                    <i class="fas fa-sign-out-alt"></i>
                </a>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../main.php" class="brand-link">
                <img src="../img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Rodey</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<?= $IMGUSER ?>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block"><?php echo $NOMBREUSER ?></a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
                             with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a href="../main.php" class="nav-link ">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard

                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="far fa-user nav-icon"></i>
                                <p>
                                    Usuario
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="vendedores.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver usuarios</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="agregarVendedor.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar usuario</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="far fa-money-bill-alt nav-icon"></i>
                                <p>
                                    Ventas
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../ventas/ventas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver ventas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../ventas/ventas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar Ventas</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="ion ion-bag nav-icon"></i>
                                <p>
                                    Productos
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../productos/productos.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver productos</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar producto</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="fas fa-boxes nav-icon"></i>
                                <p>
                                    Categorias
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../categorias/categorias.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver categorias</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar categorias</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <?php
                            $ACCION = "";
                            if (isset($_GET['acc']) && $_GET['acc'] != '') {
                                if ($_GET['acc'] == 'eliminar') {
                                    $ACCION = "eliminar";
                                    echo '<h1 class="m-0 text-dark">Eliminar usuario</h1>';
                                } else {
                                    $ACCION = "editar";
                                    echo '<h1 class="m-0 text-dark">Datos del usuario</h1>';
                                }
                            }
                            ?>

                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="vendedores.php">Ver usuario</a></li>

                            </ol>

                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Main row -->
                    <div class="row justify-content-center d-none" id="contenedor_msj">
                        <div class="col-sm-5 col-md-6">
                            <div class="alert alert-warning alert-dismissible fade show" role="alert" aria-hidden="true">
                                <strong>Aviso:</strong>
                                <p class="mb-0" id="msj"></p>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>
                    </div>


                    <div class="row justify-content-center">

                        <div class="col-sm-12 col-lg-7 col-md-8 mt-3">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Datos del usuario</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <?php


                                if ((isset($_GET['acc']) && $_GET['acc'] != '')
                                    && (isset($_GET['id']) && $_GET['id'] != '')
                                ) {
                                    $conexion = new mysqli('127.0.0.1', 'root', '100%Alexis', 'Joyeria');
                                    if ($conexion->connect_errno) {
                                        //echo 'error de conexion';
                                    }
                                    $sql = 'SELECT * FROM usuarios where idusuarios=' . $_GET['id'];
                                    $result = $conexion->query($sql);
                                    while ($mostrarCambio = mysqli_fetch_array($result)) {
                                        $imagen = $mostrarCambio['imgUsuario'];
                                        if ($imagen == 'user-default.jpg') {
                                            $imagen = "../uploads/user-default.jpg";
                                        }
                                ?>
                                        <form role="form" action="actualizarUsuario.php?acc=<?= $ACCION ?>&id=<?= $_GET['id'] ?>&img=<?= $mostrarCambio['imgUsuario'] ?>" method="post" enctype="multipart/form-data">
                                            <div class="card-body">
                                                <div class="mb-3 text-center">
                                                    <img src="<?= $imagen ?>" class="img-circle elevation-2" width="95" alt="<?= $mostrarCambio['imgUsuario'] ?>">
                                                </div>

                                                <div class="form-group">
                                                    <label for="nombreVendedor">Nombre del vendedor</label>
                                                    <input disabled type="text" name="nombre" value="<?= $mostrarCambio['nombre'] ?>" id="nombre" class="estilo form-control" id="nombreVendedor" placeholder="Nombre" require>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="apellidoP">Apellido paterno</label>
                                                        <input disabled type="text" name="apellidoP" value="<?= $mostrarCambio['apellidoP'] ?>" id="apellidoP" class="estilo form-control" id="apellidoP" placeholder="Apellido paterno" require>
                                                    </div>
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="apellidoM">Apellido materno</label>
                                                        <input disabled type="text" name="apellidoM" value="<?= $mostrarCambio['apellidoM'] ?>" id="apellidoM" class="estilo form-control" id="apellidoM" placeholder="Apellido materno" require>
                                                    </div>
                                                </div>
                                                <div class="row ">
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="numeroC">Numero de celular</label>
                                                        <input disabled type="tel" name="numeroC" value="<?= $mostrarCambio['numeroCelular'] ?>" id="numeroC" class="estilo form-control" id="numeroC" placeholder="Telefono celular" require>
                                                    </div>
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="exampleInputEmail1">Correo electronico</label>
                                                        <input disabled type="email" name="email" value="<?= $mostrarCambio['correoElectronico'] ?>" id="email" class="estilo form-control" id="exampleInputEmail1" placeholder="E-mail" require>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="user">Usuario</label>
                                                        <input disabled type="text" name="user" value="<?= $mostrarCambio['usuario'] ?>" id="user" class="estilo form-control" id="user" placeholder="Usuario" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,15}$" require>
                                                    </div>
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="user">Targeta <i class="fab fa-cc-visa"></i> <i class="fab fa-cc-mastercard"></i> <i class="fab fa-cc-amex"></i></label>
                                                        <input disabled type="text" name="user" value="<?= $mostrarCambio['targeta'] ?>" id="user" class="estilo form-control" id="user" placeholder="Usuario" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,15}$" require>
                                                    </div>
                                                </div>



                                                <?php
                                                include '../conexiones/conexion.php';
                                                $sql = 'SELECT * FROM categoria_usuario';
                                                $result = $conexion->query($sql);
                                                ?>
                                                <div class="row">
                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label>Categoria</label>
                                                        <select disabled class="form-control" name="categoria[]" id="categoria" require>
                                                            <option disabled selected value="0">Selecciona una categoria</option>
                                                            <?php while ($mostrar = mysqli_fetch_array($result)) {

                                                                echo "<option value='" . $mostrar['idcategoria_usuario'] . "' ";

                                                                if ($mostrarCambio['categoria_usuario'] === $mostrar['idcategoria_usuario']) {
                                                                    echo 'selected';
                                                                }
                                                                echo "  >" . $mostrar['categoria_usuario'] . "</option>";
                                                            ?>

                                                            <?php
                                                            }
                                                            $conexion->close();
                                                            ?>

                                                        </select>
                                                    </div>

                                                    <div class="form-group col-lg-6 col-sm-12">
                                                        <label for="direccion">Direccion completa</label>
                                                        <textarea disabled name="direccion" id="direccion" class="form-control estilo"><?php echo $mostrarCambio['direccion'] ?></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group d-none">
                                                    <label for="exampleInputFile">Entrada de archivo</label>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" value="archivo.jpg" id="imagen" name="imagen" accept="image/png, image/jpeg">
                                                        <label class="custom-file-label" for="imagen"><?php if (strlen($mostrarCambio['imgUsuario']) > 16) :
                                                                                                            echo substr($mostrarCambio['imgUsuario'], 11);

                                                                                                        else :
                                                                                                            echo $mostrarCambio['imgUsuario'];
                                                                                                        endif;
                                                                                                        ?></label>
                                                    </div>
                                                </div>


                                                <p class="text-center" style=""><i class="fas fa-info-circle"></i> Si no se elimina el vendedor, es por que existe un registro que lo impide 
                                                    (ejemplo: tiene producto en su stock), podria optar por dar de baja el usuario</p>
                                            </div>

                                            <!-- /.card-body -->
                                            <div class="card-footer text-center  ">
                                                <button id="enviar" onclick="" type="button" class="cambiar-tamanio btn btn-lg <?= $_GET['acc'] == 'eliminar' ? 'btn-danger' : 'btn-warning d-none'; ?>"><?php echo $_GET['acc'] == 'eliminar' ? 'Eliminar' : '<i class="fas fa-pen-fancy"></i>'; ?></button>
                                                <a href="vendedores.php" class=" cambiar-tamanio btn btn-primary btn-lg">Regresar</a>

                                            </div>
                                        </form>
                                <?php
                                    }
                                } ?>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-7 col-md-8 mt-0">
                            <?php
                            if ($message == -1) {
                            } else if ($message == 1) {
                                require '../codigo_independiente/usuario_registrado.php';
                            } else {
                                require '../codigo_independiente/error_registro_usuario.php';
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!--                 /.content-wrapper -->
        <footer class=" main-footer ">
            <strong>Copyright &copy; 2020 <a href="#">AdminLTE.io</a>.</strong> Todos los derecho reservados.
            <div class=" float-right d-none d-sm-inline-block ">
                <b>Version</b> 3.0.5

            </div>
        </footer>

        <!-- Control Sidebar -->
        <aside class=" control-sidebar control-sidebar-dark ">Dashboard
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src=" ../plugins/jquery/jquery.min.js "></script>
    <!-- jQuery UI 1.11.4 -->
    <script src=" ../plugins/jquery-ui/jquery-ui.min.js "></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src=" ../plugins/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- overlayScrollbars -->
    <script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js "></script>
    <!-- AdminLTE App -->
    <script src=" ../dist/js/adminlte.js "></script>
    <!-- bs-custom-file-input -->
    <script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <script src="comprobarCampos.js"></script>
    <!--sweetalert2-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#enviar").click(function() {
                Swal.fire({
                    title: 'Desea eliminar el usuario?',
                    text: 'Esta acción ya no se va a poder deshacer',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si, eliminar!',
                    cancelButtonText: "Cancelar"
                }).then((result) => {
                    if (result.value) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Usuario eliminado',
                            confirmButtonColor: '#3085d6',
                            confirmButtonText: 'OK',
                        }).then((result) => {
                            if (result.value) {
                                document.forms[0].submit();
                            }
                        })
                    }
                })
            });


        })
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            bsCustomFileInput.init();
        });
    </script>
</body>

</html>