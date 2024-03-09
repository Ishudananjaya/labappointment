<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Appointment</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa; /* Light gray background */
            padding-top: 50px;
        }
        .container {
            margin-top: 20px;
        }
        h1 {
            color: #343a40; /* Dark gray text */
        }
        form {
            background-color: #ffffff; /* White form background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        input[type="date"],
        input[type="time"],
        input[type="submit"] {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Appointment</h1>
        
        <%
            // Get appointment ID from request parameter
            String id = request.getParameter("id");
            
            // Retrieve appointment details from AppointmentDAO
            AppointmentDAO appointmentDAO = new AppointmentDAO();
            Appointment appointment = appointmentDAO.getAppointmentById(id);
        %>
        
        <form action="updateappointment" method="post">
            <input type="hidden" name="id" value="<%= appointment.getId() %>"><br>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="<%= appointment.getName() %>">
            </div>
            <div class="form-group">
                <label for="testname">Test Name:</label>
                <input type="text" class="form-control" id="testname" name="testname" value="<%= appointment.getTestName() %>">
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" class="form-control" id="date" name="date" value="<%= appointment.getDate() %>">
            </div>
            <div class="form-group">
                <label for="time">Time:</label>
                <input type="time" class="form-control" id="time" name="time" value="<%= appointment.getTime() %>">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
