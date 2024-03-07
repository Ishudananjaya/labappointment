<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>
<%@ page import="com.icbt.adprogramming.labap.dao.AppointmentDAO" %>
<%@ page import="com.icbt.adprogramming.labap.model.Appointment" %>




!DOCTYPE html>
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
            <th>Actions</th>
        </tr>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.getId()}</td>
                <td>${appointment.getName()}</td>
                <td>${appointment.getTestName()}</td>
                <td>${appointment.getDate()}</td>
                <td>${appointment.getTime()}</td>
                <td>
                    <a href="updateappointment?id=${appointment.getId()}">Update</a>
                    <a href="deleteappointment?id=${appointment.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

