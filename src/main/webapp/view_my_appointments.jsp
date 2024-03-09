<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.UserDAOImpl" %>
<%@ page import="com.icbt.adprogramming.labap.model.User" %>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>View My Appointments</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom Red and Blue Theme */
        .red-bg {
            background-color: #f44336 !important;
        }
        .blue-bg {
            background-color: #2196F3 !important;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row mt-3 mb-3">
            <div class="col-12">
                <a href="user_dashboard.jsp" class="btn btn-primary">Back</a>
            </div>
        </div>
        <h2>View My Appointments</h2>
        <table class="table table-striped red-bg blue-bg">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Test Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                String email = (String) session.getAttribute("email");
                UserDAOImpl userDAO = new UserDAOImpl();
                User user = userDAO.getUserByEmail(email);
                if (user != null) {
                    String userId = user.getId(); // Retrieve the user ID from the User object
                    AppointmentDAO appointmentDAO = new AppointmentDAO();
                    Appointment appointment = appointmentDAO.getAppointmentById(userId);
                    // Display appointment details here
                %>
                <tr>
                    <td><%= appointment.getName() %></td>
                    <td><%= appointment.getTestName() %></td>
                    <td><%= appointment.getDate() %></td>
                    <td><%= appointment.getTime() %></td>
                    
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
