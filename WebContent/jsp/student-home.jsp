<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/student-home-main.js'></script>
</head>
<body>
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="maincontent">
		<div>
	      <center><h2 style="color : white">Student Information</h2></center>
	    </div>
		
	    <br/>
	    <div id ="student info" class="container">
	      <form id="frmStudentDetails">
	        <div class="row" id="sinfo">
		        <div class= "col-xs-6">
			        <label>Firstname: </label>
			        <input type ="text" name = "firstName" id ="firstName" class="form-control" placeholder="Enter Firstname" />
		        </div>
		        <div class="col-xs-6">
		        	<label>Lastname: </label>
		        	<input type ="text" name="lastname" id ="lastname" class="form-control" placeholder="Enter Lastname" disabled="disabled" />
				</div>	        
	        </div>
	        <div class="row" id="uid">
	          <div class="col-xs-4">
	            <label>User id</label>
	            <input type ="text" name="username" id="username" class="form-control" placeholder="Enter User id" disabled="disabled" />
	          </div>
	        </div>
	        <div class="row" id="pwd">
	           <div class="col-xs-4">
	             <label>Password: </label>
	             <input type="password" id="password" class="form-control" disabled="disabled"></input>
	          </div>
	        </div>
	        <div class="row" id="phno">
	           <div class="col-xs-4">
	             <label>Phone Number: </label>
	             <input type="text" id="phone" class="form-control" disabled="disabled" placeholder ="(___)-(___)-(____)" />
	          </div>
	         
	        </div>
	        <br/>
	        <div class="row" id="adr1">
				<label>Street Address Line 1: </label>
				<input type="text" id="addr1" class="form-control" disabled="disabled" placeholder ="Enter Address" />
	        </div>
	        <div class="row" id="adr2">
	             <label>Street Address Line 2: </label>
	             <input type="text" id="addr2" class="form-control" disabled="disabled" placeholder ="Enter Address" />
	        </div>
	        <br/>
	       <div class="row" id="noedit">
	           <div class="col-xs-4">
	             <label>Level Classification: </label>
	             <input type="text" id="level" class="form-control" disabled="disabled" />
	          </div>
	          <div class="col-xs-4">
	             <label>Residency Classification: </label>
	             <input type="text" id="residency" class="form-control" disabled="disabled" />
	        
	          </div>
	          <div class="col-xs-4">
	             <label>GPA: </label>
	             <input type="text" id="gpa" class="form-control" disabled="disabled" />
	        
	          </div>         
	        </div>
	        <div class="row" id="btndiv">
	          <button type ="button"class="btn btn-default" id ="edit" onclick="editButton()">Edit</button>
	        </div>
	        
	      </form>
	    </div>
	</div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>