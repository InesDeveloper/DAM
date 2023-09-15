<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.FileWriter" %>
    <%@ page import = "java.io.IOException" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Aqui voy a procesar la informacion que me has enviado<br>
	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String resultado = "Que sepas que el nombre es: "+nombre+" con apellido: "+apellido+" cuyo telefono es: "+telefono+" y su email es: "+email+"<br>";
		out.println(resultado);
		
		try{
			FileWriter myWriter = new FileWriter("filename.txt");
			myWriter.write(resultado);
			myWriter.close();
			out.println("Se ha escrito correctamente en el archivo");	
		}catch (IOException e){
			out.println("Ha ocurrido un error");
			e.printStackTrace();
			
		}
	%>
	
	
</body>
</html>