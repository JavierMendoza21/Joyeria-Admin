<?php
include '../../sessionIniciada.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
$message = -1;
//Accion inicial///
if (!isset($_GET['id']) || $_GET['id'] == '') {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/vendedores.php';
    header("Location: http://$host/Admin_joyeria/$extra");
    die();
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
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- summernote -->
    <link rel="stylesheet" href="../../plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style>
    .estilo {
        background-color: #e1e1e1;
        border-radius: 15px;
        padding: 1rem;
        min-width: 100px;
    }

    tr th {
        width: calc(100% / 8);
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
            <a href="../../main.php" class="brand-link">
                <img src="../../img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">Rodey</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="../<?= $IMGUSER ?>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block"><?php echo $NOMBREUSER ?></a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
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
                                    <a href="../vendedores.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver usuarios</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../agregarVendedor.php" class="nav-link">
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
                                    <a href="../../ventas/accionesVenta/nuevaVenta.php" class="nav-link">
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
                                    <a href="../../productos/productos.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver productos</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../../productos/nuevoProducto.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar producto</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview ">
                            <a href="#" class="nav-link ">
                                <i class="fas fa-cubes mx-1"></i>
                                <p class="ml-1">
                                    Paquetes
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../../paquetes/paquetes.php" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver paquetes</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../../paquetes/accionesPaquetes/agregarPaquete.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar paquete</p>
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
                            <?php
                            include '../../conexiones/conexion.php';
                            $sql = "select * from usuarios where idusuarios=" . $_GET['id'];
                            $res = $conexion->query($sql);
                            $conexion->close();
                            $mostrarCambio = mysqli_fetch_array($res);
                            ?>
                            <h1>Usuario : <strong> <?php echo $mostrarCambio['nombre'] ?></strong> </h1>

                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="../vendedores.php">Ver usuario</a></li>

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
                    <div class="row justify-content-center">
                        <div class="col-sm-12 col-md-10 col-lg-9">
                            <div class="card card-primary card-default ">
                                <div class="card-header">
                                    <h3 class="card-title">Productos del usuario</h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                                class="fas fa-minus"></i></button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                                class="fas fa-times"></i></button>
                                    </div>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <?php
                                include '../../conexiones/conexion.php';
                                $sql = "CALL productosUsuario(" . $_GET['id'] . ")";
                                $resultado = $conexion->query($sql);
                                $conexion->close();
                                ?>
                                <div class="card-body">
                                    <div class="mb-3 text-center">
                                        <?php
                                        $imagenUser="";
                                        if($mostrarCambio['imgUsuario']=='user-default.jpg'){
                                            $imagenUser="../../uploads/".$mostrarCambio['imgUsuario'];
                                        }else{
                                            $imagenUser="../".$mostrarCambio['imgUsuario'];
                                        }
                                        ?>
                                        <img src="<?= $imagenUser ?>" class="img-circle elevation-2" width="130"
                                            alt="<?= $imagenUser ?>">
                                    </div>
                                    <div class="row mb-5 justify-content-center">
                                        <div class="col-12">
                                            <table id="example2"
                                                class="table-sm table-hover table-responsive table table-striped table-bordered text-center">
                                                <thead class="">
                                                    <tr class="">
                                                        <th></th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Stock</th>
                                                        <th>Agregar cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $img = "";
                                                    while ($mostrar = mysqli_fetch_array($resultado)) {
                                                        $img = $mostrar['img'];
                                                        if ($img == '') {
                                                            $img = 'producto_default.png';
                                                        }
                                                    ?>
                                                    <tr>
                                                        <td><img src="../../img_productos/<?= $img ?>"
                                                                class="img-rounded" alt="" width="130"></td>
                                                        <td>
                                                            <p class="mt-3 h5"><?php echo $mostrar['descripcion'] ?></p>
                                                        </td>
                                                        <td>
                                                            <p class="mt-3 h5">
                                                                <strong><?php echo '$' . $mostrar['costo'] ?></strong>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p class="mt-3 h5"><span
                                                                    class="badge mt-4 p-2 <?= ($mostrar['stock'] < 10) ? "badge-danger" : (($mostrar['stock'] < 20) ? "badge-warning" : "badge-success") ?> d-block"><?php echo $mostrar['stock'] ?></span>
                                                            </p>
                                                        </td>
                                                        <form
                                                            action="removerProductoUsuario.php?id=<?= $_GET['id'] ?>&idProducto=<?= $mostrar['id_producto'] ?>"
                                                            autocomplete="off" method="POST">
                                                            <td>
                                                                <div class="form-group mt-3">
                                                                    <input id="" name="valor"
                                                                        max="<?= $mostrar['stock'] ?>" min='0' value="0"
                                                                        class="form-control estilo" type="number"
                                                                        name="">
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="btn-group btn-group mt-3">
                                                                    <button type="submit"
                                                                        class="btn btn-lg btn-outline-danger"><i
                                                                            class="fas fa-minus-circle"></i></button>
                                                                </div>
                                                            </td>
                                                        </form>
                                                    </tr>
                                                    <?php }
                                                    ?>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th></th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Stock</th>
                                                        <th>Agregar cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div class="col-12">

                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-sm-12 col-md-10 col-lg-9">
                            <div class="card card-primary card-default ">
                                <div class="card-header">
                                    <h3 class="card-title">Agregar productos al usuario</h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                                class="fas fa-minus"></i></button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                                class="fas fa-times"></i></button>
                                    </div>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <?php
                                include '../../conexiones/conexion.php';
                                $sql = "CALL select_tabla_productos()";
                                $resultado = $conexion->query($sql);
                                $conexion->close();
                                ?>
                                <div class="card-body">

                                    <div class="row mb-5 justify-content-center">
                                        <div class="col-12">
                                            <table id="example1"
                                                class="table-sm table-hover table-responsive table table-striped table-bordered text-center">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Stock</th>
                                                        <th>Agregar cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $img = "";

                                                    while ($mostrar = mysqli_fetch_array($resultado)) {
                                                        $img = $mostrar['img'];
                                                        if ($img == '') {
                                                            $img = 'producto_default.png';
                                                        }
                                                    ?>
                                                    <tr>
                                                        <td><img src="../../img_productos/<?= $img ?>"
                                                                class="img-rounded" alt="" width="130"></td>
                                                        <td>
                                                            <p class="h5 mt-3"><?php echo $mostrar['descripcion'] ?></p>
                                                        </td>
                                                        <td>
                                                            <p class="h5 mt-3">
                                                                <strong><?php echo '$' . $mostrar['costo'] ?></strong>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p class="h5 mt-3"><span
                                                                    class="badge p-2 mt-4 <?= ($mostrar['stock'] < 50) ? "badge-danger" : (($mostrar['stock'] < 100) ? "badge-warning" : "badge-success") ?> d-block"><?php echo $mostrar['stock'] ?></span>
                                                            </p>
                                                        </td>
                                                        <form
                                                            action="asignarProductoUsuario.php?id=<?= $_GET['id'] ?>&idProducto=<?= $mostrar['id_producto'] ?>"
                                                            autocomplete="off" method="POST">
                                                            <td>
                                                                <div class="form-group mt-3">
                                                                    <input id="" name="valor"
                                                                        max="<?= $mostrar['stock'] ?>" min='0' value="0"
                                                                        class="form-control estilo" type="number"
                                                                        name="">
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="btn-group btn-group mt-3">
                                                                    <button type="submit"
                                                                        class="btn btn-lg btn-outline-success"><i
                                                                            class="fas fa-plus-circle"></i></button>
                                                                </div>
                                                            </td>
                                                        </form>

                                                    </tr>
                                                    <?php }
                                                    ?>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th></th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Stock</th>
                                                        <th>Agregar cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div class="col-12">

                                        </div>
                                    </div>
                                    <div class="row mb-5 justify-content-center">
                                        <div class="col-12">

                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-body -->
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
    <script src=" ../../plugins/jquery/jquery.min.js "></script>
    <!-- jQuery UI 1.11.4 -->
    <script src=" ../../plugins/jquery-ui/jquery-ui.min.js "></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src=" ../../plugins/bootstrap/js/bootstrap.bundle.min.js "></script>
    <!-- overlayScrollbars -->
    <script src=" ../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js "></script>
    <!-- AdminLTE App -->
    <script src=" ../../dist/js/adminlte.js "></script>
    <!-- DataTables -->
    <script src="../../plugins/datatables/jquery.dataTables.js"></script>
    <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script>
    $.extend(true, $.fn.dataTable.defaults, {
        "searching": true,
        "ordering": true
    });
    $(function() {

        $('#example2').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
            "responsive": false,
        });
        $('#example1').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
            "responsive": false,
        });
    });
    </script>

</body>

</html>