package com.ncsu.cms.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.AdminBean;
import com.ncsu.cms.bean.BillBean;
import com.ncsu.cms.bean.CourseListBean;
import com.ncsu.cms.bean.CourseOfferingListBean;
import com.ncsu.cms.bean.DepartmentBean;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.bean.StudentListBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.ncsu.cms.utils.HashUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AdminManagementAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AdminBean adminDetails;
	private String firstName;
	private String lastName;
	private String ssn;
	private String actionName;
	private String saveMessage;
	private String editError;
	private StudentListBean student;
	private List<StudentListBean> studentList;
	private String userId;
	private String phoneNumber;
	private String deptId;
	private String gpa;
	private String email;
	private String resType;
	private String address;
	private String levelClassification;
	private String userName;
	
	private List<CourseListBean> courseList;
	private String courseId;
	private String courseName;
	private String creditCount;
	private String courseType;
	
	private List<CourseOfferingListBean> courseOfferingList;
	private String courseOfferingId;
	private String classSize;
	private String waitlistSize;
	private String semesterId;
	
	private List<DepartmentBean> departmentList;
	

	public String execute() throws Exception{
		
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_UPDATE_ADMIN_DETAILS")){
			String adminId = (String) ServletActionContext.getServletContext().getAttribute("userId");
			int admInt = Integer.parseInt(adminId);
		    if(firstName.isEmpty()||lastName.isEmpty()||ssn.isEmpty())
		    	this.setEditError("None of the above fields can be empty");
		    else{
		    	//cmsDB.updateStudentDetails(firstName, lastName, email, Long.parseLong(phoneNumber), address,Integer.parseInt(studentId));
				cmsDB.updateAdminDetails(admInt, firstName, lastName, ssn);
				
		    	this.setSaveMessage(" Details successfully saved");
		    }
			
		}
		else if(actionName.equals("ACTION_SHOW_STUDENT_LIST")){						
			studentList = cmsDB.getStudentList(null);
		}
		
		else if(actionName.equals("ACTION_INSERT_STUDENT")){
			System.out.println("Hi");
			int userInt = Integer.parseInt(userId);
			long  phoneLong= Long.parseLong(phoneNumber);
			int depInt = Integer.parseInt(deptId);
			int resInt = Integer.parseInt(resType);
			int levelInt = Integer.parseInt(levelClassification);
			System.out.println(userInt + " " + firstName + " " + lastName + " " + email+ " " +  address+ " " + phoneLong+ " " + depInt+ " " + 0 + " " +  resInt+ " " + levelInt+ " " + userName+ " " + "pass"+ " " + 2);
			cmsDB.insertStudent(userInt, firstName, lastName, email, address,phoneLong, depInt, 0 , resInt, levelInt, userName,"pass",2);
		//	cmsDB.insertStudent(291, "firstName", "lastName", "email", "address",1211, 1, 0 , 1, 1, "userName","pass",2);
		}
		else if(actionName.equals("ACTION_SHOW_COURSE_LIST")){						
			courseList = cmsDB.getCourseList();
		}
		else if(actionName.equals("ACTION_INSERT_COURSE")){
			System.out.println("Hi5");
			int depInt = Integer.parseInt(deptId);
			int creditInt = Integer.parseInt(creditCount);
			int courseTypeInt = Integer.parseInt(courseType);
			int levelInt = Integer.parseInt(levelClassification);
			cmsDB.insertCourse(courseId, courseName, depInt, creditInt, courseTypeInt, levelInt);
			
			
		}
		else if(actionName.equals("ACTION_SHOW_COURSE_OFFERING_LIST")){
			courseOfferingList = cmsDB.getCourseOfferingList();					
			studentList = cmsDB.getStudentList(null);
			
		}
		else if(actionName.equals("ACTION_INSERT_COURSE_OFFERING")){
			System.out.println("Hi10");
			int coInt = Integer.parseInt(courseOfferingId);
			int classInt = Integer.parseInt(classSize);
			int waitlistInt = Integer.parseInt(waitlistSize);
			int semInt = Integer.parseInt(semesterId);
			int locInt = Integer.parseInt(locationId);
			cmsDB.insertCourseOffering(coInt, courseId, classInt, waitlistInt, semInt, locInt);
			
		}
		else if(actionName.equals("ACTION_EDIT_CURRENT_STUDENT")){
			student = cmsDB.getStudentList(userId).get(0);
			departmentList = cmsDB.getDepartmentList();
		}
		else if(actionName.equals("ACTION_SAVE_CURRENT_STUDENT")){
			System.out.println(userId + " " + firstName + " " + lastName + " " + email+ " " +  address+ " " + phoneNumber+ " " + deptId+ " " + 0 + " " +  resType+ " " + levelClassification);
			int userInt = Integer.parseInt(userId);
			
			long  phoneLong= Long.parseLong(phoneNumber);
			int depInt = Integer.parseInt(deptId);
			int resInt = Integer.parseInt(resType);
			int levelInt = Integer.parseInt(levelClassification);
			double gpaDouble = Double.parseDouble(gpa);
		
			cmsDB.editStudent(userInt,firstName, lastName, email, address, phoneLong, depInt, gpaDouble, resInt, levelInt);
		}
		
		return SUCCESS;		
		
	}
	
	public String getCourseOfferingId() {
		return courseOfferingId;
	}



	public void setCourseOfferingId(String courseOfferingId) {
		this.courseOfferingId = courseOfferingId;
	}



	public String getClassSize() {
		return classSize;
	}



	public void setClassSize(String classSize) {
		this.classSize = classSize;
	}



	public String getWaitlistSize() {
		return waitlistSize;
	}



	public void setWaitlistSize(String waitlistSize) {
		this.waitlistSize = waitlistSize;
	}



	public String getSemesterId() {
		return semesterId;
	}



	public void setSemesterId(String semesterId) {
		this.semesterId = semesterId;
	}



	public String getLocationId() {
		return locationId;
	}



	public void setLocationId(String locationId) {
		this.locationId = locationId;
	}



	private String locationId;




	public String getCourseId() {
		return courseId;
	}



	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}



	public String getCourseName() {
		return courseName;
	}



	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}



	public String getCreditCount() {
		return creditCount;
	}



	public void setCreditCount(String creditCount) {
		this.creditCount = creditCount;
	}



	public String getCourseType() {
		return courseType;
	}



	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getLevelClassification() {
		return levelClassification;
	}



	public void setLevelClassification(String levelClassification) {
		this.levelClassification = levelClassification;
	}



	public String getResType() {
		return resType;
	}



	public void setResType(String resType) {
		this.resType = resType;
	}



	public String getDeptId() {
		return deptId;
	}



	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}



	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}


	public String getActionName() {
		return actionName;
	}


	public void setActionName(String actionName) {
		this.actionName = actionName;
	}


	public String getEditError() {
		return editError;
	}


	public void setEditError(String editError) {
		this.editError = editError;
	}


	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSaveMessage() {
		return saveMessage;
	}


	public void setSaveMessage(String saveMessage) {
		this.saveMessage = saveMessage;
	}



	public AdminBean getAdminDetails() {
		return adminDetails;
	}



	public void setAdminDetails(AdminBean adminDetails) {
		this.adminDetails = adminDetails;
	}



	public StudentListBean getStudent() {
		return student;
	}



	public void setStudent(StudentListBean student) {
		this.student = student;
	}



	public List<StudentListBean> getStudentList() {
		return studentList;
	}



	public void setStudentList(List<StudentListBean> studentList) {
		this.studentList = studentList;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public List<CourseListBean> getCourseList() {
		return courseList;
	}



	public void setCourseList(List<CourseListBean> courseList) {
		this.courseList = courseList;
	}



	public List<CourseOfferingListBean> getCourseOfferingList() {
		return courseOfferingList;
	}



	public void setCourseOfferingList(List<CourseOfferingListBean> courseOfferingList) {
		this.courseOfferingList = courseOfferingList;
	}

	public List<DepartmentBean> getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List<DepartmentBean> departmentList) {
		this.departmentList = departmentList;
	}



	

}
