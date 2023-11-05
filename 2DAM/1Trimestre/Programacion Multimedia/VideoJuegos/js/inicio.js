/* En la función de inicio cargamos todas las condiciones iniciales del juego */ 
function inicio(){
    /* Creo una instancia del objeto o personaje dentro de cada uno de los elementos de la colección */
    /*
    for(var i = 0;i<numeropersonajes;i++){
        arraypersonajes[i] = new Personaje;
    }
    */
    /* Ahora lanzo la ejecución del bucle */
    temporizador = setTimeout("bucle()",1000);
    
    /* Este bloque de código define que es lo que ocurre cuando el protagonista pulsa las teclas de dirección*/
    $(document).keydown(function(e){
        if(e.key == "w"){direccion = 1;}
        if(e.key == "s"){direccion = 2;}
        if(e.key == "a"){direccion = 3;}
        if(e.key == "d"){direccion = 4;}
    })
     
    /* Esto ocurre cuando se dejan de pulsar las teclas de dirección */
    $(document).keyup(function(e){
        if(e.key == "w"){direccion = 0;}
        if(e.key == "s"){direccion = 0;}
        if(e.key == "a"){direccion = 0;}
        if(e.key == "d"){direccion = 0;}
     }) 
    
    /* Volver al menu principal */
    $(document).keydown(function(e){
        // Escape key pressed
        if (e.keyCode == 27) {
            pausa = true;
            $("#pantallainicialmedio").fadeIn("slow");
            $("#contenedor").addClass("difuminado")
        }
    });
    
    /* Cuando la ventana se reescala, calculamos de nuevo las proporciones de los contenedores en base a la ventana*/
    $(window).resize(function(){
        console.log("ok redimensionando")
        anchuranavegador = window.innerWidth;
        anchuranavegador = window.innerHeight;
        document.getElementById("lienzo").height = alturanavegador;
        document.getElementById("lienzo").width = anchuranavegador;
        document.getElementById("fondo").height = alturanavegador;
        document.getElementById("fondo").width = anchuranavegador;
        document.getElementById("contenedor").height = alturanavegador;
        document.getElementById("contenedor").width = anchuranavegador;
        
    })
    
    posinicialjugador()
    creaenemigos()
    creaobjetivo()
} 
