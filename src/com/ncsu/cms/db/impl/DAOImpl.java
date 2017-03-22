package com.ncsu.cms.db.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ncsu.cms.bean.CourseBean;
import com.ncsu.cms.bean.CurrentCourseBean;
import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.FacultyBean;
import com.ncsu.cms.bean.LocationBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.ncsu.cms.bean.ScheduleBean;
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
	
	public List<CurrentCourseBean> getCurrentCourses(int studentId){
		List<CurrentCourseBean> courseList = null;
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_STUDENT_CURRENT_COURSE_LIST);

			pstmt.setInt(1, studentId);
			
			ResultSet rs = pstmt.executeQuery();

			courseList = new ArrayList<CurrentCourseBean>();
			
			while(rs.next())
			{
				CurrentCourseBean course  = new CurrentCourseBean(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							new LocationBean(
									rs.getString(5),
									rs.getString(6)
									),
							getCurrentSchedule(rs.getInt(4)),
							getCourseFaculty(rs.getInt(4))
						);
				courseList.add(course);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return courseList;
		
		
	}
	public List<ScheduleBean> getCurrentSchedule(int offeringId){
		List<ScheduleBean> scheduleList = null;
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_COURSE_SCHEDULE);

			pstmt.setInt(1, offeringId);
			
			ResultSet rs = pstmt.executeQuery();

			scheduleList = new ArrayList<ScheduleBean>();
			
			while(rs.next())
			{
				ScheduleBean schedule  = new ScheduleBean(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3)
					);
				scheduleList.add(schedule);
			}

		} catch (SQLException e) {
			e.printStackTrace();}
		
		return scheduleList;
		
	}
	
	public LocationBean getCourseLocation(int offeringId){
		LocationBean location = null;
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_OFFERING_LOCATION);

			pstmt.setInt(1, offeringId);
			
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
			{
				location = new LocationBean(
						rs.getString(1),
						rs.getString(2)						
						);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return location;
	}
	
	public List<FacultyBean> getCourseFaculty(int offeringId){
		List<FacultyBean> facultyList = null;
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(QueryStrings.SELECT_COURSE_FACULTY);

			pstmt.setInt(1, offeringId);
			
			ResultSet rs = pstmt.executeQuery();

			facultyList = new ArrayList<FacultyBean>();
			
			while(rs.next())
			{
				FacultyBean faculty  = new FacultyBean(
						rs.getString(1),
						rs.getString(2)
						);
				facultyList.add(faculty);
			}

		} catch (SQLException e) {
			e.printStackTrace();}
		
		return facultyList;
		
	}
	public void updateStudentDetails(String firstName, String lastName, String email, long phNo, String addr, int userid){
		try{
		PreparedStatement pstmt = conn.prepareStatement(QueryStrings.UPDATE_STUDENT_DETAILS);
		pstmt.setString(1, firstName);
		pstmt.setString(2, lastName); 
		pstmt.setString(3, email);
		pstmt.setLong(4, phNo);
		pstmt.setString(5, addr);
		pstmt.setInt(6, userid);
		
		System.out.println(pstmt.toString());
		
		int statusCode = pstmt.executeUpdate();
		
		conn.commit();
		
		System.out.println("ByeBro");
		System.out.println(statusCode);
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		//new DAOImpl().validateLogin(new LoginBean("ashis",HashUtil.generateSHA256Hash("root")));
		
		//System.out.println(new DAOImpl().getStudentDetails(6).getFirstName());
		
		//System.out.println(new DAOImpl().getCurrentCourses(6).get(0).getOfferingId());
		
		//System.out.println(new DAOImpl().getCurrentSchedule(1).get(0).getToTime()); 
		//System.out.println(new DAOImpl().getCourseLocation(3).getRoomNo());
		//System.out.println(new DAOImpl().getCourseFaculty(3).get(2).getFacultyFirstName());
		new DAOImpl().updateStudentDetails("TankiBuoy", "Tanksali", "prtanki@ncsu.edu",120,"2516 Avent Ferry Rd",6);
	}
}
