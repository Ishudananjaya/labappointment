<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Appointment</title>
</head>
<body>
    <h1>Update Appointment</h1>
    
    <%
    // Get appointment ID from request parameter
    String id = request.getParameter("id");
    
    // Retrieve appointment details from AppointmentDAO
    AppointmentDAO appointmentDAO = new AppointmentDAO();
    Appointment appointment = appointmentDAO.getAppointmentById(id);
    
%>
    
    
    <form action="updateappointment" method="post">
        <input type="hidden" name="id" value="<%= appointment.getId() %>" readonly><br>
        Name: <input type="text" name="name" value="<%= appointment.getName() %>"><br>
        Test Name: <input type="text" name="testname" value="<%= appointment.getTestName() %>"><br>
        Date: <input type="date" name="date" value="<%= appointment.getDate() %>"><br>
        Time: <input type="time" name="time" value="<%= appointment.getTime() %>"><br>
        <input type="submit" value="Update">
    </form>
    
    
</body>
</html>

