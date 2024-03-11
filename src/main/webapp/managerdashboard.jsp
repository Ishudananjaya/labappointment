<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manager Dashboard</title>
<style>
  /* Define your CSS styles here */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  .sidebar {
    height: 100%;
    width: 250px;
    position: fixed;
    top: 0;
    left: 0;
    background-color: #333;
    padding-top: 20px;
  }
  .sidebar a {
    padding: 10px;
    text-decoration: none;
    color: white;
    display: block;
    transition: all 0.3s ease;
  }
  .sidebar a:hover {
    background-color: #555;
  }
  .content {
    margin-left: 250px;
    padding: 20px;
  }
  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }
  th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }
  tr:hover {
    background-color: #f9f9f9;
  }
  .large-red {
    font-size: 24px;
    color: red;
  }
</style>
</head>
<body>

<div class="sidebar">
  <a href="viewallappointments.jsp" onclick="showPage('dashboard')">Dashboard</a>
  <a href="#" onclick="showPage('employees')">Employees Registration</a>
  <a href="viewallreport.jsp" onclick="showPage('reports')">Reports</a>
</div>



<div class="content" id="content">

  <!-- Content will be loaded dynamically here -->
  <h2>Welcome to Manager Dashboard</h2>
  
       
      <%
      // Get appointment ID from request parameter
      String id = request.getParameter("id");
      
      // Retrieve appointment details from AppointmentDAO
      AppointmentDAO appointmentDAO = new AppointmentDAO();
      int appointmentCount = appointmentDAO.getAppointmentCount();
            
      
      
            %>
      
    <!-- Content will be loaded dynamically here -->
 
  <p>On this dashboard, you can:</p>
  <ul>
    <li>Register admin users.</li>
    <li>View reports.</li>
    <li>See the total number of appointments.</li>
  </ul>
    
      <p>Total Appointments: <span class="large-red"><%= appointmentCount %></span></p>
      
  
  
</div>

<script>
  function showPage(pageName) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("content").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", pageName + ".jsp", true);
    xhttp.send();
  }
</script>

</body>
</html>
