<?php
    include "conexiondb.php";
    $peticion = "DELETE FROM ".$_GET['tabla']." WHERE Identificador = ".$_GET['id']."";
    mysqli_query($enlace, $peticion);
    echo '<meta http-equiv="refresh" content="5; url=escritorio.php">';
?>