onmessage = function(datos){
    // Calculo 1
    
    console.log(datos)
    console.log("tu edad es:" + datos.data.edad)
    console.log("tu nombre es:" + datos.data.nombre)
            console.log("vamos con un calculo")
    
            // Calculo 1
            console.log("vamos con el calculo 1")
            var numero = 0.00000423343;
            var iteraciones = 1000000000;
            for(var i = 0;i<iteraciones;i++){
                numero = numero*1.00000000005435;
            }
    postMessage(numero);
}