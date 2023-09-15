
package proyectojava20;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;


public class ProyectoJava20 {

  
    public static void main(String[] args) throws IOException {
       
        int anchura = 800; // Anchura de la imagen
        int altura = 400; // Altura de la imagen

        BufferedImage imagen = null; // Recurso vacío por si más adelante nos interesa
        
        BufferedImage imagencacheada = new BufferedImage(anchura, altura, BufferedImage.TYPE_INT_RGB); // Imagen con altura, anchura y su soporte de colores
        
        Graphics2D graficos =imagencacheada.createGraphics(); // Dentro de esta imagen voy a pintar cosas
        
        // ///////////////En ESTE TROZO PUEDES PINTAR // //////////////////////
        
        graficos.setColor(Color.white); // Primero añadimos siempre el color del fondo
        graficos.fillRect(0, 0, anchura, altura);
        
        graficos.setColor(Color.RED); // Lo que voy a pintar es de color rojo
        graficos.fillRect(20, 20, 300, 300); // Pinto un rectangulo
        
        graficos.setColor(Color.GREEN);
        graficos.drawString("Programa de Ines", 300, 200);
        
        imagen = ImageIO.read(new File("logos/logo_java.png"));
        graficos.drawImage(imagen, 0, 0, 400, 400, null);        
        
        // ///////////////EN ESTE TROZO PUEDES PINTAR // //////////////
        
        graficos.dispose(); //Libero el recurso
        for(int i = 0;i<10;i++){ // Se crea una variable cuyo valor inicial es 0, se repite 10 veces el contenido del bucle
        
            File archivo = new File("guardado/primeraprueba"+i+".png"); // Apunto a un nuevo archivo
            ImageIO.write(imagencacheada, "png", archivo); // Con la libreta correspondiente, guardo el png en ese archivo
       
        }
        
        
    }
    
}
