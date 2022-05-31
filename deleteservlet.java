package C.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean True;
		
		True= rcustomer.deletecust(id);
		if(True == true) {

			RequestDispatcher disptc =request.getRequestDispatcher("custinsert.jsp");
			disptc.forward(request, response);
		}
		else {
			List<customer> custDetails= rcustomer.getCustomerDetails(id);
			request.setAttribute("custDetails",custDetails);
			
			RequestDispatcher disptc =request.getRequestDispatcher("useraccount.jsp");
			disptc.forward(request, response);
		}
	}

}
