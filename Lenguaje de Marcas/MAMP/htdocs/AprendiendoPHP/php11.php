<?php

function Cencode($sujeto){
    $construye = "";
    for($i = 0;$i < strlen($sujeto);$i++){$construye .=chr(ord($sujeto[$i])+1);}
    return base64_encode(base64_encode(base64_encode(base64_encode(base64_encode(base64_encode(base64_encode($construye)))))));
}

function Cdecode($sujeto){
    $construye = "";
    $descomprimido = base64_encode(base64_encode(base64_encode(base64_encode(base64_encode(base64_encode($sujeto))))));
    for($i =0;$i < strlen($descomprimido);$i++){$construye .=chr(ord($descomprimido[$i])-1);}
    return $construye;

}

$variable = "Ines";
echo "El nombre es : ".$variable."<br>";
$codificado = Cencode($variable);
echo "El codificado es: ".$codificado."<br>";

?>