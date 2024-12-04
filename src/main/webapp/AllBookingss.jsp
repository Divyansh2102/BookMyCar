<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Booking" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookings</title>
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

  <header>

    <h1>Admin Dashboard</h1>

  </header>

  <nav>

    <a href="AdminFetch">View Cars</a>

     <a href="CarFetch">View Users</a>

    <a href="addCar.jsp">Add Car</a>

    <a href="index.jsp">Logout</a>

  </nav>
  
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