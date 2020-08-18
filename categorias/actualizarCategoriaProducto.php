<?php
include '../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
if (
    isset($_POST['categoria']) && $_POST['categoria'] != ''
    && isset($_GET['id']) && $_GET['id'] != ''
) {
    $id = $_GET['id'];
    $cat = $_POST['categoria'];
    //echo 'ID : '.$id."<br>";
    //echo 'Categoria : '.$cat."<br>";
    include '../conexiones/conexion.php';
    $sql = "CALL actualizar_categoria(" . $id . ",'" . $cat . "')";


    if (!$conexion->query($sql)) {
        //echo 'error<br>';
        //echo $conexion->errno."<br>";
        //echo $conexion->error;
    } else {
        echo 'exito';
    }
    $conexion->close();

    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'categorias/categorias.php';
    header("Location: http://$host/Admin_joyeria/$extra");
} else {
}
