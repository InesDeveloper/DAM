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
	<h1>Informe sobre uno de los registros</h1>
	
	<%
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
	        Statement peticion = conexion.createStatement();
	        ResultSet resultado = peticion.executeQuery("SELECT * FROM usuarios WHERE identificador = "+request.getParameter("id"));

	        while(resultado.next()) {
	        	out.println("Usuario: "+resultado.getString("usuario")+"<br>");
	        	out.println("Contraseña: "+resultado.getString("contrasena")+"<br>");
	        	out.println("Nombre: "+resultado.getString("nombre")+"<br>");
	        }
   
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	%>
	
	<a href="paneldecontrol.jsp">Volver a la pantalla anterior</a>
</body>
</html>