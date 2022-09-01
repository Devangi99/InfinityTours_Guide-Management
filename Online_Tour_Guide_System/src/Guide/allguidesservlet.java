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
 * Servlet implementation class allguidesservlet
 */
@WebServlet("/allguidesservlet")
public class allguidesservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 {
			try {
				List<Guide> guideDetails = GuideDButil.getallguides();
				request.setAttribute("guideDet", guideDetails);
			}
			catch(Exception e) {
				e.printStackTrace();
			}

			RequestDispatcher dis = request.getRequestDispatcher("allguides.jsp");
			dis.forward(request, response);
		}
	}

}
