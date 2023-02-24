
package com.mycompany.proyectojava12;


public class ProyectoJava12 {

    public static void main(String[] args) {
        saluda("Ines");
        saluda("Juan");
        saluda("Jorge");
        saluda("Jaime");
        saluda("Parvin");
        saluda();
        saluda("Jaime","lunes");
    }
    
    public static void saludaInes() {
        System.out.println("Hola, Ines, como estas?");
    }
    
    public static void saludaJuan() {
        System.out.println("Hola, Juan, como estas?");
    }
    
    public static void saludaJorge() {
        System.out.println("Hola, Jorge, como estas?");
    }
    
    public static void saluda(String nombre) {
        System.out.println("Hola, " + nombre +", como estas?");
    }
    
    public static void saluda() {
        System.out.println("Hola, como estas?");
    }
    
    public static void saluda(String nombre, String dia) {
        System.out.println("Hola, " + nombre +", como estas? Sabes que hoy es " + dia + "?");
    }
}
