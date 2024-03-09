<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Appointments</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #dee2e6; /* Light gray border */
        }
        th {
            background-color: #007bff; /* Blue header background */
            color: #fff; /* White text */
        }
        tr:hover {
            background-color: #f2f2f2; /* Light gray background on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View All Appointments</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Test Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Update</th>
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
</body>
</html>
