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
	public static final String SELECT_COURSE_OFFERING_LIST = 	" SELECT "+
																"   offering.COURSE_ID,"+
																"   TO_CHAR(offering.OFFERING_ID,'000'),"+
																"   offering.COURSE_NAME,"+
																"   offering.CREDIT_COUNT,"+
																"   offering.COURSE_DEPARTMENT,"+
																"   offering.FACULTY_LIST,"+
																"   offering.CLASS_SIZE,"+
																"   NVL(enrollment.ENROLLED_COUNT,0) ENROLLED_COUNT,"+
																"   offering.WAITLIST_SIZE,"+
																"   NVL(enrollment.WAITING_COUNT,0) WAITING_COUNT,"+
																"   offering.ROOM_NO,"+
																"   offering.BUILDING,"+
																"   offering.FROM_TIME,"+
																"   offering.TO_TIME,"+
																"   offering.DAY,"+
																"   offering.LEVEL_CLASSIFICATION_ID,"+
																"   offering.LEVEL_CLASSIFICATION,"+
																"   offering.COURSE_TYPE_LOOKUP_ID,"+
																"   offering.COURSE_TYPE"+
																" FROM"+
																"   (SELECT COURSE_ID,"+
																"     COURSE_NAME,"+
																"     CREDIT_COUNT,"+
																"     DEPARTMENT_ID,"+
																"     COURSE_DEPARTMENT,"+
																"     OFFERING_ID,"+
																"     CLASS_SIZE,"+
																"     WAITLIST_SIZE,"+
																"     ROOM_NO,"+
																"     BUILDING,"+
																"     FROM_TIME,"+
																"     TO_TIME,"+
																"     DAY,"+
																"     LISTAGG(FIRST_NAME || ',' || LAST_NAME , ';')"+
																"       WITHIN GROUP (ORDER BY FIRST_NAME) AS FACULTY_LIST,"+
																"     LEVEL_CLASSIFICATION_ID,"+
																"     LEVEL_CLASSIFICATION,"+
																"     COURSE_TYPE_LOOKUP_ID,"+
																"     COURSE_TYPE"+
																"     "+
																"   FROM("+
																"   SELECT COURSE.COURSE_ID,"+
																"     COURSE.COURSE_NAME,"+
																"     COURSE.CREDIT_COUNT,"+
																"     DEPARTMENT.DEPARTMENT_ID,"+
																"     DEPARTMENT.DEPARTMENT_NAME COURSE_DEPARTMENT,"+
																"     COURSE_OFFERING.OFFERING_ID,"+
																"     COURSE_OFFERING.CLASS_SIZE,"+
																"     COURSE_OFFERING.WAITLIST_SIZE,"+
																"     LOCATION.ROOM_NO,"+
																"     LOCATION.BUILDING,"+
																"     TO_CHAR(OFFERING_SCHEDULE.FROM_TIME, 'HH:MI AM') FROM_TIME,"+
																"     TO_CHAR(OFFERING_SCHEDULE.TO_TIME, 'HH:MI AM') TO_TIME,"+
																"     LISTAGG(TRIM(TO_CHAR(NEXT_DAY(TO_DATE('01-JAN-1999'), OFFERING_SCHEDULE.DAY), 'DY')) , ',')"+
																"       WITHIN GROUP (ORDER BY OFFERING_SCHEDULE.DAY) AS DAY,"+
																"     FACULTY.FIRST_NAME,"+
																"     FACULTY.LAST_NAME,"+
																"     LEVEL_CLASSIFICATION_LOOKUP.ID LEVEL_CLASSIFICATION_ID,"+
																"     LEVEL_CLASSIFICATION_LOOKUP.DESCRIPTION LEVEL_CLASSIFICATION,"+
																"     COURSE_TYPE_LOOKUP.ID COURSE_TYPE_LOOKUP_ID,"+
																"     COURSE_TYPE_LOOKUP.DESCRIPTION AS COURSE_TYPE"+
																"   FROM COURSE"+
																"   INNER JOIN COURSE_OFFERING"+
																"   ON COURSE.COURSE_ID = COURSE_OFFERING.COURSE_ID"+
																"   INNER JOIN COURSE_TYPE_LOOKUP"+
																"   ON COURSE_TYPE_LOOKUP.ID = COURSE.COURSE_TYPE"+
																"   INNER JOIN LEVEL_CLASSIFICATION_LOOKUP"+
																"   ON LEVEL_CLASSIFICATION_LOOKUP.ID = COURSE.CLASSIFICATION_LEVEL"+
																"   LEFT JOIN OFFERING_SCHEDULE"+
																"   ON COURSE_OFFERING.OFFERING_ID = OFFERING_SCHEDULE.OFFERING_ID"+
																"   INNER JOIN FACULTY_LIST"+
																"   ON COURSE_OFFERING.OFFERING_ID = FACULTY_LIST.OFFERING_ID"+
																"   INNER JOIN FACULTY"+
																"   ON FACULTY.FACULTY_ID = FACULTY_LIST.FACULTY_ID"+
																"   INNER JOIN LOCATION"+
																"   ON LOCATION.LOCATION_ID = COURSE_OFFERING.LOCATION_ID"+
																"   INNER JOIN SEMESTER"+
																"   ON SEMESTER.SEMESTER_ID = COURSE_OFFERING.SEM_ID"+
																"   INNER JOIN DEPARTMENT"+
																"   ON DEPARTMENT.DEPARTMENT_ID = COURSE.DEPARTMENT_ID"+
																"   WHERE"+
																"   SEMESTER.COURSE_ADD_DEADLINE > SYSDATE"+
																"   group by (COURSE.COURSE_ID,"+
																"     COURSE.COURSE_NAME,"+
																"     COURSE.CREDIT_COUNT,"+
																"     DEPARTMENT.DEPARTMENT_ID,"+
																"     DEPARTMENT.DEPARTMENT_NAME,"+
																"     COURSE_OFFERING.OFFERING_ID,"+
																"     COURSE_OFFERING.CLASS_SIZE,"+
																"     COURSE_OFFERING.WAITLIST_SIZE,"+
																"     LOCATION.ROOM_NO,"+
																"     LOCATION.BUILDING,"+
																"     TO_CHAR(OFFERING_SCHEDULE.FROM_TIME, 'HH:MI AM'),"+
																"     TO_CHAR(OFFERING_SCHEDULE.TO_TIME, 'HH:MI AM'),"+
																"     FACULTY.FIRST_NAME,"+
																"     FACULTY.LAST_NAME,"+
																"     LEVEL_CLASSIFICATION_LOOKUP.ID,"+
																"     LEVEL_CLASSIFICATION_LOOKUP.DESCRIPTION,"+
																"     COURSE_TYPE_LOOKUP.ID,"+
																"     COURSE_TYPE_LOOKUP.DESCRIPTION)"+
																"     ) COURSES"+
																"     group by"+
																"     COURSE_ID,"+
																"     COURSE_NAME,"+
																"     CREDIT_COUNT,"+
																"     DEPARTMENT_ID,"+
																"     COURSE_DEPARTMENT,"+
																"     OFFERING_ID,"+
																"     CLASS_SIZE,"+
																"     WAITLIST_SIZE,"+
																"     ROOM_NO,"+
																"     BUILDING,"+
																"     FROM_TIME,"+
																"     TO_TIME,"+
																"     DAY,"+
																"     LEVEL_CLASSIFICATION_ID,"+
																"     LEVEL_CLASSIFICATION,"+
																"     COURSE_TYPE_LOOKUP_ID,"+
																"     COURSE_TYPE"+
																"   ) offering"+
																" LEFT JOIN"+
																"   ("+
																"     select * from("+
																"       select OFFERING_ID,ENROLLMENT_STATUS"+
																"       from ENROLLED_IN"+
																"       where ENROLLMENT_STATUS IN(1,3)"+
																"     )"+
																"     pivot("+
																"       count(*)"+
																"       for ENROLLMENT_STATUS in(1 ENROLLED_COUNT,3 WAITING_COUNT)"+
																"     )"+
																"   ) enrollment"+
																" ON"+
																"   offering.OFFERING_ID = enrollment.OFFERING_ID"+
																" WHERE"+
																"   offering.DEPARTMENT_ID like ?";
	
	public static final String UPDATE_ADMIN_DETAILS =   "UPDATE ADMIN A "+
														" SET A.FIRSTNAME=?, A.LASTNAME=?, A.SSN = ? "+
														"WHERE "+
														" A.USER_ID =? ";
	
	public static final String GET_STUDENT_LIST =   " SELECT STUDENT.USER_ID,"+
													" 	(SELECT USERNAME FROM USERS WHERE USER_ID=STUDENT.USER_ID) USERNAME,"+
													"   STUDENT.FIRSTNAME,"+
													"   STUDENT.LASTNAME,"+
													"   STUDENT.EMAIL,"+
													"   STUDENT.ADDRESS,"+
													"   STUDENT.PHONE_NUMBER,"+
													"   STUDENT.DEPT_ID,"+
													"   STUDENT.GPA,"+
													"   STUDENT.RESIDENCY_TYPE,"+
													"   STUDENT.LEVEL_CLASSIFICATION"+
													" FROM STUDENT"+
													" WHERE STUDENT.USER_ID LIKE ?";
	
	public static final String ADD_STUDENT = "INSERT "+
			 								 " INTO STUDENT "+
			 								 "(USER_ID, FIRSTNAME, LASTNAME, EMAIL, ADDRESS, PHONE_NUMBER, DEPT_ID, GPA, RESIDENCY_TYPE, LEVEL_CLASSIFICATION) "+
			 								 " VALUES (?,?,?,?,?,?,?,?,?,?)";
    
	public static final String ADD_USER = "INSERT "+
			 								 " INTO USERS "+
			 								 "(USER_ID, USERNAME, PASSWORD, ROLE) "+
			 								 " VALUES (?,?,?,?)";
	
	
	public static final String GET_COURSE_LIST =  " SELECT COURSE.COURSE_ID,"+
												"   COURSE.COURSE_NAME,"+
												"   COURSE.DEPARTMENT_ID,"+
												"   COURSE.CREDIT_COUNT,"+
												"   COURSE.COURSE_TYPE,"+
												"   COURSE.CLASSIFICATION_LEVEL"+
												" 	FROM COURSE"+
												" 	WHERE COURSE.COURSE_ID LIKE ?";
	
	public static final String ADD_COURSE = "INSERT "+
											" INTO COURSE "+
											"(COURSE_ID, COURSE_NAME, DEPARTMENT_ID, CREDIT_COUNT, COURSE_TYPE, CLASSIFICATION_LEVEL) "+

											" VALUES (?,?,?,?,?,?)";
	
	public static final String GET_COURSE_OFFERING_LIST =  " SELECT COURSE_OFFERING.OFFERING_ID,"+
															"   COURSE_OFFERING.COURSE_ID,"+
															"   COURSE_OFFERING.CLASS_SIZE,"+
															"   COURSE_OFFERING.WAITLIST_SIZE,"+
															"   COURSE_OFFERING.SEM_ID,"+
															"   COURSE_OFFERING.LOCATION_ID"+
															" 	FROM COURSE_OFFERING"+
															" 	WHERE COURSE_OFFERING.OFFERING_ID LIKE ?";
	
	public static final String ADD_COURSE_OFFERING = "INSERT "+
													 " INTO COURSE_OFFERING "+
													 "(OFFERING_ID, COURSE_ID, CLASS_SIZE, WAITLIST_SIZE, SEM_ID, LOCATION_ID) "+
													 " VALUES (?,?,?,?,?,?)";
	
	public static final String EDIT_STUDENT = 	" UPDATE STUDENT S"+
				 								 " SET S.FIRSTNAME=?, S.LASTNAME=?,S.EMAIL=?,S.ADDRESS=?,S.PHONE_NUMBER=?,S.DEPT_ID=?,S.RESIDENCY_TYPE=?,S.LEVEL_CLASSIFICATION=? "+
				 								 " WHERE "+
				 								 " S.USER_ID =? ;" + 
				 								 " UPDATE USER U SET U.USERNAME=? WHERE U.USER_ID=? ";
			 								 
	
	public static final String SELECT_DEPARTMENT_LIST = " SELECT"+
														"  DEPARTMENT.DEPARTMENT_ID,"+
														"  DEPARTMENT.DEPARTMENT_NAME"+
														" FROM DEPARTMENT";
	
	public static final String EDIT_COURSE = 	" UPDATE COURSE C"+
												 " SET C.COURSE_ID=?, C.COURSE_NAME=?,C.DEPARTMENT_ID=?,C.CREDIT_COUNT=?,C.COURSE_TYPE=?,C.CLASSIFICATION_LEVEL=?"+
												 " WHERE "+
												 " C.COURSE_ID =? ";
	
	public static final String EDIT_COURSE_OFFERING = 	" UPDATE COURSE_OFFERING O"+
														 " SET O.OFFERING_ID=?, O.COURSE_ID=?,O.CLASS_SIZE=?,O.WAITLIST_SIZE=?,O.SEM_ID=?,O.LOCATION_ID=?"+
														 " WHERE "+
														 " O.OFFERING_ID =? ";
	
			 
	public static final String GET_REQUEST_DETAILS = "SELECT "+
													 " R.REQ_ID, R.USER_ID, S.USERNAME,  R.CREDIT_COUNT, A.USERNAME, R.REQUEST_DATE, R.UPDATE_DATE, R.OFFERING_ID, R.STATUS "+
													 "FROM REQUEST R , USERS S, USERS A "+
													 " WHERE "+
													 "R.USER_ID=S.USER_ID AND A.USER_ID=R.ADMIN_ID";
	public static final String APPROVE_REQUEST = "UPDATE REQUEST R "+
												 " SET R.STATUS='APPROVED', R.UPDATE_DATE=?, R.ADMIN_ID=? "+
												 "WHERE "+
												 " R.REQ_ID=?";
	public static final String DECLINE_REQUEST = "UPDATE REQUEST R "+
			 									 " SET R.STATUS='DECLINED', R.UPDATE_DATE=?, R.ADMIN_ID=? "+
			 									 "WHERE "+
			 									 " R.REQ_ID=?";
	
	public static final String ENROLL_STUDENT = "INSERT "+
												" INTO ENROLLED_IN "+
												 "(USER_ID,OFFERING_ID,GRADE,WAITLIST_NO,ENROLLMENT_STATUS,DROP_COURSE,CREDIT_COUNT) "+
												 " VALUES (?,?,'F',0,1,NULL,?)";

	public static final String ADD_SEMESTER = "INSERT "+
											  " INTO SEMESTER "+
											  "(SEMESTER_ID,SEMESTER_TYPE,START_DATE,END_DATE,COURSE_ADD_DEADLINE,COURSE_DROP_DEADLINE) "+
											  " VALUES (?,?,?,?,?,?,?)";
	
	public static final String GET_SEMESTER_LIST =  " SELECT SEMESTER.SEMESTER_ID,"+													
													"   SEMESTER.SEMESTER_TYPE,"+
													"   SEMESTER.START_DATE,"+
													"   SEMESTER.END_DATE,"+
													"   SEMESTER.COURSE_ADD_DEADLINE,"+
													"   SEMESTER.COURSE_DROP_DEADLINE"+
													" 	FROM SEMESTER"+
													" 	WHERE SEMESTER.SEMESTER_ID LIKE ?";


	
	
	

}
