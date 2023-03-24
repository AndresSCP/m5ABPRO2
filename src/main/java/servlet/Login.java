package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String username = request.getParameter("imputUsuario");
		  String password = request.getParameter("password"); 
		  System.out.println("usuario"+username+" "+"contraseña"+password);
		    // Verificar las credenciales
		    boolean validCredentials = validateCredentials(username, password);

		    if (validCredentials) {
		      // Crear una sesión para el usuario
		      HttpSession session = request.getSession();
		      session.setAttribute("username", username);

		      // Redirigir al usuario a la página protegida
		      response.sendRedirect("index.jsp");
		    } else {
		      // Mostrar un mensaje de error al usuario
		      request.setAttribute("mensajeError", "Credenciales inválidas");
		      request.getRequestDispatcher("login.jsp").forward(request, response);
		    }
		  }
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  
	  }

		  private boolean validateCredentials(String username, String password) {
		    // Validar las credenciales aquí (por ejemplo, utilizando una base de datos)
		    return username.equals("admin") && password.equals("1234");
		  }

}