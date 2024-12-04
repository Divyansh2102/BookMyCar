package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.sp.bean.Customer;
import in.sp.dao.custDao;

/**
 * Servlet implementation class UpdateUserDetails
 */
@WebServlet("/UpdateUserDetails")
public class UpdateUserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String contactNumber = request.getParameter("contactDetails");

	    String firstName = request.getParameter("firstName");

	    String lastName = request.getParameter("lastName");

	    String residence = request.getParameter("residence");

	    String username = request.getParameter("username");

	    String password = request.getParameter("password");
	    
	    response.setContentType("text/html");

	    PrintWriter out = response.getWriter();

	    try {
	    	  Connection con = custDao.getConnection();
		      String query =  "UPDATE customer SET  firstName = ?, lastName = ?,contactDetails=?, residence = ?,  username = ?  WHERE  username = ?";
		      
		      PreparedStatement pstmt = con.prepareStatement(query);
		      pstmt.setString(1, firstName);

		      pstmt.setString(2, lastName);
		      pstmt.setString(3, contactNumber);
		      pstmt.setString(4, residence);

		      pstmt.setString(5, username);

		     

		      pstmt.setString(6, username);
//		      ResultSet rs = pstmt.executeQuery();
		      int rowsUpdated = pstmt.executeUpdate();



		      if (rowsUpdated > 0) {

		        out.println("<p>Customer details updated successfully!</p>");
		        request.getRequestDispatcher("FetchCarsServlet").forward(request, response);
		        

		      } else {

		        out.println("<p>Failed to update customer details.</p>");

		      }
	    } catch (Exception e) {

		      e.printStackTrace();

		    }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
