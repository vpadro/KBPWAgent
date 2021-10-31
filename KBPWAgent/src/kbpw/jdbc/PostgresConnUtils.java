package kbpw.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PostgresConnUtils {
	static{
	    try {
	    	Class.forName("org.postgresql.Driver");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	}
	
	public static Connection getPostgresConnectionApp() throws SQLException, ClassNotFoundException {
        
        String hostName = "localhost";
		String port = "5432";
        String sid = "postgres";
        String userName = "postgres";
        String password = "Oracle11g";
        
        return getPostgresConnection(hostName, port, sid, userName, password);
	}
	
	
	
	public static Connection getPostgresConnection(String hostName, String port, String sid, String userName, String password) throws ClassNotFoundException, SQLException {
		  String dbURL2 = "jdbc:postgresql://"+hostName+"/"+sid+"";

		  Connection conn = DriverManager.getConnection(dbURL2, userName, password);
        return conn;
       
	}
}
