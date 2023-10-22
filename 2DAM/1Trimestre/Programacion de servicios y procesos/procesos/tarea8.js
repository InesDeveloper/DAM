var id;                                                // originalmente le asigno un identificador a este objeto
var otros;                                             // le asigna una variable que recibirá la colección de datos que corresponden a los otros objetos
var comida;                                            // le asigno una variable que corresponderá a la colección de datos que corresponde a la comida
onmessage = function(datos){                           // esta función se ejecuta cuando recibo un mensaje
    id = datos.data.id;                                // mi identificador es el que le pasa la función principal
    otros = datos.data.otros                           // recojo los datos de los otros objetos y lso pongo dentro de la variable
    comida = datos.data.comida                         // recojo los datos de la comida y los pongo en la variable
}

var temporizador;                                      // Como en un momento dado voy a tener un bucle, arranco una variable temporizador
inicio();                                              // llamo a la función de inicio que se ejecuta una vez
var posx = Math.random()*512                           // cuando el personaje nace, le aplico una posición X aleatoria
var posy = Math.random()*512                           // de la misma forma le aplico una posición Y aleatoria
var cr = Math.round(Math.random()*256);                // le pongo un color rojo aleatorio
var cg = Math.round(Math.random()*256);                // le pongo un color verde aleatorio
var cb = Math.round(Math.random()*256);                // le pongo un color azul aleatorio
var tam = 2                                            // le pongo un tamaño inicial de dos que luego ya cambiaremos
var direccion = Math.random()*Math.PI*2                // le doy una dirección inicial aleatoria entre cero y 360º
var velocidad = Math.random()/2+0.3                    // le doy una velocidad inicial aleatoria
var energia = Math.random()*50+50;                     // le proporciono una energía inicial aleatoria
var hambre = 100 - Math.random()*50+50;                // le doy una cantidad inicial de hambre aleatoria
var muerto = false;                                    // cuando el personaje arranca por defecto no está muerto
var dormido = false;                                   // cuando el personaje arranca, por defecto no está dormido
var hambriento = false;                                // cuando el personaje arranca, por defecto no está hambriento

function inicio(){                                     // ejecute la función de inicio
    temporizador = setTimeout("bucle()",1000)          // la función de inicio de momento lo único que hace es llamar al bucle
}

function colisionabordes(){                            // esta función busca los bordes y conecta las colisiones
    if(posx < 0 || posx > 512 || posy < 0 || posy > 512){ // si es cierto que el personaje está fuera de los rangos de la imagen
        direccion += Math.PI;                          // en ese caso el personaje pega la vuelta
    }
}

function mueve(){                                      // esta función se encarga de gestionar el movimiento del personaje
    posx += Math.cos(direccion)*velocidad              // actualizamos la posición X en base al coseno trigonométrico de la dirección por la velocidad
    posy += Math.sin(direccion)*velocidad              // actualizamos la posición Y en base al seno trigonométrico
    energia -= 0.1;                                    // cuando el personaje se está moviendo inevitablemente pierde un poco de energía
    hambre += 0.1;                                     // Y cuando el personaje se está moviendo ganar un poquito de hambre
}

function cambiadireccion(){                            // esta función controla que el personaje vaya cambiando poco a poco de dirección
    direccion += (Math.random()-0.5)/4                 // le añadimos una pequeña componente aleatoria al ángulo del dirección del personaje
    //posx += Math.cos(direccion)*velocidad*3
    //posy += Math.sin(direccion)*velocidad*3   
}
function buscocomida(){                                // esta función se encarga de la búsqueda de comida
    if(hambriento == true){                            // solo se ejecuta en el caso de que el personaje esté hambriento
        for(var i = 0; i< comida.length;i++){          // miramos donde están todos los comederos
            var a = posx - comida[i].x;                // para cada uno de los comederos sacamos la distancia en horizontal
            var b = posy - comida[i].y;                // sacamos a continuación la distancia en vertical
            var distancia = Math.sqrt( a*a + b*b );    // Y mediante esta fórmula calculamos el módulo de la distancia
            if(distancia < 60) {                       // en el caso de que la distancia sea menor que 60, es decir, que esté cerca
                var angleRadians = Math.atan2(comida[i].y - posy, comida[i].x - posx);  // Me dirijo hacia ese comedero
                direccion = angleRadians;              // actualizo mi ángulo
                if(distancia < 50){                    // Y en el caso de que la distancia sea poca
                    hambre -= 0.5;                     // rebajo mi cantidad de hambre, lo que quiere decir que estoy comiendo
                }
            }
        }
    }
}

