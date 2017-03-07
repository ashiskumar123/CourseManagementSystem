package com.ncsu.cms.db.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.db.connection.DBConnection;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.utils.HashUtil;

public class DAOImpl implements DAO{
	static Connection conn = null;
	static {
        conn = DBConnection.getConnection();
    }
	public ErrorBean validateLogin(LoginBean loginData){
		
		ErrorBean validationResult = null;
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_VALIDATE_LOGIN);

			pstmt.setString(1, loginData.getUserName());
			pstmt.setString(2, HashUtil.generateSHA256Hash(loginData.getPassword()));
			
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
				validationResult = new ErrorBean();
			else
				validationResult = new ErrorBean(ErrorBean.ERROR,"-1");

		} catch (SQLException e) {
			validationResult = new ErrorBean(ErrorBean.ERROR,"-1");
			e.printStackTrace();
		}
		
		return validationResult;
	}
	
	public static void main(String[] args) {
		new DAOImpl().validateLogin(new LoginBean("ashis",HashUtil.generateSHA256Hash("root")));
	}
}
