package in.sp.backend;
import java.io.IOException;

import java.util.List;

import java.util.stream.Collectors;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import in.sp.bean.Car;

import in.sp.dao.carDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServletDashboard
 */
@WebServlet("/UserServletDashboard")
public class UserServletDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServletDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//        request.getRequestDispatcher("browseCars.jsp").forward(request, response);
		String[] seaters = request.getParameterValues("seater");

	    String[] transmissions = request.getParameterValues("transmission");

	    String[] fuelTypes = request.getParameterValues("fuelType");

	    String[] carTypes = request.getParameterValues("carType");

	    String minPrice = request.getParameter("minPrice");

	    String maxPrice = request.getParameter("maxPrice");



	    // Fetch filtered car list

	    List<Car> carList = carDao.getFilteredCars(seaters, transmissions, fuelTypes, carTypes, minPrice, maxPrice);



	    // Set the car list in the request and forward to the JSP

	    request.setAttribute("carList", carList);

	    request.getRequestDispatcher("browseCars.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
