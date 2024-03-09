<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Test Report</title>
</head>
<body>
    <h2>Add Test Report</h2>
    <form action="AddTestReportServlet" method="post">
        Patient ID: <input type="text" name="patientId"><br>
        Patient Name: <input type="text" name="patientName"><br>
        Test Name: <input type="text" name="testName"><br>
        Status: <input type="text" name="status"><br>
        Report Link: <input type="text" name="reportLink"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
