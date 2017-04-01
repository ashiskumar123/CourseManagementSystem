package com.ncsu.cms.bean;
import java.io.Serializable;
public class CourseOfferingListBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String courseOfferingId;
	private String courseId;
	private String classSize;
	private String waitlistSize;
	private String semesterId;
	private String locationId;
	public CourseOfferingListBean(String courseOfferingId, String courseId, String classSize, String waitlistSize,
			String semesterId, String locationId) {
		super();
		this.courseOfferingId = courseOfferingId;
		this.courseId = courseId;
		this.classSize = classSize;
		this.waitlistSize = waitlistSize;
		this.semesterId = semesterId;
		this.locationId = locationId;
	}
	public String getCourseOfferingId() {
		return courseOfferingId;
	}
	public void setCourseOfferingId(String courseOfferingId) {
		this.courseOfferingId = courseOfferingId;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
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
	

}
