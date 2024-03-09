<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.icbt.adprogramming.labap.dao.TestReportDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestReport" %>

<%
    // Get test ID from request parameter
    String testId = request.getParameter("patientId");

    // Retrieve test details from TestDao
    TestReportDao testReportDao = new TestReportDao();
    TestReport testReport = testReportDao.getTestReportById(testId);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Test Details</title>
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
        <h1>Edit Test Details</h1>

        <form action="editreportdetails" method="post">
            <input type="hidden" name="patientId" value="<%= testReport.getPatientId() %>" readonly><br>
            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" class="form-control" id="patientName" name="patientName" value="<%= testReport.getPatientName() %>">
            </div>
            <div class="form-group">
                <label for="testName">Test Name:</label>
                <input type="text" class="form-control" id="testName" name="testName" value="<%= testReport.getTestName() %>">
            </div>
            <div class="form-group">
                <label for="status">Test Status:</label>
                <input type="text" class="form-control" id="status" name="status" value="<%= testReport.getStatus() %>">
            </div>
            <div class="form-group">
                <label for="reportLink">Report link:</label>
                <input type="text" class="form-control" id="reportLink" name="reportLink" value="<%= testReport.getReportLink() %>">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
