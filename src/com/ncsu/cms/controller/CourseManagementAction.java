package com.ncsu.cms.controller;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ncsu.cms.bean.CourseBean;
import com.ncsu.cms.bean.CourseOfferingBean;
import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.RequestListBean;
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
	private List<CourseOfferingBean> studentCourseOfferingList;
	private ErrorBean errorData;
	private String offeringId;
	private String creditCount;
	private String dropOfferingId;
	private List<RequestListBean> sppermRequestList;
	private List<CourseBean> dropCourseList;
	
	public String execute() throws Exception {
		
		String loginStatus = (String) ServletActionContext.getServletContext().getAttribute("loginStatus");
		String requestMethod = ServletActionContext.getRequest().getMethod();
		userRole = (String) ServletActionContext.getServletContext().getAttribute("userRole");
		String studentId = (String) ServletActionContext.getServletContext().getAttribute("userId");
		
		if(!requestMethod.equals("POST") ||  loginStatus==null || loginStatus.equals(""))
		{
			ServletActionContext.getResponse().sendRedirect("/CourseManagementSystem");
		}	

		DAO cmsDB = new DAOImpl();
		
		if(actionName.equals("ACTION_GET_OFFERING_LIST")){
			courseOfferingList = cmsDB.getCourseOfferings(departmentId);
			studentCourseOfferingList = cmsDB.getStudentCurrentCourseDetailsList(studentId);
			sppermRequestList = cmsDB.getSPPERMRequestList(studentId);
			dropCourseList = cmsDB.getDropCourseList(studentId);
			
			errorData = new ErrorBean(ErrorBean.SUCCESS, "1");
		}
		else if(actionName.equals("ACTION_ENROLL_COURSE")){
			System.out.println("studentId="+studentId);
			System.out.println("offeringId="+offeringId);
			System.out.println("creditCount="+creditCount);
			System.out.println("dropOfferingId="+dropOfferingId);
			errorData = cmsDB.enrollStudentToCourse(studentId, offeringId.trim(), creditCount, dropOfferingId);

			courseOfferingList = cmsDB.getCourseOfferings(departmentId);
			studentCourseOfferingList = cmsDB.getStudentCurrentCourseDetailsList(studentId);
			sppermRequestList = cmsDB.getSPPERMRequestList(studentId);
			dropCourseList = cmsDB.getDropCourseList(studentId);
			
		}
		else if(actionName.equals("ACTION_DROP_COURSE")){
			errorData = cmsDB.dropStudentCourse(studentId, offeringId.trim());
			
			courseOfferingList = cmsDB.getCourseOfferings(departmentId);
			studentCourseOfferingList = cmsDB.getStudentCurrentCourseDetailsList(studentId);
			sppermRequestList = cmsDB.getSPPERMRequestList(studentId);
			dropCourseList = cmsDB.getDropCourseList(studentId);
			
		}
		else if(actionName.equals("ACTION_REQUEST_SPPERM")){
			System.out.println("studentId="+studentId);
			System.out.println("offeringId="+offeringId);
			System.out.println("creditCount="+creditCount);
			errorData = cmsDB.requestSpecialPermission(studentId, offeringId.trim(), creditCount);

			courseOfferingList = cmsDB.getCourseOfferings(departmentId);
			studentCourseOfferingList = cmsDB.getStudentCurrentCourseDetailsList(studentId);
			sppermRequestList = cmsDB.getSPPERMRequestList(studentId);
			dropCourseList = cmsDB.getDropCourseList(studentId);
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

	public List<CourseOfferingBean> getStudentCourseOfferingList() {
		return studentCourseOfferingList;
	}

	public void setStudentCourseOfferingList(List<CourseOfferingBean> studentCourseOfferingList) {
		this.studentCourseOfferingList = studentCourseOfferingList;
	}

	public ErrorBean getErrorData() {
		return errorData;
	}

	public void setErrorData(ErrorBean errorData) {
		this.errorData = errorData;
	}

	public String getCreditCount() {
		return creditCount;
	}

	public void setCreditCount(String creditCount) {
		this.creditCount = creditCount;
	}

	public String getDropOfferingId() {
		return dropOfferingId;
	}

	public void setDropOfferingId(String dropOfferingId) {
		this.dropOfferingId = dropOfferingId;
	}

	public String getOfferingId() {
		return offeringId;
	}

	public void setOfferingId(String offeringId) {
		this.offeringId = offeringId;
	}

	public List<RequestListBean> getSppermRequestList() {
		return sppermRequestList;
	}

	public void setSppermRequestList(List<RequestListBean> sppermRequestList) {
		this.sppermRequestList = sppermRequestList;
	}

	public List<CourseBean> getDropCourseList() {
		return dropCourseList;
	}

	public void setDropCourseList(List<CourseBean> dropCourseList) {
		this.dropCourseList = dropCourseList;
	}

	
}