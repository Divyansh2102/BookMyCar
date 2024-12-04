package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.sp.dao.carDao;

/**
 * Servlet implementation class bookingServlet
 */
@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    private boolean processPayment(String cardNumber, String expiry, String cvv) {
        // Simulated payment logic (replace with actual gateway code)
        return cardNumber.length() == 16 && expiry.length() == 5 && cvv.length() == 3;
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String carName = request.getParameter("name");
		String carNumber=request.getParameter("number");
		System.out.println(carNumber +"car no.");
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String pickupDate = request.getParameter("pickupDate");
        String returnDate = request.getParameter("returnDate");
        String card_number = request.getParameter("card_number");
        String expiry_date = request.getParameter("expiry_date");
        String cvv = request.getParameter("cvv");

        // Handle booking confirmation (save to DB, process payment, etc.)
        try {
            Connection con = carDao.getConnection();  

            // Create the SQL query for inserting the booking details into the database
            String query = "INSERT INTO bookings (name,number, fullname, phone, pickup_date, return_date,card_number,expiry_date,cvv) VALUES (?,?,?,?, ?,?, ?, ?, ?)";

            // Prepare the statement to execute the query
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, carName);
            stmt.setString(2, carNumber);
            stmt.setString(3, fullname);
            stmt.setString(4, phone);
            stmt.setString(5, pickupDate);
            stmt.setString(6, returnDate);
            stmt.setString(7, card_number);
            stmt.setString(8, expiry_date);
            stmt.setString(9, cvv);

            // Execute the insert query
            int result = stmt.executeUpdate();

            // Check if the insertion was successful
            System.out.println("dfd"+result);
            if (result > 0) {
            	System.out.println("done 1");
     
            	carDao.setStatus(carNumber);
            	int cnt=carDao.getCount();
            	System.out.println("count in the cars are"+cnt);
            	request.setAttribute("cnt", cnt);
                // If successful, forward to payment.jsp with booking details
            	 request.setAttribute("carName", carName);
 	            request.setAttribute("fullname", fullname);
 	            request.setAttribute("phone", phone);
 	            request.setAttribute("pickupDate", pickupDate);
 	            request.setAttribute("returnDate", returnDate);
 	            request.setAttribute("paymentStatus", "Payment Successful");

 	            RequestDispatcher rd = request.getRequestDispatcher("conifrmation.jsp");
 	            rd.forward(request, response);
            } else {
                // If not successful, show an error message
            	
                PrintWriter out=response.getWriter();
    			response.setContentType("text/html");
    	    	out.println("<html>");

    	        out.println("<head><title>Bookings</title></head>");

    	        out.println("<body>");

    	        out.println("<script type='text/javascript'>");

    	        out.println("alert('An error occurred while processing your booking. ');"); // Alert box

    	        out.println("window.location.href = 'FetchCarsServlet;"); // Redirect after alert

    	        out.println("</script>");

    	        out.println("</body>");

    	        out.println("</html>");
            }

            // Close the database connection
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            PrintWriter out=response.getWriter();
			response.setContentType("text/html");
	    	out.println("<html>");

	        out.println("<head><title>Bookings</title></head>");

	        out.println("<body>");

	        out.println("<script type='text/javascript'>");

	        out.println("alert('An error occurred while processing your booking. ');"); // Alert box

	        out.println("window.location.href = 'FetchCarsServlet;"); // Redirect after alert

	        out.println("</script>");

	        out.println("</body>");

	        out.println("</html>");
            
        }
	}

}
