<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/student-home-main.js'></script>

<style>
    .inter-row{
    margin-top : 10px;
    }
</style>  
</head>
<body>
  
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div id ="student info" class="container">
	  <div class="maincontent">
		<div>
	      <h2 class="spanish">Student Information</h2>
	    </div>
		
	    <br/>
	    
	      <form id="frmStudentDetails" method="post" action = "editStudent">
	        <div class="row inter-row" id="sinfo">
		        <div class= "col-xs-3">
			        First Name: 
			        <label for="fname" class="label">
			        	<s:property value="%{studentDetails.firstName}"/>
			        </label>
		        </div>
		        <div class="col-xs-3">
		        	<s:label for="lname" label="Last Name" key="lastName"  />
				</div>	        
	        </div>
	        
	        
	        <div class="row inter-row" id="phno1">
	           <div class="col-xs-4">
	             <s:label for="phno" label="Phone Number" key="phoneNumber"/>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row" id="adr1" >
	          <div class="col-xs-12">
				 <s:label for="stad1" label="Street Address 1" key="address1" />
	          </div>
	        </div>
	        
	        <div class="row inter-row" id="adr2" >
	          <div class="col-xs-12">    
	             <s:label for="stad2" label="Street Address 2" key="address2"/>
	          </div>
	        </div>
	        
	       <div class="row inter-row" id="noedit">
	           <div class="col-xs-3">
	             <s:label for="level" label="Level Classification" key="levelClassification"/>
	          </div>
	          <div class="col-xs-3">
	             <s:label for="residency" label="Residency Classification" key="residencyClassification"/>
	        
	          </div>
	          <div class="col-xs-3">
	             <s:label for="gpa" label="GPA" key="gpa1"/>
	        
	          </div>         
	        </div>
	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-default" id ="edit" value ="Edit" />
	        </div>
	        
	      </form>
	    </div>
	</div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>