</script>
<?php
include '../../sessionIniciada.php';
if (!empty($_GET['id']) && $_GET['id'] != '') {
    include '../../conexiones/conexion.php';
    $sql = "select count(*) as total from producto where idProducto=" . $_GET['id'];

    $resultado = $conexion->query($sql);
    $conexion->close();
    $mostrar = mysqli_fetch_array($resultado);

    if ($mostrar['total'] == 1) {
        $sql = "DELETE FROM producto
            WHERE idProducto=" . $_GET['id'];
        include '../../conexiones/conexion.php';
        $conexion->query($sql);
        $conexion->close();

        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'Admin_joyeria/productos/productos.php';
        header("Location: http://$host/$extra");
    } else {
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'Admin_joyeria/productos/productos.php';
        header("Location: http://$host/$extra");
    }
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'productos/productos.php';
    echo "http://$host/$extra isse";
    header("Location: http://$host/$extra");
}