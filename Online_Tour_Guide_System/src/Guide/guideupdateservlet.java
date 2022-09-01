package Guide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class guideupdateservlet
 */
@WebServlet("/guideupdateservlet")
public class guideupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("guideid");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String gender = request.getParameter("gen");
		String age = request.getParameter("age");
		String language = request.getParameter("lang");
		String telephone = request.getParameter("phone");
		String hometown = request.getParameter("home");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = GuideDButil.updateguide(id, name, nic, age, language,  telephone, hometown, email, username, password, gender);
		
		if(isTrue == true) {
			
			List<Guide> guideDetails = GuideDButil.retrieveguide(id);
			request.setAttribute("guideDet", guideDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("guideprofile.jsp");
			dis.forward(request, response);
		}
		else {
			List<Guide> guideDetails = GuideDButil.retrieveguide(id);
			request.setAttribute("guideDet", guideDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("guideprofile.jsp");
			dis.forward(request, response);
		}
	}

}
