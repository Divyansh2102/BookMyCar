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

import in.sp.bean.Car;
import in.sp.bean.Customer;
import in.sp.dao.carDao;
import in.sp.dao.custDao;

/**
 * Servlet implementation class CarFetch
 */
@WebServlet("/CarFetch")
public class CarFetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarFetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Customer> custList = new ArrayList<>();



	    try {

	      // Establish connection (replace `custDao.getConnection()` with your method)

	      Connection con = custDao.getConnection();

	       

	      // Prepare and execute SQL query

	      String query = "SELECT * FROM customer";
	      

	      PreparedStatement ps = con.prepareStatement(query);

	      ResultSet rs = ps.executeQuery();



	      // Process the result set and add cars to the list

	      while (rs.next()) {

	        Customer cus = new Customer();
//System.out.println(rs.getString("Firstname"));
	          
	          cus.setFirstname(rs.getString("Firstname"));
	          
	          cus.setLastName(rs.getString("Lastname"));
//cus.set.
	          cus.setContactDetails(rs.getString("ContactDetails"));

	          cus.setResidence(rs.getString("Residence"));

	          cus.setUserName( rs.getString("UserName"));
	          cus.setPassword( rs.getString("Password"));
	        

	        custList.add(cus);

	      }
	      
	      

	      rs.close();

	      ps.close();

	      con.close();

	    } catch (Exception e) {

	      e.printStackTrace();

	    }
	    request.setAttribute("custList", custList);	    
	    request.getRequestDispatcher("ViewBookings").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
