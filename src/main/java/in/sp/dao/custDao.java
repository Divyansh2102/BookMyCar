package in.sp.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.sp.bean.Customer;
import in.sp.bean.SecurityAuthenticator;
public class custDao {
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
	
public static int save (Customer s) {
        
        int status = 0;
        try {
            Connection con = custDao.getConnection();
            String salt=SecurityAuthenticator.generateSalt();
            PreparedStatement ps = con.prepareStatement(
                    "insert into Customer(Firstname, Lastname, ContactDetails, Residence, UserName,Password,Salted) values (?,?,?,?,?,?,?)");            
            ps.setString(1, s.getFirstname());
            ps.setString(2, s.getLastname());
            ps.setString(3, s.getContactDetails());
            ps.setString(4, s.getResidence());
            ps.setString(5, s.getUserName());
            ps.setString(6, SecurityAuthenticator.hashPassword(s.getPassword(), salt));
            ps.setString(7, salt);
            status = ps.executeUpdate();
            con.close();
            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        System.out.println(status);
        return status;
        
        
    }
    public static boolean validate(String name,String pass){  
        boolean status=false;  
        try{  
            Connection con = null;
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            con = DriverManager.getConnection("jdbc:derby:D:\\Users\\2733019\\MyDB;create=true");
            PreparedStatement ps=con.prepareStatement( "select * from customer where Username=?"); 
            ps.setString(1,name);  
            ResultSet rs=ps.executeQuery();
            if(rs.next()) {
                String storedHash=rs.getString("Password");
                String salt=rs.getString("Salted");
                String hashedPass=SecurityAuthenticator.hashPassword(pass, salt);
                status=hashedPass.equals(storedHash);
            }
            rs.close();
            ps.close();
            con.close();
        }catch(Exception e){System.out.println(e);}  
        return status;  
        }
	
}
