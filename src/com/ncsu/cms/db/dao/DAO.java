package com.ncsu.cms.db.dao;

import java.util.List;

import com.ncsu.cms.bean.CurrentCourseBean;
import com.ncsu.cms.bean.FacultyBean;
import com.ncsu.cms.bean.LocationBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.ncsu.cms.bean.ScheduleBean;
import com.ncsu.cms.bean.StudentBean;

public interface DAO {
	public LoginResultBean validateLogin(LoginBean loginData);
	
	public StudentBean getStudentDetails(int studentId);
	
	public List<CurrentCourseBean> getCurrentCourses(int studentId);
	
	public List<ScheduleBean> getCurrentSchedule(int offeringId);
	
	public LocationBean getCourseLocation(int offeringId);
	
	public List<FacultyBean> getCourseFaculty(int offeringId);
	
	public void updateStudentDetails(String firstName, String lastName, String email, long phNo, String addr, int userid);
	
}
