package com.ncsu.cms.controller;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.CourseOfferingBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CourseManagementAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String actionName;
	private String userRole;
    private List<CourseOfferingBean> courseOfferingList;
    private String departmentId;

	
	public String execute() throws Exception {
		
		String loginStatus = (String) ServletActionContext.getServletContext().getAttribute("loginStatus");
		String requestMethod = ServletActionContext.getRequest().getMethod();
		userRole = (String) ServletActionContext.getServletContext().getAttribute("userRole");
		
		if(!requestMethod.equals("POST") ||  loginStatus==null || loginStatus.equals(""))
		{
			ServletActionContext.getResponse().sendRedirect("/CourseManagementSystem");
		}	
			
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_GET_OFFERING_LIST")){
			courseOfferingList = cmsDB.getCourseOfferings(departmentId);
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

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public List<CourseOfferingBean> getCourseOfferingList() {
		return courseOfferingList;
	}

	public void setCourseOfferingList(List<CourseOfferingBean> courseOfferingList) {
		this.courseOfferingList = courseOfferingList;
	}

	
}