<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View My Appointments</title>
</head>
<body>
    <h2>View My Appointments</h2>
    <p>User ID: <%= session.getAttribute("email") %></p>
    <p><a href="user_dashboard.jsp">Back to User Dashboard</a></p>
</body>
</html>
