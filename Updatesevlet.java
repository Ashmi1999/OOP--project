package C.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Updatesevlet")
public class Updatesevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String username = request.getParameter("Uname");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String adress = request.getParameter("adress");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		boolean True;
		
		True= rcustomer.updatecust(id, username, password, name, adress, phone, email);
		
		if(True==true) {
			
			List<customer> custDetails= rcustomer.getCustomerDetails(id);
			request.setAttribute("custDetails",custDetails);
			
			RequestDispatcher disp= request.getRequestDispatcher("useraccount.jsp");
			disp.forward(request, response);
			
		}else {
			List<customer> custDetails= rcustomer.getCustomerDetails(id);
			request.setAttribute("custDetails",custDetails);
			
			RequestDispatcher dispt =request.getRequestDispatcher("unsucessful.jsp");
			dispt.forward(request, response);
		}

	}

	private List<customer> getCustomerDetails(String id) {
		
		return null;
	}
		}
			


