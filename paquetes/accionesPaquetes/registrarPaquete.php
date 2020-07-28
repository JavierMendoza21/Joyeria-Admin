<?php 

include '../../sessionIniciada.php';
$htmlContent = file_get_contents("http://adminjoyeria.ddns.net/Admin_joyeria/paquetes/accionesPaquetes/agregarPaquete.php");
$DOM = new DOMDocument();
$DOM->loadHTML($htmlContent);
        

$tabla=$DOM->getElementById("tabla")->firstChild;
print_r($tabla->innerHTML);
