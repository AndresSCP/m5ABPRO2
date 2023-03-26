<%
if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/Style.css">
<%@include file = "extras/Navbar.jsp" %>
	<body style="background-color: LemonChiffon;">

	<div class="container">
		<h1 class="text-center">Creacion de capacitacion</h1>
		<form action="index.jsp" method="post">
			<div class="form-group">
				<label for="nombre">Nombre completo:</label>
				<input type="text" id="nombre" name="nombre" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="email">Correo electrónico:</label>
				<input type="email" id="email" name="email" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label for="fecha">Selecciona una fecha de Capacitacion:</label>
				<input type="date" id="fecha" name="fecha">
				
			</div>

			<div class="form-group">
				<label for="asunto">Asunto:</label>
				<input type="text" id="asunto" name="asunto" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="mensaje">Mensaje:</label>
				<textarea id="mensaje" name="mensaje" class="form-control" required></textarea>
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
</body>
</html>