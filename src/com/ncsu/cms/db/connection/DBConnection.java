package com.ncsu.cms.db.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public Connection getConnection(){
		Connection connection = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "password12");
		
		} catch (SQLException e) {

			System.out.println("Connection Failed!");
	        e.printStackTrace();
	        return null;
		}
		catch (ClassNotFoundException e) {
		    System.out.println("Cannot find Oracle JDBC Driver!");
		    e.printStackTrace();
		    return null;
		}
		
		return connection;
	}
}
