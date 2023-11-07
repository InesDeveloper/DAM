<!doctype html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <style>
            body{font-family: sans-serif;background: rgb(228, 178, 230);}
            #formulario{width: 50%;background: white;margin: auto;padding: 20px;box-shadow: 0px 10px 20px rgb(0,0,0,0.4);border-radius: 10px;text-align: center;}
            #formulario h1{color:rgb(100,100,100);font-size: 20px;padding: 0px;margin: 0px;margin-bottom: 20px;}
            #formulario h3{text-align: left;margin: 0px;padding: 0px;}
            #formulario p{text-align: left;font-size: 10px;}
            .campo input{padding: 5px;background: rgb(242, 242, 242);border: none;margin: 4px;width: 95%;clear: both;}
            .campo{margin-bottom:20px;}
            .campo label{font-size:2em;padding:0px;margin:0px;}
            .campo p{font-size:0.6em;padding:0px;margin:0px;}
            #formulario input[type="submit"]{
                border:none;padding: 10px;width: 200px;margin: auto;
            }
            .input{transition:all 1s;}
            input:focus{outline: none;background: white;}
            .contienecampo input{float: left;
                width: 97%;
                margin-right: 0px;
                height: 20px;
                border-radius: 5px 0px 0px 5px;
                box-shadow: 0px 4px 8px rgba(0,0,0,0.1)inset;}
            .contienecampo .tipocampo{float: right;
                width: 100%;
                background: rgb(200,200,200);
                height: 30px;
                line-height: 30px;
                margin-top: 0px;
                border-radius: 0px 5px 5px 0px;}
            .clearfix{clear: both;}
            .contienecampo table{width: 100%;}
        </style>
    </head>
    <body>
        <div id="formulario">
            <img src="https://jocarsa.com/favicon.ico">
            <h1>Introduce los datos en este formulario</h1>
            <p>En este formulario, puedes itroducir tus datos simplemente rellenando aquellos campos que se te piden</p>
            <?php
                include "controlador.php";
                $miformulario = new Supercontrolador();
                if(isset($_POST['clave']) && $_POST['clave'] = 'procesaformulario'){
                    $miformulario->procesaformulario("entregas");
                }else{
                    $miformulario->formulario("entregas");
                }
            ?>
        </div>
        
    </body>
</html>