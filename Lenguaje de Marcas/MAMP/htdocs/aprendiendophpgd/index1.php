<?php
    header("Content-type: image/png");
    //Crear una imagen de 55 x 30
    $im =imagecreatetruecolor(512, 512);
    $blanco = imagecolorallocate($im, 255, 255, 255);
    $rojo = imagecolorallocate($im, 255, 0, 0);

    //Dibujar un rectángulo blanco
    imagefilledrectangle($im, 0, 0, 512, 512, $blanco);
    imagefilledrectangle($im, 4, 4, 50, 50, $rojo);
    //Guardar la imagen
    imagepng($im);
    //imagepng($im, 'imagefilledrectangle.png');
    imagedestroy($im);


?>