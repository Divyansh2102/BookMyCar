<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Booking" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Bookings</title>
 <script src="https://cdn.tailwindcss.com"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>

<style>

    body {

      font-family: Arial, sans-serif;

      margin: 0;

      padding: 0;

      background-color: #f4f4f4;

    }
 h2{
 margin-left:10px;]
 }
    header {

      background-color: #333;

      color: white;

      padding: 15px 20px;

      text-align: center;

    }

    nav {

      background-color: #444;

      color: white;

      overflow: hidden;

      display: flex;

      justify-content: space-around;

      padding: 10px;

    }

    nav a {

      color: white;

      text-decoration: none;

      padding: 8px 15px;

      transition: background-color 0.3s;

    }

    nav a:hover {

      background-color: #575757;

    }

    .container {

      padding: 20px;

    }

    .chart-container {

      width: 45%;

      margin: 20px;

      display: inline-block;

    }

    table {

      width: 100%;

      border-collapse: collapse;

      margin-top: 20px;

    }

    th, td {

      border: 1px solid #ddd;

      padding: 10px;

      text-align: center;

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

    .btn {

      padding: 8px 12px;

      margin: 5px;

      text-decoration: none;

      color: white;

      border-radius: 5px;

      cursor: pointer;

    }

    .btn-add {

      background-color: #4CAF50;

    }

    .btn-delete {

      background-color: #f44336;

    }

    .btn-edit {

      background-color: #2196F3;

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
   <form class="relative" action="EditUserServlet" method="post">
   <input type="hidden" class="mt-2" name="username" value=${username} />
   <button type="submit" class="absolute bg-gray-700 top-[-21px] p-3 rounded-full"><i class="fas fa-regular fa-user"></i></button>
   </form>


   <a href="index.jsp"><button class="bg-gray-700  ml-8 px-4 py-2 rounded">

    Log Out

    </button></a>

 
  </div>

  </div>

 </header>



  
   <table>

      <thead>

        <tr>

          <th>Car Details</th>

          <th>Full Name</th>

          <th>Mobile Number</th>

          <th>Pick Up Date</th>

          <th>Return Date</th>

            <th> Card Number</th>

          

        </tr>

      </thead>

      <tbody>

        <%

          // Retrieve car data from request attribute

          List<Booking> bookingList = (List<Booking>) request.getAttribute("bookList");

        if (bookingList != null && !bookingList.isEmpty()) {

          for (Booking b : bookingList) {

        %>

        <tr>

          <td><%= b.getCarName() %></td>
          
          <td><%= b.getFullname() %></td>

          <td><%= b.getPhone() %></td>

          <td><%= b.getPickupDate() %></td>

          <td><%= b.getReturnDate() %></td>
          <td><%= b.getCardNumber() %></td>
         
          
        </tr>

        <%

            }

          } else {

        %>

        <tr>

          <td colspan="10">No cars found</td>

        </tr>

        <%

          }

        %>

      </tbody>

    </table>

</body>
</html>