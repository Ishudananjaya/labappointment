<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%@ page import="com.icbt.adprogramming.labap.dao.TestDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestDetails" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Test Details</title>
</head>
<body>
    <h1>View All Test Details</h1>
    <table border="1">
        <tr>
            <th>Test ID</th>
            <th>Test Name</th>
            <th>Fee</th>
                       
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <% 
            TestDao testDao = new TestDao();
            List<TestDetails> testdetails = testDao.getAllTestDetail();
            for(TestDetails testdetail : testdetails) {
        %>
        <tr>
            <td><%= testdetail.getTestId() %></td>
            <td><%= testdetail.getTestName() %></td>
            <td><%= testdetail.getFee() %></td>
            
            <td>
                <a href="edittestdetails.jsp?id=<%= testdetail.getTestId() %>" class="btn btn-primary btn-sm">Edit</a>
            </td>
            <td>
                <a href="deletetestdetails.jsp?id=<%= testdetail.getTestId() %>" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
</body>
</html>
