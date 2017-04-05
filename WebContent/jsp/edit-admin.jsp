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
	<div id ="student info" class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Edit Admin Information</h2>
		    </div>
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li class="active">Edit Admin</li>
			</ol>
			
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmEditAdmin" method="post" action="updateAdmin">
		  
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Firstname: </label>
		         	<input type ="text" name = "firstName" id ="firstName" class="form-control" placeholder = "Enter Firstname" value=<s:property value="%{adminDetails.firstName}"/> ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Lastname: </label>
		         <input type ="text" name="lastName" id ="lastName"class="form-control" placeholder="Enter Lastname" value = <s:property value="%{adminDetails.lastName}"/> ></input>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>SSN: </label>
	            <input type ="text" name="ssn" id="ssn" class="form-control" placeholder="Enter SSN" value=<s:property value="%{adminDetails.ssn}"/> ></input>
	          </div>
	        </div>
	         <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Save" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        
	      </form>
	      <div style="margin-top: 10px">	      
		      <form id="frmResetPwd" method="get" action="resetPwd">    		
			    	<input type ="submit" class="btn btn-primary" id ="btnResetPwd" value ="Reset Password" />    		   		
		      </form>
	      </div>
	      
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>