<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />

</head>
<body>
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div id ="studentinfo" class="container">
	  <div class="maincontent">
		<div>
	      <h2>Admin Information</h2>
	    </div>
		
	    <br/>
	    
	      <form id="frmAdminDetails" method="post" action = "editStudent">
	        <div class="row inter-row" id="sinfo">
		        <div class= "col-xs-3">
			        First Name: 
			        <label for="fname">
			        	<s:property value="%{studentDetails.firstName}"/>
			        </label>
		        </div>
		        <div class="col-xs-3">
		        	Last Name: 
			        <label for="lname">
			        	<s:property value="%{studentDetails.lastName}"/>
			        </label>
				</div>	        
	        </div>
	        
	        
	        <div class="row inter-row" id="phno1">
	           <div class="col-xs-3">
	             Phone Number: 
			        <label for="phno">
			        	<s:property value="%{studentDetails.phoneNumber}"/>
			        </label>
	           </div>
	           <div class="col-xs-3">
	             Email: 
			        <label for="email">
			        	<s:property value="%{studentDetails.email}"/>
			        </label>
	          </div>
	          
	        </div>
	        
	        <div class="row inter-row" id="adr1" >
	          <div class="col-xs-12">
				 Address: 
			        <label for="address">
			        	<s:property value="%{studentDetails.address}"/>
			        </label>
	          </div>
	        </div>
	              
	       <div class="row inter-row">
	           <div class="col-xs-3">
	             Department:
	             	<label for="dept">
			        	<s:property value="%{studentDetails.departmentName}"/>
			        </label>
	          </div>
	          <div class="col-xs-3">
	             GPA:
	             	<label for="gpa">
			        	<s:property value="%{studentDetails.gpa}"/>
			        </label>
	          </div>
	          <div class="col-xs-3">
	             Level Classification:
	             	<label for="email">
			        	<s:property value="%{studentDetails.levelClassification}"/>
			        </label>
	          </div>
	          <div class="col-xs-3">
	             Residency Classification:
	             	<label for="email">
			        	<s:property value="%{studentDetails.residencyClassification}"/>
			        </label>
	        
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