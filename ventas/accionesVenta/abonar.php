<?php
include '../../sessionIniciada.php';
include "../../conexiones/conexion.php";

if(isset($_POST['cantidad'])&&$_POST['cantidad']!=''
&& isset($_POST['idcompra'])&&$_POST['idcompra']!=''){
    $sqlabonar="call tabla_abonos(".$_POST['idcompra'].",".$_POST['cantidad'].")";
    $conexion->query($sqlabonar);
    $conexion->close();
}