package com.ncsu.cms.controller;
import com.ncsu.cms.bean.StudentBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
	StudentBean studentDetails;
	
	public String execute() throws Exception {

		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_HOME_REDIRECT")){
			if(userRole.equals("1")){
				//Load Home Student Details from DB
				
				studentDetails = cmsDB.getStudentDetails(7);
				return "studenthome";
			}				
			else if(userRole.equals("2")){
				//Load Home Admin Details from DB
				
				return "adminhome";
			}
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