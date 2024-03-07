<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coordinator Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Add your custom styles here */
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Coordinator Dashboard</h1>
            <p class="lead">Welcome, Coordinator!</p>
            <hr class="my-4">
            <p class="lead">
                <!-- Link to View All Appointments -->
                <a class="btn btn-primary btn-lg" href="viewallappointments.jsp" role="button">View All Appointments</a>
                <a class="btn btn-primary btn-lg" href="addappointment.jsp" role="button">addappotnment</a>
            </p>
        </div>
    </div>
    <!-- Bootstrap JS (Optional, if you need JavaScript functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
