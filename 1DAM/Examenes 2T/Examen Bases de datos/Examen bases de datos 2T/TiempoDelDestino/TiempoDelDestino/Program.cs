// Mostramos el mensaje al usuario
Console.WriteLine("Introduzca la velocidad del coche:");
// Leemos la velocidad(en km/h) introducida por consola
string velocidad = Console.ReadLine();
// Mostramos el mensaje al usuario
Console.WriteLine("Introduzca la distancia:");
// Leemos la distancia(en km) introducida por consola
string distancia = Console.ReadLine();

// La consola devuelve strings, lo pasamos a entero para operar
int velocidadnumero = Int32.Parse(velocidad);
// La consola devuelve strings, lo pasamos a entero para operar
int distancianumero = Int32.Parse(distancia);

// Calculamos el tiempo que se tarda
float tiempo = (float)distancianumero / velocidadnumero;
// Mostramos el resultado por consola
Console.WriteLine("El tiempo que se tarda es: " + tiempo + " hora/s");

