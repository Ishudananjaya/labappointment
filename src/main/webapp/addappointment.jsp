<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Appointment</title>
</head>
<body>
    <h1>Add Appointment</h1>
    <form action="appointment" method="post">
        ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Test Name: <input type="text" name="testname"><br>
        Date: <input type="date" name="date"><br>
        Time: <input type="time" name="time"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
