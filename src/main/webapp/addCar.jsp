<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

  <title>Add Car</title>

  <style>

    body {

      font-family: Arial, sans-serif;

      background-color: #f4f4f9;

      margin: 0;

      padding: 20px;

    }

    .form-container {

      width: 500px;

      margin: 0 auto;

      background: #fff;

      padding: 20px;

      border-radius: 8px;

      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);

    }
    .icons{
    position:relative;
    }
    
    .home1{
    position:absolute;
    left:-10px;
    top:5px;

    }
    .pipe{
    position:absolute;
    left:15px;
    font-size:24px;
    }

.home2{
position:absolute;
left:25px;
 top:5px;}

    h1 {

      text-align: center;

      color: #333;

    }

    label {

      display: block;

      margin-top: 10px;

      font-weight: bold;

    }

    input[type="text"], input[type="number"], input[type="radio"], select {

      width: calc(100% - 22px);

      padding: 10px;

      margin-top: 5px;

      border: 1px solid #ccc;

      border-radius: 4px;

    }

    input[type="submit"] {

      width: 100%;

      background-color: #4CAF50;

      color: white;

      padding: 10px;

      border: none;

      border-radius: 4px;

      cursor: pointer;

      margin-top: 20px;

    }

    input[type="submit"]:hover {

      background-color: #45a049;

    }
    
    
  .error {

   color: red;

   font-size: 12px;

   display: block;

   margin-top: 4px;

  }

  </style>

</head>

<body>

  <div class="form-container">
   <div class="icons">
   <a href="AdminFetch"><img class="home1" height="20px" width="20px" src="backward-solid.svg"></a>  <span class="pipe">    |   </span>
   <a href="index.jsp"><img class="home2" height="20px" width="20px" src="logout-btn.svg"></a>
 
  </div>

    <h1 style="color:#4CAF50" >Add Car</h1>


<form action="AddCar" method="post" onsubmit="return validateForm()">



  <!-- Car Name -->

  <label for="name">Car Name:</label>

  <input type="text" id="name" name="name" placeholder="Enter car name" required>

  <span id="nameError" class="error"></span>



  <!-- Car Number -->

  <label for="number">Car Number:</label>
  <input type="text" id="number" name="number" placeholder="Enter car number (e.g., AB12CD3456)" required>
  <span id="numberError" class="error"></span>



  <!-- Car Rating -->

  <label for="rating">Car Rating:</label>
  <input type="number" id="rating" name="rating" step="0.1" min="0" max="5" placeholder="Enter car rating (0-5)" required>
  <span id="ratingError" class="error"></span>
<!-- Seater (Dropdown) -->

  <label for="seater">Number of Seats:</label>
  <select id="seater" name="seater" required>
   <option value="select">--select--</option>
   <option value="4">4</option>
   <option value="5">5</option>
   <option value="7">7</option>
  </select>
  <span id="seaterError" class="error"></span>



  <!-- Price -->

  <label for="price">Price per Day:</label>
  <input type="number" id="price" name="price" placeholder="Enter price" required>
  <span id="priceError" class="error"></span>



  <!-- Car Type -->

  <label for="carType">Car Type:</label>
  <select id="carType" name="carType" required>
   <option value="select">--select--</option>
   <option value="Sedan">Sedan</option>
   <option value="SUV">SUV</option>
   <option value="Hatchback">Hatchback</option>
   <option value="Truck">Truck</option>
   <option value="Other">Other</option>
  </select>
  <span id="carTypeError" class="error"></span>



  <!-- Transmission -->

  <label for="transmission">Transmission:</label>
  <select id="transmission" name="transmission" required>
   <option value="select">--select--</option>
   <option value="Automatic">Automatic</option>
   <option value="Manual">Manual</option>
  </select>
  <span id="transmissionError" class="error"></span>



  <!-- Fuel Type -->

  <label for="fuelType">Fuel Type:</label>
  <select id="fuelType" name="fuelType" required>
   <option value="select">--select--</option>
   <option value="Petrol">Petrol</option>
   <option value="Diesel">Diesel</option>
   <option value="Electric">Electric</option>
   <option value="Hybrid">Hybrid</option>
  </select>
  <span id="fuelTypeError" class="error"></span>



  <!-- Model Year -->

  <label for="modelYear">Model Year:</label>

  <input type="number" id="modelYear" name="modelYear" placeholder="Enter model year" min="1900" max="2024" required>

  <span id="modelYearError" class="error"></span>



  <!-- Submit Button -->

  <input type="submit" value="Add Car">



</form>





<script>

function validateForm() {

  let isValid = true;



  // Clear previous errors

  document.querySelectorAll(".error").forEach((span) => (span.innerText = ""));



  // Car Name validation

  const carName = document.getElementById("name").value;
  const carNamePattern = /^[a-zA-Z ]+$/;

  if (carName.trim() === "") {

   document.getElementById("nameError").innerText = "Car Name cannot be empty.";

   isValid = false;

  }
  

  if (!carNamePattern.test(carName)) {

   document.getElementById("nameError").innerText = "Car Name must be in Alphabatical order. (e.g., Tata Nexon).";

   isValid = false;

  }


  // Car Number validation

  const carNumber = document.getElementById("number").value;

  const carNumberPattern = /^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$/;

  if (!carNumberPattern.test(carNumber)) {

   document.getElementById("numberError").innerText = "Car Number must follow the pattern AA00AA0000 (e.g., AB12CD3456).";

   isValid = false;

  }



  // Car Rating validation

  const rating = document.getElementById("rating").value;

  if (rating < 0 || rating > 5) {

   document.getElementById("ratingError").innerText = "Car Rating must be between 0 and 5.";

   isValid = false;

  }



  // Seater validation

  const seater = document.getElementById("seater").value;

  if (seater < 2 || seater > 10) {

   document.getElementById("seaterError").innerText = "Select a valid number of seats.";

   isValid = false;

  }



  // Price validation

  const price = document.getElementById("price").value;

  if (price <= 0) {

   document.getElementById("priceError").innerText = "Price per Day should be a positive number.";

   isValid = false;

  }



  // Model Year validation

  const modelYear = document.getElementById("modelYear").value;

  if (modelYear < 2000 || modelYear > 2024) {

   document.getElementById("modelYearError").innerText = "Model Year must be between 2000 and 2024.";

   isValid = false;

  }



  return isValid;

}

</script>

  </div>

</body>

</html>
