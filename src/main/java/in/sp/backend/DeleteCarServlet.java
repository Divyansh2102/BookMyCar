package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.sp.dao.carDao;
import in.sp.dao.custDao;

/**
 * Servlet implementation class DeleteCarServlet
 */
@WebServlet("/DeleteCarServlet")
public class DeleteCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String number=request.getParameter("number");
		request.setAttribute("number",number);
		int st=carDao.delete(number);
		if(st>0) {
			System.out.println("deleted ");
			RequestDispatcher rd=request.getRequestDispatcher("AdminFetch");
			rd.forward(request, response);
		}else {
			PrintWriter out=response.getWriter();
//			out.println("Error");
//			out.println();
			response.setContentType("text/html");
			out.println("<html>");

	        out.println("<head><title>Alert </title></head>");

	        out.println("<body>");

	        out.println("<script type='text/javascript'>");

	        out.println("alert('This Car is already Booked ! ');"); // Alert box

	        out.println("window.location.href = 'AdminFetch';"); // Redirect after alert

	        out.println("</script>");

	        out.println("</body>");

	        out.println("</html>");
//			RequestDispatcher rd=request.getRequestDispatcher("AdminFetch");
//			rd.include(request, response);
		}
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		

	}

}
