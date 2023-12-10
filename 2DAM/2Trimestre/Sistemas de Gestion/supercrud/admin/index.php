<?php 

session_start(); 
include "../config.php";
include "../controlador.php";
include "inc/condicionesdeinicio.php";
$mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
$miformulario = new Supercontrolador();

?>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css">
        <script src="lib/jquery-3.7.1.min"></script>
        <script src="js/codigo.js"></script>
        <style></style>
    </head>
    <body>
        <?php
            if(isset($_GET['pagina'])){
                switch($_GET['pagina']){
                    case "anterior":
                        if($_SESSION['pagina'] > 0){
                            $_SESSION['pagina']--;
                        }
                        break;
                    case "siguiente":
                        $ultimapagina = intdiv($_SESSION['numerodeelementos'],$_SESSION['elementosporpagina']);
                        $resto = $_SESSION['numerodeelementos'] % $_SESSION['elementosporpagina'];
                        if($_SESSION['pagina'] < $ultimapagina && $resto != 0 ){
                            $_SESSION['pagina']++;
                        }
                        break;
                    case "primera":
                        $_SESSION['pagina'] = 0;
                        break;
                    case "ultima":
                        $ultimapagina = intdiv($_SESSION['numerodeelementos'],$_SESSION['elementosporpagina']);
                        $resto = $_SESSION['numerodeelementos'] % $_SESSION['elementosporpagina'];
                        if($resto != 0) {
                            $_SESSION['pagina'] = $ultimapagina;
                        } else {
                            $ultimapagina--;
                            $_SESSION['pagina'] = $ultimapagina;
                        }
                        
                        break;
                }
            }
            if(isset($_POST['usuario']) && !isset($_SESSION['usuario'])){
                include "../config.php";
                $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
                $consulta = "SELECT * FROM usuarios WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."'";
                $resultado = $mysqli->query($consulta);
                $pasas ="no";
                while ($fila = $resultado->fetch_assoc()) {
                    $pasas = "si";
                    $_SESSION['usuario'] = $fila['usuario'];
                }
                if($pasas == "si"){}else{
                    echo '<div class="notice">Intento de acceso denegado</div>';
                }
            }
            
        ?>
        <?php
        
            if(isset($_SESSION['usuario'])){
                echo '
                    <aside>
                        <div id="contienemenu"><ul>';
                        $consulta = "SHOW TABLES";
                        $resultado = $mysqli->query($consulta);
                
                        while ($fila = $resultado->fetch_array()) {
                            echo '<li><a href="?tabla='.$fila[0].'">'.$fila[0].'</a></li>';
                        }
                        echo '</ul>
                        </div>
                    </aside> 
                    <section>
                        <div id="contienecontenido">
                        ';
                
                            if(isset($_GET['delete'])){$miformulario->delete($_GET['tabla'],$_GET['delete']);}
                            if(isset($_GET['update'])){echo '<div id="formulario">';$miformulario->update($_GET['tabla'],$_GET['update']);echo '</div>';}
                            if($_POST['clave'] == "procesainsertar"){$miformulario->procesainsertar();}
                            if($_POST['clave'] == "procesaupdate"){$miformulario->procesaupdate($_POST['tabla'],$_POST['identificador']);}
                            if(isset($_GET['tabla'])){$miformulario->leer($_GET['tabla']);}
                            if(isset($_GET['create'])){echo '<div id="formulario">';$miformulario->insertar($_GET['create']);echo '</div>';}

                          echo ' 
                          
                        </div>    
                    </section>
                ';       
            }else{
                echo '
                    <form action="?" method="POST" id="formulariologin">
                        <img src="https://jocarsa.com/favicon.ico">
                        <input type="text" name="usuario" placeholder="usuario">
                        <input type="password" name ="contrasena" placeholder="contraseña">
                        <input type="submit">
                    </form> 

                 ';
            }
            
        ?>
        <div id="ajax"></div>
    </body>
</html>