<?php

class Supercontrolador {
   
    function formulario($tabla) {
        include "config.php";
        echo '<form action="?" method="POST">';
        echo '<input type="hidden" name="clave" value="procesaformulario">';
        echo '<input type="hidden" name="tabla" value="'.$tabla.'">';
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM ".$tabla;
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {
            if(json_decode($fila["Comment"])->visible == "true"){
                preg_match('#\((.*?)\)#', $fila["Type"], $match);
                echo '
                    <div class="campo">
                        <h3>'.json_decode($fila["Comment"])->titulo.'</h3>
                        <p>'.json_decode($fila["Comment"])->descripcion.' - Caracteres mínimo '.json_decode($fila["Comment"])->min.' máximo '.$match[1].'</p>
                        ';
                        if($fila["Null"] == "NO"){echo " <p>* Campo requerido</p>";}
                        if(json_decode($fila["Comment"])->deshabilitado == "true"){echo " <p>* Campo deshabilitado. Rellenado automatico</p>";}
                        
                        echo'
                        <div class="contienecampo">
                        <table><tr><td width="80%">
                        <input type="'.json_decode($fila["Comment"])->tipodato.'" name="'.$fila["Field"].'" id="'.$fila["Field"].'"
                        ';
                            if($fila["Null"] == "NO"){echo " required ";}
                            if(json_decode($fila["Comment"])->deshabilitado == "true"){echo " readonly ";}
                            preg_match('#\((.*?)\)#', $fila["Type"], $match);
                            echo '
                            maxlenght = "'.$match[1].'"
                            minlenght = "'.json_decode($fila["Comment"])->min.'"
                            placeholder = "'.json_decode($fila["Comment"])->placeholder.'"
                            ';
                            if(isset(json_decode($fila["Comment"])->parametroget)){
                                echo ' value= "'.$_GET[json_decode($fila["Comment"])->parametroget].'"';
                            }
                            echo '
                        >
                        </td><td width="20%">
                        <div class="tipocampo"><i class="'.json_decode($fila["Comment"])->icono.'"></i></div>
                        </td></tr></table>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                ';
            }
        }
        echo '<input type="submit">';
        $mysqli->close();
    }
   
    function procesaformulario(){
        //Vamos a analizar qué es lo que viene antes de meterlo
        foreach($_REQUEST as $nombre_campo => $valor){
            //echo "el campo es: ".$nombre_campo." y el valor es ".$valor;
            if(preg_match('~\b(delete|drop|truncate)\b~i',$nombre_campo)){
                $volcado = implode(",", $_REQUEST).",".$_SERVER['REMOTE_ADDR'].",".$_SERVER['HTTP_USER_AGENT']."\n";
                $myfile = fopen("volcado.txt", "a");
                fwrite($myfile, $volcado);
                die("ejecucion detenida");
            }
            
            if(preg_match('~\b(delete|drop|truncate)\b~i',$valor)){
                $volcado = implode(",", $_REQUEST).",".$_SERVER['REMOTE_ADDR'].",".$_SERVER['HTTP_USER_AGENT']."\n";
                $myfile = fopen("volcado.txt", "a");
                fwrite($myfile, $volcado);
                die("ejecucion detenida");
            }
            
        }
        
        include "config.php";
        $listadocolumnas = "";
        $listadovalores = "";
        foreach($_POST as $nombre_campo => $valor){
            //echo "recibo el campo ".$nombre_campo." con el valor ".$valor."<br>";
            if($nombre_campo != 'tabla' && $nombre_campo != 'clave'){
                $listadocolumnas .= ",".$nombre_campo."";
                $listadovalores .= ",'".$valor."'";
            }
        }
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $cabeceras = 'From: noreply@ines.com' . "\r\n" .
            'Reply-To: noreply@ines.com' . "\r\n" . 
            'X-Mailer:PHP/' . phpversion();
        $cabeceras .= 'MIME-Version: 1.0' . "\r\n";
        $cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
        $mensaje = "<h1>Has enviado un formulario al sistema de entregas</h1><br><p>Comprobante de los cambios que has enviado desde el formulario</p><br>";
        foreach($_POST as $nombre_campo => $valor){
            if($nombre_campo != 'tabla' && $nombre_campo != 'clave'){    
                $mensaje .="".ucfirst($nombre_campo).": <br>".$valor."</b><br>";
            }
        }
        
        $mensaje .= "<br><p>Puedes consultar tus entregas previamente realizadas haciendo click:";
        $mensaje .= "<a href='http://localhost:8888/supercrud/informe.php?clave=".codifica($_POST['email'])."'>Aquí</a></p>";
        $mensaje .= "<p style='color:red;'>IMPORTANTE: Este enlace contiene una clave con tu identificación - no compartas este correo electrónico con nadie</p><br>";
        
        mail(
            $_POST['email'],
            "Formulario enviado",
            $mensaje,
            $cabeceras
        );
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "INSERT INTO ".$_POST['tabla']." (Identificador".$listadocolumnas.") VALUES (NULL".$listadovalores.")";
        //echo $consulta;
        
        $mysqli->query($consulta);
        include "registro.php";
        echo '
            <div class="notice">
                <h1>Registro guardado correctamente</h1>
                <p>Tu registro se ha guardado correctamente en la aplicación. Redirigiendo en 5 segundos...</p>
            </div>
        ';
        echo '<meta http-equiv="refresh" content="5; url=?" />
        ';
        
    }
   
