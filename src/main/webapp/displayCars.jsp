<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Car" %>

<!DOCTYPE html>

<html>

<head>

  <title>Car List</title>

  <style>

    table {

      width: 80%;

      margin: 20px auto;

      border-collapse: collapse;

    }

    th, td {

      border: 1px solid #ddd;

      padding: 10px;

      text-align: left;

    }

    th {

      background-color: #4CAF50;

      color: white;

    }

    tr:nth-child(even) {

      background-color: #f2f2f2;

    }

    tr:hover {

      background-color: #ddd;

    }

    body {

      font-family: Arial, sans-serif;

    }

  </style>

</head>

<body>

  <h1 style="text-align:center;">Car List</h1>

  <table>

    <thead>

      <tr>

        <th>Name</th>

        <th>Number</th>

        <th>Rating</th>

        <th>Seater</th>

        <th>Price</th>

        <th>Car Type</th>

        <th>Transmission</th>

        <th>Fuel Type</th>

        <th>Model Year</th>

      </tr>

    </thead>

    <tbody>

      <%

        // Retrieve the car list from the request

        List<Car> carList = (List<Car>) request.getAttribute("carList");



        if (carList != null && !carList.isEmpty()) {

          for (Car car : carList) {

      %>
      
      
      
    
    
    
    
    
    
    
      <div class="bg-white p-4 h-[300px] rounded shadow flex">

   <img alt="Car Interior" class="w-1/2 rounded" height="100" src="https://storage.googleapis.com/a1aa/image/7GQHpsaV2jqUKBrDMOddO2OzsFw0G7DNp6sXaQXpbpiFNC8E.jpg" width="150"/>

   <div class="ml-14 w-1/2">

    <div class="flex justify-between items-center">

    <span class="bg-green-500 text-white px-2 py-1 rounded">
<i class="fas fa-solid fa-star" style="color: #FFD43B;"></i>
     4.5 | 114 Trips

    </span>

    </div>

    <h3 class="text-xl font-bold mt-2 mb-2"><%= car.getName() %> </h3>
    
    
     <div class="flex gap-2 items-center mb-2 ">
        <i class="fas fa-solid fa-check"></i>
        <p class="text-gray-600 "> <%= car.getSeater() %> Seats</p>
     </div>
   
     <div class="flex gap-2 items-center mb-2 ">
        <i class="fas fa-solid fa-check"></i>
        <p class="text-gray-600 "><td><%= car.getPrice() %></td></p>
     </div>
     
     <div class="flex gap-2 items-center mb-2">
        <i class="fas fa-solid fa-check"></i>
        <p class="text-gray-600 "> Rs 999 excluding fees</p>
     </div>


     <div class="flex gap-2 items-center mb-2 ">
        <i class="fas fa-solid fa-check"></i>
        <p class="text-gray-600 "> 3.7 km away</p>
     </div>


    <button class="bg-green-500 text-white px-4 py-2 rounded mt-2">

    Book It

    </button>

   </div>

   </div>
   
     
      
      
      
      
      
      
      
      
      
      
      
      

      <tr>

        <td><%= car.getName() %></td>

        <td><%= car.getNumber() %></td>


        <td><%= car.getRating() %></td>

        <td><%= car.getSeater() %></td>

        <td><%= car.getPrice() %></td>

        <td><%= car.getCarType() %></td>

        <td><%= car.getTransmission() %></td>

        <td><%= car.getFuelType() %></td>

        <td><%= car.getModelYear() %></td>

      </tr>

      <%

          }

        } else {

      %>

      <tr>

        <td colspan="9" style="text-align:center;">No cars found</td>

      </tr>

      <%

        }

      %>

    </tbody>

  </table>

</body>

</html>

