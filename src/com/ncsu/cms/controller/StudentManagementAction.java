package com.ncsu.cms.controller;
import com.opensymphony.xwork2.ActionSupport;

public class StudentManagementAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
	
	public String execute() throws Exception {

		if(actionName.equals("ACTION_GET_EDIT_STUDENT_DETAILS")){
			
		}
		else if(actionName.equals("ACTION_UPDATE_STUDENT_DETAILS")){
			
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
}