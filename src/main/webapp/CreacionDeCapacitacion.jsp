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
				<label for="nombre">Nombre de capacitacion:</label>
				<input type="text" id="nombre" name="nombre" class="form-control" required>
			</div>
				

			<div class="form-group">
				<label for="nombre">Rut:</label>
				<input type="number" id="rut" name="rut" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label for="fecha">Selecciona una fecha de Capacitacion:</label>
				<input type="date" id="fecha" name="fecha">
				<br>
			</div>
			<div class="form-group">
				<label for="nombre">Hora:</label>
				<input type="number" id="rut" name="rut" class="form-control pb-20"  required>
			</div>
			

			
			  <div class="col-md-3">
   				 <label for="validationDefault04" class="form-label">Lugar</label>
    			<select class="form-select" id="validationDefault04" required>
      			<option selected enable value="">Valparaiso</option>
      			<option selected enable value="">Villa Alemana</option>
     		 	<option selected enable value="">Santiago</option>
     		 	<option selected enable value="">Quillota</option>
    			</select>
  			</div>
			 <div class="col-md-3">
    			<label for="validationDefault05" class="form-label">Duracion</label>
    			<input type="number" class="form-control" id="Duracion" required>
  			</div>

  			
  			<div class="col-md-3">
    			<label for="validationDefault05" class="form-label">Cantidad de Asistentes</label>
    			<input type="number" class="form-control" id="Duracion" required>
  			</div>


			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
</body>
<br>
<%@include file="extras/footer.jsp"%>
</html>