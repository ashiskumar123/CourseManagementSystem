package com.ncsu.cms.db.dao;

import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;
import com.ncsu.cms.bean.StudentBean;

public interface DAO {
	public LoginResultBean validateLogin(LoginBean loginData);
	
	public StudentBean getStudentDetails(int studentId);
}
