package com.ncsu.cms.bean;
import java.io.Serializable;
public class StudentListBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userId;
	private String phoneNumber;
	private String firstName;
	private String lastName;
	private String deptId;
	private String gpa;
	private String email;
	private String residencyType;
	private String address;
	private String levelClassification;
	
	public StudentListBean(String userId, String firstName, String lastName, String email, String address, String phoneNumber, 
			String deptId, String gpa, String residencyType, String levelClassification) {
		super();
		this.userId = userId;
		this.phoneNumber = phoneNumber;
		this.firstName = firstName;
		this.lastName = lastName;
		this.deptId = deptId;
		this.gpa = gpa;
		this.email = email;
		this.residencyType = residencyType;
		this.address = address;
		this.levelClassification = levelClassification;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	public String getGpa() {
		return gpa;
	}
	public void setGpa(String gpa) {
		this.gpa = gpa;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getResidencyType() {
		return residencyType;
	}
	public void setResidencyType(String residencyType) {
		this.residencyType = residencyType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLevelClassification() {
		return levelClassification;
	}
	public void setLevelClassification(String levelClassification) {
		this.levelClassification = levelClassification;
	}
	
	

}
