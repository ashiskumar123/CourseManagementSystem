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
		      <h2>Student Information</h2>
		    </div>
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmEditStudent" method="post" action="updateStudent">
		  
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Firstname: </label>
		         	<input type ="text" name = "firstName" id ="firstName" class="form-control" placeholder = "Enter Firstname" value=<s:property value="%{studentDetails.firstName}"/> ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Lastname: </label>
		         <input type ="text" name="lastName" id ="lastName"class="form-control" placeholder="Enter Lastname" value = <s:property value="%{studentDetails.lastName}"/> ></input>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>Email: </label>
	            <input type ="text" name="email" id="email" class="form-control" placeholder="Enter User id" value=<s:property value="%{studentDetails.email}"/> ></input>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Phone Number: </label>
	             <input type="text" name="phoneNumber" id="phoneNumber" class="form-control" placeholder ="Enter Phone Number" value=<s:property value="%{studentDetails.phoneNumber}"/> ></input>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Street Address: </label>
	           <input type="text" id="address" name="address" class="form-control" placeholder ="Enter Address" value= <s:property value="%{studentDetails.address}"/> ></input>
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