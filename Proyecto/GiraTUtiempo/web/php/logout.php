<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        body {
            background-image: url("../imagenes/adios.jpeg");
        }
    </style>
</head>
<body>
    <?php
        session_start();
        session_destroy();

        echo "Cerrando sesión, chau pescau";
        echo '<meta http-equiv="refresh" content="5; url=../index.html">';
    ?>
    </body>
</html>