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
            if($fila["Key"] == NULL && $fila["Field"] != "epoch"){
                echo '
                    <div class="campo">
                        
                        <p>'.$fila["Comment"].'</p>
                        ';
                        if($fila["Null"] == "NO"){echo " <p>* Campo requerido</p>";}
                        echo'
                        <input type="';
                        if($fila["Field"] == "email"){
                            echo "email";
                        }
                        else if(strpos($fila["Type"],"varchar") !== false){
                            echo "text";
                        }
                        else if(strpos($fila["Type"],"int") !== false){
                            echo "number";
                        }
                        echo '" name="'.$fila["Field"].'" id="'.$fila["Field"].'"
                        ';
                            if($fila["Null"] == "NO"){echo " required ";}
                            if($fila["Field"] == "epoch"){echo " disabled ";}
                            preg_match('#\((.*?)\)#', $fila["Type"], $match);
                            echo '
                            maxlenght = "'.$match[1].'"
                            placeholder = "'.$fila["Field"].'"
                        >
                    </div>
                ';
            }
        }
        echo '<input type="submit">';
        $mysqli->close();
    }
    
    function procesaformulario(){
        //echo "Si estas viendo esto, se está procesando el formulario";
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
        
        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "INSERT INTO ".$_POST['tabla']." (Identificador".$listadocolumnas.") VALUES (NULL".$listadovalores.")";
        //echo $consulta;
        
        $mysqli->query($consulta);
        echo '
            <div class="notice">
                <h1>Registro guardado correctamente</h1>
                <p>Tu registro se ha guardado correctamente en la aplicación. Redirigiendo en 5 segundos...</p>
            </div>
        ';
        echo '<meta http-equiv="refresh" content="5; url=?" />
        ';
    }
}
?>
