<?php
    session_start();
    session_destroy();

    echo "Cerrando sesión, chau pescau";
    echo '<meta http-equiv="refresh" content="5; url=../index.html">';
?>