<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        body {
            background-image: url("../imagenes/entrando.jpeg");
        }
    </style>
</head>
<body>
    <?php 
    session_start();

    $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");

    $peticion = "  
    SELECT * FROM Usuarios
    WHERE
    usuario = '".$_POST['usuario']."'
    AND
    contrasena = '".$_POST['contrasena']."'
    LIMIT 1
    ";
    $resultado = mysqli_query($enlace,$peticion);

    $pasas= false;
    $_SESSION['pasas'] = false;

    if ($fila = $resultado->fetch_assoc()) {
        $pasas= true;
        $_SESSION['usuario'] = $fila['usuario'];
        $_SESSION['idUsuario'] = $fila['id'];
    }else{
        $pasas= false;
    }

    if($pasas){
        echo "Iniciando sesión, un momento por favor";
        $_SESSION['pasas'] = true;

        echo '<meta http-equiv="refresh"
        content="5; url=principal.php">';
    }else{
        echo "No se ha podido iniciar sesión";
        $_SESSION['pasas'] = false;

        echo '<meta http-equiv="refresh"
        content="5; url=../index.html">';
    }

        mysqli_close($enlace);
    ?>
    </body>
</html>