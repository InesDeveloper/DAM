/* Aquí cargamos todo lo que se va a ir repitiendo una y otra vez durante el juego */  
function bucle(){
    /* Al principio de cada bucle, borramos el lienzo anterior */
    contexto.clearRect(0,0,anchuranavegador,alturanavegador);
    contextopunto.clearRect(0,0,512,512);
    contextopunto.fillRect(posx/50,posy/50,5,5)
    dibujaterreno();
    
    /* Colision del personaje con el terreno */
    var pixelpersonaje = contextomapa.getImageData(Math.round(posx/50)+1,Math.round(posy/50)+1,1,1)
    for(var i = 0;i<pixelpersonaje.data.length;i+=4){
        var cr = pixelpersonaje.data[i];
        var cg = pixelpersonaje.data[i+1];
        var cb = pixelpersonaje.data[i+2];
        var ca = pixelpersonaje.data[i+3];
        
        if(ca == 0){
            console.log("te has caido")
            velocidadz *= 1.3;
            posz += velocidadz;
        }
    }
    
    if(posz > 800){
        window.location = window.location;
    }
    
    var mediopantallax = anchuranavegador/2;
    var mediopantallay = alturanavegador/2;
    /*
    if(isox(posx,posy)+desfasex <= mediopantallax){desfasex+=velocidaddesfase;}else{desfasex-=velocidaddesfase;}
    if(isoy(posx,posy)+desfasey <= mediopantallay){desfasey+=velocidaddesfase;}else{desfasey-=velocidaddesfase;}
    */
    desfasex = mediopantallax - isox(posx,posy)
    desfasey = mediopantallay - isoy(posx,posy)
    /* Y te damos en todos los elementos del array uno a uno y realizamos las operaciones */
    for(var i = 0;i<numeropersonajes;i++){
        
            var a = posx - arraypersonajes[i].x;
            var b = posy - arraypersonajes[i].y;
            var distancia = Math.sqrt( a*a + b*b)
        /* Muevo el personaje */
            if(distancia < 400){
                if(arraypersonajes[i].muerto == true) {
                    arraypersonajes[i].mueve();
                } else {
                    arraypersonajes[i].persigue();
                    //arraypersonajes[i].mueve();
                }
                     
            }else{
                arraypersonajes[i].mueve();
            }
        if(distancia < 20){
            energia--;
        }
        
            var ytemp;
        
            if(arraypersonajes[i].direccionisometrica == 0){ytemp = 0;}
            if(arraypersonajes[i].direccionisometrica == 1){ytemp = 512;}
            if(arraypersonajes[i].direccionisometrica == 2){ytemp = 1024;}
            if(arraypersonajes[i].direccionisometrica == 3){ytemp = 1536;}

        /* Dibujo al personaje */
        /* Si el personaje se queda sin vida usamos la imagenmuerto, sino usamos la de personajeazul*/
        if(arraypersonajes[i].muerto == true) {
            imagennpc = imagennpcmuerto;
        } else {
            if(arraypersonajes[i].color == 0){imagennpc = imagennpc1;}
            else if(arraypersonajes[i].color == 1){imagennpc = imagennpc2;}
            else if(arraypersonajes[i].color == 2){imagennpc = imagennpc3;}
            else if(arraypersonajes[i].color == 3){imagennpc = imagennpc4;}
            else if(arraypersonajes[i].color == 4){imagennpc = imagennpc5;}
            else if(arraypersonajes[i].color == 5){imagennpc = imagennpc6;}
        }
        
        if(
            isox(arraypersonajes[i].x,arraypersonajes[i].y)+desfasex > -100
            &&
            isox(arraypersonajes[i].x,arraypersonajes[i].y)+desfasex < anchuranavegador
            &&
            isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey > -100
            &&
            isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey < alturanavegador
        )
        {           
            contexto.drawImage(
                imagennpc,
                arraypersonajes[i].estadoanim*256,
                ytemp+256,
                256,
                256,
                isox(arraypersonajes[i].x,arraypersonajes[i].y)+desfasex,
                isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey,
                128,
                128
            );
            
            /* Dibujo la barra de energía */
            contexto.fillStyle = "black";
            contexto.fillRect(
               isox(arraypersonajes[i].x,arraypersonajes[i].y)+32+desfasex,
                    isoy(arraypersonajes[i].x,arraypersonajes[i].y)+desfasey,
               64,10
            )
            contexto.fillStyle = "pink";
            contexto.fillRect(
               isox(arraypersonajes[i].x,arraypersonajes[i].y)+32+2+desfasex,
                    isoy(arraypersonajes[i].x,arraypersonajes[i].y+2)+desfasey,
                    60*(arraypersonajes[i].energia/100)
                ,6
            )
        }
        
    }
    
    /* ////////////////////////////Vamos con el personaje protagonista //////////////////////////////////*/
    estadoanimacion++;
    if(estadoanimacion > 7){estadoanimacion = 0;}
    contexto.drawImage(
                imagenpersonaje,
                estadoanimacion*256,
                angulo+256,
                256,
                256,
                isox(posx,posy)+desfasex,
                isoy(posx,posy)+desfasey+posz,
                128,
                128
            );
    
    /* Dibujo la barra de energía */
        contexto.fillStyle = "black";
        contexto.fillRect(
           isox(posx,posy)+32+desfasex,
                isoy(posx,posy)+desfasey,
           64,10
        )
        contexto.fillStyle = "green";
        contexto.fillRect(
           isox(posx,posy)+32+2+desfasex,
                isoy(posx,posy+2)+desfasey,
                60*(energia/100)
            ,6
        )
    
        if(direccion == 1){posy -= velocidad;angulo=512;}
        if(direccion == 2){posy += velocidad;angulo=1536;}
        if(direccion == 3){posx -= velocidad;angulo=0;}
        if(direccion == 4){posx += velocidad;angulo=1024;}
    
        contexto.drawImage(imagenpremio,isox(premiox,premioy)+desfasex,isoy(premiox,premioy)+desfasey);
            a = posx - premiox;
            b = posy - premioy;
            distancia = Math.sqrt( a*a + b*b)    
        if(distancia < 30) {
            console.log("premio")
            subirnivel();
        }
    
        if(energia < 0){
            $("#pantallainicial").fadeIn("slow")
            reiniciar();
            contexto.clearRect(0,0,anchuranavegador,alturanavegador);
            pausa = true;
        }
    
            
    clearTimeout(temporizador);/* Esta línea elimina el temporizador actual */
    if(pausa == false){
        temporizador = setTimeout("bucle()",33); /* Creamos un temporizador para volver a ejecutar el bucle */
    }
}  