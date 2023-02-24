
package com.mycompany.proyectojava3;


public class ProyectoJava3 {

    public static void main(String[] args) {
        
//ponemos float en lugar de int ya que int solo muestra números enteros.
        
        float operador1 = 4;
        float operador2 = 3; 
        float operador3 = 8;
        float operador4 = 7;
        
//Suma

        float suma = operador1 + operador2;
        System.out.println("La suma es :" +suma);
        
//Resta

        float resta = operador1 - operador2;
        System.out.println("La resta es :" +resta);
        
//Multiplicación

        float multiplicacion = operador1 * operador2;
        System.out.println("La multiplicacion es :" +multiplicacion);
        
//División   

        float division = operador1 / operador2;
        System.out.println("La division es :" +division);
        
//División Double: muestra un número decimal más grande        
        double division2 = operador3 / operador4;
        System.out.println("La division2 es :" +division2);
        
//Boolean

        boolean menorque = operador1 < operador2;
        System.out.println("operador1 es menor que operador2:" +menorque);
        
        boolean mayorque = operador1 > operador2;
        System.out.println("operador1 es mayor que operador2:" +mayorque);
        

    }
}
