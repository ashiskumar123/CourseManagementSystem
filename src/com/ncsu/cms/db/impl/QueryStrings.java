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
													 " USER_ID, FIRSTNAME, LASTNAME, SSN "+
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
	public static final String SELECT_COURSE_OFFERING_LIST = 	" select "+
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
																" from"+
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
}
