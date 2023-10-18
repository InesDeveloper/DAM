<?php

    session_start();
    $mysqli = new mysqli("localhost","documentos","documentos","documentos");
    
    $consulta = "SELECT * FROM usuarios WHERE user = '".$_POST['user']."'AND password = '".$_POST['password']."'";
    
    $resultado = $mysqli->query($consulta);

    $pasas = false;

    while ($fila = $resultado->fetch_assoc()) {
        $pasas = true;
        $_SESSION['user'] = $fila['user'];
        
        
    }if($pasas == true){
        echo "lo que has puesto es correcto y vamos a la aplicacion";
        echo '<meta http-equiv="Refresh" content="2; url=documentos.php" /> ';
        
    }else{
        echo "lo que has puesto es incorrecto";
        echo '<meta http-equiv="Refresh" content="2; url=index.php" /> ';
    }
    
    

?>