
package simulacroexamen1;
import javax.swing.JFrame;
import javax.swing.JPanel; 
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class SimulacroExamen1 extends JPanel {

    @Override public void paint(Graphics g){
        super.paint(g);
        Graphics2D misgraficos = (Graphics2D) g;
       
        int basegrafica = 360;
        misgraficos.drawLine(10, 10, 10, 360);                                   
        misgraficos.drawLine(10, basegrafica, 360, basegrafica);                 
        int[] barras = new int[24];
       
       
        String url = "jdbc:sqlite:/Users/ines/Desktop/registros.db";
        Connection conn = null;
        
        try {
            String sql = "SELECT * FROM Visitasporhoras";
            conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            int contador = 0;
            
            while(rs.next()) {
                System.out.println(rs.getInt("Horas") + "\t" +
                                   rs.getString("numero"));

                barras[contador] = Integer.parseInt(rs.getString("numero"))/10;
                contador++;
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
       
        for (int i= 0;i<barras.length;i++){
            int randomNum = barras[i];
            misgraficos.fillRect(i*30+20, basegrafica-randomNum, 20, randomNum);     
   
        } 
   }
    
    public static void main(String[] args) {
        // TODO code application logic here
        JFrame marco = new JFrame("grafica");
        SimulacroExamen1 mimarco = new SimulacroExamen1();
        marco.add(mimarco);
        marco.setSize(400, 400);
        marco.setVisible(true);
        marco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}

