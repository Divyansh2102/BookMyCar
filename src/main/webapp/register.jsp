<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/loginRegister.css">
</head>
<body>
  <div class="container">
    <div class="login-card">
      <a href="index.jsp"><img class="home" height="25px" src="home.png"></a>
      <h2>Create Your Account</h2>
      <form action="regForm" method="post" onsubmit="return validateForm()">
        <div class="input-group">
         <label for="first-name">First Name</label>
          <input type="text" id="first-name" name="Firstname1" required>
        </div>
        <div class="input-group">
          <label for="last-name">Last Name</label>
          <input type="text" id="last-name" name="Lastname1" required>

        </div>

        <div class="input-group">

          <label for="contact">Contact Details</label>

          <input type="tel" id="contact" name="Contactdetails1" required>

        </div>

        <div class="input-group">

          <label for="residence">Residence</label>

          <input type="text" id="residence" name="Residence1" required>

        </div>

        <div class="input-group">

          <label for="username">Username</label>

          <input type="text" id="username" name="Username1" required>

        </div>

        <div class="input-group">

          <label for="password">Password</label>

          <input type="password" id="password" name="pass1" required>

        </div>

        <button type="submit" class="login-btn">Sign Up</button>

      </form>

      <div class="footer-links">

        <a href="login.jsp">Already have an account? Log In</a>

      </div>

    </div>

  </div>
  
  <script>
  
  
  
  function validateForm() {

	    // Get form values

	    const firstName = document.getElementById("first-name").value.trim();

	    const lastName = document.getElementById("last-name").value.trim();

	    const contact = document.getElementById("contact").value.trim();

	    const residence = document.getElementById("residence").value.trim();

	    const username = document.getElementById("username").value.trim();

	    const password = document.getElementById("password").value.trim();



	    // Validate First Name

	    const nameRegex = /^[A-Za-z]+$/;

	    if (!nameRegex.test(firstName)) {

	      alert("First name must contain only letters.");

	      return false;

	    }



	    // Validate Last Name

	    if (!nameRegex.test(lastName)) {

	      alert("Last name must contain only letters.");

	      return false;

	    }



	    // Validate Contact

	    const contactRegex = /^[0-9]{10}$/;

	    if (!contactRegex.test(contact)) {

	      alert("Contact must be a valid 10-digit number.");

	      return false;

	    }



	    // Validate Residence

	    if (residence === "") {

	      alert("Residence cannot be empty.");

	      return false;

	    }



	    // Validate Username

	    const usernameRegex = /^[A-Za-z0-9]{5,15}$/;

	    if (!usernameRegex.test(username)) {

	      alert("Username must be 5-15 characters long and alphanumeric.");

	      return false;

	    }



	    // Validate Password

	    const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;

	    if (!passwordRegex.test(password)) {

	      alert(

	        "Password must be at least 8 characters long, include one uppercase letter, one number, and one special character."

	      );

	      return false;

	    }



	    return true; // If all validations pass

	  }

	</script>



























  
  
 </script>

</body>

</html>