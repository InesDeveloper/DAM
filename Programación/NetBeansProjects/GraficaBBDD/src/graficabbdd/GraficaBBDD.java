package graficabbdd;
import javax.swing.JFrame;
import javax.swing.JPanel; 
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class GraficaBBDD extends JPanel{

   @Override public void paint(Graphics g){
        super.paint(g);
        Graphics2D misgraficos = (Graphics2D) g;
       
        int basegrafica = 360;
        misgraficos.drawLine(10, 10, 10, 360);                                   // Linea vertical
        misgraficos.drawLine(10, basegrafica, 360, basegrafica);                 // Linea horizontal
        int[] barras = new int[] { 100,300,200,200,100,200,50,200,25,50,100,50 };
       
        for (int i= 0;i<barras.length;i++){
            int randomNum = barras[i];
            misgraficos.fillRect(i*30+20, basegrafica-randomNum, 20, randomNum);     
   
        } // Dibujo una primera barra
   }
    
    
    public static void main(String[] args) {
        // TODO code application logic here
        JFrame marco = new JFrame("grafica");
        GraficaBBDD mimarco = new GraficaBBDD();
        marco.add(mimarco);
        marco.setSize(400, 400);
        marco.setVisible(true);
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  
    }
    
}
