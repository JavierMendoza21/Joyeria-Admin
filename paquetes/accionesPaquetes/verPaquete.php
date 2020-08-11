<?php
include '../../sessionIniciada.php';
include '../../conexiones/conexion.php';

$total = 0;
$sql = "SELECT count(*) as 'total' FROM Joyeria.Paquetes";
$resultado = $conexion->query($sql);

$mostrar = mysqli_fetch_array($resultado);
$total = $mostrar['total'];
/** Verifica que la variable GET venga **/
if (!isset($_GET['idp']) && $_GET['idp'] == '' ){
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'Admin_joyeria/paquetes/paquetes.php';
    header("Location: http://$host/$extra");
}
/** Verifica que el paquete exista**/
if (isset($_GET['idp']) && $_GET['idp'] != '' ){
    $sqldel="select count(*) as 'total' from Paquetes where idpaquete=".$_GET['idp'];
    $rest=$conexion->query($sqldel);
    if(mysqli_fetch_array($rest)['total']==0){
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'Admin_joyeria/paquetes/paquetes.php';
    header("Location: http://$host/$extra");
    }   
}

if(isset($_GET['idrem'])&&$_GET['idrem']!=''){
    $sqlDELETE="CALL eliminarProductoPaquete(".$_GET['idrem'].",".$_GET['idp'].")";
    $conexion->query($sqlDELETE);
}

if (isset($_GET['acc']) && $_GET['acc'] != '') {
    $sqldel="CALL eliminarPaquete(".$_GET['idp'].")";
    $conexion->query($sqldel);

    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'Admin_joyeria/paquetes/paquetes.php';
    header("Location: http://$host/$extra");
    //echo 'Se elimino '.$_GET['idp'];
}


function getProducto($id)
{
    include '../../conexiones/conexion.php';
    $rest = $conexion->query("select idProducto,img_producto as 'img',descripcion as 'descripcion',
    costo_venta as 'costo', categoria_kf as 'categoria' from producto where idProducto=$id");
    //$conexion->close();
    return mysqli_fetch_array($rest);
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
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style>
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
                                <p>
                                    Paquetes
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview ">
                                <li class="nav-item ">
                                    <a href="../paquetes.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver paquetes</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="agregarPaquete.php" class="nav-link ">
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
                            <h1 class="m-0 text-dark">Paquete
                            </h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="../paquetes.php">Ver paquetes</a></li>
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
                        <div class="col-12">
                            <div class="card card-primary card-default ">
                                <div class="card-header">
                                    <h3 class="card-title">Productos del paquete : </h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                                class="fas fa-minus"></i></button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                                class="fas fa-times"></i></button>
                                    </div>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->

                                <div class="card-body">
                                    <div class="row  justify-content-center">
                                        <div class="col-12">
                                            <table id="example2"
                                                class="table-sm table-hover table-responsive table table-striped table-bordered text-center">
                                                <thead id="cabecera" class="">
                                                    <tr class="">
                                                        <th>Imagen</th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tabla">
                                                    <?php
                                                    //include '../../conexiones/conexion.php';
                                                    $sqltabla = "SELECT paquetes_venta.idproducto,descripcion,cantidad_T,img_producto as 'img', costo_venta as 'costo'
                                                        FROM Joyeria.Paquetes
                                                        inner join paquetes_venta on paquetes_venta.idpaquete = Paquetes.idpaquete
                                                        inner join producto on paquetes_venta.idproducto=producto.idProducto
                                                        where Paquetes.idpaquete=" . $_GET['idp'];
                                                    $resultTabla = $conexion->query($sqltabla);
                                                    //$most=mysqli_fetch_array($resultTabla);

                                                    if ($resultTabla) {
                                                        if (mysqli_num_rows($resultTabla) >= 1) {
                                                            $var=0;
                                                            while ($most = mysqli_fetch_array($resultTabla)) {
                                                                $valor = $most['cantidad_T'];
                                                                $most = getProducto($most['idproducto']);
                                                                echo '<tr>' .
                                                                    '<td>' . '<img src="../../img_productos/' . $most["img"] . '"data-toggle="modal"
                                                                    data-target="#exampleModal'.$var.'" alt="" class="img-rounded" alt="" width="120">' . '</td>' .

                                                                    '<!--Inicio modal-->
                                                                    <!-- Modal -->
                                                                    <div class="modal fade" id="exampleModal'.$var.'" tabindex="-1"
                                                                        role="dialog" aria-labelledby="exampleModalLabel"
                                                                        aria-hidden="true">
                                                                        <div class="modal-dialog" role="document">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <h3 class="modal-title" id="exampleModalLabel">' . $most['descripcion'] . '</h3>
                                                                                    <button type="button" class="close"
                                                                                        data-dismiss="modal" aria-label="Close">
                                                                                        <span aria-hidden="true">&times;</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="modal-body text-center ">
                                                                                <img src="../../img_productos/' . $most["img"] . '"data-toggle="modal"
                                                                                data-target="#exampleModal'.$var.'" alt="" class="img-rounded" alt="" width="330">
                                                                                </div>
                                                                                <div class="modal-footer d-flex justify-content-between">
                                                                                    <p class="h3">Precio : <strong>$' . $most['costo'] . '</strong></p>
                                                                                    <button type="button" class="btn btn-lg btn-secondary"
                                                                                        data-dismiss="modal">Cerrar</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--Final modal-->'.
                                                                    '<td>' . $most['descripcion'] . '</td>' .
                                                                    '<td>' . $most['costo'] . '</td>' .
                                                                    '<td>' . $valor . '</td>' .
                                                                    '<td>' .
                                                                    '<form action="verPaquete.php?idrem=' . $most["idProducto"] . '&idp='.$_GET['idp'].'" autocomplete="off" method="POST">' .
                                                                    '<div class="btn-group">' .
                                                                    '<input type="submit" class="btn btn-outline-danger mt-4" value="Eliminar">' .
                                                                    '</div>' .
                                                                    '</form>' .
                                                                    '</td>' .
                                                                    '</tr>';
                                                            }
                                                        }
                                                    }
                                                    ?>


                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th>Imagen</th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Cantidad</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <?php
                                include '../../conexiones/conexion.php';
                                $sqlCosto = "select * from Paquetes where idpaquete=".$_GET['idp'];
                                $resCosto = $conexion->query($sqlCosto);
                                //echo mysqli_num_rows($resCosto). 'Filas ';
                                $res = mysqli_fetch_array($resCosto);

                                ?>
                                <div class="card-footer d-sm-block d-md-flex  text-center justify-content-between">
                                    <div class="card-text text-left">
                                        <h4>De : <strong> <?php echo "$".$res['precioOriginal'];?></strong> A
                                            <strong><?php echo "$".$res['precioVenta'];?></strong></h4>

                                    </div>
                                    <form action="verPaquete.php?acc=del&idp=<?=$_GET['idp'];?>" autocomplete="off"
                                        method="POST" class="text-center mt-3">

                                        <div class="btn-group">
                                            <a href="../paquetes.php" class=" btn btn-warning btn-lg">Regresar</a>

                                            <button class=" btn btn-danger btn-lg">Eliminar</button>

                                        </div>
                                    </form>


                                </div>
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
        <?php
        $conexion->close();
        ?>
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
    <!-- AdminLTE App -->
    <script src=" ../../dist/js/adminlte.js "></script>
    <!-- DataTables -->
    <script src="../../plugins/datatables/jquery.dataTables.js"></script>
    <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="lista.js"></script>
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