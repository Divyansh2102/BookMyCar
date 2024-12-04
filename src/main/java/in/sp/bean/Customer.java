package in.sp.bean;

public class Customer {
	
	String Firstname;
	String Lastname;
	String ContactDetails;
	String Residence;
	String UserName;
	String Password;
//	public Customer(String Firstname, String Lastname, String ContactDetails,String Residence,String UserName, String Password) {
//		
//		this.Firstname = Firstname;
//		this.Lastname = Lastname;
//		this.ContactDetails = ContactDetails;
//		this.Residence = Residence;
//		this.UserName = UserName;
//		this.Password = Password;
//	}
	public String getFirstname() {
		return Firstname;
	}
	public void setFirstname(String Firstname) {
		this.Firstname = Firstname;
	}
	public String getLastname() {
		return Lastname;
	}
	public void setLastName(String Lastname) {
		this.Lastname = Lastname;
	}
	
	public String getContactDetails() {
		return ContactDetails;
	}
	public void setContactDetails(String ContactDetails) {
		this.ContactDetails = ContactDetails;
	}
	
	public String getResidence() {
		return Residence;
	}
	public void setResidence(String Residence) {
		this.Residence = Residence;
	}
	
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String UserName) {
		this.UserName = UserName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	
}
