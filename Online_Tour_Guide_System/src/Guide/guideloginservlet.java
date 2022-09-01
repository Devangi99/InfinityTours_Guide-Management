package Guide;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class guideloginservlet
 */
@WebServlet("/guideloginservlet")
public class guideloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		
		boolean istrue;
		
		istrue = GuideDButil.validate(username, password);
		
		if(istrue == true) {
			List<Guide> guideDetails = GuideDButil.getGuideInfo(username);
			request.setAttribute("guideDet", guideDetails);
			RequestDispatcher dis = request.getRequestDispatcher("guideprofile.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username/password is incorrect');");
			out.println("location = 'loginguide.jsp'");
			out.println("</script>");
		}
	}
	

}
