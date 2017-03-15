package com.ncsu.cms.controller;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.db.dao.DAO;
import com.ncsu.cms.db.impl.DAOImpl;
import com.opensymphony.xwork2.ActionSupport;

public class AuthenticationAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private String jsonString;
	private HashMap<String, Object> returnData;
	private HttpSession session;
	private HttpServletRequest request;
	private String actionName;
	private ErrorBean errorData;
	
	public String execute() throws Exception {
		
		returnData = new HashMap<String, Object>();
		errorData = new ErrorBean();
		
		DAO cmsDB = new DAOImpl();
		request = ServletActionContext.getRequest();
		session = request.getSession();
		
		//actionName = (String) request.getAttribute("actionName");
		
		if(actionName.equals("ACTION_VALIDATE_LOGIN"))
		{
			//System.out.println("jsonString="+jsonString);

			Gson gson = new GsonBuilder().create();
			LoginBean loginData = gson.fromJson(jsonString, LoginBean.class);
			
			errorData = cmsDB.validateLogin(loginData);
			
			returnData.put("loginResult", errorData);
		}
		else if(actionName.equals("ACTION_LOGOUT"))
		{
			
		}
		
		Gson gson = new GsonBuilder().create();
		jsonString = gson.toJson(returnData);

		return SUCCESS;
	}
	public String getJsonString() {
		return jsonString;
	}
	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
}