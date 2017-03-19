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
</style>
</head>

<body>
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div id ="student info" class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Student Information</h2>
		    </div>
		  <form>
	        <div class="row inter-row" id="sinfo">
		       <div class= "col-xs-6">
		         <label>Firstname: </label>
		         <input type ="text" name = "firstname" id ="firstname" class="form-control" placeholder="Enter Firstname" disabled ></input>
			   </div>   
		        <div class="col-xs-6">
		         <label>Lastname: </label>
		         <input type ="text" name="lastname" id ="lastname"class="form-control" placeholder="Enter Lastname" value ="Hi" disabled="disabled"></input>
		       </div>
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-4">
	            <label>User id</label>
	            <input type ="text" name="username" id="username"class="form-control" placeholder="Enter User id" ></input>
	          </div>
	        </div>
	        
	        <div class="row inter-row" id ="pwd">
	           <div class="col-xs-4">
	             <label>Password: </label>
	             <input type="password" id="password" class="form-control" ></input>
	          </div>
	        </div>
	        
	        <div class="row inter-row"id="phno">
	           <div class="col-xs-4">
	             <label>Phone Number: </label>
	             <input type="text" id="phone" class="form-control"  placeholder ="(___)-(___)-(____)"></input>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row"id="adr1">
	          <div class="col-xs-12">
	           <label>Street Address Line 1: </label>
	           <input type="text" id="addr1" class="form-control"  placeholder ="Enter Address"></input>
	          </div>
	        </div>
	        
	        <div class="row inter-row"id="adr2">
	          <div class="col-xs-12">           
	             <label>Street Address Line 2: </label>
	             <input type="text" id="addr2" class="form-control" disabled="disabled" placeholder ="Enter Address"></input>
	          </div>
	        </div>
	        
			<div class="row inter-row" id="noedit">
			  <div>
	           <div class="col-xs-4">
	             <label>Level Classification: </label>
	             <input type="text" id="level" class="form-control" disabled="disabled" ></input>
	          </div>         
	        </div>
	          <div class="col-xs-4">
	             <label>Residency Classification: </label>
	             <input type="text" id="residency" class="form-control" disabled="disabled" ></input>
	          </div>
	          <div class="col-xs-4">
	             <label>GPA: </label>
	             <input type="text" id="gpa" class="form-control" disabled="disabled" ></input>
	        
	          </div>         
	        </div>
	        
	        <div class="row inter-row" id="btndiv">
	          <button type ="button"class="btn btn-default" id ="edit" onclick="editButton()">Edit</button>
	        </div>
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>