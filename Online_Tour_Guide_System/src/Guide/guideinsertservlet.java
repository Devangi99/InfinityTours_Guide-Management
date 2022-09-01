package Guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class guideinsertservlet
 */
@WebServlet("/guideinsertservlet")
public class guideinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		String name = request.getParameter("name");  /*name in input tag*/
		String nic = request.getParameter("nic");
		int age = Integer.parseInt(request.getParameter("age"));
		String language = request.getParameter("lang");
		String gender = request.getParameter("gen");
		String telephone = request.getParameter("tel");
		String hometown = request.getParameter("town");
		String email = request.getParameter("email");
		String username = request.getParameter("usn");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = GuideDButil.insertguide(name, nic, age, language, telephone, hometown, email, username, password, gender);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
