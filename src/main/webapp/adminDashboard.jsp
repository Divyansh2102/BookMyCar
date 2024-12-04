<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="in.sp.bean.Car" %>

<!DOCTYPE html>

<html>

<head>

  <title>Admin Dashboard</title>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <style>

    body {

      font-family: Arial, sans-serif;

      margin: 0;

      padding: 0;

      background-color: #f4f4f4;

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

    <a href="#c-list">View Cars</a>

    <a href="CarFetch">View Users</a>
     <a href="BookingsFetch">View Bookings</a>

    <a href="addCar.jsp">Add Car</a>

    <a href="index.jsp">Logout</a>

  </nav>

  <div class="container">

    <h2>Data Insights</h2>

    <!-- Charts Section -->

    <div class="chart-container">

      <canvas id="carTypeChart"></canvas>

    </div>

    <div class="chart-container">

      <canvas id="fuelTypeChart"></canvas>

    </div>

    <div class="chart-container">

      <canvas id="seaterChart"></canvas>

    </div>

    <div class="chart-container">

      <canvas id="priceRangeChart"></canvas>

    </div>



    <!-- Table Section -->

    <h2 id="c-list">Car List</h2>

    <table>

      <thead>

        <tr>

          <th>Name</th>

          <th>Number</th>

          <th>Rating</th>

          <th>Seater</th>

          <th>Price</th>

          <th>Car Type</th>

          <th>Transmission</th>

          <th>Fuel Type</th>

          <th>Model Year</th>

          <th>Actions</th>

        </tr>

      </thead>

      <tbody>

        <%

          // Retrieve car data from request attribute

          List<Car> carList = (List<Car>) request.getAttribute("carList");

        if (carList != null && !carList.isEmpty()) {

          for (Car car : carList) {

        %>

        <tr>

          <td><%= car.getName() %></td>
          
          <td><%= car.getNumber() %></td>

          <td><%= car.getRating() %></td>

          <td><%= car.getSeater() %></td>

          <td><%= car.getPrice() %></td>

          <td><%= car.getCarType() %></td>

          <td><%= car.getTransmission() %></td>

          <td><%= car.getFuelType() %></td>

          <td><%= car.getModelYear() %></td>

          <td>
          
 


            <form action="DeleteCarServlet" method="get" style="display:inline;">

              <input type="hidden" name="number" value="<%= car.getNumber() %>">

              <button type="submit" class="btn btn-delete">Delete</button>

            </form>

          </td>

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

  </div>



  <!-- Chart.js Implementation -->

  <script>


    async function fetchChartData() {

        try {

            const response = await fetch('ChartDataServlet');

            const data = await response.json();



            // Use the fetched data for each chart

            const carTypeLabels = Object.keys(data.carTypeData);

            const carTypeData = Object.values(data.carTypeData);



            const fuelTypeLabels = Object.keys(data.fuelTypeData);

            const fuelTypeData = Object.values(data.fuelTypeData);



            // Update the Car Type Chart

            new Chart(document.getElementById('carTypeChart').getContext('2d'), {

                type: 'bar',

                data: {

                    labels: carTypeLabels,

                    datasets: [{

                        label: 'Car Types',

                        data: carTypeData,

                        backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#AA65DB']

                    }]

                }

            });



            // Update the Fuel Type Chart

            new Chart(document.getElementById('fuelTypeChart').getContext('2d'), {

                type: 'doughnut',

                data: {

                    labels: fuelTypeLabels,

                    datasets: [{

                        label: 'Fuel Types',

                        data: fuelTypeData,

                        backgroundColor: ['#4BC0C0', '#FF9F40', '#FF6384']

                    }]

                }

            });



  



        } catch (error) {

            console.error("Error fetching chart data:", error);

        }

    }



    // Call the function on page load

    document.addEventListener("DOMContentLoaded", fetchChartData);
  </script>

</body>

</html>

