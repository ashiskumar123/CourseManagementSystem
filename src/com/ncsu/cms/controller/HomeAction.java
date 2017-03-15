package com.ncsu.cms.controller;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
	
	public String execute() throws Exception {

		if(actionName.equals("ACTION_HOME_REDIRECT")){
			if(userRole.equals("1"))
				return "studenthome";
			else if(userRole.equals("2"))
				return "adminhome";
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