<?php
header("Content-type: image/png");
move_uploaded_file($_FILES["imagen"]["tmp_name"], "imagencasas.jpg");

$im = imagecreatefromjpeg('imagencasas.jpg');
imagefilter($im, IMG_FILTER_GRAYSCALE);
$blanco = imagecolorallocate($im, 255, 255, 255);
$blancotrans = imagecolorallocatealpha($im, 255, 255, 255, 100);
$fuente = 'arial.ttf';
for($x = 0;$x<512;$x+=70){
    for($y = 0;$y<512;$y+=7){
        imagettftext($im, 5, 0, $x, $y, $blancotrans, $fuente, "Holi soy Ines");
    }
}

imagepng($im);

?>