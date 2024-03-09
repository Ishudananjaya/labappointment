<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.icbt.adprogramming.labap.dao.TestReportDao" %>
<%@ page import="com.icbt.adprogramming.labap.model.TestReport" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Test Reports</title>
</head>
<body>
    <h1>View All Test Reports</h1>
    <table border="1">
        <tr>
            <th>Patient ID</th>
            <th>Patient Name</th>
            <th>Test Name</th>
            <th>Status</th>
            <th>Report Link</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
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
    </table>
</body>
</html>
