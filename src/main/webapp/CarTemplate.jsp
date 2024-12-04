<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="in.sp.bean.Car" %>

<%-- Car Template for Initial Loading --%>

<%

  // Fetch the car list from the database

  List<Car> carList = (List<Car>) request.getAttribute("carList");

  if (carList == null) {

    carList = new ArrayList<>(); 

  }

%>

<div>

  <% if (!carList.isEmpty()) { %>

    <% for (Car car : carList) { %>

      <div style="border: 1px solid #ddd; margin-bottom: 20px; padding: 20px;">

        <h3><%= car.getName() %> (<%= car.getModelYear() %>)</h3>

        <p><b>Type:</b> <%= car.getCarType() %></p>

        <p><b>Transmission:</b> <%= car.getTransmission() %></p>

        <p><b>Fuel:</b> <%= car.getFuelType() %></p>

        <p><b>Seats:</b> <%= car.getSeater() %></p>

        <p><b>Price:</b> ₹<%= car.getPrice() %> per day</p>

      </div>

    <% } %>

  <% } else { %>

    <p>No cars available to display.</p>

  <% } %>

</div>