<?php
include '../sessionIniciada.php';

function imprimirMenu($menu, $CAT, $ADMIN)
{
    if ($CAT == $ADMIN) {
        return $menu;
    }
    return '';
}
if ($IMGUSER != 'user-default.jpg') {
} else {
    $IMGUSER = "../uploads/" . $IMGUSER;
}

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
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <style>
        tbody tr td {
            width: calc(100% / 5);
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
                        <?php
                        $usuarios = '<li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="far fa-user nav-icon"></i>
                            <p>
                                Usuarios
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../vendedores/vendedores.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver usuarios</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../vendedores/agregarVendedor.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Agregar usuario</p>
                                </a>
                            </li>
                        </ul>
                    </li>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>

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
                                    <a href="ventas.php" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver ventas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="accionesVenta/nuevaVenta.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Agregar Ventas</p>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <?php
                        $usuarios = '<li class="nav-item has-treeview">
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
                                <a href="../productos/nuevoProducto.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Agregar producto</p>
                                </a>
                            </li>
                        </ul>
                    </li>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>
                        <?php
                        $usuarios = '<li class="nav-item has-treeview ">
                        <a href="#" class="nav-link ">
                            <i class="fas fa-cubes mx-1"></i>
                            <p class="ml-1">
                                Paquetes
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../paquetes/paquetes.php" class="nav-link ">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver paquetes</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../paquetes/paquetes.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Agregar paquete</p>
                                </a>
                            </li>
                        </ul>
                    </li>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>
                        <?php
                        $usuarios = '<li class="nav-item has-treeview">
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
                                <a href="../categorias/agregarCategoria.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Agregar categorias</p>
                                </a>
                            </li>
                        </ul>
                    </li>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>

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

                            <h1 class="m-0 text-dark">Ventas</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="../main.php">Dashboard</a></li>
                                <li class="breadcrumb-item disabled"><a href="ventas.php">Ver ventas</a></li>
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
                    <div class="row justify-content-center mb-3">
                        <div class="col-sm-12 col-md-10 col-lg-9">
                            <a href="accionesVenta/nuevaVenta.php" class="col-lg-4 col-md-5 btn-lg btn btn-success"><i class="ion ion-bag nav-icon"></i> Nueva venta</a>
                        </div>
                    </div>
                    <?php
                    include '../conexiones/conexion.php';
                    $sql = "select date(fecha) as fecha,nombreCliente,total,costoCubierto,estado,idcompra  from compra where idvendedor=" . $_SESSION['idusuario'];
                    $resultado = $conexion->query($sql);
                    $conexion->close();
                    ?>
                    <div class="row justify-content-center">
                        <div class="col-sm-12 col-md-10 col-lg-9">
                            <div class="card">
                                <div class="card-body w-100 px-2                                                                                                                                                                                                              ">
                                    <table id="example2" class="table-sm table-hover table-responsive table table-striped table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th>Estatus</th>
                                                <th>Nombre</th>
                                                <th>Total</th>
                                                <th>fecha</th>
                                                <th>Abonado</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $img = "";

                                            while ($mostrar = mysqli_fetch_array($resultado)) {

                                            ?>
                                                <tr>
                                                    <td>
                                                        <h5><span class="mt-3 badge badge-<?= $mostrar['estado'] == 0 ? 'danger' : 'success'; ?>"><?php echo $mostrar['estado'] == 0 ? 'Adeudo' : 'Liquidado'; ?></span>
                                                        </h5>
                                                    </td>
                                                    <td>
                                                        <p class="mt-3 h5 text-capitalize">
                                                            <?php echo $mostrar['nombreCliente'] ?></p>
                                                    </td>
                                                    <td>
                                                        <p class="mt-3 h5">
                                                            <strong><?php echo '$' . $mostrar['total'] ?></strong></p>
                                                    </td>
                                                    <td>
                                                        <p class="mt-3 h5"><?php echo $mostrar['fecha'] ?></p>
                                                    </td>
                                                    <td>
                                                        <p class="mt-3 h5">
                                                            <strong><?php echo '$' . $mostrar['costoCubierto'] ?></strong>
                                                        </p>
                                                    </td>

                                                    <td>

                                                        <div class="btn-group btn-group mt-2">

                                                            <button type="button" data-toggle="modal" data-target="#exampleModal<?= $mostrar['idcompra'] ?>" data-whatever="@mdo" class="btn btn-lg btn-outline-success" id="abonar" <?= $mostrar['estado'] == 1 ? 'disabled' : ''; ?>>
                                                                <i class="far fa-money-bill-alt"></i></button>

                                                            <div class="modal fade" id="exampleModal<?= $mostrar['idcompra'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                                Abono</h5>
                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <form>
                                                                                <div class="form-group">
                                                                                    <label for="inputCantidad<?= $mostrar['idcompra'] ?>" class="text-left d-block">Cantidad a
                                                                                        abonar:</label>
                                                                                    <input type="number" min="0" class="form-control" id="inputCantidad<?= $mostrar['idcompra'] ?>">
                                                                                </div>

                                                                            </form>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal">Cancelar</button>
                                                                            <button onclick="abonar(this)" type="button" id="<?= $mostrar['idcompra'] ?>" class="btn btn-lg btn-success">Agregar
                                                                                pago</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <a class="btn btn-lg btn-outline-info" href=""><i class="far fa-eye"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Estatus</th>
                                                <th>Nombre</th>
                                                <th>Total</th>
                                                <th>fecha</th>
                                                <th>Abonado</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </tfoot>
                                    </table>
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
    <script src=" ../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js "></script>
    <!-- AdminLTE App -->
    <script src=" ../dist/js/adminlte.js "></script>
    <!-- AdminLTE for demo purposes -->
    <script src=" ../dist/js/demo.js "></script>
    <!-- DataTables -->
    <script src="../plugins/datatables/jquery.dataTables.js"></script>
    <script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

    <script>
        function abonar(btnid) {
            var idcompra = btnid.id;
            var total = document.getElementById("inputCantidad" + idcompra).value;
            total = parseFloat(total);
            //alert("Total : " + total);
            $.ajax({
                type: "POST",
                data: {
                    "cantidad": total,
                    "idcompra": idcompra
                },
                url: "accionesVenta/abonar.php",
                success: function(response) {
                    location.reload(true);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    //if(textStatus === 'timeout'){alert('Failed from timeout');}   
                    if (jqXHR.status === 0) {
                        alert('Not connect: Verify Network: ' + textStatus);
                    } else if (jqXHR.status == 404) {
                        alert('Requested page not found [404]');
                    } else if (jqXHR.status == 500) {
                        alert('Internal Server Error [500].');
                    } else if (textStatus === 'parsererror') {
                        alert('Requested JSON parse failed.');
                    } else if (textStatus === 'timeout') {
                        alert('Time out error.');
                    } else if (textStatus === 'abort') {
                        alert('Ajax request aborted.');
                    } else {
                        alert('Uncaught Error: ' + jqXHR.responseText);
                    }
                    //location.reload();
                },
                timeout: 5000
                //timeout: 1000//para probar timeout
            }).always(function() {
                /** Al finalizar la consulta del servidor **/

            });

        }
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