    function leer($tabla){
        include "config.php";
        //echo "A continuacion te pongo el contenido de la tabla ".$tabla;
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM ".$tabla;
        
        $resultado = $mysqli->query($consulta);
        echo '<table>';
        echo '<tr>';
        while ($fila = $resultado->fetch_assoc()) {
            echo '<th>'.$fila["Field"].'</th>';
       
        }
        echo '<th>Operaciones</th>';
        echo '</tr>';
        $consulta = "SELECT * FROM ".$tabla;
        $resultado = $mysqli->query($consulta);
        
        while ($fila = $resultado->fetch_assoc()) {
            echo '<tr>';
            foreach($fila as $nombre_campo => $valor){
                echo '<td>'.$valor.'</td>';
            }
            echo '<td>';
            echo '<a href=""><i class="fas fa-pen-square"></i></a>';
            echo '<a href=""><i class="fas fa-minus-square"></i></a>';
            echo '</td>';
            echo '</tr>';
        }
        
        echo '</table>';
        echo '<a href="?create='.$_GET['tabla'].'" id="create"><i class="fas fa-plus-circle"></i></a>';

    } 
    
    function insertar($tabla) {
        include "config.php";
        echo '<form action="?" method="POST">';
        echo '<input type="hidden" name="clave" value="procesaformulario">';
        echo '<input type="hidden" name="tabla" value="'.$tabla.'">';
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SHOW FULL COLUMNS FROM ".$tabla;
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {
            if(json_decode($fila["Comment"])->visible == "true"){
                preg_match('#\((.*?)\)#', $fila["Type"], $match);
                echo '
                    <div class="campo">
                        <h3>'.json_decode($fila["Comment"])->titulo.'</h3>
                        <p>'.json_decode($fila["Comment"])->descripcion.' - Caracteres mínimo '.json_decode($fila["Comment"])->min.' máximo '.$match[1].'</p>
                        ';
                        if($fila["Null"] == "NO"){echo " <p>* Campo requerido</p>";}
                        if(json_decode($fila["Comment"])->deshabilitado == "true"){echo " <p>* Campo deshabilitado. Rellenado automatico</p>";}
                        
                        echo'
                        <div class="contienecampo">
                        <table><tr><td width="80%">
                        <input type="'.json_decode($fila["Comment"])->tipodato.'" name="'.$fila["Field"].'" id="'.$fila["Field"].'"
                        ';
                            if($fila["Null"] == "NO"){echo " required ";}
                            if(json_decode($fila["Comment"])->deshabilitado == "true"){echo " readonly ";}
                            preg_match('#\((.*?)\)#', $fila["Type"], $match);
                            echo '
                            maxlenght = "'.$match[1].'"
                            minlenght = "'.json_decode($fila["Comment"])->min.'"
                            placeholder = "'.json_decode($fila["Comment"])->placeholder.'"
                            ';
                            if(isset(json_decode($fila["Comment"])->parametroget)){
                                echo ' value= "'.$_GET[json_decode($fila["Comment"])->parametroget].'"';
                            }
                            echo '
                        >
                        </td><td width="20%">
                        <div class="tipocampo"><i class="'.json_decode($fila["Comment"])->icono.'"></i></div>
                        </td></tr></table>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                ';
            }
        }
        echo '<input type="submit">';
        $mysqli->close();
    }
}
?>

