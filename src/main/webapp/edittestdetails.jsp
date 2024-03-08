<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.TestDao" %>
<%@ page import="com.icbt.adprogramming.lapap.controller.EditTestDetails" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestDetails" %>








<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Test Details</title>
</head>
<body>
    <h1>Update Test Details</h1>
    
    <%
    
    // Get appointment ID from request parameter
    String id = request.getParameter("id");
    
    // Retrieve appointment details from AppointmentDAO
   TestDao testDao = new TestDao();
    TestDetails testDetails = testDao.getTestById(id);
    
%>
    
    
  
    <form action="edittestdetails" method="post">
        <input type="hidden" name="testid" value="<%= testDetails.getTestId() %>" readonly><br>
        Test Name: <input type="text" name="testname" value="<%= testDetails.getTestName() %>"><br>
        Fee: <input type="text" name="fee" value="<%= testDetails.getFee() %>"><br>
        
        <input type="submit" value="Update">
    </form>


    
</body>
</html>
