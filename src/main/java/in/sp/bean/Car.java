package in.sp.bean;

public class Car {
   String name;
   String number;
   double rating;
   int seater;
   int price;
   String carType;
   String transmission;
   String fuelType;
   int modelYear;
   public Car() {
	   
   }
   public Car(String name2, String number2, double rating2, int seater2, int price2, String carType2, String transmission2,
		String fuelType2, int modelYear2) {
	   this.name=name2;
	   this.number=number2;
	   this.rating=rating2;
	   this.seater=seater2;
	   this.price=price2;
	   this.carType=carType2;
	   this.transmission=transmission2;
	   this.fuelType=fuelType2;
	   this.modelYear=modelYear2;
	// TODO Auto-generated constructor stub
}
public String getName() {
	    return name;
	  }
   public void setName(String name) {
	    this.name = name;
	  }
   
	  public String getNumber() {
	    return number;
	  }
	  
	  public void setNumber(String number) {
	    this.number = number;
	  }

	  public double getRating() {
	    return rating;
	  }

	  public void setRating(double rating) {
	    this.rating = rating;
	  }

	  public int getSeater() {
	    return seater;
	  }

	  public void setSeater(int seater) {
	    this.seater = seater;
	  }

	  public int getPrice() {
	    return price;
	  }

	  public void setPrice(int price) {
	    this.price = price;
	  }

	  public String getCarType() {
	    return carType;

	  }

	  public void setCarType(String carType) {
	    this.carType = carType;
	  }

	  public String getTransmission() {
		  return transmission;
	  }

	  public void setTransmission(String transmission) {
	    this.transmission = transmission;
	  }

	  public String getFuelType() {
	    return fuelType;
	  }

	  public void setFuelType(String fuelType) {
	    this.fuelType = fuelType;
	  }

	  public int getModelYear() {
	    return modelYear;
	  }

	  public void setModelYear(int modelYear) {
	    this.modelYear = modelYear;
	  }
}  
