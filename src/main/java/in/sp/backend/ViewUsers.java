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
import in.sp.dao.carDao;

/**
 * Servlet implementation class ViewUsers
 */
@WebServlet("/ViewUsers")
public class ViewUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		List<Car> carList = new ArrayList<>();



	    try {

	      // Establish connection (replace `custDao.getConnection()` with your method)

	      Connection con = carDao.getConnection();

	       

	      // Prepare and execute SQL query

	      String query = "SELECT * FROM car";
	      

	      PreparedStatement ps = con.prepareStatement(query);

	      ResultSet rs = ps.executeQuery();



	      // Process the result set and add cars to the list

	      while (rs.next()) {

	        Car car = new Car(

	          rs.getString("name"),

	          rs.getString("number"),

	          rs.getDouble("rating"),

	          rs.getInt("seater"),

	          rs.getInt("price"),

	          rs.getString("carType"),

	          rs.getString("Transmission"),

	          rs.getString("fuelType"),

	          rs.getInt("modelYear")

	        );

	        carList.add(car);

	      }



	      // Close resources

	      rs.close();

	      ps.close();

	      con.close();

	    } catch (Exception e) {

	      e.printStackTrace();

	    }



	    // Set the car list as a request attribute and forward to JSP

	    request.setAttribute("carList", carList);
//	    System.out.println("post req call");
	    
	    request.getRequestDispatcher("ViewBookings.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
