<?php 
    // Modificar variables de entorno, y ponerles valor 1. True.
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);

    // Notificar todos los errores de PHP
    error_reporting(E_ALL);

    $edad = 99;
    $nombre = "Inés";

    echo "Mi nombre es ".$nombre." y mi edad es ".$edad;

?>