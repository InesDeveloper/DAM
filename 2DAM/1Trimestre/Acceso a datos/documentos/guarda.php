<?php
$myfile = fopen("vault/".date('U')."documento.html", "w") or die("Unable to open file!"); // abrir el documento con permiso de tipo escritura
$txt = $_POST['datos']; // recoger los datos recibidos con el post
fwrite($myfile, $txt); // guardar esos datos en el fichero
fclose($myfile);    // cerrar el fichero
?>    