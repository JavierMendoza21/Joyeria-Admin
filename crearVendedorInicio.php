<?php
include 'conexiones/conexion.php';
$message = "";
$complet = "";
if (
    !empty($_POST['nombre']) && !empty($_POST['apellidoP'])
    && !empty($_POST['apellidoM']) && !empty($_POST['numeroC'])
    && !empty($_POST['email']) && !empty($_POST['user'])
    && !empty($_POST['pass'])
) {
    //echo 'Voy a hacer el insert con el procedimiento almacenado.  ';
    //valido direccion --INICIO
    $direccion = $_POST['direccion'];
    if (empty($direccion)) {
        $direccion = "";
    }
    //valido direccion -- FIN
    //valido imagen --INICO
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
            $message = "La imagen es muy pesada, Maximo 8MB";
            $complet = "error";
            //throw new RuntimeException('Exceeded filesize limit.');
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
            $message = "Formato del archivo, no valido.";
            $complet = "error";
        }
        $posFile = "";
        if (!move_uploaded_file(
            $_FILES['imagen']['tmp_name'],
            $posFile = sprintf(
                'uploads/%s.%s',
                sha1_file($_FILES['imagen']['tmp_name']),
                $ext
            )
        )) {
            $message = "Error al subir el archivo";
            $complet = "error";
        }
        $img = '../'.$posFile;
    } else {
        $img = 'user-default.jpg';
    }
    if ($complet == 'error') {
    } else {
        $nombre = $_POST['nombre'];
        $apellidoP = $_POST['apellidoP'];
        $apellidoM = $_POST['apellidoM'];
        $numeroC = $_POST['numeroC'];
        $email = $_POST['email'];
        $direccionP = $direccion;
        $user = $_POST['user'];
        $pas = $_POST['pass'];
        $img_S = $img;
        $cate = "2";

        include 'conexiones/conexion.php';
        $sql = "CALL insert_usuarios('" . $nombre . "','" . $apellidoP . "','" . $apellidoM . "','" . $numeroC . "',
        '" . $email . "','" . $direccion . "','" . $user . "','" . $pas . "','" . $img_S . "','" . $cate . "')";

        if (!$conexion->query($sql)) {
            $message = "Falló CALL: (" . $conexion->errno . ") " . $conexion->error;
            $complet = "error";
        } else {
            $message = "Se agrego un nuevo usuario";
            $complet = "registrado";
        }
    }
} 
