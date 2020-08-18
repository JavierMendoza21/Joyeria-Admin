<?php
include '../../sessionIniciada.php';
include '../../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
echo 'entre';
if (
    isset($_GET['id']) && $_GET['id'] != ''
    && isset($_GET['idProducto']) && $_GET['idProducto'] != ''
    && isset($_POST['valor']) && $_POST['valor'] != ''
) {
    $idUsuario = $_GET['id'];
    $idProducto = $_GET['idProducto'];
    $valor = $_POST['valor'];
    include '../../conexiones/conexion.php';

    $sql = "CALL quitarProductoUsuario($idUsuario,$idProducto,$valor) ";

    $conexion->query($sql);
    $conexion->close();
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/asignarProducto/masProducto.php?id='.$_GET['id'];
    //echo "http://$host/Admin_joyeria/$extra";
    header("Location: http://$host/Admin_joyeria/$extra");
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/vendedores.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
