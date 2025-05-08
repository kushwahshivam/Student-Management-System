<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="form-container">
        <a href="index.jsp" class="home-button">Home</a>
        <h2>Add New Student</h2>
        <form action="addStudent" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="course">Course</label>
                <input type="text" name="course" id="course" required>
            </div>
            <button type="submit">Add Student</button>
        </form>
    </div>
</body>
</html>
