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
<script src="https://kit.fontawesome.com/6ebe202ade.js" crossorigin="anonymous">
</script>
</head>
<body>
	Hola si estas viendo esto es que estas en el panel de control
	
	<h1>Gestión de usuarios</h1>
	<table border="1">
		<tr>
			<th>Usuario</th>
			<th>Contraseña</th>
			<th>Nombre</th>
		</tr>
		<tr>
			<form action="insertar.jsp" method="POST">
				<td><input type="text" name="usuario" placeholder="Usuario"></td>
				<td><input type="text" name="password" placeholder="Contraseña"></td>
				<td><input type="text" name="nombre" placeholder="Nombre"></td>
				<td><input type="submit" name="Enviar"></td>
			</form>
		</tr>
		<%
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
	        Statement peticion = conexion.createStatement();
	        ResultSet resultado = peticion.executeQuery("SELECT * FROM usuarios");

	        while(resultado.next()) {
	        	out.println("<tr><td>"+resultado.getString("usuario")+"</td><td>"+resultado.getString("contrasena")+"</td><td>"+resultado.getString("nombre")+"</td>");
	        	out.println("<td><a href='ver.jsp?id="+resultado.getString("identificador")+"'><i class='fa fa-eye' aria-hidden='true'></a></td>");
	        	out.println("<td><a href='actualizar.jsp?id="+resultado.getString("identificador")+"'><i class='fa fa-refresh' aria-hidden='true'</a></td>");
	        	out.println("<td><a href='eliminar.jsp?id="+resultado.getString("identificador")+"'><i class='fa fa-trash' aria-hidden='true'</a></td>");
	        	out.println("</tr>");
	        }
   
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	%>
	</table>
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    	google.charts.load('current', {'packages':['corechart']});
    	google.charts.setOnLoadCallback(drawChart);
		
		function drawChart() {
			var data = new google.visualization.arrayToDataTable([
		        ['Task', 'Hours per Day'],
		        <%
				try{
			        Class.forName("com.mysql.jdbc.Driver");
			        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/cursojava", "cursojava", "cursojava");
			        Statement peticion = conexion.createStatement();
			        ResultSet resultado = peticion.executeQuery("SELECT * FROM apellidos WHERE apellido LIKE '%EZ%' ORDER BY ap1 DESC LIMIT 10");

			        while(resultado.next()) {
			        	out.println("['"+resultado.getString("apellido")+"', "+resultado.getString("ap1")+"],");
			        }
		   
			    }catch(Exception e){
			        e.printStackTrace();
			    }
			%>
	        ]);
			
	        var options = {
	        	'title':'Apellidos que tienen EZ en el propio apellido',
            };
			
			var chart = new google.visualization.PieChart(document.getElementById('pieChart'));
			
			chart.draw(data, options);
		}
	</script>
	
	<div id="pieChart" style="width: 900px; height: 500px;"></div>
</body>
</html>