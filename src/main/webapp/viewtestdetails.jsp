<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.adprogramming.labap.dao.TestDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestDetails" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Test Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa; /* Light gray background */
            color: #343a40; /* Dark gray text */
        }
        .container {
            margin-top: 50px;
        }
        th {
            background-color: #007bff; /* Blue header background */
            color: #ffffff; /* White text */
        }
        .btn-edit {
            background-color: #007bff; /* Blue edit button */
            border-color: #007bff; /* Blue border */
        }
        .btn-delete {
            background-color: #dc3545; /* Red delete button */
            border-color: #dc3545; /* Red border */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mb-4">View All Test Details</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Test ID</th>
                    <th>Test Name</th>
                    <th>Fee</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
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
                        <a href="edittestdetails.jsp?id=<%= testdetail.getTestId() %>" class="btn btn-edit btn-sm">Edit</a>
                    </td>
                    <td>
                        <a href="deletetestdetails.jsp?id=<%= testdetail.getTestId() %>" class="btn btn-delete btn-sm">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
