/* Capturamos el lienzo y lo introducimos dentro de una variable contexto */
var contexto = document.getElementById("lienzo").getContext("2d");

/* Aqui voy a declarar las variables globales a todo el programa */
var temporizador;
var anchuranavegador = window.innerWidth;
var alturanavegador = window.innerHeight;
document.getElementById("lienzo").height = alturanavegador;
document.getElementById("lienzo").width = anchuranavegador;
document.getElementById("fondo").height = alturanavegador;
document.getElementById("fondo").width = anchuranavegador;
document.getElementById("contenedor").height = alturanavegador;
document.getElementById("contenedor").width = anchuranavegador;

/* En esta zona cargamos las imágenes que vamos a utilizar en el videojuego */ 
var imagennpc1 = new Image();
imagennpc1.src = "img/personajeazul.png";
var imagennpcmuerto = new Image();
imagennpcmuerto.src = "img/personajemuerto.png"; /* Usamos esta imagen cuando al personaje azul se le termine la vida*/


var imagenpersonaje = new Image();
imagenpersonaje.src = "img/personajeamarillo.png";

var imagenpremio = new Image();
imagenpremio.src = "img/logo.png";

/* Introduzco la lista de los personajes */
var numeropersonajes = 5;
var arraypersonajes = new Array();

/* Propiedades Protagonista */
var posx = 1000;
var posy = 200;
var estadoanimacion = 0;
var angulo = 0;
var velocidad = 5;
var direccion= 0;
var energia = 100;

/* Aquí introducimos las coordenadas mínimas y máximas del terreno en el cual se van a mover los npc*/
var terrenox1 = 600;
var terrenoy1 = -300;
var terrenox2 = 1400;
var terrenoy2 = 500;

var premiox = 800;
var premioy = 400;

var nivel = 1;

var pausa = false;