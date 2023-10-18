<?php session_start();?>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous" ></script>
        <link rel="Stylesheet" href="estilo/estilo.css">
        <script src="js/codigo.js"></script>
    </head>
    <body>
        <table border=0 width=100% height=100%> <!-- Estructura del contenido gestionado con una tabla -->
            <tr height=20px id="menu"> <!-- Fila y columna para el título de la página -->
                <!-- <td>
                    Nombre Documento
                </td> -->
            </tr>
            <tr height=40px id="barranombredocumento"> <!-- Campo de texto para escribir el nombre del documento -->
                <td>
                    <input type="text" id="documentname" placeholder="Nombre del documento"value='<?php echo explode(".",$_GET['file'])[0] ?>'>       
                    
                </td>
                <td><button id="guardar"><img src="../img/bootstrap-icons-1.11.1/save2-fill.svg" class="icon"></button> <!-- Botón de guardar --></td>
            </tr>
            <tr height=50px id="herramientas"> <!-- Barra de herramientas con las opciones de personalización -->
                <td>
                    <select id="tipotexto"> <!-- Desplegable con los tipos de estilos para el texto -->
                        <option value="p">Texto de parrafo</option>
                        <option value="h1">Encabezado 1</option>
                        <option value="h2">Encabezado 2</option>
                        <option value="h3">Encabezado 3</option>
                        <option value="h4">Encabezado 4</option>
                        <option value="h5">Encabezado 5</option>
                        <option value="h6">Encabezado 6</option>
                        <option value="pre">Texto preformateado</option>
                    </select>
                    <select id="selectfont"> <!-- Desplegable con las fuentes de texto -->
                        <option value="Arial">Arial</option>
                        <option value="Verdana">Verdana</option>
                        <option value="Tahoma">Tahoma</option>
                        <option value="Trebuchet MS">Trebuchet MS</option>
                        <option value="Times New Roman">Times New Roman</option>
                        <option value="Georgia">Georgia</option>
                        <option value="Garamond">Garamond</option>
                        <option value="Courier New">Courier New</option>
                        <option value="Brush script MT">Brush script MT</option>
                    </select>
                    <input type="number" id="fontsize" value="10"> <!-- Campo de formulario de tipo numérico para escribir el tamaño de la fuente -->
                    <button id="bold"><img src="../img/bootstrap-icons-1.11.1/type-bold.svg" class="icon"></button> <!-- Botón de negrita para el texto -->
                    <button id="cursive"><img src="../img/bootstrap-icons-1.11.1/type-italic.svg" class="icon"></button> <!-- Botón de cursiva para el texto -->
                    <button id="underline"><img src="../img/bootstrap-icons-1.11.1/type-underline.svg" class="icon"></button> <!-- Botón de subrayado para el texto -->
                    <input type="color" id="fontcolor"> <!-- Campo de formulario para seleccionar el color de la fuente -->
                    <button id="orderedlist"><img src="../img/bootstrap-icons-1.11.1/list-ol.svg" class="icon"></button>
                    <button id="unorderedlist"><img src="../img/bootstrap-icons-1.11.1/list-ul.svg" class="icon"></button>
                    <button id="alignleft"><img src="../img/bootstrap-icons-1.11.1/text-left.svg" class="icon"></button>
                    <button id="alignright"><img src="../img/bootstrap-icons-1.11.1/text-right.svg" class="icon"></button>
                    <button id="aligncenter"><img src="../img/bootstrap-icons-1.11.1/text-center.svg" class="icon"></button>
                    <button id="alignjustufy"><img src="../img/bootstrap-icons-1.11.1/justify.svg" class="icon"></button>
                
                </td>
                
            </tr>
            <tr>
                <td id="fondopagina"> <!-- Fila y columna para gestionar el documento donde escribiremos -->
                    <div id="pagina" contenteditable="true">
                        <?php include "../vault/users/Ines/".$_GET['file'] ?>
                    </div>    
                </td>
            </tr>
        </table>    
    </body>
</html>