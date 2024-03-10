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
</style>
</head>
<body>

<div class="sidebar">
  <a href="#" onclick="showPage('dashboard')">Dashboard</a>
  <a href="#" onclick="showPage('employees')">Employees</a>
  <a href="#" onclick="showPage('reports')">Reports</a>
</div>

<div class="content" id="content">

  <!-- Content will be loaded dynamically here -->
  <h2>Welcome to Manager Dashboard</h2>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Test Name</th>
        <th>Date</th>
        <th>Time</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <% 
          AppointmentDAO appointmentDAO = new AppointmentDAO();
          List<Appointment> appointments = appointmentDAO.getAllAppointments();
          for(Appointment appointment : appointments) {
      %>
      <tr>
        <td><%= appointment.getId() %></td>
        <td><%= appointment.getName() %></td>
        <td><%= appointment.getTestName() %></td>
        <td><%= appointment.getDate() %></td>
        <td><%= appointment.getTime() %></td>
        <td>
          <a href="editappointment.jsp?id=<%= appointment.getId() %>" class="btn btn-primary btn-sm">Edit</a>
        </td>
        <td>
          <a href="deleteappointment.jsp?id=<%= appointment.getId() %>" class="btn btn-danger btn-sm">Delete</a>
        </td>
      </tr>
      <% } %>
    </tbody>
  </table>
  
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
