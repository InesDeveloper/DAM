<?php 
    echo"Nombre ".$_POST['nombre']."<br>";
    echo"Apellidos ".$_POST['apellidos']."<br>";
    echo"Usuario ".$_POST['usuario']."<br>";
    echo"Contraseña ".$_POST['contrasena']."<br>";
    echo"Email ".$_POST['email']."<br>";

// Abro la conexión con la base de datos
    $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

    if (!$enlace) {
        echo "No se ha conectado con la base de datos";
        die($error);
    }


// Le pido algo a la base de datos
    $peticion = "  
    INSERT INTO Usuarios
    VALUES(
        NULL,
        '".$_POST['nombre']."',
        '".$_POST['apellidos']."',
        '".$_POST['usuario']."',
        '".$_POST['contrasena']."',
        '".$_POST['email']."')
    ";

    $resultado = mysqli_query($enlace, $peticion);

    echo "<br>Registro ingresado exitosamente.";
    echo '<meta http-equiv="refresh" content="5; url=../index.html">';
    
// Cierro los recursos que haya abierto
    mysqli_close($enlace);
?>