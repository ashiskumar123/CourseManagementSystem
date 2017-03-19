package com.ncsu.cms.db.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.db.connection.DBConnection;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.utils.HashUtil;

public class DAOImpl implements DAO{
	static Connection conn = null;
	static {
        conn = DBConnection.getConnection();
    }
	public LoginResultBean validateLogin(LoginBean loginData){
		
		LoginResultBean validationResult = null;
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_VALIDATE_LOGIN);

			pstmt.setString(1, loginData.getUserName());
			pstmt.setString(2, HashUtil.generateSHA256Hash(loginData.getPassword()));
			
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
			{
				validationResult = new LoginResultBean(
						new ErrorBean(),
						rs.getString(1),
						rs.getString(2)
					);
			}
			else{
				validationResult = new LoginResultBean(
							new ErrorBean(ErrorBean.ERROR,"-1"),
							null,
							null
					);
			}
		} catch (SQLException e) {
			validationResult = new LoginResultBean();
			validationResult.setErrorData(new ErrorBean(ErrorBean.ERROR,"-1"));
			e.printStackTrace();
		}
		
		return validationResult;
	}
	public StudentBean getStudentDetails(int studentId){
		StudentBean student = null;
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_STUDENT_DETAILS);

			pstmt.setInt(1, studentId);
			
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
			{
				student = new StudentBean(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getString(9),
							rs.getString(10)
						);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return student;
	}
	public static void main(String[] args) {
		//new DAOImpl().validateLogin(new LoginBean("ashis",HashUtil.generateSHA256Hash("root")));
		
		System.out.println(new DAOImpl().getStudentDetails(7).getLevelClassification());
	}
}
