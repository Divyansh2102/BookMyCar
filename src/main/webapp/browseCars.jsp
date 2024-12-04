<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<%@ page import="in.sp.bean.Car" %>

<html>

<head>

  <script src="https://cdn.tailwindcss.com"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <style>
  .box{
  border:0.1px solid black ;
  width:470px;
  
  }


/* CSS */
.button {
  background: #10b981;
  border: 1px solid #10b981;
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: nunito,roboto,proxima-nova,"proxima nova",sans-serif;
  font-size: 16px;
  font-weight: 800;
  line-height: 16px;
  min-height: 40px;
  outline: 0;
  padding: 12px 14px;
  text-align: center;
  text-rendering: geometricprecision;
  text-transform: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
}

.button:hover,
.button:active {
  background-color: initial;
  background-position: 0 0;
  color: #10b981;
}

.button:active {
  opacity: .5;
}

  
  </style>

</head>

<body>

  <header class="bg-[#3e5172] text-white p-4 flex justify-between items-center">

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

   Outstation rides at your fare

   </p>

  </div>

  </div>

  <div class="flex items-center space-x-4">

  

  <div class="flex items-center space-x-2">

   <button class="bg-gray-700 p-2 rounded-full">

   <i class="fas fa-globe">

   </i>

   </button>

   <button class="bg-gray-700 p-2 rounded-full">

   En

   </button>
   <form class="relative" action="CustomerViewBookings" method="post">
   <input type="hidden" class="mt-2" name="username" value=${username} />
   <button type="submit" class="absolute bg-gray-700 top-[-12px] p-3 rounded-full"><i class="fas fa-regular fa-user"></i></button>
   </form>


   <a href="index.jsp"><button class="bg-gray-700  ml-8 px-4 py-2 rounded">

    Log Out

    </button></a>

 
  </div>

  </div>

 </header>



  <div class="flex">

    <!-- Filters Section -->

    <div class="w-1/4 p-4 bg-gray-100">

      <h2 class="font-bold text-green-600">Filters</h2>

      <form action="UserServletDashboard" method="get">

        <div class="mb-4">

          <h3>Price Range</h3>

          <input type="number" name="minPrice" placeholder="Min Price" class="border p-2 w-full">

          <input type="number" name="maxPrice" placeholder="Max Price" class="border p-2 w-full mt-2">

        </div>

        <div class="mb-4">

          <h3>Seats</h3>

          <label><input type="checkbox" name="seater" value="4"> 4 Seats</label><br>

          <label><input type="checkbox" name="seater" value="5"> 5 Seats</label><br>

          <label><input type="checkbox" name="seater" value="7"> 7 Seats</label><br>

        </div>

        <div class="mb-4">

          <h3>Transmission</h3>

          <label><input type="checkbox" name="transmission" value="Manual"> Manual</label><br>

          <label><input type="checkbox" name="transmission" value="Automatic"> Automatic</label>

        </div>

        <div class="mb-4">

          <h3>Fuel Type</h3>

          <label><input type="checkbox" name="fuelType" value="Petrol"> Petrol</label><br>

          <label><input type="checkbox" name="fuelType" value="Diesel"> Diesel</label><br>

          <label><input type="checkbox" name="fuelType" value="Electric"> Electric</label>

        </div>

        <div class="mb-4">

          <h3>Car Type</h3>

          <label><input type="checkbox" name="carType" value="SUV"> SUV</label><br>

          <label><input type="checkbox" name="carType" value="Sedan"> Sedan</label><br>

          <label><input type="checkbox" name="carType" value="Hatchback"> Hatchback</label>

        </div>

        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded">Apply</button>

      </form>

    </div>






  <div class="w-3/4 ml-4  items-center mb-4">



   <h2 class="text-gray-700 mt-4">

   Showing  ${cnt}  of cars to  ${username}

   </h2>
      <div class="grid grid-cols-2 gap-4 mt-4 ">

        <% 

          List<Car> carList = (List<Car>) request.getAttribute("carList");

          if (carList != null && !carList.isEmpty()) {

            for (Car car : carList) { 

        %>

        <div class="p-4 bg-white rounded shadow box flex">
        <div>
            <img src="carr.avif" width="250px" height="250px"/>
        </div>
        <div>
        <h3 class="text-lg font-bold"><%= car.getName() %></h3>

          <p class="font-bold">Seats: <%= car.getSeater() %></p>

          <p class="font-bold">Price: Rs. <%= car.getPrice() %></p>

          <p class="font-bold">Transmission: <%= car.getTransmission() %></p>

          <p class="font-bold">Fuel Type: <%= car.getFuelType() %></p>

          <p class="font-bold">Car Type: <%= car.getCarType() %></p>

           <form action="PassingValue" method="GET">
              <input type="hidden" name="name" value="<%= car.getName()     %>" />
              <input type="hidden" name="number" value=" <%= car.getNumber() %> "/>
              <button class="button" type="submit">Book Now</button>
           </form>
        
        </div>

          
           
        </div>

        <% 

            }

          } else { 

        %>

        <p>No cars found.</p>

        <% } %>

      </div>

    </div>

  </div>

</body>

</html>