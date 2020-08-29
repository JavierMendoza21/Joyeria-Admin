<?php
include 'sessionIniciada.php';
include 'conexiones/conexion.php';

if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}

$sql = "CALL agregarPagoVendedores()";
$conexion->query($sql);
$conexion->close();

$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'main.php';
header("Location: http://$host/Admin_joyeria/$extra");
