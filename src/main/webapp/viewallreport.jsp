<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.adprogramming.labap.dao.TestReportDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestReport" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Test Reports</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #dee2e6; /* Light gray border */
        }
        th {
            background-color: #007bff; /* Blue header background */
            color: #fff; /* White text */
        }
        tr:hover {
            background-color: #f2f2f2; /* Light gray background on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View All Test Reports</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Patient ID</th>
                    <th>Patient Name</th>
                    <th>Test Name</th>
                    <th>Status</th>
                    <th>Report Link</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    TestReportDao testReportDao = new TestReportDao();
                    List<TestReport> testReport = testReportDao.getAllTestReports();
                    for(TestReport report : testReport) {
                %>
                <tr>
                    <td><%= report.getPatientId() %></td>
                    <td><%= report.getPatientName() %></td>
                    <td><%= report.getTestName() %></td>
                    <td><%= report.getStatus() %></td>
                    <td><%= report.getReportLink() %></td>
                    <td>
                        <a href="editreport.jsp?patientId=<%= report.getPatientId() %>" class="btn btn-primary btn-sm">Edit</a>
                    </td>
                    <td>
                        <a href="deletereport.jsp?patientId=<%= report.getPatientId() %>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
