package com.mycompany.proyectojava16;
import java.io.File;
import java.io.FileWriter;                                                      // Importo la libreria para archivos
import java.io.IOException;                                                     // Captura errores que se puedan producir al abror la libreria
import java.util.Scanner;

public class ProyectoJava16 {

    public static void main(String[] args) {
        
        try{                                                                    // Primero intenta hacer algo
            FileWriter miarchivo = new FileWriter ("archivo.txt");              // Abre un archivo
            miarchivo.write("Hola que sepas que esto se ha escrito desde Java");// Le escribo algo de contenido
            miarchivo.close();                                                  // Cierra los recursos depues de usarlos
        }catch(IOException e){                                                  // En el caso de que el try felle
            e.printStackTrace();                                                // Dime en qué ha sallado
        }    
                    
        //////////////////////////////////////////////////////
        
        try{                                                                    // Primero intento hacer algo
            File miotroarchivo = new File("archivo2.txt");                           // Abro un archivo
            Scanner lector = new Scanner(miotroarchivo);                            // Leo el contenido del archivo
            while(lector.hasNextLine()){                                        // Mientras que el archivo tenga lineas de texto
                System.out.println(lector.nextLine());                          // Imprime la linea actual n la pantalla
            }
        }catch(IOException e){                                                  // En el caso de que de error de lectura
            e.printStackTrace();                                                // Dime en qué ha consistido el error
        }            
              
        File miotroarchivo = new File("archivo2.txt");   
    }
}
