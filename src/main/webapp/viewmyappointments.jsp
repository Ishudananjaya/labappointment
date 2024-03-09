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
            color: #343a40; /* Dark gray text */
            padding-top: 50px;
        }
        .container {
            margin-top: 50px;
        }
        th {
            background-color: #007bff; /* Blue header background */
            color: #ffffff; /* White text */
        }
        td.actions a {
            margin-right: 5px;
        }
        .btn-update {
            background-color: #007bff; /* Blue update button */
            border-color: #007bff; /* Blue border */
            color: #ffffff; /* White text */
        }
        .btn-delete {
            background-color: #dc3545; /* Red delete button */
            border-color: #dc3545; /* Red border */
            color: #ffffff; /* White text */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View All Appointments</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Test Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    AppointmentDAO appointmentDAO = new AppointmentDAO();
                    List<Appointment> appointments = appointmentDAO.getAllAppointments();
                    for (Appointment appointment : appointments) {
                %>
                <tr>
                    <td><%= appointment.getId() %></td>
                    <td><%= appointment.getName() %></td>
                    <td><%= appointment.getTestName() %></td>
                    <td><%= appointment.getDate() %></td>
                    <td><%= appointment.getTime() %></td>
                    <td class="actions">
                        <a href="updateappointment?id=<%= appointment.getId() %>" class="btn btn-update btn-sm">Update</a>
                        <a href="deleteappointment?id=<%= appointment.getId() %>" class="btn btn-delete btn-sm">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
