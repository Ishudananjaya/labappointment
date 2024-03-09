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
</head>
<body>
    <h1>Edit Test Details</h1>

    <form action="editreportdetails" method="post">
        <input type="hidden" name="patientId" value="<%= testReport.getPatientId() %>" readonly><br>
        Patient Name Name: <input type="text" name="patientName" value="<%= testReport.getPatientName() %>"><br>
        Test Name: <input type="text" name="TestName" value="<%= testReport.getTestName() %>"><br>
        Test Status: <input type="text" name="status" value="<%= testReport.getStatus() %>"><br>
        Report link : <input type="text" name="ReportLink" value="<%= testReport.getReportLink() %>"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
