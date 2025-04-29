<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
    <meta charset="UTF-8">
    <title>Update Student</title>
</head>
<body>
    <h2>Update Student</h2>
    <form action="updateStudent" method="post">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>" readonly><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= request.getParameter("email") %>" required><br><br>

        <label for="course">Course:</label>
        <input type="text" id="course" name="course" value="<%= request.getParameter("course") %>" required><br><br>

        <input type="submit" value="Update">
    </form>
</body>
</html>
