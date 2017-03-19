package com.ncsu.cms.controller;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.opensymphony.xwork2.ActionSupport;

public class StudentEditAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String address1;
	private String address2;
	private String levelClassification;
	private String residencyClasiification;
	private String actionName;
	
	
	public String execute(){
		System.out.println(address1);
		
		if(actionName.equals("ACTION_GET_STUDENT_DETAILS"))
		{
		}
		else if(actionName.equals("ACTION_UPDATE_STUDENT_DETAILS"))
		{
		}
		
		return "success";
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
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getLevelClassification() {
		return levelClassification;
	}
	public void setLevelClassification(String levelClassification) {
		this.levelClassification = levelClassification;
	}
	public String getResidencyClasiification() {
		return residencyClasiification;
	}
	public void setResidencyClasiification(String residencyClasiification) {
		this.residencyClasiification = residencyClasiification;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
}
	
	

