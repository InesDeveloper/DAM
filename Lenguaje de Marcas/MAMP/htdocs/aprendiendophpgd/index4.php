<?php
    try{
        $im = @imagecreatefromjpeg("fotobien.jpg");
        $tamano = getimagesize("fotobien.jpg");
        var_dump($tamano);
        echo "<br>";
        echo "Que sepas que la imagen tiene unas proporciones de ".$tamano[3]."<br>";
        echo "Que sepas que la imagen tiene una anchura de ".imagesx($im)."<br>";
        echo "Que sepas que la imagen tiene una altura de ".imagesy($im)."<br>";
        
    }catch (Exception $mierror) {
        echo 'Ha habido un error: ', $mierror->getMessage(), "\n";
        
    }
?>