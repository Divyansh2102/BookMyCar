package in.sp.backend;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    private boolean processPayment(String cardNumber, String expiry, String cvv) {
        // Simulated payment logic (replace with actual gateway code)
        return cardNumber.length() == 16 && expiry.length() == 5 && cvv.length() == 3;
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String cardNumber = request.getParameter("cardNumber");
	        String expiry = request.getParameter("expiry");
	        String cvv = request.getParameter("cvv");

	        // Retrieve the booking details that were passed from payment.jsp
	        String carName = request.getParameter("carName");
	        String fullname = request.getParameter("fullname");
	        String phone = request.getParameter("phone");
	        String pickupDate = request.getParameter("pickupDate");
	        String returnDate = request.getParameter("returnDate");

	        // Simulate payment processing (replace with actual payment gateway logic)
	        boolean paymentSuccessful = processPayment(cardNumber, expiry, cvv);

	        // If payment is successful, forward to confirmation.jsp
	        if (paymentSuccessful) {
	            request.setAttribute("carName", carName);
	            request.setAttribute("fullname", fullname);
	            request.setAttribute("phone", phone);
	            request.setAttribute("pickupDate", pickupDate);
	            request.setAttribute("returnDate", returnDate);
	            request.setAttribute("paymentStatus", "Payment Successful");

	            RequestDispatcher rd = request.getRequestDispatcher("confirmation.jsp");
	            rd.forward(request, response);
	        } else {
	            // If payment fails, show an error message
	            request.setAttribute("paymentStatus", "Payment Failed");
	            request.setAttribute("errorMessage", "There was an issue processing your payment. Please try again.");
	            
	            RequestDispatcher rd = request.getRequestDispatcher("payment.jsp");
	            rd.forward(request, response);
	}
	}

}
