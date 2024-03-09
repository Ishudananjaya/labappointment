<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Appointment</title>
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
        p {
            color: #6c757d; /* Gray text */
            margin-bottom: 20px;
        }
        form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Appointment</h1>
        
        <% 
            // Get appointment ID from request parameter
            String id = request.getParameter("id");
            
            // Retrieve appointment details from AppointmentDAO
            AppointmentDAO appointmentDAO = new AppointmentDAO();
            Appointment appointment = appointmentDAO.getAppointmentById(id);
        %>
        
        <p>Are you sure you want to delete this appointment?</p>
        <form action="deleteappointment" method="post">
            <input type="hidden" name="id" value="<%= appointment.getId() %>">
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </div>
</body>
</html>
