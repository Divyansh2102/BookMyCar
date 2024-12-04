<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
     <script src="https://cdn.tailwindcss.com"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
     <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/bookingstyles.css">
   <style>
      span{
    position:absolute;
    left:450px;
     top:130px;
    font-size:24px;
    }
        .icons{
    position:relative;
    }
    
    .home1{
    position:absolute;
    left:425px;
    top:140px;

    }

.home2{
position:absolute;
left:460px;
 top:140px;}
   </style>
</head>
<body class = "bg-gray-100 text-gray-800">
    <!-- Header Section -->
    <header class= "bg-[#3e5172] text-white p-4 flex justify-between items-center">
<div class="flex items-center">
  <div class="bg-green-500 p-2 rounded-full">
   <i class="fas fa-car text-white">
   </i>
  </div>

  <div class="ml-2">
   <h1 class="text-lg font-bold">
   BookMyCar
   </h1>
   <p class="text-sm">
   Comfortable rides at your fare
   </p>
  </div>
  </div>
    </header>

    <!-- Booking Form Section -->
    <div class="booking-container">
    <form action="FetchCarsServlet" method="post">
       <button type="submit"> <img class="home1" height="20px" width="20px" src="backward-solid.svg"> <span>    |   </span>
    </button>
    </form>
 
   <a href="index.jsp"><img class="home2" height="20px" width="20px" src="logout-btn.svg"></a>
    <h1 ><strong>Book Your Car </strong></h1>
        <form  id="card-form" action="bookingServlet" method="POST" class="booking-form">

             <label for="phone">Car Name : </label>
            <input type="text" id="fullname" name="name" value=${name}>
           
            <label for="fullname">Car Plate Number :</label>
             <input type="text" id="fullname" name="number" value=${number} >

            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" name="fullname" required>

            <label for="phone">Phone Number</label>
            <input type="text" id="phone" name="phone" required>

            <label for="pickupDate">Pick-up Date</label>
            <input type="date" id="pickupDate" name="pickupDate" required>

            <label for="returnDate">Return Date</label>
            <input type="date" id="returnDate" name="returnDate" required>
            
            
            <label for="cardNumber" class="block mt-3">Card Number</label>
            <input type="text" id="cardNumber" name="card_number" required class="border rounded w-full px-3 py-2">

            <label for="expiry" class="block mt-3">Expiry Date</label>
            <input type="month"  id="expiry-date" name="expiry_date" min="2024-12-26" placeholder="MM/YY" required class="border rounded w-full px-3 py-2">

            <label for="cvv" class="block mt-3">CVV</label>
            <input type="password" id="cvv" name="cvv" required class="border rounded w-full px-3 py-2">

            <button type="submit" class="bg-green-500 text-white w-full py-2 mt-4 rounded">
                Pay and Confirm
            </button>
        </form>
    </div>
    
    
      <script>
      
      document.getElementById('card-form').addEventListener('submit', function (event) {

          // Prevent the form from being submitted

          event.preventDefault();



          // Get the expiry date input value

          const expiryDate = document.getElementById('expiry-date').value; // Format: YYYY-MM

          const [year, month] = expiryDate.split('-').map(Number);

          const minYear = 2024;

          const minMonth = 11;



          // Validate the expiry date

          if (year < minYear || (year === minYear && month < minMonth)) {

              alert('Your card is already expired.');

          } else {

             this.submit();
              // Form can be submitted here if needed

              // event.target.submit();

          }

      });     
  
        const startDateInput = document.getElementById("pickupDate");

        const endDateInput = document.getElementById("returnDate");

        document.getElementById('pickupDate').min = new Date().toISOString().split('T')[0];
        // Update end-date's min attribute based on start-date

        startDateInput.addEventListener("change", () => {

            endDateInput.min = startDateInput.value;
           

        });

    </script>
</body>
</html>
