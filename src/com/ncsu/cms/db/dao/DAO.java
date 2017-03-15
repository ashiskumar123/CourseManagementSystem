package com.ncsu.cms.db.dao;

import com.ncsu.cms.bean.LoginBean;
import com.ncsu.cms.bean.LoginResultBean;

public interface DAO {
	public LoginResultBean validateLogin(LoginBean loginData);
}
