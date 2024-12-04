<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

     <a href="BookingsFetch">View Bookings</a>

    <a href="addCar.jsp">Add Car</a>

    <a href="index.jsp">Logout</a>

  </nav>
<h2 id="c-list">Customer List</h2>

    <table>

      <thead>

        <tr>

          <th>First Name</th>

          <th>Last Name</th>

          <th>Number</th>

          <th>Residence</th>

          <th>Username</th>


          

        </tr>

      </thead>

      <tbody>

        <%

          // Retrieve car data from request attribute

          List<Customer> custList = (List<Customer>) request.getAttribute("custList");

        if (custList != null && !custList.isEmpty()) {

          for (Customer car : custList) {

        %>

        <tr>

          <td><%= car.getFirstname() %></td>
          
          <td><%= car.getLastname() %></td>

          <td><%= car.getContactDetails() %></td>

          <td><%= car.getResidence() %></td>

          <td><%= car.getUserName() %></td>


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