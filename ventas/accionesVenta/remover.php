<?php
include "../../sessionIniciada.php";

/** Elimina un producto y lo regresa al stock del usuario**/
if(isset($_GET['idp']) && $_GET['idp']!=''){
    include "../../conexiones/conexion.php";
    /** Se remueve una pieza del carrito**/
    $sql="CALL removerPiezaCarrito(".$_SESSION['idusuario'].",".$_GET['idp'].",1)";
    $conexion->query($sql);
    $conexion->close();
}
/** Elimina un paquete y devuelve los productos al stock del usuario**/
if(isset($_GET['idpack']) && $_GET['idpack']!=''){
    include "../../conexiones/conexion.php";
    /** Se remueve una pieza del carrito**/
    $sql="CALL removerPaqueteCarrito(".$_SESSION['idusuario'].",".$_GET['idpack'].",1)";
    $resultado=$conexion->query($sql);
    $conexion->close();
    $resultado=mysqli_fetch_array($resultado);
    if($resultado['msj']=='SI'){
        /** Se van a regresar los productos al vendedor**/
        include "../../conexiones/conexion.php";
        $sqlpaquetes="select * from paquetes_venta where idpaquete=".$_GET['idpack'];
        $resultado=$conexion->query($sqlpaquetes);
        while($producto=mysqli_fetch_array($resultado)){
            $sqladd="CALL agregarProductoUsuarioPaqueteCarrito(".$_SESSION['idusuario'].
            ",".$producto['idproducto'].",".$producto['cantidad_T'].")";
            $conexion->query($sqladd);
        }
    }
}
/** Cancela la compra y devuelve todos los productos al usuario**/
if(isset($_GET['remover']) && $_GET['remover']!=''){
    include "../../conexiones/conexion.php";
    /** Sel eliminan los productos del carrito y se devuelven al usuario**/
    $sqlProductos="select * from carrito where idusuario=".$_SESSION['idusuario'];
    $resultadosProductos=$conexion->query($sqlProductos);
    while($producto=mysqli_fetch_array($resultadosProductos)){
        $sql="CALL removerPiezaCarrito(".$_SESSION['idusuario'].",".$producto['idproducto'].",".$producto['cantidadP'].")";
        $conexion->query($sql);
    }
    include "../../conexiones/conexion.php";


    /** Sel eliminan los paquetes del carrito y se devuelven los productos al usuario**/
    $sqlPaquetes="select * from carritoPaquete where idusuario=".$_SESSION['idusuario'];
    $resultadoPaquete=$conexion->query($sqlPaquetes);
    while($paquete=mysqli_fetch_array($resultadoPaquete)){
        include "../../conexiones/conexion.php";
        $sql="CALL removerPaqueteCarrito(".$_SESSION['idusuario'].",".$paquete['idpaquete'].",".$paquete['cantidadP'].")";
        $resultado=$conexion->query($sql);
        $resultado=mysqli_fetch_array($resultado);
        //echo 'Antes : '.$resultado['msj'];
        if($resultado['msj']=="SI"){
            //echo 'Entre';
            include "../../conexiones/conexion.php";
            $sqlpaquetes="select * from paquetes_venta where idpaquete=".$paquete['idpaquete'];
            $resultadoProducto=$conexion->query($sqlpaquetes);
                while($producto=mysqli_fetch_array($resultadoProducto)){
                    include "../../conexiones/conexion.php";
                    $sqladd="CALL agregarProductoUsuarioPaqueteCarrito(".$_SESSION['idusuario'].
                    ",".$producto['idproducto'].",".($producto['cantidad_T']*$paquete['cantidadP']).")";
                    $conexion->query($sqladd);
            }
        }        
    }
    $conexion->close();
}

$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'ventas/accionesVenta/verCarrito.php';
//echo 'Finish';
header("Location: http://$host/Admin_joyeria/$extra");