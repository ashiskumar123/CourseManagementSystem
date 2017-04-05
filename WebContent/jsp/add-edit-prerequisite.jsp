<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Prerequisite</title>'
<jsp:include page="common-include.jsp" />
<script type="text/javascript" src="js/add-edit-prereq-main.js"></script>
<style>
    .inter-row{
    margin-top : 15px;
    }
    @import url('https://fonts.googleapis.com/css?family=Lilita+One');
</style>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<div class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Add Prerequisite</h2>
		    </div>
		    
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li><a href="#" onclick="postNavigate('showCourseList')">Course List</a></li>
			  <li class="active">Manage Prerequisites</li>
			</ol>
		  <form id="frmAddPrereq" method="post" action="savePrerequisite">
		    
		    <div class="row inter-row" >  
			   <div class="col-xs-6">
		        	Course ID: 
			        <label for="cid">
			        	<s:property value="%{course.courseId}"/>
			        </label>
				</div>		        
	        </div>
		    
		    <!-- <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Prerequisite ID: </label>
		         <input type ="text" name="prereqId" id ="prereqId" class="form-control"  placeholder="Enter Prerequisite ID" ></input>
		       </div>
	        
	        </div> -->
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Prerequisite Type: </label>
	           	<select id="selectPrereqType" class="form-control">
		           	<option value="1">GPA</option>
		           	<option value="2">COURSE</option>
		           	<option value="3">SPPERM</option>
	           	</select>
	          </div>
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Prerequisite Details: </label>
		         <input type ="text" name="prereqDetails" id ="prereqDetails" class="form-control"  placeholder="Enter Prerequisite Details" ></input>
		       </div>
	        </div>
	        
	        <input type="hidden" name="courseId" value=<s:property value="%{course.courseId}"/> /> 
	        <input type="hidden" name="prereqType" value="1" id="prereqType" />
	        
	        <div class="row inter-row">
	          <input type ="submit" class="btn btn-primary" id ="addPrereq" value ="Add Prerequisite" />         
	        </div>
	        <div class="row inter-row">
	        	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px;">
	        	<s:property value="%{errorMessage}"/></p>
	        </div>
	        
	        <div class="row inter-row">
	        	<p style="color:green; font-family:'Lilita One', cursive; font-size:20px;"><s:property value="%{resetSuccess}"/></p>
	        </div>
	        
	      </form>
	      

	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />

</body>
</html>