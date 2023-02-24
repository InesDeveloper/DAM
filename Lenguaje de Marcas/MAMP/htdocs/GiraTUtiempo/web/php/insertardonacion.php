<?php 
session_start();
$enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

$peticion = "  
INSERT INTO 
Donaciones
VALUES
(NULL,
'".$_POST['entidad']."',
'".$_POST['cantidad']."',
'".$_POST['fecha']."',
'".$_SESSION['idUsuario']."')
";
$resultado = mysqli_query($enlace,$peticion);

echo '<meta http-equiv="refresh"
    content="5; url=donaciones.php">';
    mysqli_close($enlace);
?>