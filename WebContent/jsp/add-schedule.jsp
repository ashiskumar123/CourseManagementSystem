<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Schedule</title>'
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
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="editStudent">Go Back</a>
	</div>
	<div class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Add Schedule</h2>
		    </div>
		  <form id="frmAddFaculty" method="post" action="saveSchedule">
		    
		    <div class="row inter-row" >  
			   <div class="col-xs-6">
		        	Course Offering ID: 
			        <label for="cid">
			        	<s:property value="%{courseOfferingId}"/>
			        </label>
				</div>		        
	        </div>
		    
		    <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Schedule ID: </label>
		         <input type ="text" name="scheduleId" id ="scheduleId" class="form-control"  placeholder="Enter Schedule Id" ></input>
		       </div>
	        
	        </div>
		    
		    
		    <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Schedule Day: </label>
		         <input type ="text" name="schDay" id ="schDay" class="form-control"  placeholder="Enter values between 1 to 7" ></input>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>From Time: </label>
		         <input type ="text" name="schDay" id ="schDay" class="form-control"  placeholder="  " ></input>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>To Time: </label>
		         <input type ="text" name="schDay" id ="schDay" class="form-control"  placeholder="  " ></input>
		       </div>
	        
	        </div>


	         <input type="hidden" name="courseOfferingId" id="courseOfferingId" value='<s:property value="%{courseOfferingId}"/>'/>
	         
	        
	        <div class="row inter-row">
	          <input type ="submit" class="btn btn-primary" id ="addSchedule" value ="Add Schedule" />         
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