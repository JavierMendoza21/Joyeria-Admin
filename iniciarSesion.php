<?php
session_start();

if ((isset($_POST['user']) && $_POST['user'] != '')
        && (isset($_POST['pass']) && $_POST['pass'] != '')
    ) {
        $user = $_POST['user'];
        $pass = $_POST['pass'];
        $var = buscarUsuario($user, $pass);
        //echo 'Tienen datos los campos : ' . $var . '<br>';
        if ($var == 1) {
            //echo 'El usuario existe<br>';

            //echo'Inicio session';
            $_SESSION['idusuario'] = buscarId($user, $pass);

            header("Location:main.php");
        } elseif ($var == 0) {
            //echo 'El usuario no existe<br>';
            echo 'entre al else';
            $host  = $_SERVER['HTTP_HOST'];
            $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
            $extra = 'index.php';
            header("Location: http://$host$uri/$extra");
        } elseif ($var == 0) {
            echo 'coincide el nombre de usuario.';
        }
        // echo 'Inicio sesion';
    } else {
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'index.php';
        header("Location: http://$host$uri/$extra");
        //echo "Location: http://$host$uri/$extra";
        // header("Location:index.php");
    }
//echo'Entre';


function buscarUsuario($user, $pass)
{
    include 'conexiones/conexion.php';
    $sql = "SELECT COUNT(*) as'total' FROM usuarios WHERE usuario='" . $user . "' && contraseña='" . $pass . "' && estado=1";

    $result = $conexion->query($sql);
    $mostrar = mysqli_fetch_array($result);
    if ($mostrar['total'] == 0) {
        return 0; //No existe el usuario
    }
    if ($mostrar['total'] > 1) {
        return -1; //coinciden mas de un usuario el user y el pass
    }
    if ($mostrar['total'] == 1) {
        return 1;
    }
    $conexion->close();
}

function buscarId($user, $pass)
{
    include 'conexiones/conexion.php';
    $sql = "SELECT idusuarios  FROM usuarios WHERE usuario='" . $user . "' && contraseña='" . $pass . "'";

    $result = $conexion->query($sql);
    $mostrar = mysqli_fetch_array($result);
    $conexion->close();
    return $mostrar['idusuarios'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

</body>

</html>