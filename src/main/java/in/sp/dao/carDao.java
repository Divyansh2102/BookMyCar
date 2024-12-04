package in.sp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import in.sp.bean.Car;
import in.sp.bean.Customer;

public class carDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			con = DriverManager.getConnection("jdbc:derby:D:\\Users\\2733019\\MyDB;create=true");
		}
		catch (Exception e) {
			System.out.println(e);
		}
		System.out.println(con);
		return con;
	}
	public static int edit(String carNumber) {
		int status = 0;
		System.out.println(carNumber);
		try {
			Connection con = custDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"DELETE from  Car WHERE number=?");		
			ps.setString(1, carNumber);
			status = ps.executeUpdate();
			System.out.println(status+"status ");
	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	
	
    public static int delete(String carNumber) {
    	int status = 0;
		System.out.println(carNumber);
		try {
			Connection con = custDao.getConnection();
			PreparedStatement pst = con.prepareStatement("SELECT booked from Car where number=?");
			pst.setString(1,carNumber);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				String book=rs.getString("booked");
				if(book.equals("No")) {
					PreparedStatement ps = con.prepareStatement(
							"DELETE from  Car WHERE number=? ");		
					
					ps.setString(1, carNumber);
					status = ps.executeUpdate();
					
				}else {
					status=-1;
				}
			}
			return status;
			
	
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		return status;
	}
	
	public static void setStatus (String carNumber) {
		int status = 0;
		System.out.println(carNumber);
		try {
			Connection con = custDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE Car SET booked='Yes' WHERE number=?");		
			ps.setString(1, carNumber);
			status = ps.executeUpdate();
			System.out.println(status+"status ");
	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	public static int getCount() {
		int status = 0;int rowCount = 0;
//		System.out.println(carNumber);
		try {
			Connection con = custDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"SELECT * from Car where booked='No'");		
//			ps.setString(1, carNumber);
//			status = ps.executeUpdate();
			ResultSet rs = ps.executeQuery();
			System.out.println(status+"status ");
//			int rowCount = 0;
		      while (rs.next()) {
		           rowCount++;
		      }
		      System.out.println(rowCount+" hi row count");
	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rowCount;
	}
	
public static int save (Car car) {
		
		int status = 0;
		try {
			Connection con = custDao.getConnection();
			
			PreparedStatement ps = con.prepareStatement(
					"insert into car(name, number, rating, seater, price,carType,Transmission,fuelType,modelYear) values (?,?,?,?,?,?,?,?,?)");			
		      ps.setString(1, car.getName());
		      ps.setString(2, car.getNumber());
		      ps.setDouble(3, car.getRating());
		      ps.setInt(4, car.getSeater());
		      ps.setInt(5, car.getPrice());
		      ps.setString(6, car.getCarType());
		      ps.setString(7, car.getTransmission());
		      ps.setString(8, car.getFuelType());
		      ps.setInt(9, car.getModelYear());
			
			status = ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(status);
		return status;
		
		
	}

public static List<Car> getFilteredCars(String[] seaters, String[] transmissions, String[] fuelTypes, 

        String[] carTypes, String minPrice, String maxPrice) {

List<Car> carList = new ArrayList<>();

StringBuilder query = new StringBuilder("SELECT * FROM Car WHERE 1=1 and booked='No'");



if (seaters != null && seaters.length > 0) {

query.append(" AND seater IN (").append(String.join(",", seaters)).append(")");

}

if (transmissions != null && transmissions.length > 0) {

query.append(" AND transmission IN (");

for (int i = 0; i < transmissions.length; i++) {

query.append("'").append(transmissions[i]).append("'");

if (i < transmissions.length - 1) query.append(",");

}

query.append(")");

}

if (fuelTypes != null && fuelTypes.length > 0) {

query.append(" AND fuelType IN (");

for (int i = 0; i < fuelTypes.length; i++) {

query.append("'").append(fuelTypes[i]).append("'");

if (i < fuelTypes.length - 1) query.append(",");

}

query.append(")");

}

if (carTypes != null && carTypes.length > 0) {

query.append(" AND carType IN (");

for (int i = 0; i < carTypes.length; i++) {

query.append("'").append(carTypes[i]).append("'");

if (i < carTypes.length - 1) query.append(",");

}

query.append(")");

}

if (minPrice != null && !minPrice.isEmpty()) {

query.append(" AND price >= ").append(minPrice);

}

if (maxPrice != null && !maxPrice.isEmpty()) {

query.append(" AND price <= ").append(maxPrice);

}



try (Connection con = custDao.getConnection();

PreparedStatement ps = con.prepareStatement(query.toString());

ResultSet rs = ps.executeQuery()) {

while (rs.next()) {

Car car = new Car();

car.setName(rs.getString("name"));

car.setNumber(rs.getString("number"));

car.setRating(rs.getDouble("rating"));

car.setSeater(rs.getInt("seater"));

car.setPrice(rs.getInt("price"));

car.setCarType(rs.getString("carType"));

car.setTransmission(rs.getString("transmission"));

car.setFuelType(rs.getString("fuelType"));

car.setModelYear(rs.getInt("modelYear"));

carList.add(car);

}

} catch (Exception e) {

e.printStackTrace();

}



return carList;

}

public static List<Car> getAllCars() {
	// TODO Auto-generated method stub
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

	return carList;
}
}
