<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course List</title>'
<jsp:include page="common-include.jsp" />
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="courseTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Course List</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Course Offering ID</th>
	                <th>Course ID</th>
	                <th>Class Size</th>
	                <th>Waitlist Size</th>
	                <th>Semester ID</th>
	                <th>Location ID</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="courseOfferingList">
              		<tr>
              			<td><s:property value="courseOfferingId"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="classSize"/></td>
              			<td><s:property value="waitlistSize"/></td>
              			<td><s:property value="semesterId"/></td>
              			<td><s:property value="locationId"/></td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addCourseOffering" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnAddCourseOffering" value ="Add Course Offering" />   		   		
	  </form>
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Offering List</title>'
<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/course-offering-list.js'></script>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="courseTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Course Offering List</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Course Offering ID</th>
	                <th>Course ID</th>
	                <th>Class Size</th>
	                <th>Waitlist Size</th>
	                <th>Semester </th>
	                <th>Location </th>
	                <th>Edit Course Offering</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="courseOfferingList">
              		<tr>
              			<td><s:property value="courseOfferingId"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="classSize"/></td>
              			<td><s:property value="waitlistSize"/></td>
              			<td><s:property value="semesterId"/></td>
              			<td><s:property value="locationId"/></td>
              			<td>
           					<input type ="button" data-course-offering-id='<s:property value="courseOfferingId"/>' 
           							class="btn btn-primary btn-edit-course-offering"
									value ="Edit Course Offering"/>
              			</td>
              			<td>
           					<input type ="button" data-course-offering-id='<s:property value="courseOfferingId"/>' 
           							class="btn btn-primary btn-add-faculty"
									value ="Add Faculty"/>
              			</td>
              			<td>
           					<input type ="button" data-course-offering-id='<s:property value="courseOfferingId"/>' 
           							class="btn btn-primary btn-add-schedule"
									value ="Add Schedule"/>
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addCourseOffering" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnAddCourseOffering" value ="Add Course Offering" />   		   		
	  </form>
	</div>
	<div class="container">
	<div class="row inter-row" >
		       
			   
			   	<form id="frmSearchCourseOffering" method="post" action="searchCourseOffering" style = "margin-top:15px">    
			   		<div class= "col-xs-3">
			            <label>Search Course Offering: </label>
			         	<input type ="text" name = "searchOfferingCourse"
			         	id ="searchOfferingCourse" class="form-control"
			         	placeholder = "Enter Course Offering ID"/>
			        </div>  
			        <div class="col-xs-3"style="margin-top:25px">		
		  				<input type ="submit" class="btn btn-primary" id ="btnSearchCourseOffering" value ="Search Course Offering" />
		  			</div>   		   		
	 			 </form>
			   	        
	        </div>
	        </div>

	<jsp:include page="common-footer.jsp" />

</body>
>>>>>>> branch 'master' of https://github.com/ashissahoo/CourseManagementSystem.git
</html>