<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student - Course Management System</title>
<jsp:include page="common-include.jsp" />
<script type="text/javascript" src="js/edit-current-student-main.js"></script>

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
		      <h2>Edit Student Information</h2>
		    </div>
		    
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li><a href="#" onclick="postNavigate('showStudentList')">Manage Students</a></li>
			  <li class="active">Edit Student</li>
			</ol>
			
		    <div style="margin-top: 10px; color:green;font-family:'Lilita One', cursive; font-size:20px;">
	      	<s:property value="%{saveMessage}"/>
	      </div>
	      
	      <div style="margin-top: 10px">
	      	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px">
	      	<s:property value="%{editError}"/></p>
	      </div>
		  <form id="frmAddStudent" method="post" action="saveCurrentStudent">
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Username: </label>
		         	<input type ="text" name = "userName"
		         	 id ="userName" class="form-control" 
		         	 placeholder = "Enter Username"
					 value='<s:property value="%{student.userName}"/>'/>
		         	 
			   </div>   		        
	        </div>
		    
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>First Name: </label>
		         	<input type ="text" name = "firstName"
		         	id ="firstName" class="form-control"
		         	placeholder = "Enter Firstname"
					value='<s:property value="%{student.firstName}"/>'/>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Last Name: </label>
		         <input type ="text" name="lastName" 
		         id ="lastName"class="form-control" 
		         placeholder="Enter Lastname" 
		         value='<s:property value="%{student.lastName}"/>'/>
		       </div>
	        
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	            <label>Email: </label>
	            <input type ="text" name="email" 
	            id="email" class="form-control" 
	            placeholder="Enter Email"  
	            value='<s:property value="%{student.email}"/>'/>
	          </div>
	        </div>
	        
	        
	        
	        <div class="row inter-row">
	           <div class="col-xs-6">
	             <label>Phone Number: </label>
	             <input type="text" name="phoneNumber" 
	             id="phoneNumber" class="form-control" 
	             placeholder ="Enter Phone Number"  
	             value='<s:property value="%{student.phoneNumber}"/>'/>
	          </div>
	         
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Street Address: </label>
	           <input type="text" id="address" 
	           name="address" class="form-control" 
	           placeholder ="Enter Address"  
	           value='<s:property value="%{student.address}"/>'/>
	          </div>
	        </div>
	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Department Id: </label>
	           
	           <s:select value="%{student.deptId}" cssClass="form-control" id="selectDeptId" 
	           		list="departmentList" listKey="departmentId" listValue="departmentName"/>
	           </div>
	        </div>


	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Residency Type: </label>
	           	<select id="selectResType" class="form-control">
		           	<option value="1">In-State</option>
		           	<option value="2">Out-State</option>
		           	<option value="3">International</option>
	           	</select>
	          </div>
	        </div>

	        
	        <div class="row inter-row">
	          <div class="col-xs-6">
	           <label>Level Classification: </label>
	           <select id="selectLevelClassification" class="form-control">
	           	<option value="1">Graduate</option>
	           	<option value="2">Undergraduate</option>
	           </select>
	          </div>
	        </div>
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="save" value ="Update" />
	          <input type = "reset" class="btn btn-primary" style= "margin-left: 10px" id="cancel" value="Cancel" />
	        </div>
	        <input type="hidden" name="userId" value='<s:property value="userId"/>' />
	        <input type="hidden" name="deptId" id="deptId" value='<s:property value="%{student.deptId}"/>' />
	        <input type="hidden" name="resType" id="resType" value='<s:property value="%{student.residencyType}"/>' />
	        <input type="hidden" name="levelClassification" id="levelClassification" value='<s:property value="%{student.levelClassification}"/>' />
	      </form>
	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>