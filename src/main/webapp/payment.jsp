<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/paymentstyles.css">
</head>
<body class="bg-gray-100 text-gray-800">
    <div class="max-w-md mx-auto mt-10 bg-white p-6 rounded-lg shadow-lg">
        <div class="flex items-center">
            <div class="bg-green-500 p-2 rounded-full">
                <i class="fas fa-car text-white"></i>
            </div>
            <div class="ml-2">
                <h1 class="text-lg font-bold">BookMyCar</h1>
                <p class="text-sm">Comfortable rides at your fare</p>
            </div>
        </div>

        <h1 class="text-lg font-bold text-center text-green-500">Payment Details</h1>

        <!-- Hidden Booking Details -->
            <input type="hidden" name="carName" value="${requestScope.carName}">
            
            <input type="hidden" name="fullname" value="${requestScope.fullname}">
            <input type="hidden" name="phone" value="${requestScope.phone}">
            <input type="hidden" name="pickupDate" value="${requestScope.pickupDate}">
            <input type="hidden" name="returnDate" value="${requestScope.returnDate}">

        <form action="PaymentServlet" method="POST">
            <!-- Hidden Fields to Pass Booking Data -->
            <input type="hidden" name="carName" value="${requestScope.carName}">
            <input type="hidden" name="fullname" value="${requestScope.fullname}">
            <input type="hidden" name="phone" value="${requestScope.phone}">
            <input type="hidden" name="pickupDate" value="${requestScope.pickupDate}">
            <input type="hidden" name="returnDate" value="${requestScope.returnDate}">

            <!-- Payment Fields -->
            <label for="cardNumber" class="block mt-3">Card Number</label>
            <input type="text" id="cardNumber" name="cardNumber" required class="border rounded w-full px-3 py-2">

            <label for="expiry" class="block mt-3">Expiry Date</label>
            <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required class="border rounded w-full px-3 py-2">

            <label for="cvv" class="block mt-3">CVV</label>
            <input type="password" id="cvv" name="cvv" required class="border rounded w-full px-3 py-2">

            <button type="submit" class="bg-green-500 text-white w-full py-2 mt-4 rounded">
                Pay and Confirm
            </button>
        </form>
    </div>
</body>
</html>
