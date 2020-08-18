<?php 
include '../../sessionIniciada.php';
include '../../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
$htmlContent = file_get_contents("http://adminjoyeria.ddns.net/Admin_joyeria/paquetes/accionesPaquetes/agregarPaquete.php");
$DOM = new DOMDocument();
$DOM->loadHTML($htmlContent);
        

$tabla=$DOM->getElementById("tabla")->firstChild;
print_r($tabla->innerHTML);
