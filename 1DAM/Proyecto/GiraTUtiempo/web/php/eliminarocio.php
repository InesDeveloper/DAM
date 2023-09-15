<?php
    $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
    $peticion = "DELETE FROM Ocio WHERE id = ".$_GET['id']."";
    mysqli_query($enlace, $peticion);
    echo '<meta http-equiv="refresh" content="5; url=gestionatuocio.php">';
?>