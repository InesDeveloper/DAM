<?php 
session_start();
// Abro la conexión con la base de datos (Activar MySQL en Xampp)
include "conexiondb.php";

// Le pido algo a la base de datos
$peticion = "  
SELECT * FROM usuarios
WHERE
usuario = '".$_POST['usuario']."'
AND
password = '".$_POST['contrasena']."'
LIMIT 1
";
$resultado = mysqli_query($enlace,$peticion);

$pasas= false;
$_SESSION['pasas'] = false;

if ($fila = $resultado->fetch_assoc()) {
    //echo $fila['nombre']." ".$fila['apellidos']."<br>;
    $pasas= true;
    $_SESSION['nombre'] = $fila['nombre'];
    $_SESSION['apellidos'] = $fila['apellidos'];
}else{
    //echo "No hay ningun usuario que cumpla esas caracteristicas";
    $pasas= false;
}
//Validamos
if($pasas){
    echo "Te voy a dar acceso a la aplicacion";
    $_SESSION['pasas'] = true;
    
    echo '<meta http-equiv="refresh"
    content="5; url=escritorio.php">';
}else{
    echo "No te voy a dar acceso a la aplicacion";
    $_SESSION['pasas'] = false;
    
    echo '<meta http-equiv="refresh"
    content="5; url=index.php">';
}
// Cierro los recursos que haya abierto
    mysqli_close($enlace);
?>