<html>
    <head> 
        <link rel="stylesheet" href="estilo/estilo.css">
        <script src="lib/jquery-3.6.1.min.js"></script>
        <script src="js/codigo.js"></script>
    </head>
    
    <body>
        <main>
            <header>
                <h1>Guauola</h1>
                <div id="destacado">
                    <img src="photo/razas%20de%20perro.jpeg">
                    <h2>Titulo</h2>
                    <h3>Subtitulo</h3>
                    <p>Descripcion</p>
                </div>
            </header>
            
            <div id="container">
                <section>
                    <h2>Cursos más vistos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    </div>
                    <div class="ribbon">
                        <?php
                            include "admin/conexiondb.php";
                            $peticion = "SELECT * FROM cursos 
                            ORDER BY visualizaciones DESC
                            LIMIT 7";
                            $resultado = mysqli_query($enlace, $peticion);
                            while ($fila = $resultado->fetch_assoc()) {
                                echo '
                                <article>
                                    <div class="contenido">
                                        <img src="photo/'.$fila['imagen'].'">
                                        <div class="identificador" identificador="'.$fila['id'].'"></div>
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>
                                    </div>
                                    
                                </article>
                                ';
                            }
                        ?>
                        
                    </div>
                </section>
                <div class="detalles">
                    <img src="photo/carlino.jpeg">
                    <h2>Titulo</h2>
                    <h3>Subtitulo</h3>
                    <p>Descripcion</p>
                    <button class="masinfo">
                        Mas informacion
                    </button>
                </div>
               <section>
                    <h2>Ultimos estrenos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    </div>
                    <div class="ribbon">
                        <?php
                            include "admin/conexiondb.php";
                            $peticion = "SELECT * FROM cursos 
                            ORDER BY id DESC
                            LIMIT 7";
                            $resultado = mysqli_query($enlace, $peticion);
                            while ($fila = $resultado->fetch_assoc()) {
                                echo '
                                <article>
                                    <div class="contenido">
                                        <img src="photo/'.$fila['imagen'].'">
                                        <div class="identificador" identificador="'.$fila['id'].'"></div>
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>
                                    </div>
                                </article>
                                ';
                            }
                        ?>
                        
                    </div>
                </section>
                <div class="detalles">
                    <img src="photo/carlino.jpeg">
                    <h2>Titulo</h2>
                    <h3>Subtitulo</h3>
                    <p>Descripcion</p>
                    <button class="masinfo">
                        Mas informacion
                    </button>
                </div>
                <section>
                    <h2>Algunos cursos que te pueden interesar</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    </div>
                    <div class="ribbon">
                        <?php
                            include "admin/conexiondb.php";
                            $peticion = "SELECT * FROM cursos 
                            ORDER BY RAND()
                            LIMIT 7";
                            $resultado = mysqli_query($enlace, $peticion);
                            while ($fila = $resultado->fetch_assoc()) {
                                echo '
                                <article>
                                    <div class="contenido">
                                        <img src="photo/'.$fila['imagen'].'">
                                        <div class="identificador" identificador="'.$fila['id'].'"></div>
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>
                                    </div>
                                </article>
                                ';
                            }
                        ?>
                        
                    </div>
                </section>
                <div class="detalles">
                    <img src="photo/carlino.jpeg">
                    <h2>Titulo</h2>
                    <h3>Subtitulo</h3>
                    <p>Descripcion</p>
                    <button class="masinfo">
                        Mas informacion
                    </button>
                </div>
            </div>
        </main>
    </body>

</html>
