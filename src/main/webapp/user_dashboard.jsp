<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">User Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="view_my_appointments.jsp">View My Appointments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addappointment.jsp">Add My Appointments</a>
                    </li>
                    <!-- If you want to add additional links, you can add them here -->
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Another Link</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link btn btn-danger" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Welcome to Kandy HealthCare -We Care Always</h2>
        <p>Logged in as: <%= session.getAttribute("email") %></p>
        <div class="list-group mt-4">
            <h1>Welcome to Our Appointment Management System</h1>

<h2>Add Appointment</h2>
<p>To add an appointment, please follow these steps:</p>
<ol>
    <li>Login to your account.</li>
    <li>Navigate to the "Add Appointment" section.</li>
    <li>Fill in the required details such as date, time, and purpose of the appointment.</li>
    <li>Click on the "Submit" button to confirm your appointment.</li>
</ol>

<h2>View My Appointment</h2>
<p>To view your appointments, please follow these steps:</p>
<ol>
    <li>Login to your account.</li>
    <li>Go to the "View Appointments" section.</li>
    <li>You will see a list of all your scheduled appointments along with their details.</li>
</ol>

<p><strong>Note:</strong> If you need to change the date and time of your appointment, please contact our hotline at <a href="tel:0814777888">081 4 777 888</a>.</p>
            <!-- If you want to add "Add My Appointments" link again, I assume the third link was intended to be different -->
            <!-- If not, you can remove the line below -->
            <!-- <a href="addappointment.jsp" class="list-group-item list-group-item-action">Another Action</a> -->
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
