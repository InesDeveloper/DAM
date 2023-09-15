<?php

$variable = "Ines";
$codificado = base64_encode(base64_encode(base64_encode(base64_encode(base64_encode($variable)))));
$descodificado = base64_encode($codificado);
echo "La variable es: ".$variable;
echo "<br>";
echo "El codificado es: ".$codificado;
echo "<br>";
echo "El decodificado es: ".$descodificado;

?>