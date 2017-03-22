package com.ncsu.cms.controller;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.opensymphony.xwork2.ActionSupport;

public class StudentManagementAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
	private StudentBean studentDetails;
	
	
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String address;
	private String email;
	private String userName;
	private String password;
	
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_EDIT_STUDENT_DETAILS")){
			studentDetails = cmsDB.getStudentDetails(6);
			System.out.println(studentDetails.getFirstName());
			
		}
		else if(actionName.equals("ACTION_UPDATE_STUDENT_DETAILS")){
			System.out.println(firstName+" "+lastName+" "+email+" "+userName+" "+password+" "+phoneNumber+" "+this.address);
			cmsDB.updateStudentDetails(firstName, lastName, email, Long.parseLong(phoneNumber), address,6);
			
		}
		else if(actionName.equals("ACTION_REGISTER_COURSE")){
			
		}
		else if(actionName.equals("ACTION_VIEW_BILL")){
			
		} 
		
		return SUCCESS;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public StudentBean getStudentDetails() {
		return studentDetails;
	}

	public void setStudentDetails(StudentBean studentDetails) {
		this.studentDetails = studentDetails;
	}
}