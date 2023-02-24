<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#enviar").click(function(){
				$("#resultado").load("http://localhost:8080/Proyecto5/Controlador?nombre="+$("#nombre").val()+"&email="+$("#email").val()+"&telefono="+$("#telefono").val());
			})
		})
	</script>
</head>
<body>
	<%
		out.println("Hoy es el día: "+ new Date());
	%>
	<br>
	<!-- http://localhost:8080/Proyecto5/Controlador  -->
		<input type="text" name="nombre" placeholder="Introduce tu nombre" id="nombre">
		<br><br>
		<input type="text" name="email" placeholder="Introduce tu email" id="email">
		<br><br>
		<input type="text" name="telefono" placeholder="Introduce tu telefono" id="telefono">
		<br><br>
		<input type="submit" value="Enviar" id="enviar">
		<div id="resultado"></div>
		
</body>
</html>