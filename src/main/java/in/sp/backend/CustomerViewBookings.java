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

import in.sp.bean.Booking;
import in.sp.bean.Customer;
import in.sp.dao.custDao;

/**
 * Servlet implementation class CustomerViewBookings
 */
@WebServlet("/CustomerViewBookings")
public class CustomerViewBookings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerViewBookings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String username = request.getParameter("username");
		List<Customer> custList = new ArrayList<>();
		List<Booking> bookingList = new ArrayList<>();
		 try {
		      // Establish connection (replace `custDao.getConnection()` with your method)
		      Connection con = custDao.getConnection();
		      // Prepare and execute SQL query
		      String query = "SELECT * FROM customer where username=?";
		      PreparedStatement ps = con.prepareStatement(query);
              ps.setString(1,username);
		      ResultSet rs = ps.executeQuery();
		      
		      if (rs.next()) {
		    	  String contactDetails=rs.getString("ContactDetails");
		    	  System.out.println(" cnt detail "+contactDetails);
		    	  
		    	  try {
		    		 
				      // Prepare and execute SQL query
		    		  Connection conn = custDao.getConnection();
				      String query2 = "SELECT * FROM bookings where phone=?";
				     
				      PreparedStatement ps2 = conn.prepareStatement(query2);
				      ps2.setString(1,contactDetails);
		              
		              System.out.println(contactDetails+"inside try ");
				      ResultSet rs2 = ps2.executeQuery();

				      while (rs2.next()) {
				    	  System.out.println("inside rs2 ");
				    	  Booking booking = new Booking();

			              booking.setCarName(rs2.getString("name"));
			              System.out.println(" rs2 detail "+rs2.getString("name"));
			              booking.setCarNumber(rs2.getString("number"));

			              booking.setFullname(rs2.getString("fullname"));

			              booking.setPhone(rs2.getString("phone"));

			              booking.setPickupDate(rs2.getString("pickup_date"));

			              booking.setReturnDate(rs2.getString("return_date"));

			              booking.setCardNumber(rs2.getString("card_number"));

			              booking.setExpiryDate(rs2.getString("expiry_date"));

			              booking.setCvv(rs2.getString("cvv"));

			              bookingList.add(booking);
				      }
				     


		    	  }catch (Exception e) {

				      e.printStackTrace();

				    }
		    	  


			      }
		 }catch (Exception e) {

		      e.printStackTrace();

		    }
		    request.setAttribute("bookList", bookingList);
		    
		    request.getRequestDispatcher("CustomerViewBookings.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
