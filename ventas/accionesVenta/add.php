<?php
include '../../sessionIniciada.php';

if (isset($_GET['idp']) && $_GET['idp'] != '') {
    include '../../conexiones/conexion.php';
    $sql = "CALL addCarritoProducto(" . $_GET['idp'] . "," . $_SESSION['idusuario'] . ")";
    $conexion->query($sql);
    $conexion->close();
}
if (isset($_GET['idpack']) && $_GET['idpack'] != '') {
    include '../../conexiones/conexion.php';
    $sql = "CALL addCarritoPaquete(" . $_GET['idpack'] . "," . $_SESSION['idusuario'] . ")";
    $resultado = $conexion->query($sql);
    $resultado = mysqli_fetch_array($resultado);
    if ($resultado['msj'] == '1') {
        /** Se pudo agregar el paquete, hay que retirar los productos del stock**/
        include '../../conexiones/conexion.php';
        $sqlProductosPaquete = "SELECT * FROM Joyeria.paquetes_venta where idpaquete=" . $_GET['idpack'];
        $resultado = $conexion->query($sqlProductosPaquete);
        while ($producto = mysqli_fetch_array($resultado)) {
            $sqlRemoverProducto = "CALL quitarProductosPorCarrito(" . $_SESSION['idusuario'] . ",
            " . $producto['idproducto'] . "," . $producto['cantidad_T'] . ")";
            $conexion->query($sqlRemoverProducto);
        }
        $conexion->close();
    } elseif ($resultado['msj'] == '1') {
        /** no se pudo agregar el paquete, solo regresamos**/
    }
    $conexion->close();
}

$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'ventas/accionesVenta/nuevaVenta.php';
header("Location: http://$host/Admin_joyeria/$extra");
