<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Current Semester - Course Management System</title>
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
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li><a href="#" onclick="postNavigate('editSemester')">Semester List</a></li>
		  <li class="active">Edit Semester</li>
		</ol>
		<div class ="maincontent">
		    
		    <div>
		      <h2>Edit Semester Information</h2>
		    </div>
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmEditSemester" method="post" action="saveCurrentSemester">
		    
		    
		    <div class="row inter-row" >  
			   <div class="col-xs-6">
		        	Semester ID: 
			        <label for="sid">
			        	<s:property value="%{semester.semesterId}"/>
			        </label>
				</div>		        
	        </div>
		    
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Semester Type: </label>
		         	<input type ="text" name = "semesterType"
		         	id ="semesterType" class="form-control"
		         	placeholder = "Enter Course Name"
					value='<s:property value="%{semester.semesterType}"/>'/>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Start Date: </label>
		         <input type ="date" name="startDate" 
		         id ="startDate"class="form-control" 
		         placeholder="Enter Department ID" 
		         value='<s:property value="%{semester.startDate}"/>'/>
		       </div>
	        
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>End Date: </label>
	            <input type ="date" name="endDate" 
	            id="endDate" class="form-control" 
	            placeholder="Enter Credit Count"  
	            value='<s:property value="%{semester.endDate}"/>'/>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Course Add Deadline: </label>
	             <input type="date" name="courseAddDeadline" 
	             id="courseAddDeadline" class="form-control" 
	             value='<s:property value="%{semester.courseAddDeadline}"/>'/>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Course Drop Deadline: </label>
	           <input type="date" id="courseDropDeadline" 
	           name="courseDropDeadline" class="form-control" 
	           value='<s:property value="%{semester.courseDropDeadline}"/>'/>
	          </div>
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Update" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	         <input type="hidden" name="semesterId" value='<s:property value="%{semester.semesterId}"/>' /> 
	      <!--   <input type="hidden" name="deptId" id="deptId" value='<s:property value="%{student.deptId}"/>' />
	        <input type="hidden" name="resType" id="resType" value='<s:property value="%{student.resType}"/>' />
	        <input type="hidden" name="levelClassification" id="levelClassification" value='<s:property value="%{student.levelClassification}"/>' /> -->
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>