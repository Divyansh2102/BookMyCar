<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="css/confirmation.css">
</head>
<body>
    <div class="confirmation-container">
        <h1>Booking Confirmation</h1>
        <p>Thank you, <strong>${fullname}</strong>, for booking with us!</p>
        <div class="booking-details">
            <h2>Booking Details</h2>
            <p><strong>Car Details :</strong> ${carName}</p>
            <p><strong>Phone Number :</strong> ${phone}</p>
            <p><strong>Pick-up Date :</strong> ${pickupDate}</p>
            <p><strong>Return Date :</strong> ${returnDate}</p>
            <p><strong>Payment Method :</strong> Card</p>
        </div>
        <form action="FetchCarsServlet" method="post">
            <button  type="submit" class="btn">Return to Home</button>
        </form>
       
    </div>
</body>
</html>
