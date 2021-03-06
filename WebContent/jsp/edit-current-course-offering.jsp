<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Course Offering - Course Management System</title>
<jsp:include page="common-include.jsp" />
<script type="text/javascript" src="js/edit-current-student-main.js"></script>

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
		<div class ="maincontent">
		    
		    <div>
		      <h2>Edit Course Offering Information</h2>
		    </div>
		    
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li><a href="#" onclick="postNavigate('showCourseOfferingList')">Manage Course Offerings</a></li>
			  <li class="active">Edit Offering</li>
			</ol>
			
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmEditCourseOffering" method="post" action="saveCurrentCourseOffering">
		    
	        <div class="row inter-row" >  
			   <div class="col-xs-6">
		        	Course Offering ID: 
			        <label for="coid">
			        	<s:property value="%{courseOffering.courseOfferingId}"/>
			        </label>
				</div>		        
	        </div>
	        
	        
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course ID: </label>
		         	<input type ="text" name = "courseId"
		         	 id ="courseId" class="form-control" 
		         	 placeholder = "Enter Course Id"
					 value='<s:property value="%{courseOffering.courseId}"/>'/>
		         	 
			   </div>   		        
	        </div>
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Class Size: </label>
		         	<input type ="text" name = "classSize"
		         	id ="classSize" class="form-control"
		         	placeholder = "Enter Class Size"
					value='<s:property value="%{courseOffering.classSize}"/>'/>
			   </div>   		        
	        </div>
	        
	         <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Waitlist Size: </label>
		         	<input type ="text" name = "waitlistSize"
		         	id ="waitlistSize" class="form-control"
		         	placeholder = "Enter Waitlist Size"
					value='<s:property value="%{courseOffering.waitlistSize}"/>'/>
			   </div>   		        
	        </div>
	        
	        
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Semester ID: </label>
		         <input type ="text" name="semesterId" 
		         id ="semesterId" class="form-control" 
		         placeholder="Enter Semester ID" 
		         value='<s:property value="%{semId}"/>'/>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Location ID: </label>
		         <input type ="text" name="locationId" 
		         id ="locationId" class="form-control" 
		         placeholder="Enter Location ID" 
		         value='<s:property value="%{location.locationId}"/>'/>
		         
		       </div>
	        
	        </div>
	        
	        
	        
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Update" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        <input type="hidden" name="courseOfferingId" value=<s:property value="%{courseOffering.courseOfferingId}"/> /> 
	        <!-- <input type="hidden" name="userId" value='<s:property value="userId"/>' /> 
	        <input type="hidden" name="deptId" id="deptId" value='<s:property value="%{student.deptId}"/>' />
	        <input type="hidden" name="resType" id="resType" value='<s:property value="%{student.resType}"/>' />
	        <input type="hidden" name="levelClassification" id="levelClassification" value='<s:property value="%{student.levelClassification}"/>' />-->
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>