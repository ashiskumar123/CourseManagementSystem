package com.ncsu.cms.bean;
import java.io.Serializable;
public class CourseListBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String courseId;
	private String courseName;
	private String deptId;
	private String creditCount;
	private String courseType;
	private String classificationLevel;
	public CourseListBean(String courseId, String courseName, String deptId, String creditCount, String courseType,
			String classificationLevel) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.deptId = deptId;
		this.creditCount = creditCount;
		this.courseType = courseType;
		this.classificationLevel = classificationLevel;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	public String getCreditCount() {
		return creditCount;
	}
	public void setCreditCount(String creditCount) {
		this.creditCount = creditCount;
	}
	public String getCourseType() {
		return courseType;
	}
	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}
	public String getClassificationLevel() {
		return classificationLevel;
	}
	public void setClassificationLevel(String classificationLevel) {
		this.classificationLevel = classificationLevel;
	}
	

}
