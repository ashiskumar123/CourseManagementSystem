<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student - Course Management System</title>
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
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="course info" class="container">
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
		       <div class= "col-xs-6">
		         <label>Course ID: </label>
		         	<input type ="text" name = "courseId"
		         	 id ="courseId" class="form-control" 
		         	 placeholder = "Enter Course Id"
					 value='<s:property value="%{course.courseId}"/>'/>
		         	 
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
		         <input type ="text" name="deptId" 
		         id ="deptId"class="form-control" 
		         placeholder="Enter Department ID" 
		         value='<s:property value="%{course.deptId}"/>'/>
		       </div>
	        
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>Credit Count: </label>
	            <input type ="text" name="creditCount" 
	            id="creditCount" class="form-control" 
	            placeholder="Enter Credit Count"  
	            value='<s:property value="%{course.creditCount}"/>'/>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Course Type: </label>
	             <input type="text" name="courseType" 
	             id="courseType" class="form-control" 
	             placeholder ="Enter Phone Number"  
	             value='<s:property value="%{course.courseType}"/>'/>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Classification Level: </label>
	           <input type="text" id="levelClassification" 
	           name="levelClassification" class="form-control" 
	           placeholder ="Enter Classification Level"  
	           value='<s:property value="%{course.classificationLevel}"/>'/>
	          </div>
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Update" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        <!-- <input type="hidden" name="userId" value='<s:property value="userId"/>' /> -->
	      <!--   <input type="hidden" name="deptId" id="deptId" value='<s:property value="%{student.deptId}"/>' />
	        <input type="hidden" name="resType" id="resType" value='<s:property value="%{student.resType}"/>' />
	        <input type="hidden" name="levelClassification" id="levelClassification" value='<s:property value="%{student.levelClassification}"/>' /> -->
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>