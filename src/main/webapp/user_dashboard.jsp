<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Welcome to User Dashboard</h2>
        <p>Logged in as: <%= session.getAttribute("email") %></p>
        <div class="list-group mt-4">
            <a href="view_my_appointments.jsp" class="list-group-item list-group-item-action">View My Appointments</a>
            <a href="addappointment.jsp" class="list-group-item list-group-item-action">Add My Appointments</a>
            <!-- If you want to add "Add My Appointments" link again, I assume the third link was intended to be different -->
            <!-- If not, you can remove the line below -->
            <a href="addappointment.jsp" class="list-group-item list-group-item-action">Another Action</a>
        </div>
        <p class="mt-4"><a href="logout" class="btn btn-danger">Logout</a></p>
    </div>
</body>
</html>
