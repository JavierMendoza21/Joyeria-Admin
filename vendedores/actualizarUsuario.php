<?php
include '../sessionIniciada.php';
include '../conexiones/conexion.php';


if (
    isset($_GET['acc']) && isset($_GET['id']) && $_GET['acc'] != '' &&  $_GET['id'] != ''
) {
    $ACCION = $_GET['acc'];
    $ID = $_GET['id'];

    if ($ACCION == 'eliminar') {
        include '../conexiones/conexion.php';
        $consulta = "CALL eliminar_usuario(" . $ID . ");";
        $conexion->query($consulta);

        $conexion->close();
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'vendedores/vendedores.php';
        header("Location: http://$host/Admin_joyeria/$extra");
    } elseif ($ACCION == 'editar') {
        //echo 'Actualizar';

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
                throw new RuntimeException('Limite de la imagen exedido.');
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
                throw new RuntimeException('Extencion de imagen errones.');
            }
            $posFile = "";
            if (!move_uploaded_file(
                $_FILES['imagen']['tmp_name'],
                $posFile = sprintf(
                    '../uploads/%s.%s',
                    sha1_file($_FILES['imagen']['tmp_name']),
                    $ext
                )
            )) {
                throw new RuntimeException('Failed to move uploaded file.');
            }
            $img = $posFile;
        } else {
            if (isset($_GET['img']) && $_GET['img'] != 'user-default.jpg') {
                $img = $_GET['img'];
            }else{
                $img="user-default.jpg";
            }
        }

        //echo 'Imagen : '.$img;
        //$ID="";
        $NOMBRE = $_POST['nombre'];
        $APELLIDOP = $_POST['apellidoP'];
        $APELLIDOM = $_POST['apellidoM'];
        $NUMEROC = $_POST['numeroC'];
        $CORREO = $_POST['email'];
        $DIRECCION = $_POST['direccion'];
        $USER = $_POST['user'];
        $CONTRASEÑA = $_POST['pass'];
        $IMG = $img;
        $targeta = $_POST['targeta'];
        //echo 'Imagen nueva : '.$IMG.'<br>';
        $CATEGORIA = $CATEGORIA;

        //echo 'Categoria : '.$CATEGORIA;
        include '../conexiones/conexion.php';
        $consulta = "call update_user('" . $ID . "','" . $NOMBRE . "','" . $APELLIDOP . "','" . $APELLIDOM . "',
        '" . $NUMEROC . "','" . $CORREO . "','" . $DIRECCION . "','" . $USER . "','" . $CONTRASEÑA . "','" . $IMG . "','" . $CATEGORIA . "','".$targeta."');";
        $conexion->query($consulta);
        //echo $conexion->errno . ' ';
        //echo $conexion->error;
        $conexion->close();
        //echo 'Se actualizo';
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'main.php';
        header("Location: http://$host/Admin_joyeria/$extra");
    }
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'vendedores/vendedores.php';
    header("Location: http://$host/Admin_joyeria/$extra");
}
