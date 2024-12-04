<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

 <head>

 <title>

  Contact Customer Support

 </title>

 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>

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

    .container {

      background-color: #ffffff;

      padding: 20px;

      border-radius: 8px;

      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

      width: 400px;

      text-align: center;
      position:relative;

    }
.home{
  position:absolute;
top:20px;
left:15px;


}
    .logo {

      margin-bottom: 20px;

    }

    .logo img {

      width: 50px;

    }

    .logo h1 {

      display: inline;

      font-size: 24px;

      color: #00b300;

      margin-left: 10px;

    }

    .header {

      background-color: #e6f9e6;

      padding: 10px;

      border-radius: 8px;

      margin-bottom: 20px;

    }

    .header h2 {

      margin: 0;

      font-size: 18px;

      color: #333333;

    }

    .form-group {

      margin-bottom: 15px;

      text-align: left;

    }

    .form-group label {

      display: block;

      margin-bottom: 5px;

      font-size: 14px;

      color: #333333;

    }

    .form-group input, .form-group select {

      width: 95%;

      padding: 10px;

      border: 1px solid #cccccc;

      border-radius: 4px;

      font-size: 14px;

    }

    .form-group input::placeholder, .form-group select::placeholder {

      color: #cccccc;

    }

    .btn {

      background-color:#10b981;

      color: #ffffff;

      padding: 10px 20px;

      border: none;

      border-radius: 4px;

      font-size: 16px;

      cursor: pointer;

      width: 100%;

    }

    .btn:hover {

      background-color: #009900;

    }

 </style>

 </head>

 <body>

 <div class="container">
<a href="index.jsp"><img class="home" height="25px" src="home.png"></a>
  <div class="logo">

 <h1>

   BookMyCar

  </h1>

  </div>

  <div class="header">

  <h2>

   Contact Customer Support

  </h2>

  </div>

  <form action="index.jsp">

  <div class="form-group">

   <label for="first-name">

   First Name

   </label>

   <input id="first-name" placeholder="First Name" type="text"/>

  </div>

  <div class="form-group">

   <label for="last-name">

   Last Name

   </label>

   <input id="last-name" placeholder="Last Name" type="text"/>

  </div>

  <div class="form-group">

   <label for="email">

   Email Address

   </label>

   <input id="email" placeholder="Email Address" type="email"/>

  </div>

  <div class="form-group">

   <label for="phone">

   Phone Number :

   </label>

   <input id="phone" placeholder="Phone Number" type="tel"/>

  </div>

 <div class="form-group">

   <label for="phone">

   Write your Issue here : 

   </label>

   <input id="textarea" placeholder="Write your issue" type="textarea"/>

  </div>


  <button class="btn" type="submit">

   Contact Us

  </button>

  </form>

 </div>

 </body>

</html>





