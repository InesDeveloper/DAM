<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="../estilos/principal.css" type="text/css">
</head>
<body>
    <?php
        session_start();
        if(!isset($_SESSION['pasas']) || $_SESSION['pasas'] == false) {
            die("Holi, Te has intentado colar en el panel de control sin permiso");
        }
    ?>
    
    <header> 
        <?php
              echo "<p class='welcome'>Holi, ".$_SESSION['usuario'].", ¿Qué te apetece hacer hoy?</p>";
        ?>
        <nav class="homebutton">
            <ul>     
                <li><a href="kakebo.php">Kakebo</a> </li>
                <li><a href="donaciones.php">Donaciones</a></li>
                <li><a href="../paginasHtml/ecosugerencias.html">EcoSugerencias</a></li>
                <li><a href='logout.php'>Cerrar Sesión</a></li>
            </ul>
        </nav>
    </header>  
    <br>
    <br>
    <main>
        <br>
        <section class="contenedor">  
            <article id="contenedorIzquierda"><a href="gestionaturutina.php" class="button">Gestiona<br>Tu tiempo<br> de Rutina</a></article>
            <article id="contenedorCentro"><img src="../imagenes/imagentazareloj.jpeg"></article>
            <article id="contenedorDerecha"><a href="gestionatuocio.php" class="button">Gestiona<br>Tu tiempo<br> de Ocio</a></article> 
        </section> 
    </main>
</body>
</html>