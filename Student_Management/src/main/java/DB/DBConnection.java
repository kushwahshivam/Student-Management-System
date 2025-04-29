package DB;



import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}

