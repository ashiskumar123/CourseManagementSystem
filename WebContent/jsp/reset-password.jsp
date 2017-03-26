<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student-Register Course</title>'
<jsp:include page="common-include.jsp" />
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
		<a href="CourseManagementSystem/editStudent">Go Back</a>
	</div>
	<div class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Reset Password</h2>
		    </div>
		  <form id="frmResetPwd" method="post" action="updatePwd">
	        <div class="row inter-row" >
		       <div class= "col-xs-6">
		         <label>Enter new password: </label>
		         <input type ="password" name = "entPwd" id ="entPwd" class="form-control" placeholder="Enter New Password" ></input>
			   </div>   		        
	        </div>
	        
	        <div class="row inter-row" >
	        	<div class="col-xs-6">
		         <label>Confirm Password: </label>
		         <input type ="password" name="confPwd" id ="confPwd" class="form-control"  placeholder="Confirm New Pssword" ></input>
		       </div>
	        
	        </div>
	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="updatePwd" value ="Update" />         
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