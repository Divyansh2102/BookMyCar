package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.sp.bean.Car;
import in.sp.dao.carDao;

/**
 * Servlet implementation class AddCar
 */
@WebServlet("/AddCar")
public class AddCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCar() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");

	    String number = request.getParameter("number");

	    double rating = Double.parseDouble(request.getParameter("rating"));

	    int seater = Integer.parseInt(request.getParameter("seater"));

	    int price = Integer.parseInt(request.getParameter("price"));

	    String carType = request.getParameter("carType");

	    String transmission = request.getParameter("transmission");

	    String fuelType = request.getParameter("fuelType");

	    int modelYear = Integer.parseInt(request.getParameter("modelYear"));

	    Car car = new Car(name, number, rating, seater, price, carType, transmission, fuelType, modelYear);
	    int status = carDao.save(car);
	    if (status > 0) {

	      response.getWriter().println("Car added successfully!");
	      response.sendRedirect("AdminFetch");

	    } else {

//	      response.getWriter().println("Failed to add car.");
	      PrintWriter out=response.getWriter();
//			out.println("Error");
//			out.println();
			response.setContentType("text/html");
			out.println("<html>");

	        out.println("<head><title>Alert Example</title></head>");

	        out.println("<body>");

	        out.println("<script type='text/javascript'>");

	        out.println("alert('Something went wrong ! ');"); // Alert box

	        out.println("window.location.href = 'AdminFetch';"); // Redirect after alert

	        out.println("</script>");

	        out.println("</body>");

	        out.println("</html>");
	    }
		
	}

}
