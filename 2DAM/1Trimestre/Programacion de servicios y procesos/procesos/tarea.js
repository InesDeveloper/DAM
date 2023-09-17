onmessage = function(){
  
  console.log("vamos con el calculo 1")
            var numero = 0.00000423343;
            var iteracciones = 1000000000;
            for(var i = 0;i<iteracciones;i++){
                numero = numero*1.00000000005435;
            }
    postMessage(numero);

}