<?php
include '../../sessionIniciada.php';
include '../../conexiones/conexion.php';
if ($CATEGORIA != 1) {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'main.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
if (
    isset($_POST['descripcion']) || $_POST['descripcion'] == '' &&
    isset($_POST['costoCompra']) || $_POST['costoCompra'] == '' &&
    isset($_POST['costoVenta']) || $_POST['costoVenta'] == '' &&
    isset($_POST['costoVenta']) || $_POST['costoVenta'] == '' &&
    isset($_POST['stock']) || $_POST['stock'] == '' &&
    isset($_POST['categoria'][0]) || $_POST['categoria'][0] != 0 
) {
    $img = "";
    if ((isset($_FILES['imagen'])) && ($_FILES['imagen'] != '') && !empty($_FILES['imagen']['tmp_name'])) {
        switch ($_FILES['imagen']['error']) {
            case UPLOAD_ERR_OK:
                //echo '<br>Todo bien<br>';
                break;
            case UPLOAD_ERR_NO_FILE:
                //Se ejecuta cuando no se sube ningun fichero
                //throw new RuntimeException('No file sent.');
                break;
            case UPLOAD_ERR_INI_SIZE:
                //El fichero subido excede la directiva upload_max_filesize de php.ini. 
                break;
            case UPLOAD_ERR_FORM_SIZE:
                //El fichero subido excede la directiva MAX_FILE_SIZE especificada en el formulario HTML. 
                //throw new RuntimeException('Exceeded filesize limit.');
                break;
            default:
                echo $_FILES['imagen']['error'];
                throw new RuntimeException('Unknown errors.');
        }
        if ($_FILES['imagen']['size'] > 8000000) {
            throw new RuntimeException('Exceeded filesize limit.');
        }
        $finfo = new finfo(FILEINFO_MIME_TYPE);
        if (false === $ext = array_search(
            $finfo->file($_FILES['imagen']['tmp_name']),
            array(
                'jpg' => 'image/jpeg',
                'png' => 'image/png',
                'gif' => 'image/gif',
            ),
            true
        )) {
            throw new RuntimeException('Invalid file format.');
        }
        $posFile = "";
        if (!move_uploaded_file(
            $_FILES['imagen']['tmp_name'],
            $posFile = sprintf(
                '../../img_productos/%s.%s',
                sha1_file($_FILES['imagen']['tmp_name']),
                $ext
            )
        )) {
            throw new RuntimeException('Error al subir el archivo.');
        }
        $img = $posFile;
        $img = substr($img, 20);
    } else {
        $img = 'producto_default.png';
    }
    include '../../conexiones/conexion.php';
    $descripcion = $_POST['descripcion'];
    $costoCompra = $_POST['costoCompra'];
    $costoVenta = $_POST['costoVenta'];
    $stock = $_POST['stock'];
    $categoria = $_POST['categoria'];
    $sql = "CALL nuevo_producto(" . $categoria . ",'" . $descripcion . "'," . $costoCompra . "," . $costoVenta . "," . $stock . ",'" . $img . "')";
    $conexion->query($sql);
    $conexion->close();
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'productos/nuevoProducto.php';
    header("Location: http://$host/Admin_joyeria/$extra");
} else {
}
