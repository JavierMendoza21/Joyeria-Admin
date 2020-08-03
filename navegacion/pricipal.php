<?php
$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
//header("Location: http://$host$uri/$extra");
$redireccionar = "http://$host/main/main.php";

?>
<li class="nav-item">
    <a href="<?= $redireccionar ?>" class="nav-link active">
        <i class="nav-icon fas fa-tachometer-alt"></i>
        <p>
            Dashboard

        </p>
    </a>
</li>