<html>
    <head>
        <script src="https://kit.fontawesome.com/e077bc2bee.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/donaciones.css" type="text/css">
    </head>
    <body>
        <header> 
            <h1>Donaciones en areas con riesgo de desertificación.</h1>
            <nav class="homebutton">
                <ul>     
                    <li><a href="principal.php">Home</a></li>
                    <li><a href="kakebo.php">Kakebo</a> </li>
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
                die("No se han podido cargar tus donaciones, necesitas iniciar sesión primero.");
            }
        ?>


        <table cellpadding=0 cellspacing=0>
        <tr>
            <th>Entidad</th>
            <th>Cantidad (€)</th>
            <th>Fecha</th>
        </tr>

        <?php
        $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
        $peticion = "SELECT * FROM Donaciones WHERE idUsuario = '".$_SESSION['idUsuario']."'";
        $resultado = mysqli_query($enlace, $peticion);

        if($resultado->num_rows === 0){
            echo "<tr>
                    <td>Aún no has realizado ninguna donacion</td>
                <tr>";
        }

        while ($fila = $resultado->fetch_assoc()) {
            echo '<tr>
                <td>'.$fila['entidad'].'</td>
                <td>'.$fila['cantidad'].'</td>
                <td>'.$fila['fecha'].'</td>
                <td><a href="eliminardonacion.php?id='.$fila['id'].'"><i class="fas fa-trash-alt" style="color:red"></i></a></td>
            </tr>';
        }
        ?>
            <tr>
                <form action="insertardonacion.php" method="POST">
                    <td>
                        <select name="entidad">
                        <?php
                            $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
                            $peticion = "SELECT * FROM Organizaciones";
                            $resultado = mysqli_query($enlace, $peticion);
                            
                            while ($fila = $resultado->fetch_assoc()) {
                                echo '<option>'.$fila['entidad'].'</option>';
                            }
                        ?>
                        </select>
                    </td>
            
                    <td><input type="number" name="cantidad" min="0.01" step="any"></td>
                    <td><input type="date" name="fecha" min="2021-01-01" max="2030-12-31"></td>
                    <td><input type="submit" value="Enviar"></td>
                </form>
            </tr>
            </table>
            <div class="instrucciones">
                <p> Principales Entidades: </p>
                <p>1. Reforesta. </p>
                <p>2. WWF. </p>
                <p>3. CO2 Gestión. </p>
                <p>4. Asociación plantamos arboles. </p>
            </div>
        </main>
    </body>
</html>