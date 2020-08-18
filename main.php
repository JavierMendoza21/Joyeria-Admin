<?php
include 'sessionIniciada.php';
$IMGUSER = substr($IMGUSER, 3);

function imprimirMenu($menu, $CAT, $ADMIN)
{
    if ($CAT == $ADMIN) {
        return $menu;
    }
    return '';
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
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <style>
        tr td {
            width: calc(100% / 4);
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
                <a class="nav-link effectoHover" data-toggle="" href="vendedores/editarMiUsuario.php?id=<?= $IDUSER ?>&acc=editar">
                    <i class="fas fa-cogs"></i>
                </a>
                <a class="nav-link effectoHover" data-toggle="" href="cerrarSesion.php">
                    <i class="fas fa-sign-out-alt"></i>
                </a>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="main.php" class="brand-link">
                <img src="img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
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
                <nav class="mt-2 <?= '' ?>">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
                             with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a href="main.php" class="nav-link active">
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
                                <a href="vendedores/vendedores.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver usuarios</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="vendedores/agregarVendedor.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Agregar usuario</p>
                                </a>
                            </li>
                        </ul>
                    </li>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>

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
                                    <a href="ventas/ventas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Ver ventas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="ventas/accionesVenta/nuevaVenta.php" class="nav-link">
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
                                <a href="productos/productos.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver productos</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="productos/nuevoProducto.php" class="nav-link">
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
                                <a href="paquetes/paquetes.php" class="nav-link ">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver paquetes</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="paquetes/accionesPaquetes/agregarPaquete.php" class="nav-link">
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
                                <a href="categorias/categorias.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Ver categorias</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="categorias/agregarCategoria.php" class="nav-link">
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

                            <h1 class="m-0 text-dark">Dashboard</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="main.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="main.php">Dashboard</a></li>
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
                    <div class="row">
                        <div class="col-12">
                            <!-- BAR CHART -->
                            <div class="card card-info ">
                                <div class="card-header">
                                    <h3 class="card-title">Ventas por usuario</h3>

                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="card-body text-center" style="overflow:scroll ;">
                                    <p class="text-muted"><i class="fas fa-info-circle"></i> La columna de ventas reprecenta, las ventas hechas por los vendedores y la columna activos, representa el total de los abonos a esas cuentas </p>
                                    <div class="chart" style="width: 950px;">
                                        <canvas id="barChart" style="min-height: 300px; height: 300px; max-height: 300px; width: 1200px;"></canvas>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <?php
                        $usuarios = '<div class="col-sm-12 col-md-5 col-lg-4">
                        <!-- BAR CHART -->
                        <div class="card card-info ">
                            <div class="card-header">
                                <h3 class="card-title">Ventas totales</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body ">
                                <canvas id="barChart2" style="min-height: 300px; height: 300px; max-height: 300px; max-width: 200%;"></canvas>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>
                        <?php
                        $usuarios = '<div class="col-sm-12 col-md-7 col-lg-8">
                        <!-- BAR CHART -->
                        <div class="card card-info ">
                            <div class="card-header">
                                <h3 class="card-title">Categorias mas vendidas</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                                </div>
                            </div>
                            <div class="card-body ">
                                <canvas id="barChart3" style="min-height: 300px; height: 300px; max-height: 300px; max-width: 200%;"></canvas>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>';
                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>

                        <?php
                        include "conexiones/conexion.php";
                        $sql = "call getPorcentajes()";
                        $result = $conexion->query($sql);
                        $conexion->close();
                        $usuarios="";
                        while ($mostrar = mysqli_fetch_array($result)) {
                            $usuarios = '<div class="col-12">
                            <!-- BAR CHART -->
                            <div class="card card-info ">
                                <div class="card-header">
                                    <h3 class="card-title">Porcentajes</h3>
    
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="card-body text-center">
                                    <p class="text-muted"><i class="fas fa-info-circle"></i> El total es de los productos que ya se terminaron de pagar, no se incluyen los productos que no hayan sido pagados. </p>
                                    <table id="example2" class="col-lg-10 col-sm-12 col-md-9 mx-auto table-hover  p-0 table-sm table table-bordered table-striped text-center table-responsive">
                                        <thead>
                                            <tr>
                                                <th>Total <p class="text-muted d-inline">(100%)</p>
                                                </th>
                                                <th>Recompra <p class="text-muted d-inline">(10%)</p>
                                                </th>
                                                <th>Vendedores <p class="text-muted d-inline">(30%)</p>
                                                </th>
                                                <th>Socio <p class="text-muted d-inline">(35%)</p>
                                                </th>
                                                <th>Alexis Alarcon <p class="text-muted d-inline">(25%)</p>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                    <td class="pt-3">
                                                        <p class="h3">$'.number_format($mostrar["total"], 2) .'</p>
                                                    </td>
                                                    <td class="pt-3">
                                                        <p class="h3">$'.number_format($mostrar["recompra"], 2) .'</p>
                                                    </td>
                                                    <td class="pt-3">
                                                        <p class="h3">$'.number_format($mostrar["Vendedor"], 2) .'</p>
                                                    </td>
                                                    <td class="pt-3">
                                                        <p class="h3">$'.number_format($mostrar["socio"], 2) .'</p>
                                                    </td>
                                                    <td class="pt-3">
                                                        <p class="h3">$'.number_format($mostrar["alexis"], 2) .'</p>
                                                    </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>';
                        }

                        echo imprimirMenu($usuarios, $CATEGORIA, 1);
                        ?>

                    </div>
                </div>
        </div><!-- /.container-fluid -->
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
    <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->
    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js "></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="plugins/chart.js/Chart.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.js "></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <script>
        $(function() {
            /* ChartJS
             * -------
             * Here we will create a few charts using ChartJS
             */
            //--------------
            //- AREA CHART -
            //--------------
            var areaChartData = {
                labels: [<?php include 'conexiones/conexion.php';
                            $sqlusuarios = "call ventaPorUsuario(" . $_SESSION['idusuario'] .
                                ")";
                            $resultado = $conexion->query($sqlusuarios);
                            $conexion->close();
                            while ($mostrar = mysqli_fetch_array($resultado)) {
                                echo "'" . $mostrar['nombre'] . "',";
                            } ?>],
                datasets: [{
                        label: 'Ventas',
                        backgroundColor: 'rgba(60,141,188,0.9)',
                        borderColor: 'rgba(60,141,188,0.8)',
                        pointRadius: false,
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: [<?php include 'conexiones/conexion.php';
                                $sqlusuarios = "call ventaPorUsuario(" . $_SESSION['idusuario'] . ")";
                                $resultado = $conexion->query($sqlusuarios);
                                $conexion->close();
                                while ($mostrar = mysqli_fetch_array($resultado)) {
                                    echo "'" . $mostrar['venta'] . "',";
                                } ?>]
                    },
                    {
                        label: 'Activos',
                        backgroundColor: 'rgba(210, 214, 222, 1)',
                        borderColor: 'rgba(210, 214, 222, 1)',
                        pointRadius: false,
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: [<?php include 'conexiones/conexion.php';
                                $sqlusuarios = "call ventaPorUsuario(" . $_SESSION['idusuario'] .
                                    ")";
                                $resultado = $conexion->query($sqlusuarios);
                                $conexion->close();
                                while ($mostrar = mysqli_fetch_array($resultado)) {
                                    echo "'" . $mostrar['cubierto'] . "',";
                                } ?>]
                    },
                ]
            }
            //- AREA CHART 2-
            //--------------
            var areaChartData2 = {
                labels: ["Total"],
                datasets: [{
                        label: 'Ventas',
                        backgroundColor: 'rgba(60,141,188,0.9)',
                        borderColor: 'rgba(60,141,188,0.8)',
                        pointRadius: false,
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: [<?php include 'conexiones/conexion.php';
                                $sqlusuarios = "select sum(total) as venta, sum(costoCubierto) as cubierto 
                                from compra inner join usuarios on idvendedor=idusuarios;";
                                $resultado = $conexion->query($sqlusuarios);
                                $conexion->close();
                                while ($mostrar = mysqli_fetch_array($resultado)) {
                                    echo "'" . $mostrar['venta'] .
                                        "',";
                                } ?>]
                    },
                    {
                        label: 'Activos',
                        backgroundColor: 'rgba(210, 214, 222, 1)',
                        borderColor: 'rgba(210, 214, 222, 1)',
                        pointRadius: false,
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: [<?php include 'conexiones/conexion.php';
                                $sqlusuarios = "select sum(total) as venta, sum(costoCubierto) as cubierto 
                                from compra inner join usuarios on idvendedor=idusuarios;";
                                $resultado = $conexion->query($sqlusuarios);
                                $conexion->close();
                                while ($mostrar = mysqli_fetch_array($resultado)) {
                                    echo "'" . $mostrar['cubierto'] . "',";
                                } ?>]
                    },
                ]
            }
            //- AREA CHART 2-
            //--------------
            var areaChartData3 = {
                labels: [<?php include 'conexiones/conexion.php';
                            $sqlusuarios = "select  categoria_producto.categoria,sum(cantidad) as total from productosVendidos inner join producto
                                on producto.idProducto=productosVendidos.idProducto
                                inner join categoria_producto
                                on categoria_producto.idcategoria_producto=producto.categoria_kf
                                group by categoria_producto.idcategoria_producto
                                order by total desc;";
                            $resultado = $conexion->query($sqlusuarios);
                            $conexion->close();
                            $contador = 0;
                            while ($mostrar = mysqli_fetch_array($resultado) and $contador < 5) {
                                echo "'" . $mostrar['categoria'] .
                                    "',";
                                $contador = $contador + 1;
                            } ?>],
                datasets: [{
                    label: 'Vendidos',
                    backgroundColor: 'rgba(60,141,188,0.9)',
                    borderColor: 'rgba(60,141,188,0.8)',
                    pointRadius: false,
                    pointColor: '#3b8bba',
                    pointStrokeColor: 'rgba(60,141,188,1)',
                    pointHighlightFill: '#fff',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data: [<?php include 'conexiones/conexion.php';
                            $sqlusuarios = "select  categoria_producto.categoria,sum(cantidad) as total from productosVendidos inner join producto
                                on producto.idProducto=productosVendidos.idProducto
                                inner join categoria_producto
                                on categoria_producto.idcategoria_producto=producto.categoria_kf
                                group by categoria_producto.idcategoria_producto
                                order by total desc;";
                            $resultado = $conexion->query($sqlusuarios);
                            $conexion->close();
                            $contador = 0;
                            while ($mostrar = mysqli_fetch_array($resultado) and $contador < 5) {
                                echo "'" . $mostrar['total'] .
                                    "',";
                                $contador = $contador + 1;
                            } ?>]
                }, ]
            }
            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $('#barChart').get(0).getContext('2d')
            var barChartData = jQuery.extend(true, {}, areaChartData)
            var temp0 = areaChartData.datasets[0]
            var temp1 = areaChartData.datasets[1]
            barChartData.datasets[0] = temp1
            barChartData.datasets[1] = temp0

            var barChartOptions = {
                responsive: true,
                maintainAspectRatio: false,
                datasetFill: false
            }

            var barChart = new Chart(barChartCanvas, {
                type: 'bar',
                data: barChartData,
                options: barChartOptions
            })
            //-------------
            //- BAR CHART 2 -
            //-------------
            var barChartCanvas = $('#barChart2').get(0).getContext('2d')
            var barChartData = jQuery.extend(true, {}, areaChartData2)
            var temp0 = areaChartData2.datasets[0]
            var temp1 = areaChartData2.datasets[1]
            barChartData.datasets[0] = temp1
            barChartData.datasets[1] = temp0

            var barChart = new Chart(barChartCanvas, {
                type: 'bar',
                data: barChartData,
                options: barChartOptions
            })

            var barChartCanvas = $('#barChart3').get(0).getContext('2d')
            var barChartData = jQuery.extend(true, {}, areaChartData3)
            var temp0 = areaChartData3.datasets[0]
            barChartData.datasets[0] = temp0

            var barChart = new Chart(barChartCanvas, {
                type: 'bar',
                data: barChartData,
                options: barChartOptions
            })
        })
    </script>
</body>

</html>