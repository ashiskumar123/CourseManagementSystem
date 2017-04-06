<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Offering List</title>
<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/course-offering-list.js'></script>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<div id ="courseTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Course Offering List</h2>
		 </div>
		    
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li class="active">Manage Course Offerings</li>
		</ol>
		
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
		 <div style="margin-top: 20px">
		  <form id="frmBillr" method="get" action="addCourseOffering" style = "margin-top:15px">    		
			  <input type ="submit" class="btn btn-primary" id ="btnAddCourseOffering" value ="Add Course Offering" />   		   		
		  </form>
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Course Offering ID</th>
	                <th>Course ID</th>
	                <th>Class Size</th>
	                <th>Waitlist Size</th>
	                <th>Semester </th>
	                <th>Location </th>
	                <th>Faculty</th>
	                <th>Schedule</th>
	                <th>Edit Course Offering</th>
	                <th>Add Faculty</th>
	                <th>Add Schedule</th>
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
              				<s:iterator value="faculty">
              					<s:property value="firstName"/>
              					<s:property value="lastName"/>,
              				</s:iterator>
              			</td>
              			<td>
              				<s:iterator value="schedule">
              					<s:property value="day"/>
              					From <s:property value="fromTime"/>
              					To <s:property value="toTime"/>
              					<br>
              				</s:iterator>
              			</td>
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
              			<td>
           					<input type ="button" data-course-offering-id='<s:property value="courseOfferingId"/>' 
           							class="btn btn-primary btn-edit-faculty"
									value ="Edit Faculty"/>
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>