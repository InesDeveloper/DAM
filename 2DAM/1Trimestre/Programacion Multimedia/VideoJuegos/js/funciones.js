function isox(x,y){
    return(x-y); 
}

function isoy(x,y){
    return((x+y)/2);
}

function reiniciar(){
    /* Introduzco la lista de los personajes */
    
    nivel = 1;
    numeropersonajes = 5;
    arraypersonajes = new Array();

    /* Propiedades Protagonista */
    posx = 1000;
    posy = 200;
    estadoanimacion = 0;
    angulo = 0;
    velocidad = 5;
    direccion= 0;
    energia = 100;

    /* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los npc*/
    terrenox1 = 600;
    terrenoy1 = -200;
    terrenox2 = 1400;
    terrenoy2 = 600;

    pausa = false;

    for(var i = 0;i<numeropersonajes;i++){
        arraypersonajes[i] = new Personaje;
    }
}

function subirnivel(){
    pausa = true;
    
    nivel++;
    $("#dimenivel").html(nivel)
    $("#pantallanivel").fadeIn("slow")
    contexto.clearRect(0,0,anchuranavegador,alturanavegador);
    setTimeout(function(){
        $("#pantallanivel").fadeOut("slow")
        pausa = false;
        bucle();
    },2000)
    
    
    
    /* Introduzco la lista de los personajes */
    numeropersonajes += 3;
    arraypersonajes = new Array();

    /* Propiedades Protagonista */
    posx = 1000;
    posy = 200;
    estadoanimacion = 0;
    angulo = 0;
    velocidad = 5;
    direccion= 0;
    energia = 100;

    /* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los npc*/
    terrenox1 = 600;
    terrenoy1 = -200;
    terrenox2 = 1400;
    terrenoy2 = 600;

    for(var i = 0;i<numeropersonajes;i++){
        arraypersonajes[i] = new Personaje;
    }

    premiox = Math.random()*(terrenox2-terrenox1)+terrenox1;
    premioy = Math.random()*(terrenoy2-terrenoy1)+terrenoy1;
}

function dibujaterreno() {
    contextofondo.clearRect(0,0,anchuranavegador,alturanavegador)
    var anchurabloque = 50;
    var anchuradibujo = 120;
    contextomapa.drawImage(mapa,0,0);
    var pixeles = contextomapa.getImageData(0,0,512,512);
    for(var i = 0;i<pixeles.data.length;i+=4){
        var cr = pixeles.data[i];
        var cg = pixeles.data[i+1];
        var cb = pixeles.data[i+2];
        var ca = pixeles.data[i+3];
        var x = (i%512)/4;
        var y = Math.floor((i/512)/4);
        if(ca == 255){
            //console.log("te has encontrado un trozo de terreno")
            contextofondo.drawImage(bloque9,isox(x*anchurabloque,y*anchurabloque)+desfasex,isoy(x*anchurabloque,y*anchurabloque)+desfasey,anchuradibujo,anchuradibujo);
        }
    }
}