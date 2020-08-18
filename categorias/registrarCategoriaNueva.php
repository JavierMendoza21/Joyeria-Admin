<?php
include '../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
if ((!empty($_POST['categoria']))) {
    //echo 'cat nueva : '.$_POST['categoria'].'<br>';
    include '../conexiones/conexion.php';
    $sql2 = "CALL nueva_categoria_producto('" . $_POST['categoria'] . "')";
    
    $msj="";
    if (!$conexion->query($sql2)) {
        //echo "Falló CALL: (" . $conexion->errno . ") " . $conexion->error;
        $msj="Error";
    } else {
        //echo "Se realizo con exito el registro";
        $msj="Exito";
    }
    $conexion->close();
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'categorias/agregarCategoria.php';
    header("Location: http://$host/Admin_joyeria/$extra?msj=".$msj);
    //echo '---------------------->Nueva categoria : ' . $_POST['categoria'];;

} else {
    echo '--------------->No entre';
}
