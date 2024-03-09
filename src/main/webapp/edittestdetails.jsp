<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.TestDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestDetails" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Test Details</title>
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
        form {
            background-color: #ffffff; /* White form background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        input[type="submit"] {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Test Details</h1>
        
        <%
            // Get test ID from request parameter
            String id = request.getParameter("id");
            
            // Retrieve test details from TestDao
            TestDao testDao = new TestDao();
            TestDetails testDetails = testDao.getTestById(id);
        %>
        
        <form action="edittestdetails" method="post">
            <input type="hidden" name="testid" value="<%= testDetails.getTestId() %>" readonly><br>
            <div class="form-group">
                <label for="testname">Test Name:</label>
                <input type="text" class="form-control" id="testname" name="testname" value="<%= testDetails.getTestName() %>">
            </div>
            <div class="form-group">
                <label for="fee">Fee:</label>
                <input type="text" class="form-control" id="fee" name="fee" value="<%= testDetails.getFee() %>">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
