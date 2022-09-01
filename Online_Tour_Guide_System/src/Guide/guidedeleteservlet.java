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
 * Servlet implementation class guidedeleteservlet
 */
@WebServlet("/guidedeleteservlet")
public class guidedeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("guideid");
		
		boolean istrue;
		istrue = GuideDButil.deleteguide(id);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("insertguide.jsp");//success
			dis.forward(request, response);
		}
		else {
			List<Guide> guideDetails = GuideDButil.retrieveguide(id);
			request.setAttribute("guideDet", guideDetails);//cusDet in useraccout.jsp
			
			RequestDispatcher dis = request.getRequestDispatcher("guideprofile.jsp");
			dis.forward(request, response);
			
		}
	}

}
