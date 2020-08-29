<?php
include '../../sessionIniciada.php';

if(isset($_POST['nombre'])&&$_POST['nombre']!=''){
    include '../../conexiones/conexion.php';
    $sqlcomprar="call nuevaCompra(".$_SESSION['idusuario'].",'".$_POST['nombre']."');";
    $conexion->query($sqlcomprar);
}
$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'ventas/ventas.php';
header("Location: http://$host/Admin_joyeria/$extra");

