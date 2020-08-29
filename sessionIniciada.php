<?php
session_start();
//error_reporting(0); //Se agregar al final para que no arroje errores
$CATEGORIA = "";
$IMGUSER = "";
$NOMBREUSER = "";
$IDUSER = "";
if ((isset($_SESSION['idusuario']) && $_SESSION['idusuario'] != '')) {
    $idusuario = $_SESSION['idusuario'];

    include 'conexiones/conexion.php';
    $sql = "SELECT * FROM usuarios WHERE idusuarios = " . $idusuario . " and estado=1";

    $result = $conexion->query($sql);
    $mostrar = mysqli_fetch_array($result);
    $conexion->close();
    if (empty($mostrar['idusuarios'])) {
        session_destroy();
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'index.php';
        header("Location: http://$host/Admin_joyeria/$extra");
    }
    $IDUSER = $mostrar['idusuarios'];
    $CATEGORIA = $mostrar['categoria_usuario'];
    $IMGUSER = $mostrar['imgUsuario'];
    $NOMBREUSER = $mostrar['nombre'] . ' ' . $mostrar['apellidoP'];
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'index.php';
    header("Location: http://$host/Admin_joyeria/$extra");
    die();
}
