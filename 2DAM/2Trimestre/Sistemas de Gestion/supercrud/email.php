<!doctype html>
<html>
    <head>
        <style>
            body{background:rgb(220,220,220);font-family: sans-serif;}
            h1{text-align:center;}
        </style>
    </head>
    <body>
        <?php include "codificador.php";?>
        <h1>Simulación de email </h1>
        <br><p>Puedes consultar tus entregas previamente realizadas haciendo click:<br>
        
        
        <form action="informe.php" method="post">
            <input type="text" name="clave">
            <input type="submit" value="Consultar">
        </form>
        <p style='color:red;'>IMPORTANTE: Este enlace contiene una clave con tu identificación - no compartas este correo electrónico con nadie</p>
        <br>
    </body>
</html>
