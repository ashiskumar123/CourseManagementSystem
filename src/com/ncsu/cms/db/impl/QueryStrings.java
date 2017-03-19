package com.ncsu.cms.db.impl;

public class QueryStrings {
	public static final String SELECT_VALIDATE_LOGIN = "select USER_ID, ROLE from USERS where USERNAME=? and PASSWORD=?";
	
	public static final String SELECT_STUDENT_DETAILS = "SELECT "+
														"	USER_ID, FIRSTNAME, LASTNAME, PHONE_NUMBER, ADDRESS, EMAIL, GPA, DEPARTMENT_NAME,"+
														"	CASE LEVEL_CLASSIFICATION WHEN 1 THEN 'UNDERGRADUATE' WHEN 2 THEN 'GRADUATE' END LEVEL_CLASSIFICATION,"+
														"	CASE RESIDENCY_TYPE WHEN 1 THEN 'IN-STATE' WHEN 2 THEN 'OUT-STATE' WHEN 3 THEN 'INTERNATIONAL' END RESIDENCY_TYPE"+
														" FROM"+
														" 	STUDENT, DEPARTMENT"+
														" WHERE"+
														"	DEPARTMENT_ID = DEPT_ID AND"+
														"	USER_ID=?";
}
