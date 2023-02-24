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
	<form action="procesaactualizar.jsp" method="POST">

	<%
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
	        Statement peticion = conexion.createStatement();
	        ResultSet resultado = peticion.executeQuery("SELECT * FROM usuarios WHERE identificador = "+request.getParameter("id"));

	        while(resultado.next()) {
	        	out.println("<input type='hidden' name='identificador' value='"+resultado.getString("identificador")+"'>");
	        	out.println("Usuario: <input type='text' name='usuario' value='"+resultado.getString("usuario")+"'><br>");
	        	out.println("Contraseña: <input type='text' name='contrasena' value='"+resultado.getString("contrasena")+"'><br>");
	        	out.println("Nombre: <input type='text' name='nombre' value='"+resultado.getString("nombre")+"'><br>");
	        }
   
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	%>
		<input type="submit" value="Enviar">
	</form>
</body>
</html>