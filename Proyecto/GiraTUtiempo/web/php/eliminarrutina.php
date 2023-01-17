<?php
    $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
    $peticion = "DELETE FROM Rutina WHERE id = ".$_GET['id']."";
    mysqli_query($enlace, $peticion);
    echo '<meta http-equiv="refresh" content="5; url=gestionaturutina.php">';
?>