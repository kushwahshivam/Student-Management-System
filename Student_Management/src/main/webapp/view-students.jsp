<%@ page import="java.sql.*" %>
<%@ page import="DB.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="container">
        <a href="index.jsp" class="home-button"><i class="fas fa-home"></i> Home</a>
        <h2>Student Records</h2>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Course</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Connection conn = DBConnection.getConnection();
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM students");

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("course")%></td>
                        <td class="action-buttons">
                            <a href="edit-student.jsp?id=<%=rs.getInt("id")%>" class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </a>
                            <a href="deleteStudent?id=<%=rs.getInt("id")%>" class="delete-btn" 
                               onclick="return confirm('Are you sure you want to delete this student?')">
                                <i class="fas fa-trash-alt"></i> Delete
                            </a>
                        </td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
