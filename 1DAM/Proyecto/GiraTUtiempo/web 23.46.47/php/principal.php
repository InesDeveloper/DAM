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
            die("Te has intentado colar en el panel de control sin permiso");
        }
    ?>
    
    <header> 
        <div class="homeSection">
            <?php
                  echo "<p>Holi, ".$_SESSION['usuario'].", ¿Qué quieres hacer hoy?</p>";
            ?>
            <nav class="homebutton">
                <ul>     
                    <li><a href="principal.php">Home</a></li>
                    <li><a href="suscripciones.php">Suscripciones</a> </li>
                    <li><a href="../paginasHtml/ecosugerencias.html">EcoSugerencias</a></li>
                    <li><a href="donaciones">Donaciones</a></li>
                    <li><a href='logout.php'>Cerrar Sesión</a></li>
                </ul>
            </nav>
        </div>
    </header>  
    <br>
    <br>
    <main>
        <br>
        <section class="contenedor">  
            <article id="contenedorIzquierda"><a href="/pantalla2" class="button">Gestiona<br> Tu<br> Rutina</a></article>
            <article id="contenedorCentro"><img src="../imagenes/giratutiempo.jpg"></article>
            <article id="contenedorDerecha"><a href="/pantalla2" class="button">Gestiona<br> Tu<br> Ocio</a></article> 
        </section> 
    </main>
</body>
</html>