<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Appointment</title>
</head>
<body>
    <h1>DeleteAppointment</h1>
    
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
        <input type="submit" value="Delete">
    </form>
</body>
</html>
