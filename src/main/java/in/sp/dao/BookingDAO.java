package in.sp.dao;



import java.sql.*;

import in.sp.bean.Booking;

import java.util.ArrayList;

import java.util.List;



public class BookingDAO {



    // Method to establish a database connection

    public static Connection getConnection() {

        Connection con = null;

        try {

        	Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			con = DriverManager.getConnection("jdbc:derby:D:\\Users\\2733019\\MyDB;create=true");
	        } catch (Exception e) {

            System.out.println(e);

        }

        return con;

    }



    // Save booking to the database

    public static int save(Booking booking) {

        int status = 0;

        try (Connection con = getConnection()) {

            // SQL query to insert booking details into the database

            String query = "INSERT INTO bookings (name,number, fullname, phone, pickup_date, return_date, card_number, expiry_date, cvv) "

                    + "VALUES (?,?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, booking.getCarName());
            
            ps.setString(1, booking.getCarNumber());
            ps.setString(2, booking.getFullname());

            ps.setString(3, booking.getPhone());

            ps.setString(4, booking.getPickupDate());

            ps.setString(5, booking.getReturnDate());

            ps.setString(6, booking.getCardNumber());

            ps.setString(7, booking.getExpiryDate());

            ps.setString(8, booking.getCvv());



            // Execute the query

            status = ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;

    }



    // Retrieve all bookings

    public static List<Booking> getAllBookings() {

        List<Booking> bookingList = new ArrayList<>();

        try (Connection con = getConnection()) {

            // SQL query to get all bookings from the database

            String query = "SELECT * FROM bookings";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();



            while (rs.next()) {

                Booking booking = new Booking();

                booking.setCarName(rs.getString("car_name"));

                booking.setFullname(rs.getString("fullname"));

                booking.setPhone(rs.getString("phone"));

                booking.setPickupDate(rs.getString("pickup_date"));

                booking.setReturnDate(rs.getString("return_date"));

                booking.setCardNumber(rs.getString("card_number"));

                booking.setExpiryDate(rs.getString("expiry_date"));

                booking.setCvv(rs.getString("cvv"));



                bookingList.add(booking);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return bookingList;

    }



    // Retrieve booking by phone number

    public static Booking getBookingByPhone(String phone) {

        Booking booking = null;

        try (Connection con = getConnection()) {

            // SQL query to get booking details by phone number

            String query = "SELECT * FROM bookings WHERE phone = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, phone);

            ResultSet rs = ps.executeQuery();



            if (rs.next()) {

                booking = new Booking();

                booking.setCarName(rs.getString("car_name"));

                booking.setFullname(rs.getString("fullname"));

                booking.setPhone(rs.getString("phone"));

                booking.setPickupDate(rs.getString("pickup_date"));

                booking.setReturnDate(rs.getString("return_date"));

                booking.setCardNumber(rs.getString("card_number"));

                booking.setExpiryDate(rs.getString("expiry_date"));

                booking.setCvv(rs.getString("cvv"));

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return booking;

    }

}