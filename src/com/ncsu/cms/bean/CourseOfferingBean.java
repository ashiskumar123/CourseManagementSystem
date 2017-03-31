package com.ncsu.cms.bean;

import java.io.Serializable;
import java.util.List;

public class CourseOfferingBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String courseId;
	private String offeringId;
	private String courseName;
	private String creditCount;
	private String departmentName;
    private List<FacultyBean> facultyList;
    private String classSize;
    private String enrolledSize;
    private String waitlistSize;
    private String waitlistCount;
    private String roomNo;
    private String building;
    private String fromTime;
    private String toTime;
    private String days;
    private String levelClassification;
    private String courseType;
    
	public CourseOfferingBean(String courseId, String offeringId, String courseName, String creditCount, String departmentName,
			List<FacultyBean> facultyList, String classSize, String enrolledSize, String waitlistSize,
			String waitlistCount, String roomNo, String building, String fromTime, String toTime, String days,
			String levelClassification, String courseType) {
		super();
		this.courseId = courseId;
		this.offeringId = offeringId;
		this.courseName = courseName;
		this.creditCount = creditCount;
		this.departmentName = departmentName;
		this.facultyList = facultyList;
		this.classSize = classSize;
		this.enrolledSize = enrolledSize;
		this.waitlistSize = waitlistSize;
		this.waitlistCount = waitlistCount;
		this.roomNo = roomNo;
		this.building = building;
		this.fromTime = fromTime;
		this.toTime = toTime;
		this.days = days;
		this.levelClassification = levelClassification;
		this.courseType = courseType;
	}
	
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getOfferingId() {
		return offeringId;
	}
	public void setOfferingId(String offeringId) {
		this.offeringId = offeringId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCreditCount() {
		return creditCount;
	}

	public void setCreditCount(String creditCount) {
		this.creditCount = creditCount;
	}

	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public List<FacultyBean> getFacultyList() {
		return facultyList;
	}
	public void setFacultyList(List<FacultyBean> facultyList) {
		this.facultyList = facultyList;
	}
	public String getClassSize() {
		return classSize;
	}
	public void setClassSize(String classSize) {
		this.classSize = classSize;
	}
	public String getEnrolledSize() {
		return enrolledSize;
	}
	public void setEnrolledSize(String enrolledSize) {
		this.enrolledSize = enrolledSize;
	}
	public String getWaitlistSize() {
		return waitlistSize;
	}
	public void setWaitlistSize(String waitlistSize) {
		this.waitlistSize = waitlistSize;
	}
	public String getWaitlistCount() {
		return waitlistCount;
	}
	public void setWaitlistCount(String waitlistCount) {
		this.waitlistCount = waitlistCount;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
	public String getFromTime() {
		return fromTime;
	}
	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}
	public String getToTime() {
		return toTime;
	}
	public void setToTime(String toTime) {
		this.toTime = toTime;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getLevelClassification() {
		return levelClassification;
	}
	public void setLevelClassification(String levelClassification) {
		this.levelClassification = levelClassification;
	}
	public String getCourseType() {
		return courseType;
	}
	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
    
    
}
