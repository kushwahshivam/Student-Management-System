<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
    <meta charset="UTF-8">
    <title>Delete Student</title>
</head>
<body>
    <h2>Delete Student</h2>
    <form action="deleteStudent" method="post">
        <label for="id">Enter Student ID to Delete:</label>
        <input type="text" id="id" name="id" required>
        <br><br>
        <input type="submit" value="Delete">
    </form>
</body>
</html>
