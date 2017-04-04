package com.ncsu.cms.controller;
import java.util.List;
import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.AdminBean;
import com.ncsu.cms.bean.CompletedCoursesBean;
import com.ncsu.cms.bean.CurrentCourseBean;
import com.ncsu.cms.bean.FacultyBean;
import com.ncsu.cms.bean.LocationBean;
import com.ncsu.cms.bean.ScheduleBean;
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
	private StudentBean studentDetails;
	private List<CurrentCourseBean> currentCoursesList;
	private List<FacultyBean> facultyList;
    private List<CompletedCoursesBean> completedCoursesList;
    private AdminBean adminDetails;
	private int pendingRequestCount;
	
	
	public String execute() throws Exception {
		
		String loginStatus = (String) ServletActionContext.getServletContext().getAttribute("loginStatus");
		String requestMethod = ServletActionContext.getRequest().getMethod();
		userRole = (String) ServletActionContext.getServletContext().getAttribute("userRole");
		
		if(!requestMethod.equals("POST") ||  loginStatus==null || loginStatus.equals(""))
		{
			ServletActionContext.getResponse().sendRedirect("/CourseManagementSystem");
		}	
			
		DAO cmsDB = new DAOImpl();
		if(actionName.equals("ACTION_HOME_REDIRECT")){
			if(userRole.equals("1")){
				//Load Home Student Details from DB
				String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
				
				studentDetails = cmsDB.getStudentDetails(Integer.parseInt(studentId));
				currentCoursesList = cmsDB.getCurrentCourses(Integer.parseInt(studentId));
				completedCoursesList = cmsDB.getCompletedCourses(Integer.parseInt(studentId));
				
				return "studenthome";
			}				
			else if(userRole.equals("2")){
				//Load Home Admin Details from DB
				String adminId = (String) ServletActionContext.getServletContext().getAttribute("userId");
				int adminInt = Integer.parseInt(adminId);
				System.out.println(adminId);
				adminDetails = cmsDB.getAdminDetails(adminInt);
				setPendingRequestCount(cmsDB.getRequestDetails().size());
				System.out.println(adminDetails.getFirstName());
				
				
				
				
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

	public List<CurrentCourseBean> getCurrentCoursesList() {
		return currentCoursesList;
	}

	public void setCurrentCoursesList(List<CurrentCourseBean> currentCoursesList) {
		this.currentCoursesList = currentCoursesList;
	}
	public List<FacultyBean> getFacultyList() {
		return facultyList;
	}

	public void setFacultyList(List<FacultyBean> facultyList) {
		this.facultyList = facultyList;
	}

	

	public List<CompletedCoursesBean> getCompletedCoursesList() {
		return completedCoursesList;
	}

	public void setCompletedCoursesList(List<CompletedCoursesBean> completedCoursesList) {
		this.completedCoursesList = completedCoursesList;
	}

	public AdminBean getAdminDetails() {
		return adminDetails;
	}

	public void setAdminDetails(AdminBean adminDetails) {
		this.adminDetails = adminDetails;
	}

	public int getPendingRequestCount() {
		return pendingRequestCount;
	}

	public void setPendingRequestCount(int pendingRequestCount) {
		this.pendingRequestCount = pendingRequestCount;
	}

	
}