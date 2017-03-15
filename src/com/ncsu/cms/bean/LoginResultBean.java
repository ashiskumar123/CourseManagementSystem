package com.ncsu.cms.bean;

import java.io.Serializable;

public class LoginResultBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private ErrorBean errorData;
	private String role;
	
	public LoginResultBean() {
	}
	
	public ErrorBean getErrorData() {
		return errorData;
	}
	public void setErrorData(ErrorBean errorData) {
		this.errorData = errorData;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
