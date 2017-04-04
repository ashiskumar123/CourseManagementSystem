<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student - Course Management System</title>
<jsp:include page="common-include.jsp" />
<script type="text/javascript" src="js/student-home-main.js"></script>


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
	<div id ="student info" class="container">
		<div class ="maincontent">
		    
		    <div>
		      <h2>Course Details</h2>
		    </div>
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmAddCourse" method="post" action="saveCourse">
		  
		    <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course ID: </label>
		         	<input type ="text" name = "courseId" id ="courseId" class="form-control" placeholder = "Enter Course ID" ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course Name: </label>
		         	<input type ="text" name = "courseName" id ="courseName" class="form-control" placeholder = "Enter Course Name" ></input>
			   </div>   		        
	        </div>
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Department ID: </label>
		         	<input type ="text" name = "deptId" id ="deptId" class="form-control" placeholder = "Enter Dept Id" ></input>
			   </div>   		        
	        </div>
	        
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Max Credits: </label>
		         <input type ="text" name="maxCredits" id ="maxCredits" class="form-control" placeholder="Enter Credit Count" value =  ></input>
		       </div>
	        
	        </div>
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Min Credits: </label>
		         <input type ="text" name="minCredits" id ="minCredits" class="form-control" placeholder="Enter Credit Count" value =  ></input>
		       </div>
	        
	        </div>
	        
	        
	        
	        
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>Course Type: </label>
	            <input type ="text" name="courseType" id="courseType" class="form-control" placeholder="Enter Course Type"  ></input>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Classification Level: </label>
	             <input type="text" name="levelClassification" id="levelClassification" class="form-control" placeholder ="Enter Level Classification"  ></input>
	          </div>
	         
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Save" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        
	        
	      </form>
	      	      
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>