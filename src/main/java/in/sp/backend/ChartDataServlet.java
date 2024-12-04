package in.sp.backend;



import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import java.io.PrintWriter;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.util.HashMap;

import java.util.Map;

import org.json.JSONObject;

import in.sp.dao.carDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChartDataServlet
 */
@WebServlet("/ChartDataServlet")
public class ChartDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("application/json");

        PrintWriter out = response.getWriter();



        // Data structures to hold the data counts

        Map<String, Integer> carTypeCounts = new HashMap<>();

        Map<String, Integer> fuelTypeCounts = new HashMap<>();



        try (Connection con = carDao.getConnection()) {


            String carTypeQuery = "SELECT carType, COUNT(*) AS count FROM car GROUP BY carType";

            PreparedStatement ps = con.prepareStatement(carTypeQuery);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                carTypeCounts.put(rs.getString("carType"), rs.getInt("count"));
            }
            String fuelTypeQuery = "SELECT fuelType, COUNT(*) AS count FROM car GROUP BY fuelType";

            ps = con.prepareStatement(fuelTypeQuery);

            rs = ps.executeQuery();

            while (rs.next()) {

                fuelTypeCounts.put(rs.getString("fuelType"), rs.getInt("count"));

            }
            rs.close();
            ps.close();


            JSONObject json = new JSONObject();

            json.put("carTypeData", carTypeCounts);

            json.put("fuelTypeData", fuelTypeCounts);

            out.print(json.toString());

        } catch (Exception e

) {

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
