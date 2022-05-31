package C.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loggin")
public class loggin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("un");
		String password = request.getParameter("pw");
		boolean isTrue;
		
		isTrue = rcustomer.validate(username, password);
		
		if(isTrue == true) {
			
			List<customer>custDetails= rcustomer.getcustomer(username);
			request.setAttribute("custDetails",custDetails );
			
			RequestDispatcher disR=request.getRequestDispatcher("useraccount.jsp");
			disR.forward(request,response);
			
		}else {
			
			out.println("<script type ='text/javascript'>");
			out.println("alert('Invalid password or username');");
			out.println("location='logging.jsp'");
			out.println("</script>");		
					
		}
		
		
	}
}

