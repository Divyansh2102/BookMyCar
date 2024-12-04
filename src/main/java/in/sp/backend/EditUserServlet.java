package in.sp.backend;

import java.io.IOException;
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
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		 String username = request.getParameter("username");
		 System.out.println(username +"username");
		 
		 List<Customer> custList = new ArrayList<>();
		  try {
		      Connection con = custDao.getConnection();
		      String query = "SELECT * FROM customer where username=?";
		      PreparedStatement ps = con.prepareStatement(query);
		      ps.setString(1, username);
		      ResultSet rs = ps.executeQuery();
		      
		      while (rs.next()) {
		    	  
		    	     Customer cus = new Customer();
		    	//System.out.println(rs.getString("Firstname"));
		    		          System.out.println("Username is: "+rs.getString("Firstname"));
		    		          cus.setFirstname(rs.getString("Firstname"));
		    		          
		    		          cus.setLastName(rs.getString("Lastname"));
		    	//cus.set.
		    		          cus.setContactDetails(rs.getString("ContactDetails"));
System.out.println("conatact "+rs.getString("ContactDetails"));
		    		          cus.setResidence(rs.getString("Residence"));

		    		          cus.setUserName( rs.getString("UserName"));
//		    		          cus.setPassword( rs.getString("Password"));
		    		        

		    		        custList.add(cus);
		    		        
		    	  
		      }
		      rs.close();

		      ps.close();

		      con.close();
	  } catch (Exception e) {

	      e.printStackTrace();

	    }
		  request.setAttribute("custList", custList);
		    
		   request.getRequestDispatcher("UpdateUserDetails.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
