
package com.mycompany.proyectojava14;

public class ProyectoJava14 {

    public static void main(String[] args) {
        String[] agendanombre = {"Juan", "Jorge", "Julia", "Javier", "Jorge"};
        
        //System.out.println("El contenido de la agenda es: " + agendanombre[0]);
        //System.out.println("El contenido de la agenda es: " + agendanombre[1]);  
        
        for(int i = 0; i < agendanombre.length; i++) {
            System.out.println("El contenido de la agenda es: " + agendanombre[i]);
        }
        
    }
}
