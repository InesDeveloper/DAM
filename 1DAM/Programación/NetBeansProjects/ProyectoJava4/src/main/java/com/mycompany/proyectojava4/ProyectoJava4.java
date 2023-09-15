
package com.mycompany.proyectojava4;


public class ProyectoJava4 {

    public static void main(String[] args) {
        
        int edad = 42;
        int dia = 4;
        
        System.out.println("Voy a ver si es cierto o no " + (edad > 40 && dia == 5));
        System.out.println("Voy a ver si es cierto o no " + (edad > 40 || dia == 5));
        System.out.println("Voy a ver si es cierto o no " + (edad < 40 || dia == 5));
    }
}
