<?php
include '../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
if (isset($_GET['id']) && $_GET['acc'] != '') {
    if ($_GET['acc'] == 'eliminar') {
        include '../conexiones/conexion.php';
        $sql = "CALL eliminar_categoria_producto(" . $_GET['id'] . ")";

        $result = $conexion->query($sql);
        $conexion->close();
        $mostrar = mysqli_fetch_array($result);
        $varR=$mostrar['msj'];
        
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'categorias.php';

        header("Location: http://$host$uri/$extra");
    }
    if ($_GET['acc'] == 'editar') {
        echo 'Editar';
    }
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'categorias.php';

    header("Location: http://$host$uri/$extra?err=void");
}
