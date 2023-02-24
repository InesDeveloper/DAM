
package proyectojava23;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.util.Random;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class ProyectoJava23 extends JPanel {
    int numeroBolas = 100;
        
    Persona [] bolita = new Persona[numeroBolas];
    
    public void inicio(){
        for(int i = 0;i<numeroBolas;i++){
            bolita[i] = new Persona();
            System.out.println("Asignando bolita:"+bolita[i].x);
        }
    }                                              
    
    @Override                                                                   // Yo voy a programar mi propio paint aunque se que existe un paint por defecto
    public void paint(Graphics g){                                              // Sobreescribo el metodo de pintura por defecto
        super.paint(g);                                                         // Pinto en la ventana principal
        Graphics2D graf2d = (Graphics2D) g;                                     // Creo un nuevo elemento de graficos 2D
        graf2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING ,RenderingHints.VALUE_ANTIALIAS_ON); // Activo el suavizado de las lineas
        for(int i = 0;i<numeroBolas;i++){
            graf2d.fillOval((int)bolita[i].x, (int)bolita[i].y, 20, 20);        // Dibujo un ovalo
        }
    }
    
    public void muevete(){   
        for(int i = 0;i<numeroBolas;i++){
            bolita[i].mueveBola();
        }
    }   
    public static void main(String[] args) throws InterruptedException {        // Esta es la funcion principal.Creamos un bucle infinito controlado
        
        JFrame marco = new JFrame("animacion");                                 // Creo un marco de Swing
        ProyectoJava23 animacion = new ProyectoJava23();                        // Creo una instancia del proyecto
        marco.add(animacion);                                                   // Al marco, le añado el proyecto
        marco.setSize(400, 400);                                                // Especifico las dimensiones de la ventana
        marco.setVisible(true);                                                 // Le digo que quiero que la venta sea visible
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);                   // Para que cuando se cierre la ventana se pare el programa y no siga en running
        animacion.inicio();
        
        while(true){                                                            // Entramos en el bucle Infinito
            animacion.muevete();                                                // Mueve la bola
            animacion.repaint();                                                // Repinta lo que hay en la pantalla
            Thread.sleep(10);                                                   // Para la ejecucion un cierto tiempo para que el bucle este controlado
        }  
    }           
}  