package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
            String user = System.getenv("DB_USER");
            String pass = System.getenv("DB_PASSWORD");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_SE1808";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "Không tìm thấy driver JDBC.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "Lỗi kết nối cơ sở dữ liệu.", ex);
        }
    }

    public static void main(String[] args) {
        DBContext dbContext = new DBContext();
        if (dbContext.connection != null) {
            System.out.println("Kết nối thành công.");
        } else {
            System.out.println("Kết nối thất bại.");
        }
    }
}
