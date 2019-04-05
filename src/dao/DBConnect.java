package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	static Connection conn = null;

	public static Connection getConnection() {
		if (conn == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");

				String url = "jdbc:mysql://localhost:3306/student_management";
				String user = "root";
				String pass = "1234";
				conn = DriverManager.getConnection(url, user, pass);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return conn;
		
	}
}
