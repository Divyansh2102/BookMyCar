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
 * Servlet implementation class BookingsFetch
 */
@WebServlet("/BookingsFetch")
public class BookingsFetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingsFetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		List<Booking> bookingList = new ArrayList<>();



	    try {

	      // Establish connection (replace `custDao.getConnection()` with your method)

	      Connection con = custDao.getConnection();

	       

	      // Prepare and execute SQL query

	      String query = "SELECT * FROM bookings";
	      

	      PreparedStatement ps = con.prepareStatement(query);

	      ResultSet rs = ps.executeQuery();



	      // Process the result set and add cars to the list

	      while (rs.next()) {

	    	  Booking booking = new Booking();

              booking.setCarName(rs.getString("name"));
              
              booking.setCarNumber(rs.getString("number"));

              booking.setFullname(rs.getString("fullname"));

              booking.setPhone(rs.getString("phone"));

              booking.setPickupDate(rs.getString("pickup_date"));

              booking.setReturnDate(rs.getString("return_date"));

              booking.setCardNumber(rs.getString("card_number"));

              booking.setExpiryDate(rs.getString("expiry_date"));

              booking.setCvv(rs.getString("cvv"));

              bookingList.add(booking);

	      }



	      // Close resources

	      rs.close();

	      ps.close();

	      con.close();

	    } catch (Exception e) {

	      e.printStackTrace();

	    }



	    // Set the car list as a request attribute and forward to JSP

	    request.setAttribute("bookList", bookingList);
	    
	    request.getRequestDispatcher("AllBookingss.jsp").forward(request, response);
//	    response.sendRedirect("displayCars.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
