<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Test Report</title>
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
        form {
            background-color: #ffffff; /* White form background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #343a40; /* Dark gray text */
        }
        input[type="text"],
        input[type="submit"] {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Test Report</h2>
        <form action="AddTestReportServlet" method="post">
            <div class="form-group">
                <label for="patientId">Patient ID:</label>
                <input type="text" class="form-control" id="patientId" name="patientId">
            </div>
            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" class="form-control" id="patientName" name="patientName">
            </div>
            <div class="form-group">
                <label for="testName">Test Name:</label>
                <input type="text" class="form-control" id="testName" name="testName">
            </div>
            <div class="form-group">
                <label for="status">Status:</label>
                <input type="text" class="form-control" id="status" name="status">
            </div>
            <div class="form-group">
                <label for="reportLink">Report Link:</label>
                <input type="text" class="form-control" id="reportLink" name="reportLink">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
