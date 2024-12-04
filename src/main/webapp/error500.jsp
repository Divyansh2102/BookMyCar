<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>500 - Internal Server Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .error-container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            font-size: 48px;
            color: #ff6b6b;
        }
        p {
            font-size: 18px;
            color: #555;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<%@ page isErrorPage="true" %>
<body>
    <div class="error-container">
        <h1>500</h1>
        <p>Something went wrong on our end.</p>
        <p>Please try again later or <a href="index.jsp">Home</a>.</p>
    </div>
</body>
</html>