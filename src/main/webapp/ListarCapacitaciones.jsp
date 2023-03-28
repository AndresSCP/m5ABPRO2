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
<!-- <meta charset="ISO-8859-1"> -->
<title>Lista Capacitaciones</title>
</head>
<body>
	<%@include file="extras/Navbar.jsp"%>
<h1>Listado de Capacitaciones</h1>


<%@ page import="java.util.ArrayList" %>
<ul class="list-group">
  <% ArrayList<String> miLista = (ArrayList<String>) request.getAttribute("miLista");
     if (miLista != null) {
        for (int i = 0; i < miLista.size(); i++) { %>
            <li class="list-group-item"><%= miLista.get(i) %></li>
  <%  }
     }
     else { %>
         <li class="list-group-item">No hay capacitaciones disponibles.</li>
  <% } %>
</ul>
<footer><%@include file="extras/footer.jsp"%></footer>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>
</body>