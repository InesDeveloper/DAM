<html>
    <head>
        <script src="https://kit.fontawesome.com/e077bc2bee.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/suscripciones.css" type="text/css">
    </head>
    <body>
        <header> 
            <div class="homeSection">
                <nav class="homebutton">
                    <ul>     
                        <li><a href="principal.php">Home</a></li>
                        <li><a href="suscripciones.php">Donaciones</a> </li>
                    </ul>
                </nav>
            </div>
        </header>

    <?php
        session_start();
        if(!isset($_SESSION['pasas']) || $_SESSION['pasas'] == false) {
            echo '<meta http-equiv="refresh" 
            content="5; url=../index.html">';
            die("No se han podido cargar las suscripciones, necesitas iniciar sesión primero.");
        }
    ?>

    <h1>Gestión de suscripciones</h1>

    <table cellpadding=0 cellspacing=0>
    <tr>
        <th>Entidad</th>
        <th>Precio (€)</th>
        <th>Tipo</th>
        <th>Fecha</th>
        <th>Redondeo</th>
    </tr>
        
    <?php
    $enlace = mysqli_connect("localhost", "giratutiempo", "giratutiempo", "giratutiempo");
    $peticion = "SELECT * FROM Suscripciones";
    $resultado = mysqli_query($enlace, $peticion);
        
    if($resultado->num_rows === 0){
		echo "<tr>
                <td>No hay suscripciones aún</td>
            <tr>";
	}
        
    while ($fila = $resultado->fetch_assoc()) {
        echo '<tr>
            <td>'.$fila['entidad'].'</td>
            <td>'.$fila['precio'].'</td>
            <td>'.$fila['tipo'].'</td>
            <td>'.$fila['fecha'].'</td>
            <td>'.$fila['redondeo'].'</td>
            <td><a href="eliminar.php?id='.$fila['id'].'"><i class="fas fa-trash-alt" style="color:red"></i></a></td>
        </tr>';
    }
    ?>
        <tr>
            <form action="insertar.php" method="POST">
                <td><input type="text" name="entidad" placeholder="Entidad"></td>
                <td><input type="number" name="precio" min="0.01" step="any"></td>
                <td><select name="tipo">
                    <option>Mensual</option>
                    <option>Anual</option>
                </select></td>
                <td><input type="date" name="fecha" min="2018-01-01" max="2030-12-31"></td>
                <td><input type="submit" value="Enviar"></td>
            </form>
        </tr>
        </table>

    </body>
</html>