<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Offering</title>
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
		      <h2>Course Offering Details</h2>
		    </div>
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmAddCourseOffering" method="post" action="saveCourseOffering">
		  
		    <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course Offering ID: </label>
		         	<input type ="text" name = "courseOfferingId" id ="courseOfferingId" class="form-control" placeholder = "Enter Course Offering ID" ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Course ID: </label>
		         	<input type ="text" name = "courseId" id ="courseId" class="form-control" placeholder = "Enter Course ID" ></input>
			   </div>   		        
	        </div>
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Class Size: </label>
		         	<input type ="text" name = "classSize" id ="classSize" class="form-control" placeholder = "Enter Class Size" ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Waitlist Size: </label>
		         <input type ="text" name="waitlistSize" id ="waitlistSize" class="form-control" placeholder="Enter Waitlist Size" ></input>
		       </div>
	        
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>Semester ID: </label>
	            <input type ="text" name="semesterId" id="semesterId" class="form-control" placeholder="Enter Semester ID"  ></input>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Location ID: </label>
	             <input type="text" name="locationId" id="locationId" class="form-control" placeholder ="Enter Location ID"  ></input>
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