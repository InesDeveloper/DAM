
package proyectojava23;

public class Persona {
// Voy a declarar propiedades de la clase
    public float x = 200;
    public float y = 200;
    public float direccion = 0;
    
    public void mueveBola(){
        double min = -0.5;                                                      // Establezco un minimo
        double max = 0.5;                                                       // Establezco un maximo
        double random = min + Math.random() * (max - min);                      // Creo un numero aleatorio entre el minimo y el maximo
        direccion += random;                                                    // Vario ls direccion de forma aleatoria
        x += Math.cos(direccion);                                               // Aumento la x en base a la direccion y su coseno
        y += Math.sin(direccion);                                               // Aumento la y en base a la direccion y su seno
        if(x > 400) {direccion += Math.PI;}                                     // En el caso de que la x sea menor que 400, pega la vuelta
        if(x < 0) {direccion += Math.PI;}                                       // Da la vuelta al colisionar
        if(y > 400) {direccion += Math.PI;}                                     // Da la vuelta al colisionar
        if(y < 0) {direccion += Math.PI;}   
    
    }
    
}
