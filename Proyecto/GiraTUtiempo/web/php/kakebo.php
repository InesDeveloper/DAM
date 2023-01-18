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
                    <li><a href="donaciones.php">Donaciones</a></li>
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
        $peticion = "SELECT * FROM Kakebo WHERE idUsuario = '".$_SESSION['idUsuario']."'";
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
                <p> Instrucciones de uso:</p>
                <p> Kakebo es un libro de cuentas
                para la economia familiar.</p>
                <p>1. Aqui tienes tu tabla de registro
                de gastos para comenzar.</p>
                <p>2. Introduce en concepto el gasto
                que has realizado, por ejemplo internet.</p>
                <p>3. A continuacion la cantidad gastada.</p>
                <p>4. Selecciona el tipo de gasto, si es fijo,
                o si es variable como puede ser salir a tomar algo.
                </p>
                <p>5. Ahora anota la fecha del gasto.</p>
                <p>6. Todo tu trabajo de anotación 
                sirve para hacer un balance de 
                ingresos y gastos. 
                Compara tus ingresos con tus gastos
                y haz un cálculo.</p>
                <p>7. Es importante mantener el hábito.
                Por ello se recomienda hacer tus registros
                minimo, una vez a la semana.
                <p>8. Todo esto te ayudará a ver de forma muy 
                clara si has gastado por encima de los ingresos 
                de ese mes, o si por el contrario, has podido 
                dejar una parte de tus ingresos para ahorrar. 
                Te servirá para entender qué has hecho bien o mal
                a lo largo del mes en materia de ahorro y consumo. 
                Y sobre todo, te dará ideas para saber qué puedes 
                reducir el mes siguiente, los gastos prescindibles.</p>
                <p>9. Puedes utilizar el campo de redondeo para aumentar
                tus ahorro o destinarlo a una organización.</p>
            </div>
        </main>
    </body>
</html>