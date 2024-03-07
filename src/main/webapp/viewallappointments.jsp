<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Appointments</title>
</head>
<body>
    <h1>View All Appointments</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Test Name</th>
            <th>Date</th>
            <th>Time</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
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
    </table>
</body>
</html>
