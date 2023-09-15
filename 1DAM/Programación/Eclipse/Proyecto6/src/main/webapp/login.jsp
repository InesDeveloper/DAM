<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.Statement" %>
    <%@ page import = "java.sql.ResultSet" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		boolean entras = false;
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        //Ahora establezco la conexión
	        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
	        //Preparo una petición a la base de datos
	        Statement peticion = conexion.createStatement();
	        //A continuación le pedimos algo a la base de datos y lo guardamos dentro de un objecto
	        ResultSet resultado = peticion.executeQuery("SELECT * FROM usuarios WHERE usuario = '"+request.getParameter("usuario")+"' AND contrasena = '"+request.getParameter("password")+"'");
	        //Mientras que el resultado tenga lineas
	        while(resultado.next()) {
	        	entras = true;
	        }
   
	    }catch(Exception e){
	        e.printStackTrace();
	    }
		
		if (entras) {
        	out.println("ok vas a entrar en la aplicación");
        	out.println("<meta http-equiv='refresh' content= '5; url=paneldecontrol.jsp'>");
        } else {
        	out.println("no ok, NO vas a entrar en la aplicación");
        	out.println("<meta http-equiv='refresh' content= '5; url=index.html'>");
        }
	
	%>
</body>
</html>