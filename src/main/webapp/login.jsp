<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>

  <style>
* {

  margin: 0;

  padding: 0;

  box-sizing: border-box;

}


body {
      margin: 0;
      padding: 0;
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    body::before {
      content: "";
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: url('carr.png') no-repeat center center fixed;
      filter: blur(8px);
      background-size: cover;
      opacity: 0.3;
      z-index: -1; 
    }




.container {

  display: flex;

  align-items: center;

  justify-content: center;

  width: 100%;
position:relative;

}

.home{
  position:absolute;
top:10px;
left:485px;


}

.login-card {

  background: rgba(255, 255, 255, 0.95);

  padding: 2rem;

  border-radius: 15px;

  width: 400px;

  box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);

  text-align: center;

}



.logo {

  width: 80px;

  margin-bottom: 10px;

}



h2 {

  color: #333;

  margin-bottom: 10px;

}



p {

  color: #666;

  margin-bottom: 1.5rem;

}



/* Form styling */

.input-group {

  margin-bottom: 15px;

  text-align: left;

}



label {

  color: #333;

  font-weight: bold;

  display: block;

  margin-bottom: 5px;

}



input {

  width: 100%;

  padding: 0.8rem;

  border-radius: 8px;

  border: 1px solid #ccc;

  font-size: 1rem;

  transition: border-color 0.3s;

}



input:focus {

  outline: none;

  border-color: #10b981;

  box-shadow: 0px 0px 5px rgba(79, 157, 166, 0.3);

}





.login-btn {

  width: 100%;

  padding: 0.8rem;

  border: none;

  border-radius: 8px;

  background-color: #10b981;

  color: #fff;

  font-size: 1rem;

  cursor: pointer;

  transition: background-color 0.3s, box-shadow 0.3s;

}



.login-btn:hover {

  background-color: #3F7F80;

  box-shadow: 0px 8px 20px rgba(63, 127, 128, 0.3);

}



/* Footer links */

.footer-links {

  margin-top: 1rem;

  font-size: 0.9rem;

}



.footer-links a {

  color: #10b981;

  text-decoration: none;

  margin: 0 5px;

  transition: color 0.3s;

}



.footer-links a:hover {

  color: #333;

}

   </style>

</head>

<body>

  <div class="container">

    <div class="login-card">
      <a href="index.jsp"><img class="home" height="25px" src="home.png"></a>
      <h2>Welcome</h2>
      
      <form  action="Login" method="post">
        <div class="input-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="username" required>
        </div>
        <div class="input-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="userpass" required>
        </div>
        <button type="submit" class="login-btn">Login</button>

      </form>

      <div class="footer-links">
        <a href="register.jsp">New User? Sign Up</a>

      </div>

    </div>

  </div>

</body>





</html>

