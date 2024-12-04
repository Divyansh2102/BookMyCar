<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Customer" %>
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Edit Your Account</title>

  <style>

    body {

      font-family: Arial, sans-serif;

      background-color: #f9f9f9;

      display: flex;

      justify-content: center;

      align-items: center;

      height: 100vh;

      margin: 0;

    }

    .form-container {

      background-color: white;

      padding: 20px;

      border-radius: 10px;

      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);

      width: 300px;

    }

    .form-container h2 {

      margin-bottom: 20px;

      text-align: center;

    }

    .form-group {

      margin-bottom: 15px;

    }

    .form-group label {

      display: block;

      font-size: 14px;

      margin-bottom: 5px;

    }

    .form-group input {

      width: 100%;

      padding: 8px;

      border: 1px solid #ccc;

      border-radius: 5px;

    }

    .form-group input:focus {

      border-color: #007bff;

      outline: none;

    }

    .btn {

      width: 100%;

      padding: 10px;

      background-color: #28a745;

      color: white;

      border: none;

      border-radius: 5px;

      cursor: pointer;

    }

    .btn:hover {

      background-color: #218838;

    }

    .form-footer {

      text-align: center;

      margin-top: 10px;

    }

    .form-footer a {

      text-decoration: none;

      color: #007bff;

    }

  </style>

</head>

<body>

  <div class="form-container">

    <h2>Edit Your Account</h2>

    <form action="UpdateUserDetails" method="post">
     <%

          // Retrieve car data from request attribute

          List<Customer> custList = (List<Customer>) request.getAttribute("custList");

        if (custList != null && !custList.isEmpty()) {

          for (Customer car : custList) {

        %>

      <div class="form-group">

        <label for="firstName">First Name</label>

        <input type="text" id="firstName" name="firstName" value=<%= car.getFirstname() %> required>

      </div>

      <div class="form-group">

        <label for="lastName">Last Name</label>

        <input type="text" id="lastName" name="lastName" value=<%= car.getLastname() %> required>

      </div>

      <div class="form-group">

        <label for="contactDetails">Contact Details</label>

        <input type="text" id="contactDetails" name="contactDetails" value=<%= car.getContactDetails() %> required>

      </div>

      <div class="form-group">

        <label for="residence">Residence</label>

        <input type="text" id="residence" name="residence" value=<%= car.getResidence() %> required>

      </div>

      <div class="form-group">

        <label for="username">Username</label>

        <input type="text" id="username" name="username" value=${username}  required readonly>

      </div>

      <div class="form-group">

        <label for="password">Password</label>

        <input type="password" id="password" name="password" placeholder="*********" disabled="disabled">

      </div>

      <button type="submit" class="btn">Update</button>

    </form>

    <div class="form-footer">
    <form action="FetchCarsServlet" method="post">
    <button class="btn"   type="submit">Cancel</button>
    
    </form>

    </div>
  </div>
        <%

            }

          } else {

        %>


          <p>No Details found</p>

        <%

          }

        %>

</body>

</html>