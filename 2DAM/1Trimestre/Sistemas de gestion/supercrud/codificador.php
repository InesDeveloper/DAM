<?php
    function subecaracter($cadena){
        for($i = 0;$i < strlen($cadena);$i++){
            $cadena[$i] = chr(ord($cadena[$i])+1);
        }
        return $cadena;
    }

    function bajacaracter($cadena){
        for($i = 0;$i < strlen($cadena);$i++){
            $cadena[$i] = chr(ord($cadena[$i])-1);
        }
        return $cadena;
    }

    function codifica($cadena){
        $codificado = base64_encode(subecaracter(base64_encode(subecaracter(base64_encode(subecaracter(base64_encode($cadena)))))));
        return $codificado;
    }

    function descodifica($cadena){
        $descodificado = base64_decode(bajacaracter(base64_decode(bajacaracter(base64_decode(bajacaracter(base64_decode($cadena)))))));
        return $descodificado;
    }
    /*
    $original = "efreya_sanchez@hotmail.com";
    echo "el original es: ".$original;
    echo "<br>";
    $codificado = codifica($original);
    echo "el codificado es: ".$codificado;
    $descodificado = descodifica($codificado);
    echo "<br>";
    echo "el descodificado es: ".$descodificado;
    // WEVLcVozW3VlV3VrWEgyY1UxWjdkV3B7T21HbFM0V2NbR1tNYm1TR2RJbWJObm1LW0dpUVNsOnZlWHVQZjFadA==
    */
    
?>