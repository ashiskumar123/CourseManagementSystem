package com.ncsu.cms.controller;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	
	public String execute() throws Exception {
		/*if ("SECRET".equals(name))
		{
			return SUCCESS;
		}else{
			return ERROR;  
		}*/
		
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}