function evitarse(){                                  // Esta función gestiona que los personajes se eviten entre sí
    for(var i = 0;i<otros.length;i++){                 // Mira donde están todos y cada uno del resto de los personajes
        var a = posx - otros[i].x;                     // sacamos la distancia en horizontal
        var b = posy - otros[i].y;                     // sacamos la distancia en vertical
        var distancia = Math.sqrt( a*a + b*b);         // para cada uno de los personajes miro mi distancia con respecto a ellos
        
        if(distancia < 5 && otros.id != id && distancia > 3 && hambriento == false){                      // Y en el caso de que el personaje esté cerca
            var angleRadians = Math.atan2(posy - comida[i].y, posx - comida[i].x);  // busco el ángulo de escape
            direccion = angleRadians+Math.PI/2;        // Y lo aplico a mi ángulo
            //console.log("cambiando")
            posx += Math.cos(direccion)*velocidad      // actualizo mi posición X con respecto a ese nuevo ángulo
            posy += Math.sin(direccion)*velocidad      // actualizo mi posición Y con respecto a ese nuevo ángulo
            tam = 5                                    // Y temporalmente cambia mi tamaño simplemente para que se sepa que he colisionado
        }
    }
}

function duerme() {                                    // esto es lo que ocurre cuando el personaje duerme
    energia += 0.3;                                    // su energía se recupera
    hambre += 0.1;                                     // pero cuidado porque su hambre también sube
}
function muerte(){                                     // Esto es lo que ocurre cuando el personaje muere
    if(hambre > 100){                                  
        muerto = true;                                 // por defecto la variable muerte se pone en verdadero
        cr = 0;                                        // su color se vuelve negro
        cg = 0;
        cb = 0;
    }
}
function bucle(){                                      // esta es la función de bucle que se ejecuta constantemente
    if(hambre < 0){hambre=0}                           // no es posible tener hambre negativa
    if(energia > 100){ energia = 100}                  // no es posible tener más de 100 puntos de energía
    if(muerto == false) {                              // si el personaje está vivo
        tam = energia/10;                              // su tamaño está en función de su energía
        colisionabordes();                             // Activamos la función de colisión de bordes
        cambiadireccion();                             // activamos la función de cambio de dirección
        buscocomida();                                 // activamos la función de búsqueda de comida
        if(energia < 20){dormido = true;}              // si el personaje tiene poca energía se queda dormido
        if(dormido == true){duerme();}                 // si el personaje está dormido se ejecuta la función de dormir
        if(energia > 80){dormido = false;}             // si la energía del personaje está por encima de 80 deja de dormir
        if(dormido == false){mueve();}                 // si el personaje ya no está dormido se puede mover
        if(hambre > 80){hambriento = true}             // si el hambre del personaje está por encima de 80 quiere decir que estaba hambriento
        if(hambre < 20){hambriendo = false;direccion = Math.random()*Math.PI*2} // Si el hambre está por debajo de 20 deja de estar hambriento
        evitarse();                                    // activamos la función de evitarse
    }
    
    postMessage({id:id,x:posx,y:posy,mir:cr,mig:cg,mib:cb,tam:tam}) // pasamos a la función principal los datos del personaje
    clearTimeout(temporizador)                         // Limpiamos el temporizador anterior
    temporizador = setTimeout("bucle()",33)            // Y creamos un temporizador recursivo que se llama asimismo para hacer otra vuelta del bucle
}
