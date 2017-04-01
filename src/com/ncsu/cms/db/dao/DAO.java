package com.ncsu.cms.db.dao;

import java.util.List;

import com.ncsu.cms.bean.BillBean;
import com.ncsu.cms.bean.CompletedCoursesBean;
import com.ncsu.cms.bean.CourseListBean;
import com.ncsu.cms.bean.CourseOfferingListBean;
import com.ncsu.cms.bean.CurrentCourseBean;
import com.ncsu.cms.bean.FacultyBean;
import com.ncsu.cms.bean.LocationBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.ncsu.cms.bean.ScheduleBean;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.bean.StudentListBean;
import com.ncsu.cms.bean.AdminBean;

public interface DAO {
	public LoginResultBean validateLogin(LoginBean loginData);
	
	public StudentBean getStudentDetails(int studentId);
	
	public List<CurrentCourseBean> getCurrentCourses(int studentId);
	
	public List<ScheduleBean> getCurrentSchedule(int offeringId);
	
	public LocationBean getCourseLocation(int offeringId);
	
	public List<FacultyBean> getCourseFaculty(int offeringId);
	
	public void updateStudentDetails(String firstName, String lastName, String email, long phNo, String addr, int userid);
	
	public List<CompletedCoursesBean> getCompletedCourses(int studentId);
	
	public void updateAdminDetails(int adminId, String firstName, String lastName, String ssn);
	
	public void updateUserPassword(int studentId,String password);
	
	public BillBean getBill(int studentId);
	
	public void updateBillAmount(int studentId, int amount);
	
	public AdminBean getAdminDetails(int adminid);
	
	public List<StudentListBean> getStudentList();
	
	public void insertStudent(int userId, String firstName, String lastName,  String email , String address, long phoneNumber, int deptId, double gpa,int resType, int levelClassification, String username, String password, int role);
	
	public void insertUser(int userId, String userName,String password,int role);
	
	public List<CourseListBean>  getCourseList();
	
	public void insertCourse(String courseId, String courseName, int deptID ,int creditCount, int courseType, int classificationLevel );
	
	public List<CourseOfferingListBean> getCourseOfferingList();
	
	public void insertCourseOffering(int courseOfferingId, String courseId,int classSize,int waitlistSize, int semId, int locationId);
	
	public void editStudent(String firstName, String lastName,  String email , String address, long phoneNumber, int deptId, double gpa,int resType, int levelClassification, String username, String password, int role);
}
