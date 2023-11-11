/* Capturamos el lienzo y lo introducimos dentro de una variable contexto */
var contexto = document.getElementById("lienzo").getContext("2d");
var contextofondo = document.getElementById("lienzofondo").getContext("2d");
var contextomapa = document.getElementById("lienzomapa").getContext("2d");
var contextomapapersonajes = document.getElementById("lienzomapapersonajes").getContext("2d");
var contextomapaprops = document.getElementById("lienzomapaprops").getContext("2d");
var contextomaparecogibles = document.getElementById("lienzomaparecogibles").getContext("2d");
var contextopunto = document.getElementById("lienzopunto").getContext("2d");
pixelesmapa = contextomapa.getImageData(0,0,512,512);

contextopunto.fillStyle = "red";
/* Aqui voy a declarar las variables globales a todo el programa */
var temporizador;
var anchuranavegador = window.innerWidth;
var alturanavegador = window.innerHeight;
document.getElementById("lienzo").height = alturanavegador;
document.getElementById("lienzo").width = anchuranavegador;
document.getElementById("lienzofondo").height = alturanavegador;
document.getElementById("lienzofondo").width = anchuranavegador;
document.getElementById("fondo").height = alturanavegador;
document.getElementById("fondo").width = anchuranavegador;
document.getElementById("contenedor").height = alturanavegador;
document.getElementById("contenedor").width = anchuranavegador;

/* En esta zona cargamos las imágenes que vamos a utilizar en el videojuego */ 
var imagennpc = new Image();
var imagennpc1 = new Image();
imagennpc1.src = "img/personajes/personajerojo.png";
var imagennpc2 = new Image();
imagennpc2.src = "img/personajes/personajeverde.png";
var imagennpc3 = new Image();
imagennpc3.src = "img/personajes/personajeazul.png";
var imagennpc4 = new Image();
imagennpc4.src = "img/personajes/personajeamarillo.png";
var imagennpc5 = new Image();
imagennpc5.src = "img/personajes/personajecyan.png";
var imagennpc6 = new Image();
imagennpc6.src = "img/personajes/personajemagenta.png";

var imagennpcmuerto = new Image();
imagennpcmuerto.src = "img/personajes/personajemuerto.png"; /* Usamos esta imagen cuando al personaje azul se le termine la vida*/

var imagenpersonaje = new Image();
imagenpersonaje.src = "img/personajes/personaje.png";

var imagenpersonajeaccion = new Image();
imagenpersonajeaccion.src = "img/personajes/personajeaccion.png";

var mapa = new Image();
mapa.src = "img/mapas/mapa1.png";

var mapapersonajes = new Image();
mapapersonajes.src = "img/mapas/mapa1personajes.png";

var maparecogibles = new Image();
maparecogibles.src = "img/mapas/mapa1recogibles.png";

var mapaprops = new Image();
mapaprops.src = "img/mapas/mapa1props.png";

var bloque9 = new Image();
bloque9.src = "img/terreno/terreno9.png";

var imagenpremio = new Image();
imagenpremio.src = "img/items/premio.png";

var imagenrecogible1 = new Image();
imagenrecogible1.src = "img/recogibles/pocion.png";
var imagenrecogible2 = new Image();
imagenrecogible2.src = "img/recogibles/pocion2.png";
var imagenrecogible3 = new Image();
imagenrecogible3.src = "img/recogibles/pocion3.png";

var imagenprop1 = new Image();
imagenprop1.src = "img/props/prop1.png";

/* Introduzco la lista de los personajes */
var numeropersonajes = 0;
var arraypersonajes = new Array();

var numeroprops = 0;
var arrayprops = new Array();

var numerorecogibles = 0;
var arrayrecogibles = new Array();

/* Propiedades Protagonista */
var posx = 1000;
var posy = 200;
var posz = 0;
var velocidadz = 1;
var estadoanimacion = 0;
var angulo = 0;
var velocidad = 5;
var direccion= 0;
var energia = 100;
var moviendo = false;
var saltopersonaje = 0;
var velocidadz = 0;
var saltando = false;
var accion = false;

/* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los npc*/
var terrenox1 = 600;
var terrenoy1 = -300;
var terrenox2 = 1400;
var terrenoy2 = 500;

var premiox = 800;
var premioy = 400;

var nivel = 1;

var pausa = false;

var desfasex = 420;
var desfasey = 0;

var velocidaddesfase = 1;

var alturabloquez = 1;