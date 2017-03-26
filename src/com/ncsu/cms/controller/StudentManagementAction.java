package com.ncsu.cms.controller;
import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.ncsu.cms.utils.HashUtil;
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
	private String entPwd;
	private String confPwd;
	private String errorMessage;
	
	
	
	

	public String execute() throws Exception {
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_EDIT_STUDENT_DETAILS")){
			studentDetails = cmsDB.getStudentDetails(6);
			System.out.println(studentDetails.getFirstName());
			
		}
		else if(actionName.equals("ACTION_UPDATE_STUDENT_DETAILS")){
			System.out.println(firstName+" "+lastName+" "+email+" "+phoneNumber+" "+this.address);
			cmsDB.updateStudentDetails(firstName, lastName, email, Long.parseLong(phoneNumber), address,6);
			
		}
		else if(actionName.equals("ACTION_REGISTER_COURSE")){
			

			
		}
		else if(actionName.equals("ACTION_VIEW_BILL")){
			
		} 
		else if(actionName.equals("ACTION_RESET_PASSWORD")){
			
		}
		else if(actionName.equals("ACTION_UPDATE_PASSWORD")){
			
			if(entPwd.isEmpty() || confPwd.isEmpty()){
				this.setErrorMessage("The entered password and the confirmed passwords cannot be empty");}
			
			else if(entPwd!=null && confPwd!=null){						
				if(!entPwd.equals(confPwd))
					this.setErrorMessage("The newly entered password and confirmed password do not match");	
				else{
					String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
					cmsDB.updateUserPassword(Integer.parseInt(studentId), HashUtil.generateSHA256Hash(entPwd));
				}
					
		    }
			
		}
		
		return SUCCESS;
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

	public String getEntPwd() {
		return entPwd;
	}

	public void setEntPwd(String entPwd) {
		this.entPwd = entPwd;
	}

	public String getConfPwd() {
		return confPwd;
	}

	public void setConfPwd(String confPwd) {
		this.confPwd = confPwd;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}