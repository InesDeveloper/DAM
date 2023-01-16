<?php 

$enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

$redondeo = round($_POST['precio'], 0, PHP_ROUND_HALF_UP);
$ahorroCalculado = $redondeo - $_POST['precio'];
$ahorroRedondeo = round($ahorroCalculado, 2);

$peticion = "  
INSERT INTO 
Suscripciones
VALUES
(NULL,
'".$_POST['entidad']."',
'".$_POST['precio']."',
'".$_POST['tipo']."',
'".$_POST['fecha']."',
'".$ahorroRedondeo."')
";
$resultado = mysqli_query($enlace,$peticion);

echo '<meta http-equiv="refresh"
    content="5; url=suscripciones.php">';
    mysqli_close($enlace);
?>