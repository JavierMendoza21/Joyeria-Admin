<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if (isset($_POST['email']) && $_POST['email'] != '') {
    if (existeCorreo($_POST['email']) > 0) {
        require 'Exception.php';
        require 'PHPMailer.php';
        require 'SMTP.php';
        // Instantiation and passing `true` enables exceptions
        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->SMTPDebug = 0;                      // Enable verbose debug output
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'jamg1819@gmail.com';                     // SMTP username
            $mail->Password   = '100%alexis';                               // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

            //Recipients
            $mail->setFrom('jamg1819@gmail.com', 'AdminJoyeria');
            $mail->addAddress($_POST['email']);     // Add a recipient

            $datos = buscarContraseña($_POST['email']);
            //echo 'Usuario :' . $datos['usuario'];
            //echo 'Contraseña :' . $datos['contras'];
            // Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'Recuperar cuenta';
            $mail->Body    = 'Usuario : ' . $datos['usuario'] . '<br>Contrase&ntilde;a : ' . $datos['contras'] . "<br>";
            //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            $host  = $_SERVER['HTTP_HOST'];
            $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
            $extra = 'Admin_joyeria/index.php';
            //echo "http://$host/$extra";
            header("Location: http://$host$uri/$extra");
        } catch (Exception $e) {
            echo "Hubo un error: {$mail->ErrorInfo}";
        }
    } else {
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        $extra = 'forgot-password.php?msj=No existe este usuario&envio=error';
        //echo "http://$host$uri/$extra";
        header("Location: http://$host$uri/$extra");
    }
} else {
    $host  = $_SERVER['HTTP_HOST'];
    $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $extra = 'forgot-password.php?msj=Ingrese un e-mail&envio=error';
    //echo "http://$host$uri/$extra";
    header("Location: http://$host$uri/$extra");
}

function existeCorreo($correo)
{
    include '../conexiones/conexion.php';
    $sql = "CALL existeEmail('" . $correo . "')";
    $result = $conexion->query($sql);
    $conexion->close();
    $mostrar = mysqli_fetch_array($result);
    //echo 'Resultado : ' . $mostrar['total'];
    return $mostrar['total'];
}

function buscarContraseña($correo)
{
    include '../conexiones/conexion.php';
    $sql = "CALL buscarPass('" . $correo . "')";
    $result = $conexion->query($sql);
    $conexion->close();
    $mostrar = mysqli_fetch_array($result);

    $datos = [
        "usuario" => $mostrar['user'],
        "contras" => $mostrar['pass']
    ];

    return $datos;
}
