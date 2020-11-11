package service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static String jdbcURl = "jdbc:mysql://localhost:3306/quanlisanpham";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "123456";

    static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURl, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}