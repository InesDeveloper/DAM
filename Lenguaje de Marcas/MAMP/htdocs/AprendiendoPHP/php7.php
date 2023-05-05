<?php 
    echo"Que sepas que el usuario que has enviado es ".$_POST['usuario']."<br>";
    echo"Que sepas que el password que has enviado es ".$_POST['password']."<br>";
    echo"Que sepas que el nombre que has enviado es ".$_POST['nombre']."<br>";
    echo"Que sepas que el apellidos que has enviado es ".$_POST['apellidos']."<br>";
    echo"Que sepas que el email que has enviado es ".$_POST['email']."<br>";
    echo"Que sepas que el direccion que has enviado es ".$_POST['direccion']."<br>";
    echo"Que sepas que el telefono que has enviado es ".$_POST['telefono']."<br>";

// Abro la conexión con la base de datos (Activar MySQL en Xampp)
    $link = mysqli_connect("localhost", "cursoweb", "cursoweb", "cursoaplicacionesweb");

// Le pido algo a la base de datos
    $peticion = "  
    INSERT INTO usuarios
    VALUES(NULL,
        '".$_POST['usuario']."',
        '".$_POST['password']."',
        '".$_POST['nombre']."',
        '".$_POST['apellidos']."',
        '".$_POST['email']."',
        '".$_POST['direccion']."',
        '".$_POST['telefono']."')
    ";
    mysqli_query($link,$peticion);
    echo $peticion."<br>";
// Cierro los recursos que haya abierto
    mysqli_close($link);
// END
    echo "El registro se ha metido en la base de datos";
?>