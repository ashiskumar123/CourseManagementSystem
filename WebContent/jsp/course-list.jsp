<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course List</title>'
<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/course-list-main.js'></script>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<div class="container">
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li class="active">Course List</li>
		</ol>
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
	                <th>Course ID</th>
	                <th>Course Name</th>
	                <th>Department ID</th>
	                <th>Max Credits</th>
	                <th>Minimum Credits</th>
	                <th>Course type</th>
	                <th>Classification Level</th>	                
	                <th>Edit Course</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="courseList">
              		<tr>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="courseName"/></td>
              			<td><s:property value="departmentDescription"/></td>
              			<td><s:property value="maxCredits"/></td>
              			<td><s:property value="minCredits"/></td>
              			<td><s:property value="courseTypeDescription"/></td>
              			<td><s:property value="classificationLevelDescription"/></td>
              			
              			<td>
           					<input type ="button" data-course-id='<s:property value="courseId"/>' 
           							class="btn btn-primary btn-edit-course"
									value ="Edit Course"/>
              			</td>
              			<td>   		
			    			<input type ="button" data-course-id='<s:property value="courseId"/>' 
           							class="btn btn-primary btn-add-prereq"
									value ="Add Prerequisite"/>    		   		

              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addCourse" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnAddCourse" value ="Add Course" />   		   		
	  </form>
	</div>
	
	<div class="container">
	<div class="row inter-row" >
		       
			   
			   	<form id="frmBillr" method="post" action="searchCourse" style = "margin-top:15px">    
			   		<div class= "col-xs-3">
			            <label>Search Course: </label>
			         	<input type ="text" name = "searchCourse"
			         	id ="searchCourse" class="form-control"
			         	placeholder = "Enter Course ID"/>
			        </div>  
			        <div class="col-xs-3"style="margin-top:25px">		
		  				<input type ="submit" class="btn btn-primary" id ="btnSearchCourse" value ="Search Course" />
		  			</div>   		   		
	 			 </form>
			   	        
	        </div>
	        </div>

	<jsp:include page="common-footer.jsp" />

</body>