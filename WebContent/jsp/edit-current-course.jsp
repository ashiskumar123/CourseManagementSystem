<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student - Course Management System</title>
<jsp:include page="common-include.jsp" />
<script type="text/javascript" src="js/edit-current-course-main.js"></script>

<style>
    .inter-row{
    margin-top : 15px;
    }
    
}
</style>
</head>

<body>
	<jsp:include page="common-header.jsp" />
	<div id ="course info" class="container">
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li><a href="#" onclick="postNavigate('showCourseList')">Course List</a></li>
		  <li class="active">Edit Course</li>
		</ol>
		<div class ="maincontent">
		    
		    <div>
		      <h2>Edit Course Information</h2>
		    </div>
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmEditCourse" method="post" action="saveCurrentCourse">
		    
	       <div class="row inter-row" >  
			   <div class="col-xs-6">
		        	Course ID: 
			        <label for="cid">
			        	<s:property value="%{course.courseId}"/>
			        </label>
				</div>		        
	        </div>
	        	
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course Name: </label>
		         	<input type ="text" name = "courseName"
		         	id ="courseName" class="form-control"
		         	placeholder = "Enter Course Name"
					value='<s:property value="%{course.courseName}"/>'/>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Department ID: </label>
		           <s:select value="%{course.departmentId}" cssClass="form-control" id="selectDeptId" 
		           		list="departmentList" listKey="departmentId" listValue="departmentName"/>
	           </div>
	       	</div>
	       	
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             	<label>Course Type: </label>
		           	<select id="selectCourseType" class="form-control">
			           	<option value="1">Fixed Credit</option>
			           	<option value="2">Variable Credit</option>
		           	</select>
	          </div>
	        </div>

	        <div id="minCreditsRow" class="row inter-row" style="display: none;">
	          <div class="col-xs-6">
	            <label>Minimum Credits: </label>
	            <input type ="text" name="minCredits" 
	            id="minCredits" class="form-control" 
	            placeholder="Enter Credit Count"  
	            value='<s:property value="%{course.minCredits}"/>'/>
	          </div>
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Max Credits: </label>
		         <input type ="text" name="maxCredits" 
		         id ="maxCredits"class="form-control" 
		         placeholder="Enter Max Credits" 
		         value='<s:property value="%{course.maxCredits}"/>'/>
		       </div>
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Classification Level: </label>
		           <select id="selectLevelClassification" class="form-control">
		           	<option value="1">Graduate</option>
		           	<option value="2">Undergraduate</option>
		           </select>
	          </div>
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Update" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        <input type="hidden" name="courseId" value=<s:property value="%{course.courseId}"/> /> 
	      	<input type="hidden" name="deptId" id="deptId" value='<s:property value="%{course.departmentId}"/>' />
	        <input type="hidden" name="courseType" id="courseType" value='<s:property value="%{course.courseType}"/>' />
	        <input type="hidden" name="levelClassification" id="levelClassification" value='<s:property value="%{course.classificationLevel}"/>' />
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>