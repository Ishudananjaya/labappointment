<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Test Details</title>
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
        h1 {
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
        <h1>Add Test Details</h1>
        <form action="testdetails" method="post">
            <div class="form-group">
                <label for="testid">ID:</label>
                <input type="text" class="form-control" id="testid" name="testid">
            </div>
            <div class="form-group">
                <label for="testname">Name:</label>
                <input type="text" class="form-control" id="testname" name="testname">
            </div>
            <div class="form-group">
                <label for="fee">Fee:</label>
                <input type="text" class="form-control" id="fee" name="fee">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
