<?php

    include "inesdb.php";
    $conexion = new INESDB("crm");
    /*
    //CREAR E INSERTAR DATOS EN LA TABLA CLIENTES
    //$conexion->peticion("CREATE TABLE clientes (id,nombre,apellidos,email,telefono)");
    $conexion->peticion('INSERT INTO clientes VALUES ("4","Ines","Sanchez","ines@correo.com","123456789")');
    
    */
    
    //VER TABLA clientes
    /* $datos = $conexion->peticion("SELECT * FROM clientes");
    echo '<table border="1">';
    echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
    for($i=0;$i<count($datos);$i++){
        echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>"; 
    }
    echo "</table>";
    */

    //BORRAR DATOS
    /*    $datos = $conexion->peticion("DELETE * FROM clientes WHERE apellidos = 'Sanchez'");
    
    echo "Vamos a ver lo que queda despues de eliminar<br>";
    //Para volver a ver la tablas tras eliminar el dato seleccionado

    $datos = $conexion->peticion("SELECT * FROM clientes");
    echo '<table border="1">';
    //echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
    for($i=0;$i<count($datos);$i++){
        echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['telefono']."</td><td>".$datos[$i]['email']."</td></tr>";
    }
    echo "</table>";
    */
    
    //ORDER BY//

    //LEER EL CSV Y ALMACENAR LOS DATOS EN UN ARRAY
    $clientes = [];
    if($file = fopen("db/crm/clientes.csv","r")){
        while($datos = fgetcsv($file, 1000, ",")){
            $clientes[] = $datos;
        }
        fclose($file);
    }
    
    $datos = $conexion->peticion("SELECT * FROM clientes ORDER BY id DESC");
    array_multisort(array_column($clientes, 0), SORT_ASC, $clientes);
    $datos = $conexion->peticion("SELECT * FROM clientes");
    echo '<table border="1">';
    echo "<tr><td>id</td><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
    
    foreach ($clientes as $cliente){
        echo "<tr><td>{$cliente[0]}</td><td>{$cliente[1]}</td><td>{$cliente[2]}</td><td>{$cliente[3]}</td><td>{$cliente[4]}</td></tr>";
    }
    echo "</table>";
?>