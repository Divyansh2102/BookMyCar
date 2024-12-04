package in.sp.bean;



public class Booking {

    private String carName;

    private String fullname;

    private String phone;
    private String number;

    private String pickupDate;

    private String returnDate;

    private String cardNumber;

    private String expiryDate;

    private String cvv;



    // Getter and Setter methods



    public String getCarName() {

        return carName;

    }



    public void setCarName(String carName) {

        this.carName = carName;

    }



    public String getFullname() {

        return fullname;

    }
    public void setNumber(String number) {
    	this.number=number;
    }
    public String getNumber() {
    	return number;
    }


    public void setFullname(String fullname) {

        this.fullname = fullname;

    }



    public String getPhone() {

        return phone;

    }



    public void setPhone(String phone) {

        this.phone = phone;

    }



    public String getPickupDate() {

        return pickupDate;

    }
   public void setCarNumber(String number) {
	   this.number=number;
			
   }


    public void setPickupDate(String pickupDate) {

        this.pickupDate = pickupDate;

    }



    public String getReturnDate() {

        return returnDate;

    }



    public void setReturnDate(String returnDate) {

        this.returnDate = returnDate;

    }



    public String getCardNumber() {

        return cardNumber;

    }



    public void setCardNumber(String cardNumber) {

        this.cardNumber = cardNumber;

    }



    public String getExpiryDate() {

        return expiryDate;

    }

    public String getCarNumber() {
    	return number;
    }


    public void setExpiryDate(String expiryDate) {

        this.expiryDate = expiryDate;

    }



    public String getCvv() {

        return cvv;

    }



    public void setCvv(String cvv) {

        this.cvv = cvv;

    }

}