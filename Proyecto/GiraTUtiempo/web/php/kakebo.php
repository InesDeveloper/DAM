<html>
    <head>
        <script src="https://kit.fontawesome.com/e077bc2bee.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/kakebo.css" type="text/css">
    </head>
    <body>
        <header> 
            <h1>KAKEBO, gestiona tus gastos y ahorra dinero</h1>
            <nav class="homebutton">
                <ul>     
                    <li><a href="principal.php">Home</a></li>
                    <li><a href="kakebo.php">Donaciones</a> </li>
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
                die("No se han podido cargar tú Kakebo, necesitas iniciar sesión primero.");
            }
        ?>


        <table cellpadding=0 cellspacing=0>
        <tr>
            <th>Concepto</th>
            <th>Gasto (€)</th>
            <th>Tipo</th>
            <th>Fecha</th>
            <th>Redondeo</th>
        </tr>

        <?php
        $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
        $peticion = "SELECT * FROM Kakebo";
        $resultado = mysqli_query($enlace, $peticion);

        if($resultado->num_rows === 0){
            echo "<tr>
                    <td>Aún no hay nada anotado</td>
                <tr>";
        }

        while ($fila = $resultado->fetch_assoc()) {
            echo '<tr>
                <td>'.$fila['concepto'].'</td>
                <td>'.$fila['gasto'].'</td>
                <td>'.$fila['tipo'].'</td>
                <td>'.$fila['fecha'].'</td>
                <td>'.$fila['redondeo'].'</td>
                <td><a href="eliminar.php?id='.$fila['id'].'"><i class="fas fa-trash-alt" style="color:red"></i></a></td>
            </tr>';
        }
        ?>
            <tr>
                <form action="insertar.php" method="POST">
                    <td><input type="text" name="concepto" placeholder="Concepto"></td>
                    <td><input type="number" name="gasto" min="0.01" step="any"></td>
                    <td><select name="tipo">
                        <option>Fijo</option>
                        <option>Variable</option>
                    </select></td>
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