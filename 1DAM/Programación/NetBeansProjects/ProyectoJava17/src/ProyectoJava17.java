import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ProyectoJava17 {

    public static void main(String[] args) {
     
        try{
            Class.forName("com.mysql.jdbc.Driver"); //Voy a utilizar el driver de conexion a la base de datos que he cargado en la libreria de proyecto
            //Ahora establezco la conexión
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
            //Preparo una petición a la base de datos
            Statement peticion = conexion.createStatement();
            peticion.execute("INSERT INTO agenda VALUES (NULL,'Juan','1234','juan@correo.com')");
        }catch(Exception e){
            e.printStackTrace();
        }   
        
    }
    
}
