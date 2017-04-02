package com.ncsu.cms.bean;
import java.io.*;
import java.sql.Date;
public class SemesterBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String semesterId;
	private String semesterType;
	private Date startDate;
	private Date endDate;
	private Date courseAddDeadline;
	private Date courseDropDeadline;
	public SemesterBean(String semesterId, String semesterType, Date startDate, Date endDate, Date courseAddDeadline,
			Date courseDropDeadline) {
		super();
		this.semesterId = semesterId;
		this.semesterType = semesterType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.courseAddDeadline = courseAddDeadline;
		this.courseDropDeadline = courseDropDeadline;
	}
	public String getSemesterId() {
		return semesterId;
	}
	public void setSemesterId(String semesterId) {
		this.semesterId = semesterId;
	}
	public String getSemesterType() {
		return semesterType;
	}
	public void setSemesterType(String semesterType) {
		this.semesterType = semesterType;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Date getCourseAddDeadline() {
		return courseAddDeadline;
	}
	public void setCourseAddDeadline(Date courseAddDeadline) {
		this.courseAddDeadline = courseAddDeadline;
	}
	public Date getCourseDropDeadline() {
		return courseDropDeadline;
	}
	public void setCourseDropDeadline(Date courseDropDeadline) {
		this.courseDropDeadline = courseDropDeadline;
	}
	
	

}
