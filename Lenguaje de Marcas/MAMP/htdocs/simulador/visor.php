<?php

$imagen = imagecreatetruecolor(512, 512);
$fondo = imagecolorallocate($imagen, 255, 255, 255);
imagefill($imagen, 0, 0, $fondo);
$col_elipse = imagecolorallocate($imagen, 255, 0, 0);
if ($handle = opendir('registros')) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
            $myfile = fopen("registros/".$entry, "r") or die("Unable to open file!");
            $linea = fread($myfile,filesize("registros/".$entry));
            fclose($myfile);
            $partido = explode(",",$linea);
            imagefilledellipse($imagen, $partido[0]), $partido[1], 50, 50, $col_elipse);
        }
    }
    closedir($handle);
}
header("Content-type: image/png");
imagepng($imagen);
header("Refresh: 0.1;url='?'");
?>