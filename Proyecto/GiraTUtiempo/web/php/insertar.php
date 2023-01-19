<?php 
session_start();

$enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

$gasto = $_POST['gasto'];
$gastosindecimales = floor($gasto);
$decimales = $gasto - $gastosindecimales;
$ahorroRedondeo = 0;

if($gasto != $gastosindecimales) {
    $ahorroRedondeo = 1 - $decimales;
}

$ahorroRedondeo = bcdiv($ahorroRedondeo, 1, 2);

$peticion = "  
INSERT INTO 
Kakebo
VALUES
(NULL,
'".$_POST['concepto']."',
'".$gasto."',
'".$_POST['tipo']."',
'".$_POST['fecha']."',
'".$ahorroRedondeo."',
'".$_SESSION['idUsuario']."')
";
$resultado = mysqli_query($enlace,$peticion);

echo '<meta http-equiv="refresh"
    content="5; url=kakebo.php">';
    mysqli_close($enlace);
?>