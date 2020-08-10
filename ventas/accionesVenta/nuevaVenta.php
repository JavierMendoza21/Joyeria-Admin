<?php
include '../../sessionIniciada.php';

?>
<!DOCTYPE html>
<html>


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
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <style>
    tbody tr {
        min-width: 100%;
    }

    tbody tr td {
        min-width: calc(100% / 5);
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
                                    Usuarios
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
                        <li class="nav-item has-treeview menu-open">
                            <a href="#" class="nav-link active">
                                <i class="far fa-money-bill-alt nav-icon"></i>
                                <p>
                                    Ventas
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../ventas.php" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver ventas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="nuevaVenta.php" class="nav-link active">
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
                                    <a href="../../paquetes/paquetes.php" class="nav-link">
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

                            <h1 class="m-0 text-dark">Nueva venta</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item disabled"><a href="../ventas.php">Ver ventas</a></li>
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
                        <div class="col-lg-8 col-md-10 col-sm-12  my-2 justify-content-center">
                            <a href="#" class="btn btn-outline-primary">
                                <i class="fas fa-shopping-cart"></i> Ver carrito
                            </a>
                        </div>
                    </div>
                    <?php
                    include '../../conexiones/conexion.php';
                    //echo 'Usuario id : '.$_SESSION['idusuario'];
                    $sql = "CALL select_productos_usuario(" . $_SESSION['idusuario'] . ")";
                    $resultado = $conexion->query($sql);
                    $conexion->close();
                    ?>
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10 col-sm-12 justify-content-center">
                            <div class="card">
                                <div
                                    class="card-body w-100 px-2                                                                                                                                                                                                              ">
                                    <table id="example2"
                                        class="table-sm table-hover table-responsive table table-striped table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>Categoria</th>
                                                <th>Descripcion</th>
                                                <th>Precio</th>
                                                <th>Stock</th>
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
                                                <td><img src="../../img_productos/<?= $img ?>" class="img-rounded"
                                                        alt="" width="80"></td>
                                                <td><?php echo $mostrar['categoria'] ?></td>
                                                <td><?php echo $mostrar['descripcion'] ?></td>
                                                <td><?php echo '$' . $mostrar['costo'] ?></td>
                                                <td><span
                                                        class="badge mt-3 d-block py-2 <?= ($mostrar['stock'] < 50) ? "badge-danger" : (($mostrar['stock'] < 100) ? "badge-warning" : "badge-success") ?> "><?php echo $mostrar['stock'] ?></span>
                                                </td>
                                                <td>
                                                    <div class="btn-group btn-group  mt-3">
                                                        <a class="btn btn-info" href=""><i
                                                                class="fas fa-cart-plus"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php } ?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th></th>
                                                <th>Categoria</th>
                                                <th>Descripcion</th>
                                                <th>Precio</th>
                                                <th>Stock</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center ">

                        <?php
                        include '../../conexiones/conexion.php';
                        $sqlPaquetes = "SELECT * FROM Joyeria.Paquetes;";
                        $resPaquetes = $conexion->query($sqlPaquetes);

                        while ($mostrar = mysqli_fetch_array($resPaquetes)) {
                            include '../../conexiones/conexion.php';
                        
                            $sqlgetPaquete = 'call getCountProductosPaquete(' . $mostrar['idpaquete'] . ','.$_SESSION['idusuario'].');';
                            $packList = $conexion->query($sqlgetPaquete);
                            $numeroT=mysqli_num_rows($packList);
                            $mtp = mysqli_fetch_array($packList);
                            if($mtp['total']==$numeroT){
                                include '../../conexiones/conexion.php';
                                $sqlgetPaqueteRest = 'call getPaquetes(' . $mostrar['idpaquete'] . ');';
                                $packListRest = $conexion->query($sqlgetPaqueteRest);
                                $lista = "";
                                while ($mtpRest = mysqli_fetch_array($packListRest)) {
                                    $lista .= "<li>";
                                    $lista .= $mtpRest['cantidad_T'] . " " . $mtpRest['descripcion'];
                                    $lista .= "</li>";
                                }
                                echo '<div class="col-lg-8 col-sm-12 ">
                                        <div class="card card-light">
                                            <div class="card-header d-flex justify-content-between">
                                                <h3 class="text-left">Descuento de ' . $mostrar['porcentaje'] . ' <sup style="font-size: 20px">%</sup> </h3>
                                            </div>
                                            <div class="card-body">
                                                <ul>
                                                    ' . $lista . '
                                                </ul>
                                            <p class="card-text text-center h2">De : <strong >$' . $mostrar['precioOriginal'] . '</strong> a <strong>'.$mostrar['precioVenta'].'</strong></p>
                                            </div>
                                            <div class="card-footer text-center text-muted">
                                                <div class="btn-group ">
                                                    <a href="accionesPaquetes/verPaquete.php?idp=' . $mostrar['idpaquete'] . '" class="btn btn-info px-5 border-dark"><strong   class="h3"><i class="fas fa-cart-plus"></i></strong></a>
                                                    <a href="accionesPaquetes/verPaquete.php?idp=' . $mostrar['idpaquete'] . '" class="btn btn-light px-5 border-dark"><strong   class="h3"><i class="fas fa-eye"></i></strong></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>';
                            }
                            
                            //echo "<br>Mi lista ".$lista;
                            
                        }
                        ?>
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
    <!-- Tempusdominus Bootstrap 4 -->
    <script src=" ../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js "></script>
    <!-- AdminLTE App -->
    <script src=" ../../dist/js/adminlte.js "></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src=" ../../dist/js/pages/dashboard.js "></script>
    <!-- AdminLTE for demo purposes -->
    <script src=" ../../dist/js/demo.js "></script>
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
    });
    </script>
</body>

</html>