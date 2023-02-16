// Mostramos el mensaje al usuario
Console.WriteLine("Introduzca el numero de segundos que han pasado:");
// Leemos los segundos introducidos por consola
string segundos = Console.ReadLine();
// La consola devuelve strings, lo pasamos a entero para operar
int numerosegundos = Int32.Parse(segundos);
// Creamos una variable con la velocidad del sonido
int velocidadsonido = 343;
// Calculamos la distancia
int distancia = numerosegundos * velocidadsonido;
// Mostramos el resultado por consola
Console.WriteLine("La distancia es: " + distancia + " metros");
