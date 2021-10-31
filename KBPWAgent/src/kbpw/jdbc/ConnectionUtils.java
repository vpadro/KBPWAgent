package kbpw.jdbc;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {
	
	public static Connection getDbConnection() throws ClassNotFoundException, SQLException {
		return PostgresConnUtils.getPostgresConnectionApp();
		//return OracleConnUtils.getOracleConnectionProd();
	}
	
	public static void closeQuietly(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollbackQuietly(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		System.out.println("Get connection ... ");
		Connection conn = ConnectionUtils.getDbConnection();
		System.out.println("Get connection " + conn); 
        System.out.println("Done!");
	}
}
