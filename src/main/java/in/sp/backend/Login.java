package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.xp.Dao.LoginDao;

import in.sp.dao.custDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
        
	    String n=request.getParameter("username");  
	    String p=request.getParameter("userpass");  
	    if (n.equals("ADMIN") && p.equals("TCS@123")) { // Replace with secure admin validation

	        HttpSession session = request.getSession();

	        session.setAttribute("username", n);
	        response.sendRedirect("AdminFetch");
//	        response.sendRedirect("adminDashboard.jsp"); // Redirect to the admin dashboard

	      } 
	    else if (custDao.validate(n,p )) {
//	    	 System.out.println(n+" in login.java");
	        HttpSession session = request.getSession();

	        session.setAttribute("username", n);
	        session.setAttribute("password", p);	
	        RequestDispatcher rd=request.getRequestDispatcher("FetchCarsServlet");
	        rd.forward(request, response); 
	    }  
	    else{  
//	    	PrintWriter out=response.getWriter();
			response.setContentType("text/html");
	    	out.println("<html>");

	        out.println("<head><title>login</title></head>");

	        out.println("<body>");

	        out.println("<script type='text/javascript'>");

	        out.println("alert('Sorry username or password error. ');"); // Alert box

	        out.println("window.location.href = 'login.jsp;'"); // Redirect after alert

	        out.println("</script>");

	        out.println("</body>");

	        out.println("</html>");
	    }  
	    
	}

}
