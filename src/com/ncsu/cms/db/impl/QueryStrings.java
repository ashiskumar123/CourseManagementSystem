package com.ncsu.cms.db.impl;

public class QueryStrings {
	public static final String SELECT_VALIDATE_LOGIN = "select USER_ID, ROLE from USERS where USERNAME=? and PASSWORD=?";
	
	public static final String SELECT_STUDENT_DETAILS = "SELECT "+
														"	USER_ID, FIRSTNAME, LASTNAME, PHONE_NUMBER, ADDRESS, EMAIL, GPA, DEPARTMENT_NAME,"+
														"	CASE LEVEL_CLASSIFICATION WHEN 1 THEN 'UNDERGRADUATE' WHEN 2 THEN 'GRADUATE' END LEVEL_CLASSIFICATION,"+
														"	(SELECT DESCRIPTION FROM RESIDENCY_TYPE_LOOKUP WHERE ID = RESIDENCY_TYPE) RESIDENCY_TYPE"+
														" FROM"+
														" 	STUDENT, DEPARTMENT"+
														" WHERE"+
														"	DEPARTMENT_ID = DEPT_ID AND"+
														"	USER_ID=?";
	public static final String SELECT_STUDENT_CURRENT_COURSE_LIST = "SELECT "+
																	"   D.DEPARTMENT_NAME, C.COURSE_ID, C.COURSE_NAME,O.OFFERING_ID, L.ROOM_NO, L.BUILDING"+
																	" FROM"+
																	"   DEPARTMENT D, COURSE C, COURSE_OFFERING O, ENROLLED_IN E, STUDENT S, LOCATION L"+
																	" WHERE"+
																	"   E.USER_ID=? AND E.ENROLLMENT_STATUS=1 AND S.USER_ID = E.USER_ID AND"+
																	"   E.OFFERING_ID = O.OFFERING_ID AND"+
																	"   L.LOCATION_ID = O.LOCATION_ID AND"+
																	"   O.COURSE_ID = C.COURSE_ID AND"+
																	"   C.DEPARTMENT_ID = D.DEPARTMENT_ID";	
	
	public static final String SELECT_COURSE_SCHEDULE = "SELECT "+ 
														"	TO_CHAR(Sch.FROM_TIME, 'HH:MI AM'), TO_CHAR(Sch.TO_TIME, 'HH:MI AM'), TO_CHAR(NEXT_DAY(TO_DATE('01-JAN-1999'), Sch.DAY), 'Day')"+
														" FROM "+
														"	OFFERING_SCHEDULE Sch,COURSE_OFFERING O "+
														" WHERE "+
														"	O.OFFERING_ID =? AND O.OFFERING_ID = Sch.OFFERING_ID "; 
	
	public static final String SELECT_OFFERING_LOCATION =   "SELECT "+ 
															"	Loc.ROOM_NO, Loc.BUILDING "+
															" FROM "+
															"	LOCATION Loc,COURSE_OFFERING O "+
															" WHERE "+
															"	O.OFFERING_ID =? AND O.LOCATION_ID = Loc.LOCATION_ID";

	public static final String SELECT_COURSE_FACULTY =   "SELECT "+ 
														 "	Fac.FIRST_NAME, Fac.LAST_NAME "+
														 " FROM "+
														 "	FACULTY Fac, FACULTY_LIST Flist, COURSE_OFFERING O "+
														 " WHERE "+
														 "	O.OFFERING_ID =? AND Flist.OFFERING_ID = O.OFFERING_ID AND Flist.FACULTY_ID = Fac.FACULTY_ID ";
	
	public static final String UPDATE_STUDENT_DETAILS = "UPDATE STUDENT Stu "+
														"SET Stu.FIRSTNAME=?, Stu.LASTNAME=?, Stu.EMAIL=?, "+ 
														" Stu.PHONE_NUMBER=?, Stu.ADDRESS=? "+
														"WHERE Stu.USER_ID =? ";

	public static final String SELECT_STUDENT_COMPLETED_COURSE_LIST =   "SELECT "+
																		" Dept.DEPARTMENT_NAME, C.COURSE_ID,C.COURSE_NAME, En.GRADE "+
																		"FROM "+
																		" DEPARTMENT Dept, COURSE C, COURSE_OFFERING O, ENROLLED_IN En, STUDENT S "+
																		"WHERE "+
																		" En.USER_ID=? AND En.ENROLLMENT_STATUS=3 AND En.USER_ID=S.USER_ID AND En.OFFERING_ID = O.OFFERING_ID AND O.COURSE_ID = C.COURSE_ID "+
																		" AND C.DEPARTMENT_ID =Dept.DEPARTMENT_ID";
	
	public static final String UPDATE_USER_PASSWORD = "UPDATE USERS U "+
			  										  "	SET U.PASSWORD=? "+
			  										  "WHERE "+ 
			  										  " U.USER_ID=?";
	
	public static final String SELECT_ADMIN_DETAILS= "SELECT "+
													 "  FIRSTNAME, LASTNAME, SSN "+
													 " FROM ADMIN "+
													 "WHERE USER_ID=? ";
	
	public static final String SELECT_BILL_AMOUNT =  "SELECT "+
													 " Bill.BILL_AMOUNT "+
													 "FROM "+
													 " BILL_PAYS Bill "+
													 "WHERE "+
													 " Bill.USER_ID=? ";
	
	public static final String UPDATE_BILL_AMOUNT =  "UPDATE "+
													 " BILL_PAYS Bill "+
													 "SET "+
													 " Bill.BILL_AMOUNT=? "+
													 "WHERE "+
													 " Bill.USER_ID=? ";
	
	public static final String UPDATE_ADMIN_DETAILS =   "UPDATE ADMIN A "+
														" SET A.FIRSTNAME=?, A.LASTNAME=?, A.SSN = ? "+
														"WHERE "+
														" A.USER_ID =? ";
	
	public static final String GET_STUDENT_LIST =   "SELECT * "+
													" FROM "+
													"STUDENT ";
	
	public static final String ADD_STUDENT = "INSERT "+
			 								 " INTO STUDENT "+
			 								 "(USER_ID, FIRSTNAME, LASTNAME, EMAIL, ADDRESS, PHONE_NUMBER, DEPT_ID, GPA, RESIDENCY_TYPE, LEVEL_CLASSIFICATION) "+
			 								 " VALUES (?,?,?,?,?,?,?,?,?,?)";
    
	public static final String ADD_USER = "INSERT "+
			 								 " INTO USERS "+
			 								 "(USER_ID, USERNAME, PASSWORD, ROLE) "+
			 								 " VALUES (?,?,?,?)";
	
	
	public static final String GET_COURSE_LIST =   "SELECT * "+
													" FROM "+
													"COURSE ";
	
	public static final String ADD_COURSE = "INSERT "+
											" INTO COURSE "+
											"(COURSE_ID, COURSE_NAME, DEPARTMENT_ID, CREDIT_COUNT, COURSE_TYPE, CLASSIFICATION_LEVEL) "+
											" VALUES (?,?,?,?,?,?)";

	
	
	
}
