<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        .navbar {
            background-color: #007bff; /* Blue navbar */
        }
        .navbar-brand {
            color: #ffffff; /* White text */
        }
        .navbar-nav .nav-link {
            color: #ffffff !important; /* White text */
        }
        .jumbotron {
            background-color: #ffffff; /* White jumbotron background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .jumbotron h1 {
            color: #343a40; /* Dark gray text */
        }
        .jumbotron p {
            color: #6c757d; /* Gray text */
        }
        .jumbotron hr {
            border-top: 2px solid #6c757d; /* Gray border */
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Administrator Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="viewallappointments.jsp">View All Appointments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addappointment.jsp">Add Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addtestreport.jsp">Add Test Report</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewallreport.jsp">View All Reports</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addtestdetails.jsp">Add Test Tests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewtestdetails.jsp">View Avaliable Tests</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container mt-4">
        <div class="jumbotron">
            <h1 class="display-4">Welcome, Administrator!</h1>
            <hr class="my-4">
            <p class="lead">You can manage appointments and test reports from this dashboard.</p>
        </div>
    </div>

    <!-- Bootstrap JS (Optional, if you need JavaScript functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
