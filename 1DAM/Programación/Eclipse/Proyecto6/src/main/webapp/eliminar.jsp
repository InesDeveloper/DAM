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
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
	        Statement peticion = conexion.createStatement();
	        peticion.execute("DELETE FROM usuarios WHERE identificador = "+request.getParameter("id")+"");
	    }catch(Exception e){
	        e.printStackTrace();
	    }

		out.println("<meta http-equiv='refresh' content= '2; url=paneldecontrol.jsp'>");
	
	%>
</body>
</html>