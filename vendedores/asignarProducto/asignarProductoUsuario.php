<?php
include '../../sessionIniciada.php';
if (
    isset($_GET['id']) && $_GET['id'] != ''
    && isset($_GET['idProducto']) && $_GET['idProducto'] != ''
    && isset($_POST['valor']) && $_POST['valor'] != ''
) {
    $idUsuario = $_GET['id'];
    $idProducto = $_GET['idProducto'];
    $valor = $_POST['valor'];
    if($valor!=0){
        include '../../conexiones/conexion.php';

        $sql = "CALL agregarProductoUsuario($idUsuario,$idProducto,$valor) ";
        $conexion->query($sql);
        $conexion->close();
    }
    
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/asignarProducto/masProducto.php?id='.$_GET['id'];
    echo "http://$host/Admin_joyeria/$extra";
    header("Location: http://$host/Admin_joyeria/$extra");
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/vendedores.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}