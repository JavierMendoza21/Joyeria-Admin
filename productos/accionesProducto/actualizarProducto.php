<?php
include '../../sessionIniciada.php';
include '../../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
if (isset($_GET['id']) && $_GET['id'] != '') {
    $id = $_GET['id'];
    include '../../conexiones/conexion.php';
    $sqlDatos = "select * from producto where idProducto=" . $id;

    $resultadosM = $conexion->query($sqlDatos);
    $conexion->close();
    $mostrarR = mysqli_fetch_array($resultadosM);
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'Admin_joyeria/productos/productos.php';
    header("Location: http://$host/$extra");
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
    <!-- Select2 -->
    <link rel="stylesheet" href="../../plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="../../plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">

    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style>
        .estilo{
            background-color: #e1e1e1;
            border-radius: 15px;
            padding: 1rem;
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
                <a class="nav-link effectoHover" data-toggle="" href="../../cerrarSesion.php">
                    <i class="fas fa-sign-out-alt"></i>
                </a>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../main.php" class="brand-link">
                <img src="../../img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Rodey</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">

                        <img src="<?= "../" . $IMGUSER ?>" class="img-circle elevation-2" alt="User Image">
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
                            <a href="../../main.php" class="nav-link ">
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
                                    <a href="../../vendedores/vendedores.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver usuarios</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../../vendedores/agregarVendedor.php" class="nav-link">
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
                                    <a href="../../ventas/ventas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver ventas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../../ventas/ventas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar Ventas</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview ">
                            <a href="#" class="nav-link ">
                                <i class="ion ion-bag nav-icon"></i>
                                <p>
                                    Productos
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../productos.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver productos</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../nuevoProducto.php" class="nav-link ">
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
                                    <a href="../../categorias/categorias.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver categorias</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../../categorias/agregarCategoria.php" class="nav-link">
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

                            <h1 class="m-0 text-dark">Actualizar producto</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item disabled"><a href="../productos.php">Ver productos</a></li>
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
                                    <h3 class="card-title">Datos del producto</h3>
                                </div>
                                <form role="form" action="actualizar.php?id=<?=$mostrarR['idProducto']?>" autocomplete="off" onsubmit="return comprobar()" method="post" enctype="multipart/form-data">
                                    <div class="card-body">
                                        <div class="form-group d-block text-center">
                                            <?php
                                            $imagenP = $mostrarR['img_producto'];
                                            if ($mostrarR['img_producto'] == "" || $mostrarR['img_producto'] == "producto_default.png") {
                                                $imagenP = "producto_default.png";
                                            }
                                            ?>
                                            <img src="../../img_productos/<?= $imagenP ?>" class="img-responsive img-rounded" width="110" alt="Imagen">
                                        </div>
                                        <div class="form-group">
                                            <label for="descripcion">Descripción</label>
                                            <input type="text" value="<?= $mostrarR['descripcion'] ?>" name="descripcion" class="form-control estilo" id="descripcion" placeholder="Descripción del producto" require>
                                            <div class="invalid-feedback" id="msjValiddescripcion">
                                            </div>
                                        </div>
                                        <div class="dividir">
                                            <div class="form-group">
                                                <label for="costoCompra">Costo de compra</label>
                                                <input type="number" value="<?= $mostrarR['costo_compra'] ?>" min="0" name="costoCompra" class="estilo form-control" id="costoCompra" placeholder="Costo de compra" require>
                                                <div class="invalid-feedback" id="msjValidCostoCompra">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="costoVenta">Costo de venta</label>
                                                <input type="number" value="<?= $mostrarR['costo_venta'] ?>" min="0" name="costoVenta" class="estilo form-control" id="costoVenta" placeholder="Costo de venta" require>
                                                <div class="invalid-feedback" id="msjValidCostoVenta">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="dividir">
                                            <?php
                                            include '../../conexiones/conexion.php';
                                            $sql = "SELECT * FROM Joyeria.categoria_producto";
                                            $result = $conexion->query($sql);


                                            ?>


                                            <div class="form-group">
                                                <label>Categoria del producto</label>
                                                <select class="form-control select2 " name="categoria" id="categoria" style="width: 100%; padding: 5px;">
                                                    <option disabled>Selecciona una opcion</option>
                                                    <?php
                                                    while ($mostrar = mysqli_fetch_array($result)) {
                                                        if ($mostrarR['categoria_kf'] == $mostrar['idcategoria_producto']) {
                                                            echo '<option selected value="' . $mostrar['idcategoria_producto'] . '">' . $mostrar['categoria'] . '</option>';
                                                        } else {
                                                            echo '<option value="' . $mostrar['idcategoria_producto'] . '">' . $mostrar['categoria'] . '</option>';
                                                        }
                                                    }
                                                    ?>
                                                </select>
                                                <div class="invalid-feedback" id="msjValidCategoria">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stock">Stock</label>
                                                <input type="number" value="<?= $mostrarR['cantidad_stock'] ?>" min="<?= $mostrarR['cantidad_stock'] ?>" name="stock" class="estilo form-control" id="stock" placeholder="Stock inicial" require>
                                                <div class="invalid-feedback" id="msjValidstock">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">Entrada de archivo</label>
                                            <div class="custom-file">
                                                <input type="file" lang="es" class="custom-file-input estilo" id="imagen" name="imagen" accept="image/png, image/jpeg">
                                                <label class="custom-file-label" for="imagen">Elija el archivo</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <button id="enviar" onclick="return comprobar()" type="submit" class=" cambiar-tamanio  btn btn-success btn-lg ">Actualizar</button>
                                        <a href="../productos.php" class=" btn btn-danger btn-lg">Cancelar</a>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!--                 /.content-wrapper -->
        <footer class=" main-footer ">
            <strong>Copyright &copy; 2020 </strong> Todos los derecho reservados.
            <div class=" float-right d-none d-sm-inline-block ">
                <b>Version</b> 3.0.5

            </div>
        </footer>
    </div>
    <!-- jQuery -->
    <script src=" ../../plugins/jquery/jquery.min.js "></script>
    <!-- jQuery UI 1.11.4 -->
    <script src=" ../../plugins/jquery-ui/jquery-ui.min.js "></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Summernote -->
    <script src=" ../../plugins/summernote/summernote-bs4.min.js "></script>
    <!-- overlayScrollbars -->
    <script src=" ../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js "></script>
    <!-- AdminLTE App -->
    <script src=" ../../dist/js/adminlte.js "></script>

    <!-- AdminLTE for demo purposes -->
    <script src=" ../../dist/js/demo.js "></script>
    <!-- bs-custom-file-input -->
    <script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <!-- Select2 -->
    <script src="../../plugins/select2/js/select2.full.min.js"></script>
    <script src="validarformProducto.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            bsCustomFileInput.init();
        });
    </script>
    <script>
        $(function() {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })
        })
    </script>
</body>

</html>