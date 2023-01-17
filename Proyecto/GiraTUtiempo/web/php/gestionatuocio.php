<html>
    <head>
        <script src="https://kit.fontawesome.com/e077bc2bee.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/gestionatuocio.css" type="text/css">
    </head>
    <body>
        <header> 
            <h1>Gestiona el tiempo de tú OCIO</h1>
            <nav class="homebutton">
                <ul>     
                    <li><a href="principal.php">Home</a></li>
                </ul>
            </nav>
        </header>
        <main>
        <hr>
        <?php
            session_start();
            if(!isset($_SESSION['pasas']) || $_SESSION['pasas'] == false) {
                echo '<meta http-equiv="refresh" 
                content="5; url=../index.html">';
                die("No se han podido cargar tu ocio, necesitas iniciar sesión primero.");
            }
        ?>


        <table cellpadding=0 cellspacing=0>
        <tr>
            <th>Rutina</th>
            <th>Hora Inicio</th>
            <th>Hora fin</th>
            <th>Fecha</th>
            <th>Total Tiempo</th>
        </tr>

        <?php
        $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
        $peticion = "SELECT * FROM Ocio";
        $resultado = mysqli_query($enlace, $peticion);

        if($resultado->num_rows === 0){
            echo "<tr>
                    <td>Aún no hay nada anotado</td>
                <tr>";
        }

        while ($fila = $resultado->fetch_assoc()) {
            echo '<tr>
                <td>'.$fila['ocio'].'</td>
                <td>'.$fila['horaInicio'].'</td>
                <td>'.$fila['horaFin'].'</td>
                <td>'.$fila['fecha'].'</td>
                <td>'.$fila['totalTiempo'].'</td>
                <td><a href="eliminarocio.php?id='.$fila['id'].'"><i class="fas fa-trash-alt" style="color:red"></i></a></td>
            </tr>';
        }
        ?>
            <tr>
                <form action="insertarocio.php" method="POST">
                    <td><input type="text" name="ocio" placeholder="Ocio"></td>
                    <td><input type="time" name="horaInicio"></td>
                    <td><input type="time" name="horaFin"></td>
                    <td><input type="date" name="fecha" min="2021-01-01" max="2030-12-31"></td>
                    <td><input type="submit" value="Enviar"></td>
                </form>
            </tr>
            </table>
            <div class="instrucciones">
                <p>1. Instruccion 1</p>
                <p>2. Instruccion 2</p>
                <p>3. Instruccion 3</p>
                <p>4. Instruccion 4</p>
                <p>5. Instruccion 5</p>
            </div>
        </main>
    </body>
</html>