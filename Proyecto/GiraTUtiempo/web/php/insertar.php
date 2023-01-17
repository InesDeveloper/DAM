<?php 

$enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

$gasto = $_POST['gasto'];
$redondeo = round($gasto, 0, PHP_ROUND_HALF_UP);
$ahorroCalculado = $redondeo - $gasto;
$ahorroRedondeo = round($ahorroCalculado, 2);

$peticion = "  
INSERT INTO 
Kakebo
VALUES
(NULL,
'".$_POST['concepto']."',
'".$gasto."',
'".$_POST['tipo']."',
'".$_POST['fecha']."',
'".$ahorroRedondeo."')
";
$resultado = mysqli_query($enlace,$peticion);

echo '<meta http-equiv="refresh"
    content="5; url=kakebo.php">';
    mysqli_close($enlace);
?>