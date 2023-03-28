<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/Style.css">
<title>Formulario de Contacto</title>
<!-- Incluimos los archivos CSS de Bootstrap -->
</head>
<body>
	<%@include file="extras/Navbar.jsp"%>
	<body style="background-color: Lavender;">
	<div class="container">
		<h1 class="text-center">Formulario de Contacto</h1>
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
	<!-- Incluimos los archivos JS de Bootstrap -->
		<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>

</body>
<footer><%@include file="extras/footer.jsp"%></footer>
</html>