<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
</head>
<body>
    <h2>Welcome to User Dashboard</h2>
    <p>Logged in as: <%= session.getAttribute("email") %></p>
    <p><a href="view_my_appointments.jsp">View My Appointments</a></p>
    <p><a href="logout">Logout</a></p>
</body>
</html>
