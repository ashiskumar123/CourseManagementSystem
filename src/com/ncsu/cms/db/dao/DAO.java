package com.ncsu.cms.db.dao;

import com.ncsu.cms.bean.ErrorBean;
import com.ncsu.cms.bean.LoginBean;

public interface DAO {
	public ErrorBean validateLogin(LoginBean loginData);
}
