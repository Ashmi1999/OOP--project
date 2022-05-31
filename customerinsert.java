package C.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customerinsert")
public class customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("uid");
		String password=request.getParameter("pwd");
		String name=request.getParameter("name");		
		String adress=request.getParameter("adress");
		String phone=request.getParameter("phn");
		String email=request.getParameter("email");
		
		boolean True;
		
		
	True = rcustomer.insertcus(username, password, name, adress, phone, email);
	
	if(True==true) {
		
		RequestDispatcher disp= request.getRequestDispatcher("logging.jsp");
		disp.forward(request, response);
		
	}else {
		RequestDispatcher dispt =request.getRequestDispatcher("unsuccessful.jsp");
		dispt.forward(request, response);
	}

}
}
