<?php 

$enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

$horaInicio = new DateTime($_POST['horaInicio']);
$horaTermino = new DateTime($_POST['horaFin']);

$interval = $horaInicio->diff($horaTermino);
$totalTiempo = $interval->format('%H horas %i minutos');

$peticion = "  
INSERT INTO 
Rutina
VALUES
(NULL,
'".$_POST['rutina']."',
'".$_POST['horaInicio']."',
'".$_POST['horaFin']."',
'".$totalTiempo."',
'".$_POST['fecha']."')
";
$resultado = mysqli_query($enlace,$peticion);

echo '<meta http-equiv="refresh"
    content="5; url=gestionaturutina.php">';
    mysqli_close($enlace);
?>