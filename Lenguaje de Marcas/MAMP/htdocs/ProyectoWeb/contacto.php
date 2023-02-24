<?php include "cabecera.php" ?>
            <!-- Aqui se pone el contenido principal de la web -->
            
            <section id="contacto">
                Aqui voy a poner el contenido del formulario de contacto
                
                <form> <!-- para crear etiquetas de contacto -->
                    
                    <br>
                    <input type="text" name="nombre" placeholder="Introduce tu nombre">
                    <br>
                    <br>
                    <input type="text" name="email" placeholder="Introduce tu email">
                    <br>
                    <br>
                    
                <select name="poblacion"> <!-- Para poner una casilla selecionadora-->
                    
                    <option value="poblacion"> Introduce tu población</option>
                    
                    <option value="valencia"> Granada</option>
                    
                    <option value="valencia"> Valencia</option>
                    
                    <option value="valencia"> Madrid </option>
                    
                    <option value="valencia"> Barcelona</option>
                    <br>
                    
                    </select>
                    <br>
                
                    <p> ¿Qué eres? </p> 
                    
                    <!--name, esto hace que reconozca que está todo dentro de un mismo grupo y así poder seleccionar una sola opción -->
                    
                    
                        <input type="radio" name="tipo"> Persona
                        <br>
                        <input type="radio" name="tipo"> Animal
                        <br>
                        <input type="radio" name="tipo"> Robot
                        <br>
                        <br>
                    
                    <p> ¿Qué día de la semana es hoy? </p> 
                    
                    
                        <input type="radio" name="dia"> Lunes
                        <br>
                        <input type="radio" name="dia"> Martes
                        <br>
                        <input type="radio" name="dia"> Miercoles
                        <br>
                        <input type="radio" name="dia"> Jueves
                        <br>
                        <input type="radio" name="dia"> Viernes
                        <br>
                        <input type="radio" name="dia"> Sábado
                        <br>
                        <input type="radio" name="dia"> Domingo
                        <br>
                        <br>
                    
                    <p>Por favor, Indica el motivo de tú consulta</p>
                    
                    <!--checkbox, es una respuesta multiple-->
                    
                        <input type="checkbox" name="motivo"> Personal
                        <br>
                        <input type="checkbox" name="motivo"> Formativa
                        <br>
                        <input type="checkbox" name="motivo"> Lavoral
                        <br>
                        <br>
                    
                    
                    
                    <input type="submit" value="Envia tus datos"> 
                    <!-- Boton de enviar y value para personalizarlo--> 
                
                
                </form>
                
                
                   
            </section>
            
<?php include "piedepagina.php" ?>