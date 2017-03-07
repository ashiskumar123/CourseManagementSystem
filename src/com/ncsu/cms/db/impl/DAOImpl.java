package com.ncsu.cms.db.impl;

import java.sql.Connection;
import java.sql.SQLException;

import com.ncsu.cms.db.connection.DBConnection;

public class DAOImpl {
	public String validateLogin(String userId, String passwd){
		Connection conn = DBConnection.getConnection();
		
		try {
			
			conn.prepareStatement("SELECT * FROM ABC");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
